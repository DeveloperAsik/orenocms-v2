<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Libraries\Oreno\Loader;
use View;

class Controller extends BaseController {

    use DispatchesJobs,
        ValidatesRequests;

    protected $Loader;

    public function __construct(Request $request) {
        $this->Loader = new Loader;
        $this->Loader->init($request);
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
