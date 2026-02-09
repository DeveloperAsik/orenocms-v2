<?php

namespace App\Http\Controllers\Backend\Master\AccessControl;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Libraries\Oreno\General;

/**
 * Description of UserController
 *
 * @author 64146
 */
class UserController extends Controller {

    //put your code here
    protected $General;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Group</b> master data management page',
            'create_page' => [
                'title' => 'click to open form create new group',
                'icon' => '<i class="fas fa-square-plus"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/group/create'
            ]
        ];
        //$this->load_css([
        //    //config('app.base_url_assets_templates') .''
        //]);
        //$this->load_js([
        //]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }
}
