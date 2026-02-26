<?php

namespace App\Libraries\Oreno;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;
use App\Models\Entity\uac\Tbl_a_uac_permissions_p_en;
use App\Models\Entity\uac\Tbl_a_uac_modules_p_en;
use App\Models\Entity\uac\Tbl_b_uac_group_permissions_r_en;
use App\Models\Entity\uac\Tbl_b_uac_user_permissions_r_en;

/**
 * Description of Authentification
 *
 * @author 64146
 */
class Authentification {

    //put your code here
    protected $General;
    protected $Converter;
    protected $Tbl_a_uac_permissions_p_en;
    protected $Tbl_a_uac_modules_p_en;
    protected $Tbl_b_uac_group_permissions_r_en;
    protected $Tbl_b_uac_user_permissions_r_en;

    public function init_session_check($request, $next) {
        $sessionData = $request->session()->all();
        $response = false;
        if (isset($sessionData['_session_is_logged_in']) && !empty($sessionData['_session_is_logged_in']) && $sessionData['_session_is_logged_in'] == 1) {
            if (isset($sessionData['_permissions']['_is_group_allowed']) && !empty($sessionData['_permissions']['_is_group_allowed']) && $sessionData['_permissions']['_is_group_allowed'] == 1) {
                if (isset($sessionData['_permissions']['_is_user_allowed']) && !empty($sessionData['_permissions']['_is_user_allowed']) && $sessionData['_permissions']['_is_user_allowed'] == 1) {
                    $response = true;
                }
            }
        } else {
            $this->init_default_session($request);
        }
        return $response;
    }

    public function init_url_check($request, $next) {
        $this->Tbl_a_uac_permissions_p_en = new Tbl_a_uac_permissions_p_en();
        $urlpathonly = request()->path() . '/';
        $permissionCheck = $this->Tbl_a_uac_permissions_p_en->__get_permission($request, $urlpathonly);
        $response = false;
        if (isset($permissionCheck['data']) && !empty($permissionCheck['data']) && $permissionCheck['data']->__is_allowed == 1) {
            $response = true;
        }
        return $response;
    }

    public function init_url_check2($request, $next) {
        $this->Tbl_a_uac_permissions_p_en = new Tbl_a_uac_permissions_p_en();
        $urlpathonly = request()->path() . '/';
        $permissionFromUrl = $this->Tbl_a_uac_permissions_p_en->__get_permission($request, $urlpathonly);
        $response = false;
        if (isset($permissionFromUrl['data']) && !empty($permissionFromUrl['data']) && $permissionFromUrl['data']->is_active == 1 && $permissionFromUrl['data']->__is_public == 0) {
            if ($this->init_session_check($request, $next) == true) {
                $response = true;
            }
        }
        return $response;
    }

    public function init_group_permission_check($request, $next) {
        $this->Tbl_b_uac_group_permissions_r_en = new Tbl_b_uac_group_permissions_r_en();
        $urlpathonly = request()->path() . '/';
        $permissionFromGroup = $this->Tbl_b_uac_group_permissions_r_en->__get_permission_group($request, $urlpathonly);
        $response = false;
        if (isset($permissionFromGroup['data']) && !empty($permissionFromGroup['data']) && $permissionFromGroup['data']->__is_public == 1) {
            $response = true;
        }
        return $response;
    }

    public function init_user_permission_check($request, $next) {
        $this->Tbl_b_uac_user_permissions_r_en = new Tbl_b_uac_user_permissions_r_en();
        $urlpathonly = request()->path() . '/';
        $permissionFromUser = $this->Tbl_b_uac_user_permissions_r_en->__get_permission_user($request, $urlpathonly);
        $response = false;
        if (isset($permissionFromUser['data']) && !empty($permissionFromUser['data']) && $permissionFromUser['data']->__is_denied == 0) {
            $response = true;
        }
        return $response;
    }

    public function init_default_session($request, $data = []) {
        $urlpathonly = explode('/', request()->path());
        $segment1 = $urlpathonly[0] . '/';
        $this->Tbl_a_uac_modules_p_en = new Tbl_a_uac_modules_p_en();
        $getModuleName = $this->Tbl_a_uac_modules_p_en->__get_module($request, $segment1);
        $_session_is_logged_in = 0;
        $_session_is_autologged_out = (int) config('app.auto_logout');
        $_user_id = 0;
        $_group_id = 0;
        $this->Converter = new Converter();
        $_module_id = $this->Converter->base64($request, $getModuleName['data']->id, 'encode', ['rep' => 3]);
        $_is_group_allowed = 0;
        $_is_user_allowed = 0;
        if (isset($data) && !empty($data)) {
            $_session_is_autologged_out = 1;
        }
        $sessionAssignArr = [
            '_session_is_logged_in' => $_session_is_logged_in, //_session_is_logged_in
            '_session_is_autologged_out' => $_session_is_autologged_out, //_session_is_autologged_out
            '_auth' => [//_auth            
                '_user_id' => $_user_id, //_user_id
                '_group_id' => $_group_id, //_group_id
                '_module_id' => $_module_id, //_module
            ],
            '_permissions' => [//_permissions
                '_is_group_allowed' => $_is_group_allowed, //_is_group_allowed
                '_is_user_allowed' => $_is_user_allowed                         //_is_user_allowed
            ]
        ];
        session($sessionAssignArr);
        session()->save();
    }

    public function clear_session($request) {
        $sessionAssignArr = [
            '_session_is_logged_in' => 0,
            '_session_is_autologged_out' => 0,
            '_auth' => [//_auth            
                '_user_id' => 0,
                '_group_id' => 0,
                '_module_id' => 0,
            ],
            '_permissions' => [//_permissions
                '_is_group_allowed' => 0,
                '_is_user_allowed' => 0,
            ]
        ];
        session($sessionAssignArr);
        session()->forget('alert-msg');
        session()->flush();
        session()->save();
    }
}
