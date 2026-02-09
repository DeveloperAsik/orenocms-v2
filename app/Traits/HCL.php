<?php

namespace App\Traits;

use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Http\Request;
use App\Helpers\Oreno\General;
use App\Helpers\Oreno\Date;
use App\Helpers\Oreno\Cookies;
use App\Models\Entity\AppEntity;

//use GuzzleHttp\Exception\RequestException;

trait HCL {

    protected $AppEntity;
    protected $Date;
    protected $client;
    protected $General;
    protected $Cookies;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->AppEntity = new AppEntity();
        $this->Date = new Date();
        $this->client = new \GuzzleHttp\Client();
        $this->General = new General();
        $this->Cookies = new Cookies();
    }

    public function __clear_all() {
        session()->forget('asc_xsrf_token');
        session()->forget('asc_xsrf_token_expiry');
        session()->save();
        cookie()->queue(cookie()->forget('asc_xsrf_token'));
        cookie()->queue(cookie()->forget('asc_session_id'));
    }

    public function __get_login_ase_credential($request) {
        $paramsASELogin = [
            'table_name' => 'tbl_web_params',
            'select' => ['a.id', 'a.keyword', 'a.value'],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.name', 'like', '%hcl_appscan_ase%']
                ]
            ]
        ];
        $paramsASE = $this->AppEntity->find($request, 'all', $paramsASELogin);
        $appscan_params0 = [];
        if (isset($paramsASE['data']) && !empty($paramsASE['data'])) {
            foreach ($paramsASE['data'] AS $keyword => $value) {
                $appscan_params0[$value->keyword] = $value->value;
            }
        }
        return $appscan_params0;
    }

    public function __run_login($request) {
        $appscan_params = $this->__get_login_ase_credential($request);
        $url_login_ase = config('app.base_appscan_ase_uri') . "/api/login";
        $header = ['Content-Type:application/json'];
        $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'POST'], ['header' => $header, 'body' => $appscan_params]);
        return $this->__init_curl_hcl($appscan_params1);
    }

    public function __init_ase_login(Request $request) {
        $data = $request->session()->all();
        $asc_xsrf_token = '';
        if (isset($data['asc_xsrf_token']) || !empty($data['asc_xsrf_token'])) {
            $asc_xsrf_token = $data['asc_xsrf_token'];
            $check = $this->__get_current_user($asc_xsrf_token);
            if ($check == null) {
                $this->__init_logout($request, $asc_xsrf_token);
                $this->__clear_all();
            }
            $responseData = $this->__run_login($request);
        } else {
            $this->__clear_all();
            $responseData = $this->__run_login($request);
        }
        $response = json_decode($responseData);
        if (isset($response) && !empty($response) && $response->loggedIn == true) {
            $asc_xsrf_token = $response->sessionId;
            session(['asc_session_id' => $asc_xsrf_token]);
            session(['asc_xsrf_token' => $asc_xsrf_token]);
            session(['asc_xsrf_token_expiry' => $this->Date->after(4)]);
            session()->save();
            cookie()->queue(cookie('sessionid', $asc_xsrf_token, 240, config('app.base_extraweb_uri') . '/dashboard'));
            cookie()->queue(cookie('asc_xsrf_token', $asc_xsrf_token, 240, config('app.base_extraweb_uri') . '/dashboard'));
            cookie()->queue(cookie('asc_session_id', $asc_xsrf_token, 240, config('app.base_extraweb_uri') . '/dashboard'));
        }
        return $asc_xsrf_token;
    }

    public function __init_cookie_token($name, $value) {
        if ($name && $value) {
            $path = config('app.base_extraweb_uri') . '/dashboard';
            $cookie = cookie($name, $value, 240, $path, null, false, false);
            return response(['message' => 'success'])->withCookie($cookie);
        }
    }

    public function __get_hcl_version($request) {
        $asc_xsrf_token = $this->__init_ase_login($request);
        $uri = config('app.base_appscan_ase_uri') . "/api/version";
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        $response = json_decode($responseData);
        return $response;
    }

    /*
     * 
     * application start here
     * 
     */

    public function __get_all_application($request, $params) {
        $asc_xsrf_token = $this->__init_ase_login($request);
        $columns = htmlentities($params['columns']); //"riskrating,name,type,totalissues,maxseverity,criticalissues,highissues,mediumissues,lowissues";
        $sort = isset($params['sort']) && !empty($params['sort']) ? $params['sort'] : '+name'; //"+name";
        $range = isset($params['range']) && !empty($params['range']) ? $params['range'] : 'items=0-9'; //"items=0-9";
        $query = isset($params['query']) && !empty($params['query']) && $params['query'] != null ? $params['query'] : '';
        $uri = config('app.base_appscan_ase_uri') . "/api/applications?columns=" . $columns . '&sortBy=' . $sort . '&query=' . $query;
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Range:items=' . $range,
            'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        return json_decode($responseData);
    }

    public function __get_all_application_total($request) {
        $asc_xsrf_token = $this->__init_ase_login($request);
        $range = "0-99999";
        $uri = config('app.base_appscan_ase_uri') . "/api/applications";
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Range:items=' . $range,
            'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        $response = json_decode($responseData);
        return count($response);
    }

    public function __insert_application_data($request) {
        $total = $this->__get_all_application_total($request);
        $params = [
            'columns' => 'riskrating,name,totalissues,openissues,maxseverity,criticalissues,highissues,mediumissues,lowissues,informationissues,datecreated,lastupdated',
            'sort' => '-datecreated',
            'range' => '1965-' . $total
        ];
        $arrData = $this->__get_all_application($request, $params);
        $dd = [];
        foreach ($arrData AS $k => $v) {
            if (isset($v->openissues) && $v->openissues != 0) {
                $dataInsert = [
                    'name' => $v->name,
                    'riskrating' => $v->riskrating,
                    'openissues' => $v->openissues,
                    'totalissues' => isset($v->totalissues) ? $v->totalissues : '',
                    'maxseverity' => isset($v->maxseverity) ? $v->maxseverity : '',
                    'criticalissues' => isset($v->criticalissues) ? $v->criticalissues : '',
                    'highissues' => isset($v->highissues) ? $v->highissues : '',
                    'mediumissues' => isset($v->mediumissues) ? $v->mediumissues : '',
                    'lowissues' => isset($v->lowissues) ? $v->lowissues : '',
                    'informational' => isset($v->informational) ? $v->informational : '',
                    'datecreated' => isset($v->datecreated) ? $v->datecreated : '',
                    'lastupdated' => isset($v->lastupdated) ? $v->lastupdated : '',
                    'is_active' => 1,
                    'created_by' => $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => $this->__user_id,
                    'updated_date' => $this->Date->now()
                ];
                $params = [
                    'table_name' => 'tbl_a_project_sat_applications',
                    'data' => $dataInsert
                ];
                $this->AppEntity->insert($request, $params, 'mysql_assessment');
            }
        }
        return 'success';
    }

    public function __delete_application($request, $applicationID) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $applicationID = [1,2,3];
         *   $create_portfolio = $this->__delete_application($request, $applicationID);
         * 
         * }
         */

        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/applications";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Content-Type:application/json',
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'DELETE'], ['header' => $header, 'body' => $applicationID]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_detail_application($request, $appid) {
        if ($appid) {
            /*
             * #how to use
             * use App\Traits\HCL;
             * 
             * 
             * use HCL;
             * 
             * public function __classname(){
             * 
             *   $appid = '1';
             *   $create_portfolio = $this->__get_detail_application($request, $appid);
             * 
             * }
             */
            $asc_xsrf_token = $this->__init_ase_login($request);
            $uri = config('app.base_appscan_ase_uri') . "/api/applications/" . $appid;
            $header = [
                'asc_xsrf_token:' . $asc_xsrf_token,
                'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
            ];
            $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
            $responseData = $this->__init_curl_hcl($appscan_params);
            return json_decode($responseData);
        } else {
            return null;
        }
    }

    /*
     * 
     * application start here
     * 
     */

    public function __get_search_portofolio($request, $keyword) {
        if ($keyword) {
            $asc_xsrf_token = $this->__init_ase_login($request);
            $uri = config('app.base_appscan_ase_uri') . "/api/applications/search?searchTerm=" . $keyword;
            $header = [
                'asc_xsrf_token:' . $asc_xsrf_token,
                'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
            ];
            $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
            $responseData = $this->__init_curl_hcl($appscan_params);
            return json_decode($responseData);
        } else {
            return null;
        }
    }

    public function __get_sat_finding_by_severity($request, $severity, $appname, $response) {
        $param_informationals = [
            'sort' => '-Severity',
            'query' => 'Application%20Name%3D' . $appname . '%2CSeverity%3D' . $severity
        ];
        $data = $this->__get_all_portofolio_finding2($request, $param_informationals);
        $respData = [];
        if ($response = 'get-total') {
            if ($data != '' || !empty($data)) {
                $data2 = 0;
            } else {
                $data2 = count($data);
            }
            $respData = ($data2);
        } else {
            $respData = $data;
        }
        return $respData;
    }

    public function __get_all_portofolio_findings($request, $params) {
        if ($params) {
            $asc_xsrf_token = $this->__init_ase_login($request);
            $range = isset($params['range']) && !empty($params['range']) ? $params['range'] : '0-99'; //"items=0-9";
            $query = isset($params['query']) && !empty($params['query']) && $params['query'] != null ? $params['query'] : '';
            $column = isset($params['columns']) && !empty($params['columns']) && $params['columns'] != null ? $params['columns'] : '';
            $sort = isset($params['sort']) && !empty($params['sort']) ? '&sortBy=' . $params['sort'] : '+name'; //"+Severity";
            $uri = config('app.base_appscan_ase_uri') . "/api/issues?query=" . $query . $column . $sort . '&compactResponse=true';
            $header = [
                'asc_xsrf_token:' . $asc_xsrf_token,
                'Range:items=' . $range,
                'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
            ];
            $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
            $responseData = $this->__init_curl_hcl($appscan_params);
            return json_decode($responseData);
        } else {
            return null;
        }
    }

    public function __get_all_portofolio_finding2($request, $params) {
        if ($params) {
            $asc_xsrf_token = $this->__init_ase_login($request);
            $range = isset($params['range']) && !empty($params['range']) ? $params['range'] : '0-99'; //"items=0-9";
            $query = isset($params['query']) && !empty($params['query']) && $params['query'] != null ? $params['query'] : '';
            $column = isset($params['columns']) && !empty($params['columns']) && $params['columns'] != null ? $params['columns'] : '';
            $sort = isset($params['sort']) && !empty($params['sort']) ? '&sortBy=' . $params['sort'] : '+name'; //"+Severity";
            $uri = config('app.base_appscan_ase_uri') . "/api/issues/v2?query=" . $query . $sort . $column . '&compactResponse=true';
            $header = [
                'asc_xsrf_token:' . $asc_xsrf_token,
                'Range:items=' . $range,
                'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
            ];
            $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
            $responseData = $this->__init_curl_hcl($appscan_params);
            return json_decode($responseData);
        } else {
            return null;
        }
    }

    public function __get_isseutypes_details($request, $issuetypeid) {
        $response = $this->__get_all_issuetypes($request, $issuetypeid);
        $dataResp = json_decode($response);

        $strHtml = '<div><label>Issue Name : ' . $dataResp->name . '</label>';
        $strHtml .= '<p>Issue Type Lookup : ' . $dataResp->issueTypeLookup . '</p></div>';

        $strHtml .= '<div><label>threatClassId : ' . $dataResp->threatClasses[0]->threatClassId . '</label>';
        $strHtml .= '<p>threatClass : ' . $dataResp->threatClasses[0]->threatClass . '</p>';
        $strHtml .= '<p>threatClassReference : ' . $dataResp->threatClasses[0]->threatClassReference . '</p></div>';

        $strHtml .= '<div><label>remediationId : ' . $dataResp->remediations[0]->remediationId . '</label>';
        $strHtml .= '<p>remediation : ' . $dataResp->remediations[0]->remediationId . '</p></div>';

        $strHtml .= '<div><label>riskId : ' . $dataResp->risks[0]->riskId . '</label>';
        $strHtml .= '<p>risk : ' . $dataResp->risks[0]->risk . '</p></div>';

        $strHtml .= '<div><label>causeId : ' . $dataResp->causes[0]->causeId . '</label>';
        $strHtml .= '<p>cause : ' . $dataResp->causes[0]->cause . '</p></div>';
        return $strHtml;
    }

    public function __get_send_url($request, $url) {
        if ($url) {
            $asc_xsrf_token = $this->__init_ase_login($request);
            //$uri = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $url;
            $header = [
                'asc_xsrf_token:' . $asc_xsrf_token,
                'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
            ];
            $appscan_params = ['url' => $url, 'method' => 'GET', 'header' => $header];
            $responseData = $this->__init_curl_hcl($appscan_params);
            return ($responseData);
        } else {
            return null;
        }
    }

    public function __get_all_issueattributedefinitions($request, $param) {
        $asc_xsrf_token = $this->__init_ase_login($request);
        $uri = config('app.base_appscan_ase_uri') . "/api/issueattributedefinitions";
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Cookie:asc_session_id=' . $asc_xsrf_token . ';'
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        $data = json_decode($responseData);
        $appdata = [];
        if ($data) {
            foreach ($data->attributeDefColl AS $keyword => $value) {
                if ($value->lookup == $param) {
                    $appdata[] = $data->attributeDefColl[$keyword];
                }
            }
        }
        dd($appdata);
    }

    public function __init_logout($request, $asc_xsrf_token) {
        $data = $request->session()->all();
        $asc_xsrf_token = $data['asc_xsrf_token'];
        if (isset($asc_xsrf_token) || !empty($asc_xsrf_token) || $asc_xsrf_token != '') {
            $params = [
                'url' => config('app.base_appscan_ase_uri') . "/api/logout",
                'method' => 'GET',
                'header' => [
                    'sessionid:' . $asc_xsrf_token
                ]
            ];
            return $this->__init_curl_hcl($params);
        }
    }

    public function __get_agentServer($asc_xsrf_token) {
        $uri = config('app.base_appscan_ase_uri') . "/api/agentServer";
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Cookies:asc_session_id=' . $asc_xsrf_token
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        return json_decode($responseData);
    }

    public function __get_current_user($asc_xsrf_token) {
        $uri = config('app.base_appscan_ase_uri') . "/api/currentuser_v2";
        $header = [
            'asc_xsrf_token:' . $asc_xsrf_token,
            'Cookies:asc_session_id=' . $asc_xsrf_token
        ];
        $appscan_params = ['url' => $uri, 'method' => 'GET', 'header' => $header];
        $responseData = $this->__init_curl_hcl($appscan_params);
        return json_decode($responseData);
    }

    public function __create_portfolio($request, $body) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $body = [
         *     'name' => 'sat_project_automation_1'
         *   ];
         *   $create_portfolio = $this->__create_portfolio($request, $this->Converter->array_to_object($body));
         * 
         * }
         */

        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/applications";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Content-Type:application/json',
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'POST'], ['header' => $header, 'body' => $body]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __search_folders($request, $body) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $keyword = '';
         *   $create_portfolio = $this->__search_folders($request, $this->Converter->array_to_object($body, $keyword));
         * 
         * }
         */

        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "api/folders/search?searchString=" . $keyword;
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Content-Type:application/json',
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'POST'], ['header' => $header, 'body' => $body]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_all_folders($request) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $body = [
         *     'name' => 'sat_project_automation_1'
         *   ];
         *   $create_portfolio = $this->__get_all_folderitems($request);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/folders";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_detail_folders($request, $folderID) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_all_folderitems($request, $folderID);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/folders/" . $folderID;
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_delete_folders($request, $folderID) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_delete_folders($request, $folderID);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/folders/delete/" . $folderID . '?responseFormat=json';
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'DELETE'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __create_folder($request, $body) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $body = [
         *     'parentId' => '',
         *     'folderName' => '',
         *     'description' => '',
         *     'contact' => ''
         *   ];
         *   $create_portfolio = $this->__create_folder($request, $this->Converter->array_to_object($body));
         * 
         * }
         */

        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/folders/create";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Content-Type:application/json',
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'POST'], ['header' => $header, 'body' => $body]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_all_standards($request) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_all_standards($request);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/standards";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_all_issuetypes($request, $id = null) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_issue_types($request);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $id;
            if ($id == null) {
                $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes";
            }
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_detail_issuetypes($request, $id) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_detail_issuetypes($request, $id);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $id;
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_issues_app_about_issues($request, $param) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $param = [
         *      'issueTypeId' => '',
         *      'appId' => ''
         *   ];
         *   $create_portfolio = $this->__get_issues_app_about_issues($request, $param);
         * 
         * }
         */
        //https://192.168.117.155:9443/ase/api/issues/1080732/application/41536/aboutthisissue
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $issueId = $param['issueId'];
            $appId = $param['appId'];
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issues/" . $issueId . '/application/' . $appId . '/aboutthisissue';
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_issuetypes_howtofix($request, $param) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $param = [
         *      'issueTypeId' => '',
         *      'issueType' => '',
         *      'api' => '',
         *      'cve' => '',
         *      'language' => ''
         *   ];
         *   $create_portfolio = $this->__get_issuetypes_howtofix($request, $param);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $issueTypeId = $param['IssueTypeId'];
            //$article_id = '&id=' . $param['issueTypeId'];
            //$issueType = '&issueType=' . $param['issueType'];
            //$api = '&api=' . $param['issueTypeId'];
            //$cve = '&cve=' . $param['issueTypeId'];
            //$language = '&language=' . $param['issueTypeId'];
            //issueTypeId=1454&id=id&issuetype=issueType&api=api&cve=cve&language=lang

            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/howtofix?issueTypeId=" . $issueTypeId; //. $article_id . $issueType . $api . $cve . $language;
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_issuetypes_fixrecommendation($request, $issueTypeLookup) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         *   $issueTypeLookup = 'wf-security-check-adobecoldfusionmxpathdisclosure'; //get fromm issuetypes
         *   $create_portfolio = $this->__get_issuetypes_fixrecommendation($request, $issueTypeLookup);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            //api/issuetypes/wf-security-check-activewebcontentserverxss/fixrecommendation
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $issueTypeLookup . '/fixrecommendation';
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_issuetypes_advisory($request, $issueTypeLookup) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         *   $issueTypeLookup = 'wf-security-check-adobecoldfusionmxpathdisclosure'; //get fromm issuetypes
         *   $create_portfolio = $this->__get_issuetypes_advisory($request, $issueTypeLookup);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            //api/issuetypes/wf-security-check-activewebcontentserverxss/fixrecommendation
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $issueTypeLookup . '/advisory';
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_issuetypes_sections($request, $issueTypeID, $standardID) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         *   $issueTypeID = '1730'; //get fromm /api/issuetypes
         *   $standardID = '1'; //get from /api/standards
         *   $create_portfolio = $this->__get_issuetypes_sections($request, $issueTypeID, $standardID);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/issuetypes/" . $issueTypeID . '/standards/' . $standardID . '/sections';
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    /*
     * 
     * scansmanagement start here
     * 
     */

    public function __get_all_scansmanagement($request) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $create_portfolio = $this->__get_all_scansmanagement($request);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/scansmanagement";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'GET'], ['header' => $header]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    public function __get_update_scansmanagement($request, $activityId) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $activityId = '';
         *   $create_portfolio = $this->__get_update_scansmanagement($request, $activityId);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/scansmanagement/" . $activityId;
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'PUT'], ['header' => $header, 'body' => $body]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    /*
     * 
     * scansmanagement end here
     * 
     */

    public function __get_list_summaries_issues($request, $activityId) {
        /*
         * #how to use
         * use App\Traits\HCL;
         * 
         * 
         * use HCL;
         * 
         * public function __classname(){
         * 
         *   $activityId = '';
         *   $create_portfolio = $this->__get_update_scansmanagement($request, $activityId);
         * 
         * }
         */
        $data = $request->session()->all();
        if (isset($data['asc_xsrf_token']) && !empty($data['asc_xsrf_token'])) {
            $url_login_ase = config('app.base_appscan_ase_uri') . "/api/summaries/issues_v2?group=severity";
            $header = [
                'asc_xsrf_token:' . $data['asc_xsrf_token'],
                'Cookie:asc_session_id=' . $data['asc_xsrf_token']
            ];
            $appscan_params1 = array_merge(['url' => $url_login_ase, 'method' => 'PUT'], ['header' => $header, 'body' => $body]);
            return $this->__init_curl_hcl($appscan_params1);
        }
    }

    /*
     * 
     * scansmanagement end here
     * 
     */

    public function __init_curl_hcl($param) {
        $CURLOPT_POSTFIELDS = [];
        if (isset($param['body']) && !empty($param['body'])) {
            $CURLOPT_POSTFIELDS = json_encode($param['body']);
        }
        $CURLOPT_HTTPHEADER = [];
        if (isset($param['header']) && !empty($param['header'])) {
            $CURLOPT_HTTPHEADER = array_merge($CURLOPT_HTTPHEADER, $param['header']);
        }
        $curl = curl_init();
        try {
            curl_setopt_array($curl, array(
                CURLOPT_URL => $param['url'],
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_SSL_VERIFYHOST => false,
                CURLOPT_CUSTOMREQUEST => $param['method'],
                CURLOPT_POSTFIELDS => $CURLOPT_POSTFIELDS,
                CURLOPT_HTTPHEADER => $CURLOPT_HTTPHEADER
            ));
            $response = curl_exec($curl);
            if ($response === false) {
                throw new \Exception(curl_error($curl), curl_errno($curl));
            }
            curl_close($curl);
            return $response;
        } catch (Exception $e) {
            trigger_error(sprintf('Curl failed with error #%d: %s', $e->getCode(), $e->getMessage()), E_USER_ERROR);
        }
    }
}
