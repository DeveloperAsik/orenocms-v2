<?php

namespace App\Http\Controllers\Backend\Master\AccessControl;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\Oreno\General;

/**
 * Description of GroupController
 *
 * @author 64146
 */
class GroupController extends Controller {

    //put your code here
    protected $General;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_breadcrumbs = [
            [
                'id' => 1,
                'title' => 'Dashboard',
                'icon' => '',
                'arrow' => true,
                'path' => config('app.base_extraweb_uri')
            ],
            [
                'id' => 2,
                'title' => 'Master Group list',
                'icon' => '',
                'arrow' => false,
                'path' => '#'
            ]
        ];
        $_config = [
            'title_for_header' => '<b>Group</b> master data management page',
            'create_page' => [
                'title' => 'click to open form create new group',
                'icon' => '<i class="fas fa-square-plus"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/group/create'
            ]
        ];
        $this->load_css([
        ]);
        $this->load_js([
        ]);
        return view('Public_html.Layouts.Adminlte.dashboard', compact('title_for_layout', '_breadcrumbs', '_config'));
    }
}
