<?php

namespace App\Http\Controllers\Backend\Auth;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//load libraries
use App\Libraries\Oreno\Authentification;
use App\Libraries\Oreno\Encrypter;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Sanitize;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Date;
//load entity tables
use App\Models\Entity\uac\Tbl_a_uac_users_p_en;
use App\Models\Entity\uac\Tbl_b_uac_user_group_c_en;
use App\Models\Entity\uac\Tbl_a_uac_groups_p_en;
use App\Models\Entity\uac\Tbl_b_uac_group_permissions_r_en;
use App\Models\Entity\uac\Tbl_b_uac_user_permissions_r_en;
use App\Models\Entity\uac\Tbl_a_uac_user_token_c_en;
use App\Models\Entity\uac\Tbl_a_uac_modules_p_en;

/**
 * Description of AppController
 *
 * @author 64146
 */
class AppController extends Controller {

    //put your code here
    protected $Authentification;
    protected $Encrypter;
    protected $Sanitize;
    protected $Converter;
    protected $General;
    protected $Date;
    protected $Tbl_a_uac_users_p_en;
    protected $Tbl_b_uac_user_group_c_en;
    protected $Tbl_a_uac_groups_p_en;
    protected $Tbl_b_uac_group_permissions_r_en;
    protected $Tbl_b_uac_user_permissions_r_en;
    protected $Tbl_a_uac_user_token_c_en;
    protected $Tbl_a_uac_modules_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->Authentification = new Authentification();
        $this->Encrypter = new Encrypter();
        $this->Converter = new Converter();
        $this->Sanitize = new Sanitize();
        $this->General = new General();
        $this->Date = new Date();
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_a_uac_groups_p_en = new Tbl_a_uac_groups_p_en();
        $this->Tbl_b_uac_user_group_c_en = new Tbl_b_uac_user_group_c_en();
        $this->Tbl_b_uac_group_permissions_r_en = new Tbl_b_uac_group_permissions_r_en();
        $this->Tbl_b_uac_user_permissions_r_en = new Tbl_b_uac_user_permissions_r_en();
        $this->Tbl_a_uac_user_token_c_en = new Tbl_a_uac_user_token_c_en();
        $this->Tbl_a_uac_modules_p_en = new Tbl_a_uac_modules_p_en();
    }

    public function login(Request $request) {
        $title_for_layout = config('app.name');
        $_modal_data = [
            'html.widgets.login.widgets_login_forgot_password',
            'html.widgets.login.widgets_login_register'
        ];
        $_page_styles = [
            'login' => [
                'url' => config('app.url'),
                'options' => false
            ],
            'logo' => [
                'path' => config('app.base_url_assets_media') . '/images/logoicon.png',
                'alt' => ''
            ]
        ];
        $input_name = $this->Converter->base64_basic('useridorenocms', 'encode', ['rep' => 3]);
        $input_name2 = $this->Converter->base64_basic('passorenocms', 'encode', ['rep' => 3]);
        $_page_elements = [
            'header' => [
                'title' => 'Welcome to OrenoCMS Login Page!'
            ],
            'input' => [
                ['name' => $input_name, 'placeholder' => 'Please insert Username\Email\NPP'],
                ['name' => $input_name2, 'placeholder' => 'Please insert Password']
            ]
        ];
        $ajaxVar = [
            ['key' => 'a', 'val' => $input_name],
            ['key' => 'b', 'val' => $input_name2]
        ];
        $this->load_ajax_var($ajaxVar);
        return view('html.layouts.metronic.login', compact('title_for_layout', '_modal_data', '_page_styles', '_page_elements'));
    }

    public function logout(Request $request) {
        $data = $request->session()->all();
        if (isset($data) && !empty($data)) {
            $_user_id = $data['_authentification'][config('app.authVar.auth._user_id')];
            $this->Tbl_a_uac_user_token_c_en->__update_clear_user_token($request, ['id' => (int) $_user_id]);
            $this->Authentification->clear_session($request);
            return redirect('/extraweb/login');
        } else {
            return redirect('/extraweb/dashboard');
        }
    }

    public function dashboard(Request $request) {
        $title_for_layout = config('app.name');
        $data = $request->session()->all();
        $loadCss = [
            config('app.base_url_assets_templates') . '/metronic/assets/admin/pages/css/todo.css'
        ];
        $this->load_css($loadCss);

        $loadJs = [
            config('app.base_url_assets_templates') . '/metronic/assets/admin/pages/scripts/todo.js'
        ];
        $this->load_js($loadJs);
        return view('html.layouts.metronic.main', compact('title_for_layout'));
    }

    public function __init(Request $request) {
        $data = $request->json()->all();
        $response = '';
        $statusCode = 301;
        $message = 'successfully fetching data';
        if (isset($data['t']) && !empty($data['t'])) {
            switch ($data['t']) {
                case "validate-userid":
                    $statusCode = 200;
                    $response = $this->Sanitize->filter_input_field(trim($data['k']));
                    break;
                case "validate-passid":
                    $statusCode = 200;
                    $response = $this->Sanitize->filter_input_field(trim($data['k']));
                    break;
                case "validate-login-form":
                    $statusCode = 200;
                    $message = 'Successfully fetch and validating request!';
                    $validate_login = $this->__input_login_form($request);
                    if (isset($validate_login) && !empty($validate_login) && $validate_login['auth'] && $validate_login['user'] && $validate_login['isvalid'] == true) {
                        $generate_token = $this->__generate_token($request, $validate_login);
                        $response = [
                            'redirectTo' => '/dashboard',
                            'token' => $generate_token
                        ];
                    } else {
                        $statusCode = 404;
                        $message = 'Failed Fetch dan validating data, username or password is not matched or founded!';
                    }
                    break;
            }
        }
        return $this->General->_set_response('json', ['code' => $statusCode, 'message' => $message, 'data' => $response]);
    }

    protected function __input_login_form($request) {
        $data = $request->json()->all();
        $response = false;
        if (isset($data) && !empty($data)) {
            $userid = base64_decode($data['d']);
            $passid = base64_decode($data['e']);
            $getExistUser = $this->Tbl_a_uac_users_p_en->__get_user_byuserid($request, $userid);
            if (isset($getExistUser['data']) && !empty($getExistUser['data'])) {
                //validate pass in db with input form submit from user
                $getExistUser_pass = $getExistUser['data']->__password;
                //get user group
                $getUserGroup = $this->Tbl_b_uac_user_group_c_en->__get_user_group($request, $getExistUser['data']->id);
                $paramGroupPermission = [
                    'userid' => $getExistUser['data']->id,
                    'groupid' => $getUserGroup['data']->__uac_group_id
                ];
                //get group permission
                $getGroupPermission = $this->Tbl_b_uac_group_permissions_r_en->__get_permission_group_by_id($request, $paramGroupPermission);
                //get user permission
                $getUserPermission = $this->Tbl_b_uac_user_permissions_r_en->__get_permission_user_by_id($request, $paramGroupPermission);
                //validate jwt
                $validatePassDB = $this->Encrypter->decrypt($getExistUser_pass);
                $statusResponse = [
                    'is_pass_valid' => 0,
                    'is_group_user_allowed' => 0,
                    'is_group_permission_allowed' => 0,
                    'is_user_permission_allowed' => 0,
                ];
                $userExist = [
                    'userid' => 0,
                    'groupid' => 0
                ];
                $isvalid = false;
                if ($passid == $validatePassDB) {
                    $userExist = [
                        'userid' => $getExistUser['data']->id,
                        'username' => $getExistUser['data']->__user_name,
                        'firstname' => $getExistUser['data']->__first_name,
                        'lastname' => $getExistUser['data']->__last_name,
                        'email' => $getExistUser['data']->__email,
                        'groupid' => $getUserGroup['data']->id,
                        'usergroup' => $getUserGroup['data']->__name,
                        'moduleid' => $getGroupPermission['data']->__module_id
                    ];
                    if ($getGroupPermission['data']->__is_public == 1 && $getGroupPermission['data']->__is_allowed == 1 && $getUserPermission['data']->__is_denied == 0) {
                        $statusResponse = [
                            'is_user_active' => $getExistUser['data']->is_active,
                            'is_pass_valid' => 1,
                            'is_group_user_allowed' => 1,
                            'is_group_permission_allowed' => 1,
                            'is_user_permission_allowed' => 1,
                        ];
                    }
                    $isvalid = true;
                }
            }
            $response = [
                'isvalid' => $isvalid,
                'auth' => $statusResponse,
                'user' => $userExist
            ];
        }
        return $response;
    }

    protected function __generate_token($request, $params = []) {
        if ($params && $params != '') {
            $sessiondata = $request->session()->all();
            $tokenExist = $this->Tbl_a_uac_user_token_c_en->__get_user($request, $params);
            $responseVal = [];
            $_session_is_logged_in = 0;
            $_session_is_autologged_out = 0;
            if (isset($tokenExist['data']) && !empty($tokenExist['data'] && $tokenExist['data']->__token != '' && $tokenExist['data']->__is_expiry != 0)) {
                //if token exist
                $decryptToken = $this->Encrypter->shuffle('decrypt', $tokenExist['data']->__token);
                $decryptTokenArr = explode('&', $decryptToken);
                $userid = $this->Converter->base64($request, str_replace('userid->', '', $decryptTokenArr[0]), 'decode', ['rep' => 3]);
                $groupid = $this->Converter->base64($request, str_replace('groupid->', '', $decryptTokenArr[1]), 'decode', ['rep' => 3]);
                $createdate = str_replace('|', ' ', str_replace('createdate->', '', $decryptTokenArr[2]));
                $expirydate = strtotime(str_replace('|', ' ', str_replace('expirydate->', '', $decryptTokenArr[3])));
                if ($expirydate <= strtotime($this->Date->now('Y-m-d H:i:s'))) {
                    $userid = $this->Converter->base64($request, $userid, 'encode', ['rep' => 3]);
                    $groupid = $this->Converter->base64($request, $groupid, 'encode', ['rep' => 3]);
                    $newTOkenGen = 'userid->' . $userid . '&groupid->' . $groupid . '&createdate->' . $this->Date->now('Y-m-d|H:i:s') . '&expirydate->' . str_replace(' ', '|', $this->Date->after(4));
                    $newEncryptToken = $this->Encrypter->shuffle('encrypt', $newTOkenGen);
                    $_session_is_logged_in = 1;
                    $updateData = [
                        '__token' => $newEncryptToken,
                        '__device_id' => $sessiondata['_uuid'],
                        '__expiry_date' => $this->Date->after(4),
                        '__uac_group_id' => $params['user']['groupid'],
                        '__uac_user_id' => $params['user']['userid'],
                        '__is_logged_in' => $_session_is_logged_in,
                        '__is_expiry' => 0,
                        'updated_by' => $params['user']['userid'],
                        'updated_date' => $this->Date->now('Y-m-d H:i:s')
                    ];
                    $paramData = [
                        'table_name' => 'tbl_a_uac_user_token_c',
                        'conditions' => [
                            'keyword' => 'id',
                            'value' => $tokenExist['data']->id
                        ]
                    ];
                    $tokenInsert = $this->Tbl_a_uac_user_token_c_en->__update($request, $updateData, $paramData);
                    if ($tokenInsert) {
                        $responseVal = $newEncryptToken;
                    }
                } else {
                    $responseVal = $tokenExist['data']->__token;
                }
            } else {
                //generate new token
                $userid = $this->Converter->base64($request, $params['user']['userid'], 'encode', ['rep' => 3]);
                $groupid = $this->Converter->base64($request, $params['user']['groupid'], 'encode', ['rep' => 3]);
                $datenow = $this->Date->now();
                $expirydate = $this->Date->after(6, $datenow);
                $tokenString = 'userid->' . $userid . '&groupid->' . $groupid . '&createdate->' . $datenow . '&expirydate->' . $expirydate;
                $encryptToken = $this->Encrypter->shuffle('encrypt', $tokenString);
                $decryptToken = $this->Encrypter->shuffle('decrypt', $encryptToken);
                $_session_is_logged_in = 1;
                //insert new token into db 
                $insertData = [
                    '__token' => $encryptToken,
                    '__device_id' => $sessiondata['_uuid'],
                    '__expiry_date' => $expirydate,
                    '__uac_group_id' => $params['user']['groupid'],
                    '__uac_user_id' => $params['user']['userid'],
                    '__is_logged_in' => $_session_is_logged_in,
                    '__is_expiry' => 0,
                    'is_active' => 1,
                    'created_by' => $params['user']['userid'],
                    'created_date' => $datenow,
                    'updated_by' => $params['user']['userid'],
                    'updated_date' => $datenow,
                ];
                $paramData = [
                    'table_name' => 'tbl_a_uac_user_token_c',
                    'data' => $insertData
                ];
                $tokenInsert = $this->Tbl_a_uac_user_token_c_en->__insert($request, $paramData);
                if ($tokenInsert) {
                    $responseVal = $encryptToken;
                }
            }
            $sessionAssignArr = [
                '_authentification' => [
                    config('app.authVar.session.is_logged_in') => $_session_is_logged_in, //_session_is_logged_in
                    config('app.authVar.session.is_autologged_out') => $_session_is_autologged_out, //_session_is_autologged_out
                    config('app.authVar.auth._user_id') => $params['user']['userid'],
                    config('app.authVar.auth._group_id') => $params['user']['groupid'],
                    config('app.authVar.auth._module_id') => $params['user']['moduleid'],
                    config('app.authVar.permissions._is_user_active') => $params['auth']['is_user_active'],
                    config('app.authVar.permissions._is_group_user_allowed') => $params['auth']['is_group_user_allowed'],
                    config('app.authVar.permissions._is_group_permission_allowed') => $params['auth']['is_group_permission_allowed'],
                    config('app.authVar.permissions._is_user_permission_allowed') => $params['auth']['is_user_permission_allowed']
                ]
            ];
            session($sessionAssignArr);
            session()->save();
            return $responseVal;
        }
    }
}
