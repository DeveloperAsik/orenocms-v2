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
use App\Models\Entity\uac\Tbl_b_uac_user_group_c_en;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of UsergroupsController
 *
 * @author 64146
 */
class UsergroupsController extends Controller {

    //put your code here
    //put your code here
    protected $General;
    protected $Converter;
    protected $Date;
    protected $Tbl_b_uac_user_group_c_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_b_uac_user_group_c_en = new Tbl_b_uac_user_group_c_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Permission</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Permissions',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/prefferences/uac/user-groups/create'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/prefferences/uac/user-groups/create'
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
                    '<th> User </th>',
                    '<th> Group </th>',
                    '<th> Status </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
        ]);
        $this->load_js([
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
                    ['a.__uac_user_id', 'like', '%' . $search . '%'],
                    ['a.__uac_group_id', 'like', '%' . $search . '%'],
                    ['b.__user_name', 'like', '%' . $search . '%'],
                    ['a.__name', 'like', '%' . $search . '%']
                ]
            ];
        }
        $params = [
            'table_name' => 'tbl_b_uac_user_group_c',
            'select' => ['a.*', 'b.id AS __user_id', 'b.__user_name', 'c.id AS __group_id', 'c.__name AS __group_name'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_users_p AS b', 'b.id', '=', 'a.__uac_user_id'],
                    ['tbl_a_uac_groups_p AS c', 'c.id', '=', 'a.__uac_group_id']
                ]
            ],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_b_uac_user_group_c_en->__find($request, 'all', $params);
        if (isset($data['data']) && !empty($data['data'])) {
            if ($offset == 0) {
                $i = 1;
            } else {
                $i = ($offset + 1);
            }
            $arrData = array();
            foreach ($data['data'] AS $keyword => $value) {
                $is_active = '';
                if ($value->is_active == 1) {
                    $is_active = ' checked';
                }
                $arrData[] = [
                    'id' => $i,
                    '__user' => 'ID : ' . $value->__user_id . ' <br/> Name : ' . $value->__user_name,
                    '__group' => 'ID : ' . $value->__group_id . ' <br/> Name : ' . $value->__group_name,
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
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
                        '__uac_user_id' => $data['a'],
                        '__uac_group_id' => $data['b'],
                        'is_active' => $data['c'],
                        'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_b_uac_user_group_c',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_b_uac_user_group_c_en->__update($request, $update_data, $paramsUpdate);
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
                'table_name' => 'tbl_b_uac_user_group_c',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $id]
                    ]
                ]
            ];
            $existData = $this->Tbl_b_uac_user_group_c_en->__find($request, 'first', $params);
            if ($existData && $existData['data']) {
                $insertUserPermissionsBackup = [
                    'table_name' => 'tbl_b_uac_user_group_c',
                    'data' => (array) $existData['data']
                ];
                $this->Tbl_b_uac_user_permissions_r_en->__insert($request, $insertUserPermissionsBackup, 'mysql_bak');
                $deleteParams = [
                    'table_name' => 'tbl_b_uac_user_group_c',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_b_uac_user_group_c_en->__delete($request, $deleteParams, 'mysql');
                return redirect()->back()->with('success', 'successfully delete data');
            } else {
                return redirect()->back()->with('error', 'failed delete data.');
            }
        }
    }
}
