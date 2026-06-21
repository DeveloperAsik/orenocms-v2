<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Libraries\Oreno\Authentification;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Loader;
use View;

class Controller extends BaseController {

    use DispatchesJobs,
        ValidatesRequests;

    protected $Authentification;
    protected $Loader;
    protected $Converter;

    public function __construct(Request $request) {
        $this->Authentification = new Authentification();
        $this->Converter = new Converter();
        $this->Loader = new Loader;
        $this->Loader->init($request);
        $this->__load_data_to_object($request);
    }

    public function __load_data_to_object($request) {
        $data = $request->session()->all();
        $_session_is_logged_in = 0;
        if (isset($data['_authentification'][$this->Authentification->__encr_to_var('is_logged_in')]) && !empty($data['_authentification'][$this->Authentification->__encr_to_var('is_logged_in')]) && $data['_authentification'][$this->Authentification->__encr_to_var('is_logged_in')] == 1) {
            $_session_is_logged_in = (int) $data['_authentification'][$this->Authentification->__encr_to_var('is_logged_in')];
            $this->__is_logged_in = $_session_is_logged_in;
            $this->__is_autologged_out = (int) $data['_authentification'][$this->Authentification->__encr_to_var('is_autologged_out')];
            $this->__user_id = $this->Converter->base64($request, $data['_authentification'][$this->Authentification->__encr_to_var('_user_id')], 'decode', ['rep' => 3]);
            $this->__group_id = $this->Converter->base64($request, $data['_authentification'][$this->Authentification->__encr_to_var('_group_id')], 'decode', ['rep' => 3]);
            $this->__module_id = $this->Converter->base64($request, $data['_authentification'][$this->Authentification->__encr_to_var('_module_id')], 'decode', ['rep' => 3]);

            $this->_is_group_user_allowed = $data['_authentification'][$this->Authentification->__encr_to_var('_is_group_user_allowed')];
            $this->_is_group_permission_allowed = $data['_authentification'][$this->Authentification->__encr_to_var('_is_group_permission_allowed')];
            $this->_is_user_permission_allowed = $data['_authentification'][$this->Authentification->__encr_to_var('_is_user_permission_allowed')];
        }
        View::share('_session_is_logged_in', $_session_is_logged_in);
    }

    public function load_css($class = array()) {
        if ($class) {
            View::share('load_css', $class);
        }
    }

    public function load_js($class = array()) {
        if ($class) {
            View::share('load_js', $class);
        }
    }

    public function load_ajax_var($values = array()) {
        if ($values) {
            View::share('load_ajax_var', $values);
        }
    }
}
