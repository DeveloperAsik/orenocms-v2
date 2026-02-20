<?php

namespace App\Http\Controllers\Backend\Master\AccessControl;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Date;
use App\Models\Entity\uac\Tbl_a_uac_permissions_p_en;
use App\Models\Entity\app\Tbl_d_app_assets_master_controller_p_en;
use App\Models\Entity\app\Tbl_d_app_assets_master_method_p_en;

/**
 * Description of PermissionController
 *
 * @author 64146
 */
class PermissionController extends Controller {

    //put your code here
    protected $General;
    protected $Converter;
    protected $Date;
    protected $Tbl_a_uac_permissions_p_en;
    protected $Tbl_d_app_assets_master_controller_p_en;
    protected $Tbl_d_app_assets_master_method_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_a_uac_permissions_p_en = new Tbl_a_uac_permissions_p_en();
        $this->Tbl_d_app_assets_master_controller_p_en = new Tbl_d_app_assets_master_controller_p_en();
        $this->Tbl_d_app_assets_master_method_p_en = new Tbl_d_app_assets_master_method_p_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Group</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Permissions',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/permissions/create'
            ],
            'header' => [
                'title' => 'Add New',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/permissions/create'
            ],
            'tables' => [
                'el-id' => 'dt_tbl_permissions',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Path </th>',
                    '<th> Controller </th>',
                    '<th> Action Cont </th>',
                    '<th> Method </th>',
                    '<th> Basic </th>',
                    '<th> Public </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function get_list(Request $request) {
        $data = $request->all();
        if (isset($data) && !empty($data)) {
            if (isset($data['a']) && !empty($data['a'])) {
                switch ($data['a']) {
                    case 1:
                        return $this->__get_list_path_segment($request);
                        break;
                }
            } else {
                return $this->__get_list_default($request);
            }
        }
    }

    public function __get_list_default($request) {
        $draw = $request->draw;
        $limit = ($request->length) ? $request->length : 10;
        if ($request->length == '-1') {
            $limit = 1000;
        }
        $offset = ($request->start) ? $request->start : 0;
        $search = $request->search['value'];
        $conditions = ['where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($search) && !empty($search)) {
            $conditions = [
                'orWhere' => [
                    ['a.__name', 'like', '%' . $search . '%'],
                    ['a.__path', 'like', '%' . $search . '%'],
                    ['a.__controller', 'like', '%' . $search . '%'],
                    ['a.__action', 'like', '%' . $search . '%']
                ]
            ];
        }
        $params = [
            'table_name' => 'tbl_a_uac_permissions_p',
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_a_uac_permissions_p_en->__find($request, 'all', $params);
        if (isset($data['data']) && !empty($data['data'])) {
            if ($offset == 0) {
                $i = 1;
            } else {
                $i = ($offset + 1);
            }
            $arrData = array();
            foreach ($data['data'] AS $keyword => $value) {
                $is_basic = '';
                if ($value->__is_basic == 1) {
                    $is_basic = ' checked';
                }
                $is_public = '';
                if ($value->__is_public == 1) {
                    $is_public = ' checked';
                }
                $is_active = '';
                if ($value->is_active == 1) {
                    $is_active = ' checked';
                }
                $arrData[] = [
                    'id' => $i,
                    '__name' => $value->__name,
                    '__path' => $value->__path,
                    '__controller' => $value->__controller,
                    '__action' => $value->__action,
                    '__method' => $value->__method,
                    'basic' => '<input type="checkbox"' . $is_basic . ' name="is_basic" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'public' => '<input type="checkbox"' . $is_public . ' name="is_public" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/master/uac/permission/edit/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/master/uac/permission/remove/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/master/uac/permission/delete/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
                      </div>',
                ];
                if ($i <= $data['meta']['total']) {
                    $i++;
                }
            }
            $output = array(
                'draw' => $draw,
                'recordsTotal' => $data['meta']['total'],
                'recordsFiltered' => $data['meta']['total'],
                'data' => $arrData,
            );
            echo json_encode($output);
        } else {
            echo json_encode(array());
        }
    }
    
    public function __get_list_path_segment($request){
         $data = $request->json()->all();
         dd($data);
    }

    public function create(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Group</b> master data management page',
            'pages' => [
                'title' => 'Create Page Master Data Permissions',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/permissions/create'
            ],
            'form' => [
                'el-id' => 'frm_create_permission',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Path </th>',
                    '<th> Controller </th>',
                    '<th> Action Cont </th>',
                    '<th> Method </th>',
                    '<th> Basic </th>',
                    '<th> Public </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $controllers = $this->Tbl_d_app_assets_master_controller_p_en->__get_all($request);
        $actions = $this->Tbl_d_app_assets_master_method_p_en->__get_all($request);
        $StrHtmlActions = '';
        if (isset($actions['data']) && !empty($actions['data'])) {
            foreach ($actions['data'] AS $key => $val) {
                $param = $val->__param;
                if (isset($param) && !empty($param)) {
                    $param = ' - ' . $param;
                }
                $StrHtmlActions .= '<option value="' . $val->id . '">' . $val->__name . $param . '</option>';
            }
        }
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'controllers', 'StrHtmlActions'));
    }

    public function insert(Request $request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            dd($data);
            $code = $this->General->getRandomChar(20);
            $alias = $this->General->getSlug($data['a']);
            $insert = [
                'table_name' => 'tbl_a_uac_permissions_p',
                'data' => [
                    'code' => $code,
                    '__alias' => $alias,
                    '__name' => $data['a'],
                    '__path' => $data['b'],
                    '__controller' => $data['c'],
                    '__action' => $data['d'],
                    '__method' => $data['e'],
                    '__description' => isset($data['f']) ? $data['f'] : '-',
                    '__is_basic' => isset($data['ib ']) ? 1 : 0,
                    '__is_public' => isset($data['ip']) ? 1 : 0,
                    'is_active' => isset($data['ia']) ? 1 : 0,
                    'created_by' => $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => $this->__user_id,
                    'updated_date' => $this->Date->now()
                ]
            ];
            $response = $this->Tbl_a_uac_permissions_p_en->__insert($request, $insert);
            if ($response) {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully update data', 'valid' => true]);
            } else {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed update data.', 'valid' => false]);
            }
        }
    }

    public function edit(Request $request, $params = null) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Group</b> master data management page',
            'pages' => [
                'title' => 'Create Page Master Data Permissions',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/permissions/create'
            ],
            'form' => [
                'el-id' => 'frm_create_permission',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Path </th>',
                    '<th> Controller </th>',
                    '<th> Action Cont </th>',
                    '<th> Method </th>',
                    '<th> Basic </th>',
                    '<th> Public </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);

        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function update(Request $request, $params = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $id = base64_decode($params);
            switch ($data['a']) {
                case 'is_basic':
                    $update_data = [
                        '__is_basic' => $data['b'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case 'is_public':
                    $update_data = [
                        '__is_public' => $data['b'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case 'is_active':
                    $update_data = [
                        'is_active' => $data['b'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                default:
                    $alias = strtolower(str_replace(' ', '-', $data['name']));
                    $update_data = [
                        '__alias' => $alias,
                        '__name' => $data['name'],
                        '__path' => $data['path'],
                        '__controller' => $data['controller'],
                        '__action' => $data['action'],
                        '__method' => $data['method'],
                        '__description' => isset($data['description']) ? $data['description'] : '-',
                        '__is_basic' => isset($data['is_basic ']) ? 1 : 0,
                        '__is_public' => isset($data['is_public']) ? 1 : 0,
                        'is_active' => isset($data['is_active']) ? 1 : 0,
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_a_uac_permissions_p',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_a_uac_permissions_p_en->__update($request, $update_data, $paramsUpdate);
            if ($response) {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully update data', 'valid' => true]);
            } else {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed update data.', 'valid' => false]);
            }
        }
    }
}
