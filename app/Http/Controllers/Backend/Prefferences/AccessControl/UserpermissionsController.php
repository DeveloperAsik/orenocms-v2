<?php

namespace App\Http\Controllers\Backend\Prefferences\AccessControl;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Date;
use App\Models\Entity\uac\Tbl_b_uac_user_permissions_r_en;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of UserpermissionsController
 *
 * @author 64146
 */
class UserpermissionsController {

    //put your code here
    //put your code here
    protected $General;
    protected $Converter;
    protected $Date;
    protected $Tbl_b_uac_user_permissions_r_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_b_uac_user_permissions_r_en = new Tbl_b_uac_user_permissions_r_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Permission</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Permissions',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/prefferences/uac/user-permissions/create'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/prefferences/uac/user-permissions/create'
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
            return $this->__get_list_default($request);
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
        $conditions = [];
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
            'table_name' => 'tbl_b_uac_user_permissions_r',
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_b_uac_user_permissions_r_en->__find($request, 'all', $params);
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
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/prefferences/uac/user-permissions/edit/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/prefferences/uac/user-permissions/remove/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/prefferences/uac/user-permissions/delete/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
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

    public function update(Request $request, $params = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $id = base64_decode($params);
            switch ($data['a']) {
                case 'is_active':
                    $update_data = [
                        'is_active' => $data['b'],
                        'updated_by' => $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                default:
                    $alias = strtolower(str_replace(' ', '-', $data['name']));
                    $update_data = [
                        '__alias' => $data['a'],
                        '__name' => $__path,
                        '__path' => $__path,
                        '__controller' => $data['c'],
                        '__action' => $action['data'][0]->__name,
                        '__method' => $action['data'][0]->__method,
                        '__segment1' => $__segment1,
                        '__segment2' => $__segment2,
                        '__segment3' => $__segment3,
                        '__segment4' => $__segment4,
                        '__segment5' => $__segment5,
                        '__segment6' => $__segment6,
                        '__segment7' => $__segment7,
                        '__segment8' => $__segment8,
                        '__description' => isset($data['f']) ? $data['f'] : '-',
                        '__is_basic' => $data['f'],
                        '__is_public' => $data['g'],
                        'is_active' => $data['h'],
                        'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_b_uac_user_permissions_r',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_b_uac_user_permissions_r_en->__update($request, $update_data, $paramsUpdate);
            if ($response) {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully update data', 'valid' => true]);
            } else {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed update data.', 'valid' => false]);
            }
        }
    }

    public function remove(Request $request, $params = null) {
        if ($params != null) {
            $data = (['a' => 'is_active']);
            //$request->request->add($data);
            $request->json()->replace([
                'a' => 'is_active',
                'b' => 0
            ]);
            $resp = $this->update($request, $params);
            $response = json_decode($resp);
            if ($response && $response->status->code == 200) {
                return redirect()->back()->with('success', 'successfully update data');
            } else {
                return redirect()->back()->with('error', 'failed update data.');
            }
        }
    }

    public function delete(Request $request, $params = null) {
        if ($params != null) {
            $id = base64_decode($params);
            $params = [
                'table_name' => 'tbl_b_uac_user_permissions_r',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $id]
                    ]
                ]
            ];
            $existData = $this->Tbl_b_uac_user_permissions_r_en->__find($request, 'first', $params);
            if ($existData && $existData['data']) {
                $insertUserPermissionsBackup = [
                    'table_name' => 'tbl_b_uac_user_permissions_r',
                    'data' => (array) $existData['data']
                ];
                $this->Tbl_b_uac_user_permissions_r_en->__insert($request, $insertUserPermissionsBackup, 'mysql_bak');
                $deleteParams = [
                    'table_name' => 'tbl_b_uac_user_permissions_r',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_b_uac_user_permissions_r_en->__delete($request, $deleteParams, 'mysql');
                return redirect()->back()->with('success', 'successfully delete data');
            } else {
                return redirect()->back()->with('error', 'failed delete data.');
            }
        }
    }
}
