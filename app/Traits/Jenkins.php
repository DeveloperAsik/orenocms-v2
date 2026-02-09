<?php

namespace App\Traits;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Helpers\Oreno\General;
use App\Helpers\Oreno\Date;
use App\Helpers\Oreno\Cookies;
use App\Models\Entity\AppEntity;

/**
 * Description of Jenkins
 *
 * @author arif
 */
trait Jenkins {

    //put your code here

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

    public function __create_dir_job($name) {
        if (isset($name) && !empty($name)) {
            $getCrumb = $this->__get_jenkins_crumb();
            $crumb = json_decode($getCrumb)->crumb;
            $jenkins_url_full = config('app.jenkins_url') . config('app.jenkins_ciso_path') . '/';
            $params = [
                'url' => $jenkins_url_full . 'createItem?name=' . $name . '&mode=com.cloudbees.hudson.plugins.folder.Folder',
                'method' => 'POST',
                'header' => [
                    'Accept' => 'application/xml',
                    'Content-Type' => 'application/xml'
                ],
                'body' => [
                    'Jenkins-Crumb' => $crumb,
                    'json' => 'init'
                ]
            ];
            $res = $this->__init_curl_jenkins($params);
            if ($res) {
                return $jenkins_url_full . 'job/' . $name;
            } else {
                return null;
            }
        }
    }

    public function __create_pipeline_job($request, $data) {
        if (isset($data) && !empty($data)) {
            $jobname = trim($data['jobname']);
            $xml = $data['xml'];
            $getCrumb = $this->__get_jenkins_crumb();
            $crumb = json_decode($getCrumb)->crumb;
            $directories = $data['directories'];
            $jobdir = $this->__create_dir_job($directories, $crumb);
            $params = [
                'url' => $jobdir . '/createItem?name=' . $jobname . '&mode=org.jenkinsci.plugins.workflow.job.WorkflowJob',
                'method' => 'POST',
                'header' => [
                    'Accept' => 'application/xml',
                    'Content-Type' => 'application/xml'
                ],
                'body' => [
                    'Jenkins-Crumb' => $crumb,
                    'json' => 'init'
                ],
                'file' => $xml
            ];
            return $this->__init_curl_jenkins($params);
        }
    }

    public function __copy_pipeline_job($request, $data) {
        if (isset($data) && !empty($data)) {
            $jenkins_url_full = config('app.jenkins_url') . config('app.jenkins_ciso_path') . '/job/' . $data['directories'];
            $job_copy_from = '/job/bni/job/SAT-Projects/job/SAST/job/HCL-Appscan/job/appsec-dashboard-trigger/job/default/';
            $getCrumb = $this->__get_jenkins_crumb();
            $crumb = json_decode($getCrumb)->crumb;
            $params = [
                'url' => $jenkins_url_full . '/createItem?name=' . trim($data['jobname']) . '&mode=copy&from=' . $job_copy_from,
                'method' => 'POST',
                'header' => [
                    'Accept' => 'application/xml',
                    'Content-Type' => 'application/xml'
                ],
                'body' => [
                    'Jenkins-Crumb' => $crumb,
                    'json' => 'init'
                ]
            ];
            return $this->__init_curl_jenkins($params);
        }
    }

    public function __move_dir_job($request, $data) {
        if (isset($data) && !empty($data)) {
            $jenkins_url_full = config('app.jenkins_url') . config('app.jenkins_ciso_path') . '/';
            $getCrumb = $this->__get_jenkins_crumb();
            $crumb = json_decode($getCrumb)->crumb;
            $params = [
                'url' => $jenkins_url_full . 'job/' . trim($data['jobname']) . '/move/',
                'method' => 'POST',
                'header' => [
                    'Accept' => 'application/x-www-form-urlencoded',
                    'Content-Type' => 'application/x-www-form-urlencoded'
                ],
                'body' => [
                    'Jenkins-Crumb' => $crumb,
                    'json' => 'init',
                    'destination' => config('app.jenkins_ciso_path_original') . '/' . $data['directories']
                ]
            ];
            return $this->__init_curl_jenkins($params);
        }
    }

    public function __get_last_build_pipeline_job($request, $crumb, $jobname) {
        $uri = config('app.jenkins_url') . config('app.jenkins_ciso_path_dast') . '/job/' . $jobname . '/lastBuild/api/json ';
        $params = [
            'url' => $uri,
            'method' => 'GET',
            'header' => [
                'Accept' => 'application/x-www-form-urlencoded',
                'Content-Type' => 'application/x-www-form-urlencoded'
            ],
            'body' => [
                'Jenkins-Crumb' => $crumb,
                'json' => 'init',
            ]
        ];
        $result = json_decode($this->__init_curl_jenkins($params));
        $LastBuildID = $result->id;
        $lastBuildStatus = $result->result;
        $lastBuildUrl = $result->url;
        $response = [];
        if (isset($lastBuildStatus) && !empty($lastBuildStatus) && $lastBuildStatus == 'SUCCESS') {
            $response = [
                'last_build_id' => $LastBuildID,
                'last_build_url' => $lastBuildUrl
            ];
        }
        return $response;
    }

    public function __get_last_console_pipeline_job($request, $crumb, $jobname, $lastBuild) {
        $uri = config('app.jenkins_url') . config('app.jenkins_ciso_path_dast') . '/job/' . $jobname . '/' . $lastBuild['last_build_id'] . '/consoleText';
        $params = [
            'url' => $uri,
            'method' => 'GET',
            'header' => [
                'Accept' => 'application/x-www-form-urlencoded',
                'Content-Type' => 'application/x-www-form-urlencoded'
            ],
            'body' => [
                'Jenkins-Crumb' => $crumb,
                'json' => 'init',
            ]
        ];
        return $this->__init_curl_jenkins($params);
    }

    public function __build_pipeline_job($request, $jobname, $data) {
        if (isset($data) && !empty($data)) {
            $getCrumb = $this->__get_jenkins_crumb();
            $crumb = json_decode($getCrumb)->crumb;
            $jobdir = config('app.jenkins_url') . config('app.jenkins_ciso_path_dast') . '/job/' . $jobname . '/buildWithParameters';
            $bodyData = [
                'Jenkins-Crumb' => $crumb,
                'json' => 'init'
            ];
            $body = array_merge($bodyData, $data);
            $params = [
                'url' => $jobdir,
                'method' => 'POST',
                'header' => [
                    'Accept' => 'application/x-www-form-urlencoded',
                    'Content-Type' => 'application/x-www-form-urlencoded'
                ],
                'body' => $body
            ];
            $this->__init_curl_jenkins($params);
            $lastBuild = $this->__get_last_build_pipeline_job($request, $crumb, $jobname);
            $lastConsole = $this->__get_last_console_pipeline_job($request, $crumb, $jobname, $lastBuild);
            return $lastConsole;
        }
    }

    public function __check_pipeline_job($request, $data) {
        if (isset($data) && !empty($data)) {
            $jobname = $data['jobname'];
            $url = config('app.jenkins_url') . '/checkJobName?value=' . $jobname;
            $appscan_params1 = array_merge(['url' => $url, 'method' => 'POST']);
            return $this->__init_curl_jenkins($appscan_params1);
        }
    }

    public function __get_jenkins_crumb() {
        $params = [
            'url' => config('app.jenkins_url') . '/crumbIssuer/api/json',
            'method' => 'POST',
        ];
        return $this->__init_curl_jenkins($params);
    }

    public function __update_xml_job($request, $data) {
        $jobname = trim($data['jobname']);
        $xml = $data['xml'];
        $getCrumb = $this->__get_jenkins_crumb();
        $crumb = json_decode($getCrumb)->crumb;
        $directories = $data['directories'];
        $jenkins_url_full = config('app.jenkins_url') . config('app.jenkins_ciso_path') . '/job/' . $data['directories'] . '/job/' . $jobname . '/config.xml';
        $params = [
            'url' => $jenkins_url_full,
            'method' => 'POST',
            'header' => [
                'Accept' => 'text/xml',
                'Content-Type' => 'text/xml'
            ],
             'body' => [
                 'file' => $xml
             ]
        ];
        return $this->__init_curl_jenkins($params);
    }

    public function __init_curl_jenkins($param) {
        $jenkins_user = config('app.jenkins_user');
        $jenkins_pass = config('app.jenkins_pass');
        $CURLOPT_POSTFIELDS = [];
        if (isset($param['body']) && !empty($param['body'])) {
            $CURLOPT_POSTFIELDS = json_encode($param['body']);
        } 
        if (isset($param['body']['file']) && !empty($param['body']['file'])) {
            $CURLOPT_POSTFIELDS = file_get_contents($param['body']['file']);
        }
        $CURLOPT_HTTPHEADER = [];
        if (isset($param['header']) && !empty($param['header'])) {
            $CURLOPT_HTTPHEADER = array_merge($CURLOPT_HTTPHEADER, $param['header']);
        }
        $CURLOPT_POST = false;
        if ($param['method'] == 'POST') {
            $CURLOPT_POST = true;
        }
        //$url = 'https://' . $jenkins_user . ":" . $jenkins_pass . "@" . $param['url'];
        $url = 'https://' . $param['url'];
        $curl = curl_init();
        try {
            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_HTTPAUTH => CURLAUTH_BASIC,
                CURLOPT_COOKIE => 'seepage=1',
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_SSL_VERIFYHOST => false,
                CURLOPT_USERPWD => "$jenkins_user:$jenkins_pass",
                CURLOPT_CUSTOMREQUEST => $param['method'],
                CURLOPT_POST => $CURLOPT_POST,
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
