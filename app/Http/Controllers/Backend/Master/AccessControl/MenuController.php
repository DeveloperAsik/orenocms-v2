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
                'link' => config('app.base_extraweb_uri') . '/master/uac/menu/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/tree-view'
                ]
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
                    '<th> Is Selected </th>',
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
                        return $this->Tbl_a_uac_menu_p_en->__get_tree_view_list($request);
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
                    '__is_dashboard' => '<input type="checkbox"' . $__is_dashboard . ' name="__is_dashboard" class="make-switch" data-size="small" data-id="' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '">',
                    '__is_selected' => '<input type="checkbox"' . $__is_selected . ' name="__is_selected" class="make-switch" data-size="small" data-id="' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '">',
                    '__is_basic' => '<input type="checkbox"' . $__is_basic . ' name="__is_basic" class="make-switch" data-size="small" data-id="' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '">',
                    '__is_open' => '<input type="checkbox"' . $__is_open . ' name="__is_open" class="make-switch" data-size="small" data-id="' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '">',
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '">',
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menu/edit/' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menu/remove/' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/master/uac/menu/delete/' . $this->Converter->base64_basic($value->id, 'encode', ['rep' => 3]) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
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

    public function __get_data_by_id($request) {
        $data = $request->json()->all();
        $dataArrTreeView = [];
        if ($data['id'] == 0) {
            $dataArrTreeView = [
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
                if ($dataDB['data']->id) {
                    $dataDB['data']->id = $this->Converter->base64_basic($dataDB['data']->id, 'encode', ['rep' => 3]);
                }
                $dataArrTreeView = $dataDB['data'];
            }
        }
        return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetching data', 'valid' => true, 'data' => $dataArrTreeView]);
    }

    public function tree_view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Tree View Menu</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menu/tree-view'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/create'
                ],
                [
                    'title' => 'List View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/view'
                ]
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
                'link' => config('app.base_extraweb_uri') . '/master/uac/menu/create'
            ],
            'header' => [
                [
                    'title' => 'List View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/view'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/tree-view'
                ]
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
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function insert(Request $request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            if (isset($data['a']) && !empty($data['a']) && $data['a'] != null) {
                switch ($data['a']) {
                    case 1:
                        return $this->__insert_update_menu_tree($request);
                        break;
                }
            } else {
                return $this->__insert_default($request);
            }
        }
    }

    public function __insert_default($request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $code = $this->General->getRandomChar(20);
            $params = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.id', 'a.__name', 'a.__path', 'a.__icon', 'a.__level', 'a.__rank', 'a.__badge', 'a.__badge_value', 'a.__badge_id', 'a.__is_badge', 'a.__uac_menu_parent_id', 'a.__is_dashboard', 'a.__is_selected', 'a.__is_basic', 'a.__is_open', 'a.__is_disabled'],
                'conditions' => [
                    'where' => [
                        ['a.__path', '=', $data['b']]
                    ]
                ]
            ];
            $response = $this->Tbl_a_uac_menu_p_en->__find($request, 'first', $params);
            if (isset($response['data']) && !empty($response['data']) && $response['data'] != null) {
                return $this->General->_set_response('json', ['code' => 500, 'message' => 'failed insert data. data exist!', 'valid' => false]);
            } else {
                $insertData[] = [
                    'code' => $code,
                    '__name' => $data['a'],
                    '__path' => $data['b'],
                    '__icon' => $data['c'],
                    '__level' => $data['d'],
                    '__rank' => $data['e'],
                    '__badge' => $data['f'],
                    '__is_badge' => $data['g'],
                    '__is_dashboard' => $data['h'],
                    '__is_selected' => $data['i'],
                    '__is_basic' => $data['j'],
                    '__is_open' => $data['k'],
                    '__is_disabled' => $data['l'],
                    'is_active' => $data['m'],
                    'created_by' => (int) $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->__user_id,
                    'updated_date' => $this->Date->now()
                ];
                $insert = [
                    'table_name' => 'tbl_a_uac_menu_p_en',
                    'data' => $insertData
                ];
                $this->Tbl_a_uac_menu_p_en->__insert($request, $insert);
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
            }
        }
    }

    public function __insert_update_menu_tree($request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $new_level = 0;
            $new_rank = 0;
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
                    $new_level = (int) $parent_menu['data']->__level + 1;

                    $last_rank = $this->Tbl_a_uac_menu_p_en->__fetch_last_rank($request, $parent_id);
                    $new_rank = 1;
                    if (isset($last_rank) && !empty($last_rank)) {
                        $new_rank = (int) $last_rank->__rank + 1;
                    }
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
        $id = $this->Converter->base64_basic($params, 'decode', ['rep' => 3]);
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Menu</b> master data management page',
            'pages' => [
                'title' => 'Edit Page Master Data Menus',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/menu/edit/' . $params
            ],
            'header' => [
                [
                    'title' => 'List View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/view'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-list"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/menu/tree-view'
                ]
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
            'table_name' => 'tbl_a_uac_menu_p',
            'select' => ['a.*'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $menu = $this->Tbl_a_uac_menu_p_en->__find($request, 'first', $params);
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
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'menu'));
    }

    public function update(Request $request, $params = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $id = $this->Converter->base64_basic($params, 'decode', ['rep' => 3]);
            switch ($data['a']) {
                case '__is_badge':
                    $update_data = [
                        '__is_badge' => $data['g'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case '__is_dashboard':
                    $update_data = [
                        '__is_dashboard' => $data['h'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case '__is_selected':
                    $update_data = [
                        '__is_selected' => $data['i'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case '__is_basic':
                    $update_data = [
                        '__is_basic' => $data['j'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case '__is_open':
                    $update_data = [
                        '__is_open' => $data['k'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case '__is_disabled':
                    $update_data = [
                        '__is_disabled' => $data['l'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                case 'is_active':
                    $update_data = [
                        'is_active' => $data['m'],
                        'updated_by' => $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
                default:
                    $alias = strtolower(str_replace(' ', '-', $data['a']));
                    $update_data = [
                        '__name' => $data['a'],
                        '__path' => $data['b'],
                        '__icon' => $data['c'],
                        '__level' => $data['d'],
                        '__rank' => $data['e'],
                        '__badge' => $data['f'],
                        '__is_badge' => $data['g'],
                        '__is_dashboard' => $data['h'],
                        '__is_selected' => $data['i'],
                        '__is_basic' => $data['j'],
                        '__is_open' => $data['k'],
                        '__is_disabled' => $data['l'],
                        'is_active' => $data['m'],
                        'updated_by' => (int) $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_a_uac_menu_p',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_a_uac_menu_p_en->__update($request, $update_data, $paramsUpdate);
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
            $id = $this->Converter->base64_basic($params, 'decode', ['rep' => 3]);
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
