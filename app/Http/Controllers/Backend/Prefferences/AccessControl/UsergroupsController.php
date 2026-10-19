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
use App\Models\Entity\uac\Tbl_a_uac_users_p_en;
use App\Models\Entity\uac\Tbl_a_uac_groups_p_en;

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
    protected $Tbl_a_uac_users_p_en;
    protected $Tbl_a_uac_groups_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_b_uac_user_group_c_en = new Tbl_b_uac_user_group_c_en();
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_a_uac_groups_p_en = new Tbl_a_uac_groups_p_en();
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
                'link' => 'data-toggle="modal" href="#md_create_user_group"'
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
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ],
            'modals' => [
                'title' => 'Assign User with Group',
                'el-id' => 'md_create_user_group'
            ]
        ];
        $_modal_data = [
            'html.modals.prefferences.uac.user-groups.md_create'
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', '_modal_data'));
    }

    public function get_list(Request $request) {
        $data = $request->json()->all();
        if (isset($data['a']) && !empty($data['a'])) {
            switch ($data['a']) {
                case 1:
                    return $this->__get_list_users($request);
                    break;
                case 2 :
                    return $this->__get_list_groups($request);
                    break;
            }
        } else {
            return $this->__get_list_default($request);
        }
    }

    public function __get_list_users($request) {
        $params = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email'],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', '1']
                ],
                'whereNotIn' => [
                    ['a.id', [1]]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_a_uac_users_p_en->__find($request, 'all', $params);
        $arrData = '<option value="0">-- select one --</option>';
        if (isset($data['data']) && !empty($data['data'])) {
            foreach ($data['data'] AS $keyword => $value) {
                $arrData .= '<option value="' . $value->id . '">' . $value->__email . '</option>';
            }
        }
        return $arrData;
    }

    public function __get_list_groups($request) {
        $params = [
            'table_name' => 'tbl_a_uac_groups_p',
            'select' => ['a.id', 'a.__name'],
            'conditions' => [
                'whereNotIn' => [
                    ['a.id', [1]]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_a_uac_groups_p_en->__find($request, 'all', $params);
        $arrData = '<option value="0">-- select one --</option>';
        if (isset($data['data']) && !empty($data['data'])) {
            foreach ($data['data'] AS $keyword => $value) {
                $arrData .= '<option value="' . $value->id . '">' . $value->__name . '</option>';
            }
        }
        return $arrData;
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
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/prefferences/uac/user-groups/remove/' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
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
        $insert_data = [];
        $update_data = [];
        if (isset($data) && !empty($data)) {
            dd($data);
            $id = $this->Converter->base64_basic($params, 'decode', ['rep' => 3]); //base64_decode(base64_decode(base64_decode($params)));
            switch ($data['a']) {
                case 'is_active':
                    $update_data = [
                        'is_active' => $data['b'],
                        'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case 'is_insert':
                    $insert_data = [
                        '__uac_user_id' => $data['b'],
                        '__uac_group_id' => $data['c'],
                        'is_active' => $data['b'],
                        'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
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
            $code = 200;
            if ($data['a'] == 'is_insert') {
                $validate_exist = $this->__validate_user_group_exist($request, $data['b'], $data['c']);
                dd($validate_exist);
                $msg_success = 'successfully insert data';
                $msg_failed = 'failed insert data.';
                $paramsInsert = [
                    'table_name' => 'tbl_b_uac_user_group_c',
                    'data' => (array) $insert_data
                ];
                dd($paramsInsert);
                $response = $this->Tbl_b_uac_user_group_c_en->__insert($request, $paramsInsert);
            } else {
                $msg_success = 'successfully update data';
                $msg_failed = 'failed update data.';
                $paramsUpdate = [
                    'table_name' => 'tbl_b_uac_user_group_c',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_b_uac_user_group_c_en->__update($request, $update_data, $paramsUpdate);
            }
            if ($response) {
                return $this->General->_set_response('json', ['code' => $code, 'message' => $msg, 'valid' => true]);
            } else {
                return $this->General->_set_response('json', ['code' => $code, 'message' => $msg_failed, 'valid' => false]);
            }
        }
    }

    public function __validate_user_group_exist($request, $user_id, $group_id) {
        $params = [
            'table_name' => 'tbl_a_uac_groups_p',
            'select' => ['a.id', 'a.__name'],
            'conditions' => [
                'where' => [
                    ['a.__uac_user_id', '=', $user_id],
                    ['a.__uac_group_id', '=', $group_id]
                ]
            ]
        ];
        $data = $this->Tbl_a_uac_groups_p_en->__find($request, 'first', $params);
        $response = '';
        if (isset($data) && !empty($data)) {
            dd($data);
            $response = '';
        }
        return $response;
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
