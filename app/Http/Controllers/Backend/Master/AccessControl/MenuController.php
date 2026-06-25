<?php

namespace App\Http\Controllers\Backend\Master\AccessControl;

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
use App\Models\Entity\uac\Tbl_a_uac_menu_p_en;

/**
 * Description of MenuController
 *
 * @author 64146
 */
class MenuController extends Controller {

//put your code here
    protected $General;
    protected $Converter;
    protected $Date;
    protected $Tbl_a_uac_menu_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_a_uac_menu_p_en = new Tbl_a_uac_menu_p_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Menu</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/create'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/create'
            ],
            'tables' => [
                'el-id' => 'dt_tbl_menus',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Path </th>',
                    '<th> Icon </th>',
                    '<th> Level </th>',
                    '<th> Rank </th>',
                    '<th> Basic </th>',
                    '<th> Is Dashboard </th>',
                    '<th> Is Head </th>',
                    '<th> Is Basic </th>',
                    '<th> Is Open</th>',
                    '<th> Status </th>'
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
                        return $this->__get_tree_view_list($request);
                        break;
                    case 2:
                        return $this->__get_data_by_id($request);
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
        $conditions = [];
        if (isset($search) && !empty($search)) {
            $conditions = [
                'orWhere' => [
                    ['a.__code', 'like', '%' . $search . '%'],
                    ['a.__name', 'like', '%' . $search . '%'],
                    ['a.__path', 'like', '%' . $search . '%'],
                    ['a.__level', 'like', '%' . $search . '%'],
                    ['a.__rank', 'like', '%' . $search . '%']
                ]
            ];
        }
        $params = [
            'table_name' => 'tbl_a_uac_menu_p',
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_a_uac_menu_p_en->__find($request, 'all', $params);
        if (isset($data['data']) && !empty($data['data'])) {
            if ($offset == 0) {
                $i = 1;
            } else {
                $i = ($offset + 1);
            }
            $arrData = array();
            foreach ($data['data'] AS $keyword => $value) {
                $__is_dashboard = '';
                if ($value->__is_dashboard == 1) {
                    $__is_dashboard = ' checked';
                }
                $__is_selected = '';
                if ($value->__is_selected == 1) {
                    $__is_selected = ' checked';
                }
                $__is_basic = '';
                if ($value->__is_basic == 1) {
                    $__is_basic = ' checked';
                }
                $__is_open = '';
                if ($value->__is_open == 1) {
                    $__is_open = ' checked';
                }
                $is_active = '';
                if ($value->is_active == 1) {
                    $is_active = ' checked';
                }
                $arrData[] = [
                    'id' => $i,
                    '__name' => $value->__name,
                    '__path' => $value->__path,
                    '__icon' => $value->__icon,
                    '__level' => $value->__level,
                    '__rank' => $value->__rank,
                    '__is_dashboard' => '<input type="checkbox"' . $__is_dashboard . ' name="__is_dashboard" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    '__is_selected' => '<input type="checkbox"' . $__is_selected . ' name="__is_selected" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    '__is_basic' => '<input type="checkbox"' . $__is_basic . ' name="__is_basic" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    '__is_open' => '<input type="checkbox"' . $__is_open . ' name="__is_open" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menus/edit/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menus/remove/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menus/delete/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
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

    public function __fetch_tree_view_data($request, $level = '', $parent = '') {
        $response = null;
        if ($level != '') {
            $cond1 = [
                ['a.__level', '=', $level]
            ];
            $cond2 = [];
            if ($parent != '') {
                $cond2 = [
                    ['a.__uac_menu_parent_id', '=', $parent]
                ];
            }
            $conditions = [
                'where' => array_merge($cond1, $cond2)
            ];
            $params = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.*'],
                'conditions' => $conditions
            ];
            $data = $this->Tbl_a_uac_menu_p_en->__find($request, 'all', $params);
            if (isset($data['data']) && !empty($data['data'])) {
                $response = $data['data'];
            }
        }
        return $response;
    }

    public function __get_data_by_id($request) {
        $data = $request->json()->all();
        $dataArrTreeView = [];
        if ($data['id'] == 0) {
            $dataArrTreeView = [
                '__name' => 'Root Menu',
                '__path' => '/',
                '__icon' => 'fa fa-folder icon-state-default',
                '__level' => 0,
                '__rank' => 0,
                '__badge' => '',
                '__badge_value' => '',
                '__badge_id' => '',
                '__is_badge' => 0,
                '__is_dashboard' => 0,
                '__is_selected' => 0,
                '__is_basic' => 1,
                '__is_open' => 1,
                '__is_disabled' => 0,
                'is_active' => 1,
            ];
        } else {
            $params = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $data['id']]
                    ]
                ]
            ];
            $dataDB = $this->Tbl_a_uac_menu_p_en->__find($request, 'first', $params);
            if (isset($dataDB['data']) && !empty($dataDB['data'])) {
                $dataArrTreeView = $dataDB['data'];
            }
        }
        return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetching data', 'valid' => true, 'data' => $dataArrTreeView]);
    }

    public function __get_tree_view_list($request) {
        $params = [
            'table_name' => 'tbl_a_uac_menu_p',
            'select' => ['a.id', 'a.__level'],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1]
                ]
            ],
            'group' => 'a.__level'
        ];
        $data = $this->Tbl_a_uac_menu_p_en->__find($request, 'all', $params);
        $data_child_1 = [];
        if (isset($data['data']) && !empty($data['data']) && count($data['data']) >= 1) {
            $lvl_start = $data['data'][0]->__level;
            $lvl_end = count($data['data']);
            foreach ($data['data'] AS $keyword => $value) {
                $data_level_1 = $this->__fetch_tree_view_data($request, (int) $value->__level);
                if ($value->__level == 1) {
                    foreach ($data_level_1 AS $key1 => $value1) {
                        $child_level_2 = [];
                        $new_level2 = $value->__level + 1;
                        $data_level_2 = $this->__fetch_tree_view_data($request, (int) $new_level2, (int) $value1->id);
                        if (isset($data_level_2) && !empty($data_level_2)) {
                            foreach ($data_level_2 AS $key2 => $value2) {
                                $child_level_3 = [];
                                $new_level3 = $value2->__level + 1;
                                $data_level_3 = $this->__fetch_tree_view_data($request, (int) $new_level3, (int) $value2->id);
                                if (isset($data_level_3) && !empty($data_level_3)) {
                                    foreach ($data_level_3 AS $key2 => $value3) {
                                        $child_level_4 = [];
                                        $new_level4 = $value3->__level + 1;
                                        $data_level_4 = $this->__fetch_tree_view_data($request, (int) $new_level4, (int) $value3->id);
                                        if (isset($data_level_4) && !empty($data_level_4)) {
                                            $child_level_4 = [];
                                            foreach ($data_level_4 AS $key4 => $value4) {
                                                $child_level_5 = [];
                                                $new_level5 = $value4->__level + 1;
                                                $data_level_5 = $this->__fetch_tree_view_data($request, (int) $new_level5, (int) $value4->id);
                                                if (isset($data_level_4) && !empty($data_level_4)) {
                                                    $child_level_5 = [];
                                                    foreach ($data_level_5 AS $key5 => $value5) {
                                                        $child_level_6 = [];
                                                        $new_level6 = $value5->__level + 1;
                                                        $data_level_6 = $this->__fetch_tree_view_data($request, (int) $new_level6, (int) $value5->id);
                                                        if (isset($data_level_6) && !empty($data_level_6)) {
                                                            $child_level_6 = [];
                                                            foreach ($data_level_6 AS $key6 => $value6) {
                                                                $child_level_7 = [];
                                                                //$__is_selected6 = ($value6->__is_selected == 1) ? true : false;
                                                                $__is_open6 = ($value6->__is_open) ? true : false;
                                                                $__is_disabled6 = ($value6->__is_disabled) ? true : false;
                                                                $child_level_5[] = [
                                                                    'id' => $value6->id,
                                                                    'text' => $value6->__name,
                                                                    'icon' => $value6->__icon,
                                                                    'level_id' => $value6->__level,
                                                                    'parent_id' => $value6->__uac_menu_parent_id,
                                                                    'state' => [
                                                                        'opened' => $__is_open6,
                                                                        'disabled' => $__is_disabled6
                                                                    ],
                                                                    'children' => $child_level_7
                                                                ];
                                                            }
                                                        }
                                                        //$__is_selected5 = ($value5->__is_selected == 1) ? true : false;
                                                        $__is_open5 = ($value5->__is_open) ? true : false;
                                                        $__is_disabled5 = ($value5->__is_disabled) ? true : false;
                                                        $child_level_5[] = [
                                                            'id' => $value5->id,
                                                            'text' => $value5->__name,
                                                            'icon' => $value5->__icon,
                                                            'level_id' => $value5->__level,
                                                            'parent_id' => $value5->__uac_menu_parent_id,
                                                            'state' => [
                                                                'opened' => $__is_open5,
                                                                'disabled' => $__is_disabled5
                                                            ],
                                                            'children' => $child_level_6
                                                        ];
                                                    }
                                                }
                                                //$__is_selected4 = ($value4->__is_selected == 1) ? true : false;
                                                $__is_open4 = ($value4->__is_open) ? true : false;
                                                $__is_disabled4 = ($value4->__is_disabled) ? true : false;
                                                $child_level_4[] = [
                                                    'id' => $value4->id,
                                                    'text' => $value4->__name,
                                                    'icon' => $value4->__icon,
                                                    'level_id' => $value4->__level,
                                                    'parent_id' => $value4->__uac_menu_parent_id,
                                                    'state' => [
                                                        'opened' => $__is_open4,
                                                        'disabled' => $__is_disabled4
                                                    ],
                                                    'children' => $child_level_5
                                                ];
                                            }
                                        }
                                        //$__is_selected3 = ($value3->__is_selected == 1) ? true : false;
                                        $__is_open3 = ($value3->__is_open) ? true : false;
                                        $__is_disabled3 = ($value3->__is_disabled) ? true : false;
                                        $child_level_3[] = [
                                            'id' => $value3->id,
                                            'text' => $value3->__name,
                                            'icon' => $value3->__icon,
                                            'level_id' => $value3->__level,
                                            'parent_id' => $value3->__uac_menu_parent_id,
                                            'state' => [
                                                'opened' => $__is_open2,
                                                'disabled' => $__is_disabled2
                                            ],
                                            'children' => $child_level_4
                                        ];
                                    }
                                }
                                //$__is_selected2 = ($value2->__is_selected == 1) ? true : false;
                                $__is_open2 = ($value2->__is_open) ? true : false;
                                $__is_disabled2 = ($value2->__is_disabled) ? true : false;
                                $child_level_2[] = [
                                    'id' => $value2->id,
                                    'text' => $value2->__name,
                                    'icon' => $value2->__icon,
                                    'level_id' => $value2->__level,
                                    'parent_id' => $value2->__uac_menu_parent_id,
                                    'state' => [
                                        'opened' => $__is_open2,
                                        'disabled' => $__is_disabled2
                                    ],
                                    'children' => $child_level_3
                                ];
                            }
                        }
                        //$__is_selected = ($value1->__is_selected == 1) ? true : false;
                        $__is_open = ($value1->__is_open) ? true : false;
                        $__is_disabled = ($value1->__is_disabled) ? true : false;
                        $data_child_1[] = [
                            'id' => $value1->id,
                            'text' => $value1->__name,
                            'icon' => $value1->__icon,
                            'level_id' => $value1->__level,
                            'parent_id' => $value1->__uac_menu_parent_id,
                            'state' => [
                                'opened' => $__is_open,
                                'disabled' => $__is_disabled
                            ],
                            'children' => $child_level_2
                        ];
                    }
                }
            }
        }
        $dataArrTreeView = [
            'id' => '0',
            'text' => 'Root Menu',
            'icon' => 'fa fa-folder icon-state-default',
            'level_id' => 0,
            'parent_id' => 0,
            'state' => [
                'opened' => true,
                'disabled' => false
            ],
            'children' => $data_child_1
        ];
        return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetching data', 'valid' => true, 'data' => $dataArrTreeView]);
    }

    public function tree_view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Tree View Menu</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/tree-view'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/create'
            ],
            'tables' => [
                'el-id' => 'dt_tbl_menus',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Path </th>',
                    '<th> Icon </th>',
                    '<th> Level </th>',
                    '<th> Rank </th>',
                    '<th> Basic </th>',
                    '<th> Is Dashboard </th>',
                    '<th> Is Head </th>',
                    '<th> Is Basic </th>',
                    '<th> Is Open</th>',
                    '<th> Status </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jstree/dist/themes/default/style.min.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jstree/dist/jstree.min.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function create(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Menu</b> master data management page',
            'pages' => [
                'title' => 'Create Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/create'
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/view'
            ],
            'form' => [
                'el-id' => 'frm_create_permission',
                'btn-tools' => [
                    '<li><a href="javascript:;
                    "> Print </a></li>',
                    '<li><a href="javascript:;
                ">Save as PDF </a></li>',
                    '<li><a href="javascript:;
                    ">Export to Excel </a></li>'
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
        $users = $this->Tbl_a_uac_users_p_en->__get_all($request);
        $groups = $this->Tbl_a_uac_groups_p_en->__get_all($request);
        $actions = $this->Tbl_d_app_assets_master_method_p_en->__get_all($request);

        $StrHtmlUsers = '';
        if (isset($users['data']) && !empty($users['data'])) {
            foreach ($users['data'] AS $key1 => $val1) {
                $StrHtmlUsers .= '<option value="' . $val1->id . '" title="' . $val1->__email . '">' . $val1->__user_name . '</option>';
            }
        }
        $StrHtmlMenus = '';
        if (isset($groups['data']) && !empty($groups['data'])) {
            foreach ($groups['data'] AS $key2 => $val2) {
                $StrHtmlMenus .= '<option value="' . $val2->id . '" title="level : ' . $val2->__level . '">' . $val2->__name . '</option>';
            }
        }
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js",
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'controllers', 'StrHtmlActions', 'StrHtmlUsers', 'StrHtmlMenus'));
    }

    public function insert(Request $request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            if (isset($data['a']) && !empty($data['a']) && $data['a'] != null) {
                return $this->__insert_update_menu_tree($request);
            } else {
                return $this->__insert_default($request);
            }
        }
    }

    public function __insert_default($request) {
        $data = $request->json()->all();
        dd($data);
        if (isset($data) && !empty($data)) {
            $code = $this->General->getRandomChar(20);
            $insertData = [];
            if (isset($data['d']) && !empty($data['d'])) {
                foreach ($data['d'] AS $key => $value) {
                    $action = $this->Tbl_d_app_assets_master_method_p_en->__find_by_id($request, $value);
                    $__segment1 = $__segment2 = $__segment3 = $__segment4 = $__segment5 = $__segment6 = $__segment7 = $__segment8 = '';
                    $param = '';
                    if (isset($action['data'][0]->__param) && !empty($action['data'][0]->__param)) {
                        $param = '/' . $action['data'][0]->__param;
                    }
                    $classPath = strtolower(str_replace('Controller', '', $data['c']));
                    $__path = $data['b'] . '/' . $classPath . '/' . $action['data'][0]->__name . $param;

                    $get_segment_by_url = $this->General->getSegmentByUrl($__path);
                    $segmented = explode('/', $get_segment_by_url);
                    if ($segmented) {
                        $n = 1;
                        foreach ($segmented AS $k => $v) {
                            ${'__segment' . $n} = $v;
                            $n++;
                        }
                    }
                    $insertData[] = [
                        'code' => $code,
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
                        'created_by' => (int) $this->__user_id,
                        'created_date' => $this->Date->now(),
                        'updated_by' => (int) $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                }
            }
            $insert = [
                'table_name' => 'tbl_a_uac_menus_p',
                'data' => $insertData
            ];
            $response = true; //$this->Tbl_a_uac_menus_p_en->__insert($request, $insert);
            if ($response) {
                $menus = $this->__get_list_by_controller($request, $data['c']);
                $arrUserMenus = [];
                $arrMenuMenus = [];
                foreach ($menus['data'] AS $key1 => $permission) {
                    //apply to user
                    if (isset($data['r']) && !empty($data['r'])) {
                        foreach ($data['r'] AS $key => $user) {
                            $arrUserMenus[] = [
                                '__user_id' => (int) $user,
                                '__permission_id' => $permission->id,
                                '__is_denied' => 0,
                                'is_active' => $data['h'],
                                'created_by' => (int) $this->__user_id,
                                'created_date' => $this->Date->now(),
                                'updated_by' => (int) $this->__user_id,
                                'updated_date' => $this->Date->now()
                            ];
                        }
                    }
                    //apply to group
                    if (isset($data['t']) && !empty($data['t'])) {
                        foreach ($data['t'] AS $key => $group) {
                            $arrMenuMenus[] = [
                                '__group_id' => (int) $group,
                                '__permission_id' => $permission->id,
                                '__module_id' => isset($data['u']) ? $data['s'] : 3,
                                '__is_allowed' => 0,
                                'is_active' => $data['h'],
                                'created_by' => (int) $this->__user_id,
                                'created_date' => $this->Date->now(),
                                'updated_by' => (int) $this->__user_id,
                                'updated_date' => $this->Date->now()
                            ];
                        }
                    }
                }
                $insertUserMenus = [
                    'table_name' => 'tbl_a_uac_menu_p',
                    'data' => $arrUserMenus
                ];
                $this->Tbl_a_uac_menu_p_en->__insert($request, $insertUserMenus);
                $insertMenuMenus = [
                    'table_name' => 'tbl_b_uac_group_menus_r',
                    'data' => $arrMenuMenus
                ];
                $this->Tbl_b_uac_group_menus_r_en->__insert($request, $insertMenuMenus);
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
            } else {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed insert data.', 'valid' => false]);
            }
        }
    }

    public function __insert_update_menu_tree($request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $new_level = 0;
            if ($data['parent_id'] == 0) {
                $parent_menu = [
                    'id' => 0,
                    '__name' => 'Root Menu',
                    '__path' => '/',
                    '__icon' => 'fa fa-folder icon-state-default',
                    '__level' => 0,
                    '__rank' => 0,
                    '__badge' => '',
                    '__badge_value' => '',
                    '__badge_id' => '',
                    '__is_badge' => 0,
                    '__is_dashboard' => 0,
                    '__is_selected' => 0,
                    '__is_basic' => 1,
                    '__is_open' => 1,
                    '__is_disabled' => 0,
                ];
                $parent_id = $parent_menu['id'];
                $new_level = $parent_menu['__level'] + 1;
                $new_rank = 0;
            } else {
                $params = [
                    'table_name' => 'tbl_a_uac_menu_p',
                    'select' => ['a.id', 'a.__name', 'a.__path', 'a.__icon', 'a.__level', 'a.__rank', 'a.__badge', 'a.__badge_value', 'a.__badge_id', 'a.__is_badge', 'a.__uac_menu_parent_id', 'a.__is_dashboard', 'a.__is_selected', 'a.__is_basic', 'a.__is_open', 'a.__is_disabled'],
                    'conditions' => [
                        'where' => [
                            ['a.id', '=', $data['parent_id']]
                        ]
                    ]
                ];
                $parent_menu = $this->Tbl_a_uac_menu_p_en->__find($request, 'first', $params);
                if (isset($parent_menu['data']) && !empty($parent_menu['data'])) {
                    $parent_id = $parent_menu['data']->id;
                    $new_level = $parent_menu['data']->__level + 1;
                    $new_rank = 0;
                }
            }
             $code = $this->General->getRandomChar(32);
            $param_data = [
                'code' => $code,
                '__name' => $data['value'],
                '__path' => '-',
                '__icon' => 'fa fa-folder icon-state-default',
                '__level' => $new_level,
                '__rank' => $new_rank,
                '__badge' => '-',
                '__badge_value' => '-',
                '__badge_id' => '-',
                '__is_badge' => 0,
                '__uac_menu_parent_id' => $parent_id,
                '__is_dashboard' => 0,
                '__is_selected' => 0,
                '__is_basic' => 1,
                '__is_open' => 1,
                '__is_disabled' => 0,
                'is_active' => 1,
                'created_by' => (int) $this->__user_id,
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->__user_id,
                'updated_date' => $this->Date->now()
            ];
            $param_insert = [
                'table_name' => 'tbl_a_uac_menu_p',
                'data' => $param_data
            ];
            $response = $this->Tbl_a_uac_menu_p_en->__insert($request, $param_insert);
            if ($response) {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
            }
        }
    }

    public function edit(Request $request, $params = null) {
        $id = base64_decode($params);
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Menu</b> master data management page',
            'pages' => [
                'title' => 'Edit Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/edit/' . $params
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menus/view'
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
        $params = [
            'table_name' => 'tbl_a_uac_menus_p',
            'select' => ['a.*'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $permission = $this->Tbl_a_uac_menus_p_en->__find($request, 'first', $params);
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js",
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'permission'));
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
                        'updated_by' => (int) $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_a_uac_menus_p',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_a_uac_menus_p_en->__update($request, $update_data, $paramsUpdate);
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
                'table_name' => 'tbl_a_uac_menus_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $id]
                    ]
                ]
            ];
            $existData = $this->Tbl_a_uac_menus_p_en->__find($request, 'first', $params);
            if ($existData && $existData['data']) {
                $insertUserMenusBackup = [
                    'table_name' => 'tbl_a_uac_menus_p',
                    'data' => (array) $existData['data']
                ];
                $this->Tbl_a_uac_menu_p_en->__insert($request, $insertUserMenusBackup, 'mysql_bak');
                $deleteParams = [
                    'table_name' => 'tbl_a_uac_menus_p',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_a_uac_menus_p_en->__delete($request, $deleteParams, 'mysql');
                return redirect()->back()->with('success', 'successfully delete data');
            } else {
                return redirect()->back()->with('error', 'failed delete data.');
            }
        }
    }
}
