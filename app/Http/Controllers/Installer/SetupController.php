<?php

namespace App\Http\Controllers\Installer;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Encrypter;
use App\Libraries\Oreno\Date;
use App\Models\Entity\uac\Tbl_d_uac_installer_list_p_en;
use App\Models\Entity\uac\Tbl_b_uac_user_permissions_r_en;
use App\Models\Entity\uac\Tbl_a_uac_users_p_en;
use App\Models\Entity\uac\Tbl_a_uac_groups_p_en;
use App\Models\Entity\uac\Tbl_a_uac_modules_p_en;
use App\Models\Entity\uac\Tbl_a_uac_user_registered_type_c_en;
use App\Models\Entity\uac\Tbl_c_uac_location_a_country_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_b_provinces_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_c_cities_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_d_districts_p_en;

/**
 * Description of SetupController
 *
 * @author 64146
 */
class SetupController extends Controller {

    //put your code here
    protected $General;
    protected $Converter;
    protected $Encrypter;
    protected $Date;
    protected $Tbl_d_uac_installer_list_p_en;
    protected $Tbl_b_uac_user_permissions_r_en;
    protected $Tbl_a_uac_users_p_en;
    protected $Tbl_a_uac_groups_p_en;
    protected $Tbl_a_uac_modules_p_en;
    protected $Tbl_a_uac_user_registered_type_c_en;
    protected $Tbl_c_uac_location_a_country_p_en;
    protected $Tbl_c_uac_location_b_provinces_p_en;
    protected $Tbl_c_uac_location_c_cities_p_en;
    protected $Tbl_c_uac_location_d_districts_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Encrypter = new Encrypter();
        $this->Date = new Date();
        $this->Tbl_d_uac_installer_list_p_en = new Tbl_d_uac_installer_list_p_en();
        $this->Tbl_b_uac_user_permissions_r_en = new Tbl_b_uac_user_permissions_r_en();
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_a_uac_groups_p_en = new Tbl_a_uac_groups_p_en();
        $this->Tbl_a_uac_modules_p_en = new Tbl_a_uac_modules_p_en();
        $this->Tbl_a_uac_user_registered_type_c_en = new Tbl_a_uac_user_registered_type_c_en();
        $this->Tbl_c_uac_location_a_country_p_en = new Tbl_c_uac_location_a_country_p_en();
        $this->Tbl_c_uac_location_b_provinces_p_en = new Tbl_c_uac_location_b_provinces_p_en();
        $this->Tbl_c_uac_location_c_cities_p_en = new Tbl_c_uac_location_c_cities_p_en();
        $this->Tbl_c_uac_location_d_districts_p_en = new Tbl_c_uac_location_d_districts_p_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Permission</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Installer',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/create'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/create'
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
                    '<th> Subject </th>',
                    '<th> Target Table </th>',
                    '<th> Action </th>',
                    '<th> Total Run </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        //$rr = $this->__init_master_data_permissions($request);
        //$ss = $this->__init_master_data_groups($request);
        //$tt = $this->__init_master_data_modules($request);
        //$uu = $this->__init_master_data_users($request);
        $vv = $this->__init_master_data_registered_types($request);
        dd($vv);
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
                //    switch ($data['a']) {
                //        case 1:
                //            return $this->__get_list_path_segment($request);
                //            break;
                //    }
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
                    ['a.__name', 'like', '%' . $search . '%'],
                    ['a.__path', 'like', '%' . $search . '%'],
                    ['a.__controller', 'like', '%' . $search . '%'],
                    ['a.__action', 'like', '%' . $search . '%']
                ]
            ];
        }
        $params = [
            'table_name' => 'tbl_d_uac_installer_list_p',
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_d_uac_installer_list_p_en->__find($request, 'all', $params);
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
                    '__subject' => $value->__subject,
                    '__target_table' => $value->__target_table,
                    '__action' => $value->__action,
                    '__run_count' => $value->__run_count,
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/installer/setup/generate/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Generate Installer Data"><i class="fa fa-play"></i></a></button>
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/installer/setup/edit/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/installer/setup/remove/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/installer/setup/delete/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
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

    public function __get_list_path_segment($request) {
        $data = $request->json()->all();
        $get_segment_by_url = $this->General->getSegmentByUrl($data["value"]);
        $segmented = explode('/', $get_segment_by_url);
        if (isset($segmented) && !empty($segmented)) {
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetching and reformat data', 'valid' => true, 'data' => $segmented]);
        }
    }

    public function __get_list_by_controller($request, $keywords = null) {
        if (isset($keywords) && !empty($keywords) && $keywords !== null) {
            $params = [
                'table_name' => 'tbl_d_uac_installer_list_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.__controller', '=', $keywords]
                    ]
                ],
                'limit' => 100
            ];
            return $this->Tbl_d_uac_installer_list_p_en->__find($request, 'all', $params, 'mysql_bak');
        }
    }

    public function create(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Permission</b> master data management page',
            'pages' => [
                'title' => 'Create Page Master Data Installer',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/create'
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/view'
            ],
            'form' => [
                'el-id' => 'frm_create_installer',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Subject </th>',
                    '<th> Target Table </th>',
                    '<th> Controller </th>',
                    '<th> Action </th>',
                    '<th> Running Count </th>',
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
        $insertData = [];
        if (isset($data) && !empty($data)) {
            $insertData = [
                'code' => $this->General->getRandomChar(20),
                '__subject' => $data['a'],
                '__target_table' => $data['b'],
                '__action' => $data['c'],
                '__run_count' => 0,
                '__description' => $data['d'],
                'is_active' => $data['e'],
                'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                'updated_date' => $this->Date->now()
            ];
        }
        $insert = [
            'table_name' => 'tbl_d_uac_installer_list_p',
            'data' => $insertData
        ];
        $response = $this->Tbl_d_uac_installer_list_p_en->__insert($request, $insert); //, 'mysql_bak');
        if ($response) {
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
        } else {
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed insert data.', 'valid' => false]);
        }
    }

    public function edit(Request $request, $params = null) {
        $id = base64_decode($params);
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Permission</b> master data management page',
            'pages' => [
                'title' => 'Edit Page Master Data Installer',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/edit/' . $params
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/installer/setup/view'
            ],
            'form' => [
                'el-id' => 'frm_create_installer',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Subject </th>',
                    '<th> Target Table </th>',
                    '<th> Controller </th>',
                    '<th> Action </th>',
                    '<th> Running Count </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $params = [
            'table_name' => 'tbl_d_uac_installer_list_p',
            'select' => ['a.*'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $installers = $this->Tbl_d_uac_installer_list_p_en->__find($request, 'first', $params);
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
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'installers'));
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
                        '__subject' => $data['a'],
                        '__target_table' => $data['b'],
                        '__action' => $data['c'],
                        '__description' => $data['d'],
                        'is_active' => $data['e'],
                        'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                        'updated_date' => $this->Date->now()
                    ];
                    break;
            }
            $paramsUpdate = [
                'table_name' => 'tbl_d_uac_installer_list_p',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_d_uac_installer_list_p_en->__update($request, $update_data, $paramsUpdate);
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
                'table_name' => 'tbl_d_uac_installer_list_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $id]
                    ]
                ]
            ];
            $existData = $this->Tbl_d_uac_installer_list_p_en->__find($request, 'first', $params);
            if ($existData && $existData['data']) {
                $insertUserInstallerBackup = [
                    'table_name' => 'tbl_d_uac_installer_list_p',
                    'data' => (array) $existData['data']
                ];
                $this->Tbl_b_uac_user_permissions_r_en->__insert($request, $insertUserInstallerBackup, 'mysql_bak');
                $deleteParams = [
                    'table_name' => 'tbl_d_uac_installer_list_p',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_d_uac_installer_list_p_en->__delete($request, $deleteParams, 'mysql');
                return redirect()->back()->with('success', 'successfully delete data');
            } else {
                return redirect()->back()->with('error', 'failed delete data.');
            }
        }
    }

    public function __init_master_data_permissions(Request $request) {
        $data_permissions = $this->__init_data_permissions($request);
        $insertData = [];
        if (isset($data_permissions) && !empty($data_permissions)) {
            foreach ($data_permissions AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $insertData[] = [
                    'code' => $code,
                    '__alias' => $value[0],
                    '__name' => $value[1],
                    '__path' => $value[2],
                    '__controller' => $value[3],
                    '__action' => $value[4],
                    '__method' => $value[5],
                    '__segment1' => $value[6],
                    '__segment2' => $value[7],
                    '__segment3' => $value[8],
                    '__segment4' => $value[9],
                    '__segment5' => $value[10],
                    '__segment6' => $value[11],
                    '__segment7' => $value[12],
                    '__segment8' => $value[13],
                    '__description' => 'name : ' . $value[1] . ' code : ' . $code,
                    '__is_basic' => 1,
                    '__is_public' => 0,
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_d_uac_installer_list_p',
            'data' => $insertData
        ];
        dd($insert);
        $this->Tbl_b_uac_user_permissions_r_en->__insert($request, $insert, 'mysql_bak');
    }

    public function __init_data_permissions($request) {
        return [
            ['extraweb', 'extraweb', 'extraweb', 'AuthentificationMD', 'handle', 'get', 'extraweb', '', '', '', '', '', '', ''],
            ['extraweb-login', 'extraweb/login/', 'extraweb/login/', 'AppController', 'login', 'get', 'extraweb', 'login', '', '', '', '', '', ''],
            ['extraweb-logout', 'extraweb/logout/', 'extraweb/logout/', 'AppController', 'logout', 'get', 'extraweb', 'logout', '', '', '', '', '', ''],
            ['extraweb-forgot-password', 'extraweb/forgot-password/', 'extraweb/forgot-password/', 'AppController', 'forgot_password', 'get', 'extraweb', 'forgot-password', '', '', '', '', '', ''],
            ['extraweb-register', 'extraweb/register/', 'extraweb/register/', 'AppController', 'register', 'get', 'extraweb', 'register', '', '', '', '', '', ''],
            ['extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth/', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', '', '', '', '', '', ''],
            ['extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init/', 'AppController', '__init', 'post', 'extraweb', 'authentification', '', '', '', '', '', ''],
            ['extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard/', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', '', '', '', '', '', ''],
            ['extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', '{param}', '', '', '', ''],
            ['extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', '{param}', '', '', '', ''],
            //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
            ['extraweb-installer', 'extraweb/installer/setup/view', 'extraweb/installer/setup/view', 'SetupController', 'view', 'get', 'extraweb', 'installer', 'setup', 'view', '', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/get_list/{id}', 'extraweb/installer/setup/get_list/{id}', 'SetupController', 'get_list', 'post', 'extraweb', 'installer', 'setup', 'get_list', '{id}', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/edit/{id}', 'extraweb/installer/setup/edit/{id}', 'SetupController', 'edit', 'get', 'extraweb', 'installer', 'setup', 'edit', '{id}', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/update/{id}', 'extraweb/installer/setup/update/{id}', 'SetupController', 'update', 'post', 'extraweb', 'installer', 'setup', 'update', '{id}', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/create', 'extraweb/installer/setup/create', 'SetupController', 'create', 'get', 'extraweb', 'installer', 'setup', 'create', '', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/insert', 'extraweb/installer/setup/insert', 'SetupController', 'insert', 'post', 'extraweb', 'installer', 'setup', 'insert', '', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/delete/{id}', 'extraweb/installer/setup/delete/{id}', 'SetupController', 'delete', 'get', 'extraweb', 'installer', 'setup', 'delete', '{id}', '', '', ''],
            ['extraweb-installer', 'extraweb/installer/setup/remove/{id}', 'extraweb/installer/setup/remove/{id}', 'SetupController', 'remove', 'get', 'extraweb', 'installer', 'setup', 'remove', '{id}', '', '', ''],
            //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', '', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', '', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/edit/{id}', 'extraweb/master/uac/users/edit/{id}', 'UserController', 'edit', 'get', 'extraweb', 'master', 'uac', 'users', 'edit', '{id}', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/update/{id}', 'extraweb/master/uac/users/update/{id}', 'UserController', 'update', 'post', 'extraweb', 'master', 'uac', 'users', 'update', '{id}', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/create', 'extraweb/master/uac/users/create', 'UserController', 'create', 'get', 'extraweb', 'master', 'uac', 'users', 'create', '', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/insert', 'extraweb/master/uac/users/insert', 'UserController', 'insert', 'post', 'extraweb', 'master', 'uac', 'users', 'insert', '', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/delete/{id}', 'extraweb/master/uac/users/delete/{id}', 'UserController', 'delete', 'get', 'extraweb', 'master', 'uac', 'users', 'delete', '{id}', '', ''],
            ['extraweb-master-uac-users', 'extraweb/master/uac/users/remove/{id}', 'extraweb/master/uac/users/remove/{id}', 'UserController', 'remove', 'get', 'extraweb', 'master', 'uac', 'users', 'remove', '{id}', '', ''],
            //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/view', 'extraweb/master/uac/groups/view', 'GroupsController', 'view', 'get', 'extraweb', 'master', 'uac', 'groups', 'view', '', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/tree-view', 'extraweb/master/uac/groups/tree-view', 'GroupsController', 'tree_view', 'get', 'extraweb', 'master', 'uac', 'groups', 'tree-view', '', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/get_list', 'extraweb/master/uac/groups/get_list', 'GroupsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'groups', 'get_list', '', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/edit/{id}', 'extraweb/master/uac/groups/edit', 'GroupsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'groups', 'edit', '{id}', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/update/{id}', 'extraweb/master/uac/groups/update', 'GroupsController', 'update', 'post', 'extraweb', 'master', 'uac', 'groups', 'update', '{id}', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/create', 'extraweb/master/uac/groups/create', 'GroupsController', 'create', 'get', 'extraweb', 'master', 'uac', 'groups', 'create', '', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/insert', 'extraweb/master/uac/groups/insert', 'GroupsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'groups', 'insert', '', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/delete/{id}', 'extraweb/master/uac/groups/delete', 'GroupsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'groups', 'delete', '{id}', '', ''],
            ['extraweb-master-uac-groups', 'extraweb/master/uac/groups/remove/{id}', 'extraweb/master/uac/groups/remove', 'GroupsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'groups', 'remove', '{id}', '', ''],
            //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/view', 'extraweb/master/uac/permissions/view', 'PermissionsController', 'view', 'get', 'extraweb', 'master', 'uac', 'permissions', 'view', '', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/get_list', 'extraweb/master/uac/permissions/get_list', 'PermissionsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'permissions', 'get_list', '', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/edit/{id}', 'extraweb/master/uac/permissions/edit', 'PermissionsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'permissions', 'edit', '{id}', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/update/{id}', 'extraweb/master/uac/permissions/update', 'PermissionsController', 'update', 'post', 'extraweb', 'master', 'uac', 'permissions', 'update', '{id}', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/create', 'extraweb/master/uac/permissions/create', 'PermissionsController', 'create', 'get', 'extraweb', 'master', 'uac', 'permissions', 'create', '', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/insert', 'extraweb/master/uac/permissions/insert', 'PermissionsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'permissions', 'insert', '', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/delete/{id}', 'extraweb/master/uac/permissions/delete', 'PermissionsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'permissions', 'delete', '{id}', '', ''],
            ['extraweb-master-uac-permissions', 'extraweb/master/uac/permissions/remove/{id}', 'extraweb/master/uac/permissions/remove', 'PermissionsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'permissions', 'remove', '{id}', '', ''],
            //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/view', 'extraweb/master/uac/menu/view', 'MenuController', 'view', 'get', 'extraweb', 'master', 'uac', 'menu', 'view', '', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/tree-view', 'extraweb/master/uac/menu/tree-view', 'MenuController', 'tree_view', 'get', 'extraweb', 'master', 'uac', 'menu', 'tree-view', '', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/get_list', 'extraweb/master/uac/menu/get_list', 'MenuController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'menu', 'get_list', '', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/edit/{id}', 'extraweb/master/uac/menu/edit', 'MenuController', 'edit', 'get', 'extraweb', 'master', 'uac', 'menu', 'edit', '{id}', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/update/{id}', 'extraweb/master/uac/menu/update', 'MenuController', 'update', 'post', 'extraweb', 'master', 'uac', 'menu', 'update', '{id}', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/create', 'extraweb/master/uac/menu/create', 'MenuController', 'create', 'get', 'extraweb', 'master', 'uac', 'menu', 'create', '', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/insert', 'extraweb/master/uac/menu/insert', 'MenuController', 'insert', 'post', 'extraweb', 'master', 'uac', 'menu', 'insert', '', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/delete/{id}', 'extraweb/master/uac/menu/delete', 'MenuController', 'delete', 'get', 'extraweb', 'master', 'uac', 'menu', 'delete', '{id}', '', ''],
            ['extraweb-master-uac-menu', 'extraweb/master/uac/menu/remove/{id}', 'extraweb/master/uac/menu/remove', 'MenuController', 'remove', 'get', 'extraweb', 'master', 'uac', 'menu', 'remove', '{id}', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
                //['', '', '', '', '', '', '', '', '', '', '', '', '', '']
        ];
    }

    public function __init_master_data_groups(Request $request) {
        $data_permissions = $this->__init_data_groups($request);
        $insertData = [];
        if (isset($data_permissions) && !empty($data_permissions)) {
            foreach ($data_permissions AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $insertData[] = [
                    'code' => $code,
                    '__name' => $value[0],
                    '__icon' => $value[1],
                    '__rank' => $value[2],
                    '__level' => $value[3],
                    '__description' => $value[4],
                    '__uac_group_parent_id' => $value[5],
                    '__is_key_group' => $value[6],
                    '__is_menu' => $value[7],
                    '__is_group_project' => $value[8],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_a_uac_groups_p',
            'data' => $insertData
        ];
        dd($insert);
        $this->Tbl_a_uac_groups_p_en->__insert($request, $insert); //, 'mysql_bak');
    }

    public function __init_data_groups($request) {
        return [
            ['system', '-', '1', '1', '-', '0', '0', '0', '0'],
            ['superuser', '-', '2', '1', '-', '0', '0', '0', '0'],
            ['webmaster', '-', '3', '1', '-', '0', '0', '0', '0'],
            //-----------------------------------------------------//
            ['admin1', '-', '1', '2', '-', '2', '0', '1', '1'],
            ['admin2', '-', '2', '2', '-', '2', '0', '1', '1'],
            //-----------------------------------------------------//
            ['officer1', '-', '1', '2', '-', '3', '1', '1', '1'],
            ['officer2', '-', '2', '2', '-', '3', '1', '1', '1']
        ];
    }

    public function __init_master_data_modules(Request $request) {
        $data_modules = $this->__init_data_modules($request);
        $insertData = [];
        if (isset($data_modules) && !empty($data_modules)) {
            foreach ($data_modules AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $insertData[] = [
                    'code' => $code,
                    '__alias' => $value[0],
                    '__name' => $value[1],
                    '__default_path' => $value[2],
                    '__rank' => $value[3],
                    '__description' => $value[4],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_a_uac_modules_p',
            'data' => $insertData
        ];
        dd($insert);
        $this->Tbl_a_uac_modules_p_en->__insert($request, $insert); //, 'mysql_bak');
    }

    public function __init_data_modules($request) {
        return [
            ['cdn-static', 'CDN Static Files', 'cdn.static.files/v1/', 1, ''],
            ['backend-api', 'Backend API', 'api/v1/', 2, ''],
            ['backend-cms', 'Backend CMS', 'extraweb/', 3, ''],
            ['frontend-application-home', 'Frontend Application Home', 'home/', 4, '']
        ];
    }

    public function __init_master_data_users(Request $request) {
        $data_permissions = $this->__init_data_users($request);
        $insertData = [];
        if (isset($data_permissions) && !empty($data_permissions)) {
            foreach ($data_permissions AS $key => $value) {
                $pwd = $this->General->getRandomChar(6);
                $pwd_encr = $this->Encrypter->encrypt($pwd);
                $code = $this->General->getRandomChar(20);
                $desc = 'raw pass : ' . $pwd;
                $insertData[] = [
                    'code' => $code,
                    '__user_name' => strtolower($value[0]),
                    '__user_ldap' => $value[1],
                    '__first_name' => $value[2],
                    '__last_name' => $value[3],
                    '__email' => $value[4],
                    '__phone_number' => $value[5],
                    '__password' => $pwd_encr,
                    '__salt' => $value[6],
                    '__description' => $desc,
                    '__score' => $value[7],
                    '__uac_user_profile_id' => $value[8],
                    '__uac_user_registered_type_id' => $value[9],
                    '__uac_user_location_id' => $value[10],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_a_uac_users_p',
            'data' => $insertData
        ];
        dd($insert);
        $this->Tbl_a_uac_users_p_en->__insert($request, $insert); //, 'mysql_bak');
    }

    public function __init_data_users($request) {
        return [
            ['system.core', 'hq\systemAppsec', 'system', 'appsec', 'system.appsec@bni.co.id', '628567123576321', 'saltforuserencrypteddata', '100', 0, 1, 0],
            ['system.mobile.apps', 'hq\systemMobileAppsec', 'system.mobile', 'appsec', 'system-mobile.appsec@bni.co.id', '62856789765342', 'saltforuserencrypteddata222', '200', 0, 1, 0],
            ['admin.web', 'hq\adminWebAppsec', 'adminweb', 'appsec', 'admin-web.appsec@bni.co.id', '6285671237123', 'saltforuserencrypteddata3333', '300', 0, 1, 0],
            ['ariffirmansyah', 'hq\64146', 'arif', 'firmansyah', 'arif.firmansyah@bni.co.id', '628178556640', 'saltforuserencrypteddata444', '400', 0, 1, 0],
        ];
    }

    public function __init_master_data_registered_types(Request $request) {
        $data_permissions = $this->__init_data_user_registered_types($request);
        $insertData = [];
        if (isset($data_permissions) && !empty($data_permissions)) {
            foreach ($data_permissions AS $key => $value) {
                $pwd = $this->General->getRandomChar(6);
                $pwd_encr = $this->Encrypter->encrypt($pwd);
                $code = $this->General->getRandomChar(20);
                $desc = 'Registered type name : ' . $value[0];
                $insertData[] = [
                    'code' => $code,
                    '__name' => strtolower($value[0]),
                    '__description' => $desc,
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_a_uac_user_registered_type_c',
            'data' => $insertData
        ];
        dd($insert);
        $this->Tbl_a_uac_user_registered_type_c_en->__insert($request, $insert); //, 'mysql_bak');
    }

    public function __init_data_user_registered_types($request) {
        return [
            ['system.auto.create'],
            ['superuser.manual.create'],
            ['self.register']
        ];
    }

    public function __init_master_data_locations(Request $request) {
        $data_locations = $this->__init_data_locations($request);
        $insertData = [];
        if (isset($data_locations['countries']) && !empty($data_locations['countries'])) {
            foreach ($data_permissions['countries'] AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $desc = 'country name : ' . $value[2];
                $insertData[] = [
                    'code' => $code,
                    '__phone_ext' => strtolower($value[0]),
                    '__initial' => $value[1],
                    '__name' => strtolower($value[2]),
                    '__description' => $desc,
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_c_uac_location_a_country_p',
            'data' => $insertData
        ];
        dd($insert);
        //$this->Tbl_c_uac_location_a_country_p_en->__insert($request, $insert); //, 'mysql_bak');

        if (isset($data_locations['provinces']) && !empty($data_locations['provinces'])) {
            foreach ($data_permissions['provinces'] AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $desc = 'provinces name : ' . $value[1];
                $insertDataProvinces[] = [
                    'code' => $code,
                    '__initial' => $value[0],
                    '__name' => strtolower($value[1]),
                    '__capital_city' => strtolower($value[2]),
                    '__description' => $desc,
                    '__country_id' => $value[3],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
            $insertProvinces = [
                'table_name' => 'tbl_c_uac_location_b_provinces_p',
                'data' => $insertDataProvinces
            ];
            //$this->Tbl_c_uac_location_b_provinces_p_en->__insert($request, $insertProvinces); //, 'mysql_bak');
        }

        if (isset($data_locations['cities']) && !empty($data_locations['cities'])) {
            foreach ($data_permissions['cities'] AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $desc = 'cities name : ' . $value[1];
                $insertDataCities[] = [
                    'code' => $code,
                    '__initial' => $value[0],
                    '__name' => strtolower($value[1]),
                    '__description' => $desc,
                    '__country_id' => $value[2],
                    '__province_id' => $value[3],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
            $insertCities = [
                'table_name' => 'tbl_c_uac_location_c_cities_p',
                'data' => $insertDataCities
            ];
            //$this->Tbl_c_uac_location_c_cities_p_en->__insert($request, $insertCities); //, 'mysql_bak');
        }

        if (isset($data_locations['districts']) && !empty($data_locations['districts'])) {
            foreach ($data_permissions['districts'] AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $desc = 'districts name : ' . $value[1];
                $insertDataDistricts[] = [
                    'code' => $code,
                    '__initial' => $value[0],
                    '__name' => strtolower($value[1]),
                    '__description' => $desc,
                    '__country_id' => $value[2],
                    '__province_id' => $value[3],
                    '__city_id' => $value[4],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
            $insertDistricts = [
                'table_name' => 'tbl_c_uac_location_d_districts_p',
                'data' => $insertDataDistricts
            ];
            //$this->Tbl_c_uac_location_d_districts_p_en->__insert($request, $insertDistricts); //, 'mysql_bak');
        }

        if (isset($data_locations['areas']) && !empty($data_locations['areas'])) {
            foreach ($data_permissions['areas'] AS $key => $value) {
                $code = $this->General->getRandomChar(20);
                $desc = 'areas name : ' . $value[1];
                $insertDataDistricts[] = [
                    'code' => $code,
                    '__initial' => $value[0],
                    '__name' => strtolower($value[1]),
                    '__description' => $desc,
                    '__country_id' => $value[2],
                    '__province_id' => $value[3],
                    '__city_id' => $value[4],
                    '__disctrict_id' => $value[5],
                    'is_active' => 1,
                    'created_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->Converter->base64_basic($this->__user_id, 'decode', ['rep' => 3]),
                    'updated_date' => $this->Date->now()
                ];
            }
            $insertDistricts = [
                'table_name' => 'tbl_c_uac_location_d_districts_p',
                'data' => $insertDataDistricts
            ];
            //$this->Tbl_c_uac_location_d_districts_p_en->__insert($request, $insertDistricts); //, 'mysql_bak');
        }
    }

    public function __init_data_locations($request) {
        return [
            'countries' => [
                ['62', 'idn', 'Indonesia']
            ],
            'provinces' => [
                ['11', 'Aceh', 'Banda Aceh', 1],
                ['12', 'Sumatera Utara', 'Medan', 1],
                ['13', 'Sumatera Barat', 'Padang', 1],
                ['14', 'Riau', 'Pekanbaru', 1],
                ['15', 'Jambi', 'Jambi', 1],
                ['16', 'Sumatera Selatan', 'Palembang', 1],
                ['17', 'Bengkulu', 'Bengkulu', 1],
                ['18', 'Lampung', 'Bandar Lampung', 1],
                ['19', 'Kepulauan Bangka Belitung', 'Pangkalpinang', 1],
                ['21', 'Kepulauan Riau', 'Tanjungpinang ', 1],
                ['31', 'Daerah Khusus Ibukota Jakarta', 'Daerah Khusus Ibukota Jakarta', 1],
                ['32', 'Jawa Barat', 'Bandung', 1],
                ['33', 'Jawa Tengah', 'Semarang', 1],
                ['34', 'Daerah Istimewa Yogyakarta', 'Yogyakarta', 1],
                ['35', 'Jawa Timur', 'Surabaya', 1],
                ['36', 'Banten', 'Serang', 1],
                ['51', 'Bali', 'Denpasar', 1],
                ['52', 'Nusa Tenggara Barat', 'Mataram', 1],
                ['53', 'Nusa Tenggara Timur', 'Kupang', 1],
                ['61', 'Kalimantan Barat', 'Pontianak', 1],
                ['63', 'Kalimantan Selatan', 'Banjarbaru', 1],
                ['62', 'Kalimantan Tengah', 'Palangka Raya', 1],
                ['64', 'Kalimantan Timur', 'Samarinda', 1],
                ['65', 'Kalimantan Utara', 'Tanjung Selor', 1],
                ['71', 'Sulawesi Utara', 'Manado', 1],
                ['72', 'Sulawesi Tengah', 'Palu', 1],
                ['73', 'Sulawesi Selatan', 'Makassar', 1],
                ['74', 'Sulawesi Tenggara', 'Kendari', 1],
                ['75', 'Gorontalo', 'Gorontalo', 1],
                ['76', 'Sulawesi Barat', 'Mamuju', 1],
                ['81', 'Maluku', 'Ambon', 1],
                ['82', 'Maluku Utara', 'Sofifi', 1],
                ['91', 'Papua', 'Jayapura', 1],
                ['92', 'Papua Barat', 'Manokwari', 1],
                ['93', 'Papua Selatan', 'Salor', 1],
                ['94', 'Papua Tengah', 'Wanggar', 1],
                ['95', 'Papua Pegunungan', 'Jayawijaya', 1],
                ['96', 'Papua Barat Daya', 'Sorong', 1],
            ],
            'cities' => [
                ['11.01', 'Kab. Aceh Selatan', 'Tapaktuan', '1', '1'],
                ['11.02', 'Kab. Aceh Tenggara', 'Kutacane', '1', '1'],
                ['11.03', 'Kab. Aceh Timur', 'Idi Rayeuk', '1', '1'],
                ['11.04', 'Kab. Aceh Tengah', 'Takengon', '1', '1'],
                ['11.05', 'Kab. Aceh Barat', 'Meulaboh', '1', '1'],
                ['11.06', 'Kab. Aceh Besar', 'Kota Janthoe', '1', '1'],
                ['11.07', 'Kab. Pidie', 'Sigli', '1', '1'],
                ['11.08', 'Kab. Aceh Utara', 'Lhoksukon', '1', '1'],
                ['11.09', 'Kab. Simeulue', 'Sinabang', '1', '1'],
                ['11.10', 'Kab. Aceh Singkil', 'Singkil', '1', '1'],
                ['11.11', 'Kab. Bireuen', 'Bireuen', '1', '1'],
                ['11.12', 'Kab. Aceh Barat Daya', 'Blangpidie', '1', '1'],
                ['11.13', 'Kab. Gayo Lues', 'Blangkejeren', '1', '1'],
                ['11.14', 'Kab. Aceh Jaya', 'Calang', '1', '1'],
                ['11.15', 'Kab. Nagan Raya', 'Suka Makmue', '1', '1'],
                ['11.16', 'Kab. Aceh Tamiang', 'Kota Kualasimpang', '1', '1'],
                ['11.17', 'Kab. Bener Meriah', 'Simpang Tiga Redelong', '1', '1'],
                ['11.18', 'Kab. Pidie Jaya', 'Meureudu', '1', '1'],
                ['11.71', 'Kota Banda Aceh', '', '1', '1'],
                ['11.74', 'Kota Langsa', '', '1', '1'],
                ['11.73', 'Kota Lhokseumawe', '', '1', '1'],
                ['11.72', 'Kota Sabang', '', '1', '1'],
                ['11.75', 'Kota Subulussalam', '', '1', '1'],
                ['', 'Kabupaten Badung', 'Mangupura', '1', '2'],
                ['', 'Kabupaten Bangli', 'Bangli', '1', '2'],
                ['', 'Kabupaten Buleleng', 'Singaraja', '1', '2'],
                ['', 'Kabupaten Gianyar', 'Gianyar', '1', '2'],
                ['', 'Kabupaten Jembrana', 'Negara', '1', '2'],
                ['', 'Kabupaten Karangasem', 'Amlapura', '1', '2'],
                ['', 'Kabupaten Klungkung', 'Semarapura', '1', '2'],
                ['', 'Kabupaten Tabanan', 'Singasana', '1', '2'],
                ['', 'Kota Denpasar', '', '1', '2'],
                ['', 'Kabupaten Lebak', 'Rangkasbitung', '1', '3'],
                ['', 'Kabupaten Pandeglang', 'Pandeglang', '1', '3'],
                ['', 'Kabupaten Serang', 'Ciruas', '1', '3'],
                ['', 'Kabupaten Tangerang', 'Tigaraksa', '1', '3'],
                ['', 'Kota Cilegon', '', '1', '3'],
                ['', 'Kota Serang', '', '1', '3'],
                ['', 'Kota Tangerang', '', '1', '3'],
                ['', 'Kota Tangerang Selatan', '', '1', '3'],
                ['', 'Kabupaten Bengkulu Selatan', 'Kota Manna', '1', '4'],
                ['', 'Kabupaten Bengkulu Tengah', 'Karang Tinggi', '1', '4'],
                ['', 'Kabupaten Bengkulu Utara', 'Kota Arga Makmur', '1', '4'],
                ['', 'Kabupaten Kaur', 'Kaur Selatan', '1', '4'],
                ['', 'Kabupaten Kepahiang', 'Kepahiang', '1', '4'],
                ['', 'Kabupaten Lebong', 'Tubei', '1', '4'],
                ['', 'Kabupaten Mukomuko', 'Kota Mukomuko', '1', '4'],
                ['', 'Kabupaten Rejang Lebong', 'Curup', '1', '4'],
                ['', 'Kabupaten Seluma', 'Pasar Tais', '1', '4'],
                ['', 'Kota Bengkulu', '', '1', '4'],
                ['34.01', 'Kabupaten Kulon Progo', 'Wates', '1', '5'],
                ['34.02', 'Kabupaten Bantul', 'Bantul', '1', '5'],
                ['34.03', 'Kabupaten Gunungkidul', 'Wonosari', '1', '5'],
                ['34.04', 'Kabupaten Sleman', 'Sleman', '1', '5'],
                ['34.71', 'Kota Yogyakarta', '', '1', '5'],
                ['31.01', 'Kabupaten Administrasi Kepulauan Seribu', 'Pulau Pramuka', '1', '6'],
                ['31.71', 'Kota Administrasi Jakarta Pusat', '', '1', '6'],
                ['31.72', 'Kota Administrasi Jakarta Utara', '', '1', '6'],
                ['31.73', 'Kota Administrasi Jakarta Barat', '', '1', '6'],
                ['31.74', 'Kota Administrasi Jakarta Selatan', '', '1', '6'],
                ['31.75', 'Kota Administrasi Jakarta Timur', '', '1', '6'],
                ['', 'Kab. Boalemo', '', '1', '7'],
                ['75.01', 'Kab. Gorontalo', 'Limboto', '1', '7'],
                ['75.02', 'Kab. Boalemo', 'Tilamuta', '1', '7'],
                ['75.03', 'Kab. Bone Bolango', 'Suwawa', '1', '7'],
                ['75.04', 'Kab. Pohuwato', 'Marisa', '1', '7'],
                ['75.05', 'Kab. Gorontalo Utara', 'Kwandang', '1', '7'],
                ['75.71', 'Kota Gorontalo', '', '1', '7'],
                ['', 'Kabupaten Batanghari', 'Muara Bulian', '1', '8'],
                ['', 'Kabupaten Bungo', 'Muara Bungo', '1', '8'],
                ['', 'Kabupaten Kerinci', 'Siulak', '1', '8'],
                ['', 'Kabupaten Merangin', 'Bangko', '1', '8'],
                ['', 'Kabupaten Muaro Jambi', 'Sengeti', '1', '8'],
                ['', 'Kabupaten Sarolangun', 'Sarolangun', '1', '8'],
                ['', 'Kabupaten Tanjung Jabung Barat', 'Kuala Tungkal', '1', '8'],
                ['', 'Kabupaten Tanjung Jabung Timur', 'Muara Sabak', '1', '8'],
                ['', 'Kabupaten Tebo', 'Muara Tebo', '1', '8'],
                ['', 'Kota Jambi', '', '1', '8'],
                ['', 'Kota Sungai Penuh', '', '1', '8'],
                ['', 'Kabupaten Bandung', 'Soreang', '1', '9'], //9 jabar
                ['', 'Kabupaten Bandung Barat', 'Ngamprah', '1', '9'],
                ['', 'Kabupaten Bekasi', 'Cikarang Pusat', '1', '9'],
                ['', 'Kabupaten Bogor', 'Cibinong', '1', '9'],
                ['', 'Kabupaten Ciamis', 'Ciamis', '1', '9'],
                ['', 'Kabupaten Cianjur', 'Cianjur', '1', '9'],
                ['', 'Kabupaten Cirebon', 'Sumber', '1', ''],
                ['', 'Kabupaten Garut', 'Tarogong Kidul', '1', '9'],
                ['', 'Kabupaten Indramayu', 'Indramayu', '1', '9'],
                ['', 'Kabupaten Karawang', 'Karawang Barat', '1', '9'],
                ['', 'Kabupaten Kuningan', 'Kuningan', '1', '9'],
                ['', 'Kabupaten Majalengka', 'Majalengka', '1', '9'],
                ['', 'Kabupaten Pangandaran', 'Parigi', '1', '9'],
                ['', 'Kabupaten Purwakarta', 'Purwakarta', '1', '9'],
                ['', 'Kabupaten Subang', 'Subang', '1', '9'],
                ['', 'Kabupaten Sukabumi', 'Palabuhanratu', '1', '9'],
                ['', 'Kabupaten Sumedang', 'Sumedang Utara', '1', '9'],
                ['', 'Kabupaten Tasikmalaya', 'Singaparna', '1', '9'],
                ['', 'Kota Bandung', '', '1', '9'],
                ['', 'Kota Banjar', '', '1', '9'],
                ['', 'Kota Bekasi', '', '1', '9'],
                ['', 'Kota Bogor', '', '1', '9'],
                ['', 'Kota Cimahi', '', '1', '9'],
                ['', 'Kota Cirebon', '', '1', '9'],
                ['', 'Kota Bandung', '', '1', '9'],
                ['', 'Kota Depok', '', '1', '9'],
                ['', 'Kota Sukabumi', '', '1', '9'],
                ['', 'Kota Tasikmalaya', '', '1', '9'],
                ['', 'Kabupaten Banjarnegara', 'Banjarnegara', '1', '10'],
                ['', 'Kabupaten Banyumas', 'Purwokerto', '1', '10'],
                ['', 'Kabupaten Batang', 'Batang', '1', '10'],
                ['', 'Kabupaten Blora', 'Blora', '1', '10'],
                ['', 'Kabupaten Boyolali', 'Boyolali', '1', '10'],
                ['', 'Kabupaten Brebes', 'Brebes', '1', '10'],
                ['', 'Kabupaten Cilacap', 'Cilacap', '1', '10'],
                ['', 'Kabupaten Demak', 'Demak', '1', '10'],
                ['', 'Kabupaten Grobogan', 'Purwodadi', '1', '10'],
                ['', 'Kabupaten Jepara', 'Jepara', '1', '10'],
                ['', 'Kabupaten Karanganyar', 'Karanganyar', '1', '10'],
                ['', 'Kabupaten Kebumen', 'Kebumen', '1', '10'],
                ['', 'Kabupaten Kendal', 'Kendal', '1', '10'],
                ['', 'Kabupaten Klaten', 'Klaten', '1', '10'],
                ['', 'Kabupaten Kudus', 'Kudus', '1', '10'],
                ['', 'Kabupaten Magelang', 'Mungkid', '1', '10'],
                ['', 'Kabupaten Pati', 'Pati', '1', '10'],
                ['', 'Kabupaten Pekalongan', 'Kajen', '1', '10'],
                ['', 'Kabupaten Pemalang', 'Pemalang', '1', '10'],
                ['', 'Kabupaten Purbalingga', 'Purbalingga', '1', '10'],
                ['', 'Kabupaten Purworejo', 'Purworejo', '1', '10'],
                ['', 'Kabupaten Rembang', 'Rembang', '1', '10'],
                ['', 'Kabupaten Semarang', 'Ungaran', '1', '10'],
                ['', 'Kabupaten Sragen', 'Sragen', '1', '10'],
                ['', 'Kabupaten Sukoharjo', 'Sukoharjo', '1', '10'],
                ['', 'Kabupaten Tegal', 'Slawi', '1', '10'],
                ['', 'Kabupaten Temanggung', 'Temanggung', '1', '10'],
                ['', 'Kabupaten Wonogiri', 'Wonogiri', '1', '10'],
                ['', 'Kabupaten Wonosobo', '', '1', '10'],
                ['', 'Kota Magelang', '', '1', '10'],
                ['', 'Kota Pekalongan', '', '1', '10'],
                ['', 'Kota Salatiga', '', '1', '10'],
                ['', 'Kota Semarang', '', '1', '10'],
                ['', 'Kota Surakarta', '', '1', '10'],
                ['', 'Kota Tegal', '', '1', '10'],
                ['', 'Kabupaten Bangkalan', 'Bangkalan', '1', '11'],
                ['', 'Kabupaten Banyuwangi', 'Banyuwangi', '1', '11'],
                ['', 'Kabupaten Blitar', 'Kanigoro', '1', '11'],
                ['', 'Kabupaten Bojonegoro', 'Bojonegoro', '1', '11'],
                ['', 'Kabupaten Bondowoso', 'Bondowoso', '1', '11'],
                ['', 'Kabupaten Gresik', 'Gresik', '1', '11'],
                ['', 'Kabupaten Jember', 'Jember', '1', '11'],
                ['', 'Kabupaten Jombang', 'Jombang', '1', '11'],
                ['', 'Kabupaten Kediri', 'Kediri', '1', '11'],
                ['', 'Kabupaten Lamongan', 'Lamongan', '1', '11'],
                ['', 'Kabupaten Lumajang', 'Lumajang', '1', '11'],
                ['', 'Kabupaten Madiun', 'Caruban', '1', '11'],
                ['', 'Kabupaten Magetan', 'Magetan', '1', '11'],
                ['', 'Kabupaten Malang', 'Kepanjen', '1', '11'],
                ['', 'Kabupaten Mojokerto', 'Mojokerto', '1', '11'],
                ['', 'Kabupaten Nganjuk', 'Nganjuk', '1', '11'],
                ['', 'Kabupaten Ngawi', 'Ngawi', '1', '11'],
                ['', 'Kabupaten Pacitan', 'Pacitan', '1', '11'],
                ['', 'Kabupaten Pamekasan', 'Pamekasan', '1', '11'],
                ['', 'Kabupaten Pasuruan', 'Bangil', '1', '11'],
                ['', 'Kabupaten Ponorogo', 'Ponorogo', '1', '11'],
                ['', 'Kabupaten Probolinggo', 'Kraksaan', '1', '11'],
                ['', 'Kabupaten Sampang', 'Sampang', '1', '11'],
                ['', 'Kabupaten Sidoarjo', 'Sidoarjo', '1', '11'],
                ['', 'Kabupaten Situbondo', 'Situbondo', '1', '11'],
                ['', 'Kabupaten Sumenep', 'Sumenep', '1', '11'],
                ['', 'Kabupaten Trenggalek', 'Trenggalek', '1', '11'],
                ['', 'Kabupaten Tuban', 'Tuban', '1', '11'],
                ['', 'Kabupaten Tulungagung', 'Tulungagung', '1', '11'],
                ['', 'Kota Batu', '', '1', '11'],
                ['', 'Kota Blitar', '', '1', '11'],
                ['', 'Kota Kediri', '', '1', '11'],
                ['', 'Kota Madiun', '', '1', '11'],
                ['', 'Kota Malang', '', '1', '11'],
                ['', 'Kota Mojokerto', '', '1', '11'],
                ['', 'Kota Pasuruan', '', '1', '11'],
                ['', 'Kota Probolinggo', '', '1', '11'],
                ['', 'Kota Surabaya', '', '1', '11'],
            ],
            'districts' => [
                ['31.01.01', 'Kepulauan Seribu Utara', '', '1', '6', '56'],
                ['31.01.02', 'Kepulauan Seribu Selatan', '', '1', '6', '56'],
                ['31.73.01', 'Cengkareng', '', '1', '6', '57'],
                ['31.73.02', 'Grogol Petamburan', '', '1', '6', '57'],
                ['31.73.03', 'Taman Sari', '', '1', '6', '57'],
                ['31.73.04', 'Tambora', '', '1', '6', '57'],
                ['31.73.05', 'Kebon Jeruk', '', '1', '6', '57'],
                ['31.73.06', 'Kalideres', '', '1', '6', '57'],
                ['31.73.07', 'Palmerah', '', '1', '6', '57'],
                ['31.73.08', 'Kembangan', '', '1', '6', '57'],
                ['31.71.05', 'Cempaka Putih', '', '1', '6', '58'],
                ['31.71.01', 'Gambir', '', '1', '6', '58'],
                ['31.71.08', 'Johar Baru', '', '1', '6', '58'],
                ['31.71.03', 'Kemayoran', '', '1', '6', '58'],
                ['31.71.06', 'Menteng', '', '1', '6', '58'],
                ['31.71.02', 'Sawah Besar', '', '1', '6', '58'],
                ['31.71.04', 'Senen', '', '1', '6', '58'],
                ['31.71.07', 'Tanah Abang', '', '1', '6', '58'],
                ['31.74.06', 'Cilandak', '', '1', '6', '59'],
                ['31.74.09', 'Jagakarsa', '', '1', '6', '59'],
                ['31.74.07', 'Kebayoran Baru', '', '1', '6', '59'],
                ['31.74.05', 'Kebayoran Lama', '', '1', '6', '59'],
                ['31.74.03', 'Mampang Prapatan', '', '1', '6', '59'],
                ['31.74.08', 'Pancoran', '', '1', '6', '59'],
                ['31.74.04', 'Pasar Minggu', '', '1', '6', '59'],
                ['31.74.10', 'Pesanggrahan', '', '1', '6', '59'],
                ['31.74.02', 'Setiabudi', '', '1', '6', '59'],
                ['31.74.01', 'Tebet', '', '1', '6', '59'],
                ['31.75.06', 'Cakung', '', '1', '6', '60'],
                ['31.75.10', 'Cipayung', '', '1', '6', '60'],
                ['31.75.09', 'Ciracas', '', '1', '6', '60'],
                ['31.75.07', 'Duren Sawit', '', '1', '6', '60'],
                ['31.75.03', 'Jatinegara', '', '1', '6', '60'],
                ['31.75.04', 'Kramat Jati', '', '1', '6', '60'],
                ['31.75.08', 'Makasar', '', '1', '6', '60'],
                ['31.75.01', 'Matraman', '', '1', '6', '60'],
                ['31.75.05', 'Pasar Rebo', '', '1', '6', '60'],
                ['31.75.02', 'Pulo Gadung', '', '1', '6', '60'],
                ['31.72.04', 'Cilincing', '', '1', '6', '61'],
                ['31.72.06', 'Kelapa Gading', '', '1', '6', '61'],
                ['31.72.03', 'Koja', '', '1', '6', '61'],
                ['31.72.05', 'Pademangan', '', '1', '6', '61'],
                ['31.72.01', 'Penjaringan', '', '1', '6', '61'],
                ['31.72.02', 'Tanjung Priok', '', '1', '6', '61'],
                ['32.04.30', 'Pacet', '', '1', '9', '62'],//9 jabar | 62 Kabupaten Bandung
                ['32.04.31', 'Kertasari', '', '1', '9', '62'],
                ['32.04.32', 'Baleendah', '', '1', '9', '62'],
                ['32.04.33', 'Majalaya', '', '1', '9', '62'],
                ['32.04.34', 'Solokanjeruk', '', '1', '9', '62'],
                ['32.04.35', 'Paseh', '', '1', '9', '62'],
                ['32.04.36', 'Ibun', '', '1', '9', '62'],
                ['32.04.37', 'Soreang', '', '1', '9', '62'],
                ['32.04.38', 'Pasirjambu', '', '1', '9', '62'],
                ['32.04.39', 'Ciwidey', '', '1', '9', '62'],
                ['32.04.40', 'Rancabali', '', '1', '9', '62'],
                ['32.04.44', 'Cangkuang', '', '1', '9', '62'],
                ['32.04.46', 'Kutawaringin', '', '1', '9', '62'],
                ['32.04.16', 'Arjasari', '', '1', '9', '62'], 
                ['32.04.13', 'Banjaran', '', '1', '9', '62'],
                ['32.04.08', 'Bojongsoang', '', '1', '9', '62'],
                ['32.04.25', 'Cicalengka', '', '1', '9', '62'],
                ['32.04.27', 'Cikancung', '', '1', '9', '62'],
                ['32.04.07', 'Cilengkrang', '', '1', '9', '62'],
                ['32.04.05', 'Cileunyi', '', '1', '9', '62'],
                ['32.04.17', 'Cimaung', '', '1', '9', '62'],
                ['32.04.06', 'Cimenyan', '', '1', '9', '62'],
                ['32.04.29', 'Ciparay', '', '1', '9', '62'],
                ['32.04.12', 'Dayeuhkolot', '', '1', '9', '62'],
                ['32.04.11', 'Katapang', '', '1', '9', '62'],
                ['32.04.10', 'Margaasih', '', '1', '9', '62'],
                ['32.04.09', 'Margahayu', '', '1', '9', '62'],
                ['32.04.26', 'Nagreg', '', '1', '9', '62'],
                ['32.04.14', 'Pameungpeuk', '', '1', '9', '62'],
                ['32.04.15', 'Pangalengan', '', '1', '9', '62'],
                ['32.04.28', 'Rancaekek', '', '1', '9', '62'],
                ['32.17.09', 'Batujajar', '', '1', '9', '63'], //9 jabar | 63 kabupaten Bandung Barat
                ['32.17.10', 'Cihampelas', '', '1', '9', '63'],
                ['32.17.04', 'Cikalong Wetan', '', '1', '9', '63'],
                ['32.17.11', 'Cililin', '', '1', '9', '63'],
                ['32.17.07', 'Cipatat', '', '1', '9', '63'],
                ['32.17.05', 'Cipeundeuy', '', '1', '9', '63'],
                ['32.17.12', 'Cipongkor', '', '1', '9', '63'],
                ['32.17.03', 'Cisarua', '', '1', '9', '63'],
                ['32.17.15', 'Gununghalu', '', '1', '9', '63'],
                ['32.17.01', 'Lembang', '', '1', '9', '63'],
                ['32.17.06', 'Ngamprah', '', '1', '9', '63'],
                ['32.17.08', 'Padalarang', '', '1', '9', '63'],
                ['32.17.02', 'Parongpong', '', '1', '9', '63'],
                ['32.17.13', 'Rongga', '', '1', '9', '63'],
                ['32.17.16', 'Saguling', '', '1', '9', '63'],
                ['32.17.14', 'Sindangkerta', '', '1', '9', '63'],
                ['32.16.02', 'Babelan', '', '1', '9', '64'], //9 jabar | 64 Kabupaten Bekasi
                ['32.16.23', 'Bojongmangu', '', '1', '9', '64'],
                ['32.16.16', 'Cabangbungin', '', '1', '9', '64'],
                ['32.16.22', 'Cibarusah', '', '1', '9', '64'],
                ['32.16.07', 'Cibitung', '', '1', '9', '64'],
                ['32.16.08', 'Cikarang Barat', '', '1', '9', '64'],
                ['32.16.20', 'Cikarang Pusat', '', '1', '9', '64'],
                ['32.16.19', 'Cikarang Selatan', '', '1', '9', '64'],
                ['32.16.11', 'Cikarang Timur', '', '1', '9', '64'],
                ['32.16.09', 'Cikarang Utara', '', '1', '9', '64'],
                ['32.16.10', 'Karangbahagia', '', '1', '9', '64'],
                ['32.16.12', 'Kedungwaringin', '', '1', '9', '64'],
                ['32.16.17', 'Muara Gembong', '', '1', '9', '64'],
                ['32.16.13', 'Pebayuran', '', '1', '9', '64'],
                ['32.16.21', 'Serang Baru', '', '1', '9', '64'],
                ['32.16.18', 'Setu', '', '1', '9', '64'],
                ['32.16.14', 'Sukakarya', '', '1', '9', '64'],
                ['32.16.15', 'Sukatani', '', '1', '9', '64'],
                ['32.16.03', 'Sukawangi', '', '1', '9', '64'],
                ['32.16.04', 'Tambelang', '', '1', '9', '64'],
                ['32.16.06', 'Tambun Selatan', '', '1', '9', '64'],
                ['32.16.05', 'Tambun Utara', '', '1', '9', '64'],
                ['32.16.01', 'Tarumajaya', '', '1', '9', '64'],
                ['32.01.05', 'Babakan Madang', '', '1', '9', '65'], //9 jabar | 65 Kabupaten Bogor
                ['32.01.13', 'Bojonggede', '', '1', '9', '65'],
                ['32.01.27', 'Caringin', '', '1', '9', '65'],
                ['32.01.08', 'Cariu', '', '1', '9', '65'],
                ['32.01.15', 'Ciampea', '', '1', '9', '65'],
                ['32.01.24', 'Ciawi', '', '1', '9', '65'],
                ['32.01.01', 'Cibinong', '', '1', '9', '65'],
                ['32.01.16', 'Cibungbulang', '', '1', '9', '65'],
                ['32.01.38', 'Cigombong', '', '1', '9', '65'],
                ['32.01.22', 'Cigudeg', '', '1', '9', '65'],
                ['32.01.28', 'Cijeruk', '', '1', '9', '65'],
                ['32.01.07', 'Cileungsi', '', '1', '9', '65'],
                ['32.01.29', 'Ciomas', '', '1', '9', '65'],
                ['32.01.25', 'Cisarua', '', '1', '9', '65'],
                ['32.01.33', 'Ciseeng', '', '1', '9', '65'],
                ['32.01.03', 'Citeureup', '', '1', '9', '65'],
                ['32.01.30', 'Dramaga', '', '1', '9', '65'],
                ['32.01.02', 'Gunung Putri', '', '1', '9', '65'],
                ['32.01.11', 'Gunungsindur', '', '1', '9', '65'],
                ['32.01.19', 'Jasinga', '', '1', '9', '65'],
                ['32.01.06', 'Jonggol', '', '1', '9', '65'],
                ['32.01.12', 'Kemang', '', '1', '9', '65'],
                ['32.01.32', 'Klapanunggal', '', '1', '9', '65'],
                ['32.01.14', 'Leuwiliang', '', '1', '9', '65'],
                ['32.01.39', 'Leuwisadeng', '', '1', '9', '65'],
                ['32.01.26', 'Megamendung', '', '1', '9', '65'],
                ['32.01.21', 'Nanggung', '', '1', '9', '65'],
                ['32.01.17', 'Pamijahan', '', '1', '9', '65'],
                ['32.01.10', 'Parung', '', '1', '9', '65'],
                ['32.01.20', 'Parung Panjang', '', '1', '9', '65'],
                ['32.01.34', 'Rancabungur', '', '1', '9', '65'],
                ['32.01.18', 'Rumpin', '', '1', '9', '65'],
                ['32.01.35', 'Sukajaya', '', '1', '9', '65'],
                ['32.01.09', 'Sukamakmur', '', '1', '9', '65'],
                ['32.01.04', 'Sukaraja', '', '1', '9', '65'],
                ['32.01.37', 'Tajurhalang', '', '1', '9', '65'],
                ['32.01.31', 'Tamansari', '', '1', '9', '65'],
                ['32.01.36', 'Tanjungsari', '', '1', '9', '65'],
                ['32.01.23', 'Tenjo', '', '1', '9', '65'],
                ['32.01.40', 'Tenjolaya', '', '1', '9', '65'],
                ['32.07.37', 'Banjaranyar', '', '1', '9', '66'], //9 jabar | 66 Kabupaten Ciamis 
                ['32.07.18', 'Banjarsari', '', '1', '9', '66'],
                ['32.07.32', 'Baregbeg', '', '1', '9', '66'],
                ['32.07.01', 'Ciamis', '', '1', '9', '66'],
                ['32.07.05', 'Cidolog', '', '1', '9', '66'],
                ['32.07.06', 'Cihaurbeuti', '', '1', '9', '66'],
                ['32.07.03', 'Cijeungjing', '', '1', '9', '66'],
                ['32.07.02', 'Cikoneng', '', '1', '9', '66'],
                ['32.07.29', 'Cimaragas', '', '1', '9', '66'],
                ['32.07.11', 'Cipaku', '', '1', '9', '66'],
                ['32.07.30', 'Cisaga', '', '1', '9', '66'],
                ['32.07.12', 'Jatinagara', '', '1', '9', '66'],
                ['32.07.09', 'Kawali', '', '1', '9', '66'],
                ['32.07.17', 'Lakbok', '', '1', '9', '66'],
                ['32.07.34', 'Lumbung', '', '1', '9', '66'],
                ['32.07.19', 'Pamarican', '', '1', '9', '66'],
                ['32.07.08', 'Panjalu', '', '1', '9', '66'],
                ['32.07.10', 'Panawangan', '', '1', '9', '66'],
                ['32.07.07', 'Panumbangan', '', '1', '9', '66'],
                ['32.07.35', 'Purwadadi', '', '1', '9', '66'],
                ['32.07.13', 'Rajadesa', '', '1', '9', '66'],
                ['32.07.15', 'Rancah', '', '1', '9', '66'],
                ['32.07.04', 'Sadananya', '', '1', '9', '66'],
                ['32.07.31', 'Sindangkasih', '', '1', '9', '66'],
                ['32.07.14', 'Sukadana', '', '1', '9', '66'],
                ['32.07.33', 'Sukamantri', '', '1', '9', '66'],
                ['32.07.16', 'Tambaksari', '', '1', '9', '66'],
                ['32.03.22', 'Agrabinta', '', '1', '9', '67'], //9 jabar | 67 Kabupaten Cianjur
                ['32.03.06', 'Bojongpicung', '', '1', '9', '67'],
                ['32.03.15', 'Campaka', '', '1', '9', '67'],
                ['32.03.25', 'Campaka Mulya', '', '1', '9', '67'],
                ['32.03.01', 'Cianjur', '', '1', '9', '67'],
                ['32.03.03', 'Cibeber', '', '1', '9', '67'],
                ['32.03.20', 'Cibinong', '', '1', '9', '67'],
                ['32.03.23', 'Cidaun', '', '1', '9', '67'],
                ['32.03.29', 'Cijati', '', '1', '9', '67'],
                ['32.03.26', 'Cikadu', '', '1', '9', '67'],
                ['32.03.12', 'Cikalongkulon', '', '1', '9', '67'],
                ['32.03.04', 'Cilaku', '', '1', '9', '67'],
                ['32.03.28', 'Cipanas', '', '1', '9', '67'],
                ['32.03.05', 'Ciranjang', '', '1', '9', '67'],
                ['32.03.11', 'Cugenang', '', '1', '9', '67'],
                ['32.03.27', 'Gekbrong', '', '1', '9', '67'],
                ['32.03.31', 'Haurwangi', '', '1', '9', '67'],
                ['32.03.17', 'Kadupandak', '', '1', '9', '67'],
                ['32.03.07', 'Karangtengah', '', '1', '9', '67'],
                ['32.03.30', 'Leles', '', '1', '9', '67'],
                ['32.03.08', 'Mande', '', '1', '9', '67'],
                ['32.03.24', 'Naringgul', '', '1', '9', '67'],
                ['32.03.10', 'Pacet', '', '1', '9', '67'],
                ['32.03.18', 'Pagelaran', '', '1', '9', '67'],
                ['32.03.32', 'Pasirkuda', '', '1', '9', '67'],
                ['32.03.21', 'Sindangbarang', '', '1', '9', '67'],
                ['32.03.09', 'Sukaluyu', '', '1', '9', '67'],
                ['32.03.14', 'Sukanagara', '', '1', '9', '67'],
                ['32.03.13', 'Sukaresmi', '', '1', '9', '67'],
                ['32.03.16', 'Takokak', '', '1', '9', '67'],
                ['32.03.19', 'Tanggeung', '', '1', '9', '67'],
                ['32.03.02', 'Warungkondang', '', '1', '9', '67'],
                ['32.09.24', 'Arjawinangun', '', '1', '9', '68'], //9 jabar | 68 Kabupaten Cirebon
                ['32.09.10', 'Astanajapura', '', '1', '9', '68'],
                ['32.09.05', 'Babakan', '', '1', '9', '68'],
                ['32.09.13', 'Beber', '', '1', '9', '68'],
                ['32.09.02', 'Ciledug', '', '1', '9', '68'],
                ['32.09.26', 'Ciwaringin', '', '1', '9', '68'],
                ['32.09.31', 'Depok', '', '1', '9', '68'],
                ['32.09.16', 'Dukupuntang', '', '1', '9', '68'],
                ['32.09.30', 'Gebang', '', '1', '9', '68'],
                ['32.09.28', 'Gegesik', '', '1', '9', '68'],
                ['32.09.37', 'Gempol', '', '1', '9', '68'],
                ['32.09.38', 'Greged', '', '1', '9', '68'],
                ['32.09.21', 'Gunungjati', '', '1', '9', '68'],
                ['32.09.40', 'Jamblang', '', '1', '9', '68'],
                ['32.09.29', 'Kaliwedi', '', '1', '9', '68'],
                ['32.09.22', 'Kapetakan', '', '1', '9', '68'],
                ['32.09.06', 'Karangsembung', '', '1', '9', '68'],
                ['32.09.34', 'Karangwareng', '', '1', '9', '68'],
                ['32.09.20', 'Kedawung', '', '1', '9', '68'],
                ['32.09.23', 'Klangenan', '', '1', '9', '68'],
                ['32.09.07', 'Lemahabang', '', '1', '9', '68'],
                ['32.09.03', 'Losari', '', '1', '9', '68'],
                ['32.09.12', 'Mundu', '', '1', '9', '68'],
                ['32.09.04', 'Pabedilan', '', '1', '9', '68'],
                ['32.09.33', 'Pabuaran', '', '1', '9', '68'],
                ['32.09.17', 'Palimanan', '', '1', '9', '68'],
                ['32.09.11', 'Pangenan', '', '1', '9', '68'],
                ['32.09.25', 'Panguragan', '', '1', '9', '68'],
                ['32.09.32', 'Pasaleman', '', '1', '9', '68'],
                ['32.09.36', 'Plered', '', '1', '9', '68'],
                ['32.09.18', 'Plumbon', '', '1', '9', '68'],
                ['32.09.09', 'Sedong', '', '1', '9', '68'],
                ['32.09.15', 'Sumber', '', '1', '9', '68'],
                ['32.09.39', 'Suranenggala', '', '1', '9', '68'],
                ['32.09.27', 'Susukan', '', '1', '9', '68'],
                ['32.09.08', 'Susukanlebak', '', '1', '9', '68'],
                ['32.09.14', 'Talun', '', '1', '9', '68'],
                ['32.09.35', 'Tengahtani', '', '1', '9', '68'],
                ['32.09.01', 'Waled', '', '1', '9', '68'],
                ['32.09.19', 'Weru', '', '1', '9', '68'],
                ['32.05.23', 'Banjarwangi', '', '1', '9', '69'], //9 jabar | 69 Kabupaten Garut 
                ['32.05.06', 'Banyuresmi', '', '1', '9', '69'],
                ['32.05.17', 'Bayongbong', '', '1', '9', '69'],
                ['32.05.38', 'Balubur Limbangan', '', '1', '9', '69'],
                ['32.05.31', 'Bungbulang', '', '1', '9', '69'],
                ['32.05.36', 'Caringin', '', '1', '9', '69'],
                ['32.05.29', 'Cibalong', '', '1', '9', '69'],
                ['32.05.12', 'Cibatu', '', '1', '9', '69'],
                ['32.05.40', 'Cibiuk', '', '1', '9', '69'],
                ['32.05.18', 'Cigedug', '', '1', '9', '69'],
                ['32.05.25', 'Cihurip', '', '1', '9', '69'],
                ['32.05.22', 'Cikajang', '', '1', '9', '69'],
                ['32.05.30', 'Cikelet', '', '1', '9', '69'],
                ['32.05.19', 'Cilawu', '', '1', '9', '69'],
                ['32.05.35', 'Cisewu', '', '1', '9', '69'],
                ['32.05.28', 'Cisompet', '', '1', '9', '69'],
                ['32.05.20', 'Cisurupan', '', '1', '9', '69'],
                ['32.05.01', 'Garut Kota', '', '1', '9', '69'],
                ['32.05.10', 'Kadungora', '', '1', '9', '69'],
                ['32.05.02', 'Karangpawitan', '', '1', '9', '69'],
                ['32.05.16', 'Karangtengah', '', '1', '9', '69'],
                ['32.05.13', 'Kersamanah', '', '1', '9', '69'],
                ['32.05.09', 'Leles', '', '1', '9', '69'],
                ['32.05.11', 'Leuwigoong', '', '1', '9', '69'],
                ['32.05.14', 'Malangbong', '', '1', '9', '69'],
                ['32.05.32', 'Mekarmukti', '', '1', '9', '69'],
                ['32.05.33', 'Pakenjeng', '', '1', '9', '69'],
                ['32.05.27', 'Pameungpeuk', '', '1', '9', '69'],
                ['32.05.34', 'Pamulihan', '', '1', '9', '69'],
                ['32.05.41', 'Pangatikan', '', '1', '9', '69'],
                ['32.05.08', 'Pasirwangi', '', '1', '9', '69'],
                ['32.05.26', 'Peundeuy', '', '1', '9', '69'],
                ['32.05.07', 'Samarang', '', '1', '9', '69'],
                ['32.05.39', 'Selaawi', '', '1', '9', '69'],
                ['32.05.24', 'Singajaya', '', '1', '9', '69'],
                ['32.05.42', 'Sucinaraja', '', '1', '9', '69'],
                ['32.05.21', 'Sukaresmi', '', '1', '9', '69'],
                ['32.05.15', 'Sukawening', '', '1', '9', '69'],
                ['32.05.37', 'Talegong', '', '1', '9', '69'],
                ['32.05.04', 'Tarogong Kaler', '', '1', '9', '69'],
                ['32.05.05', 'Tarogong Kidul', '', '1', '9', '69'],
                ['32.05.03', 'Wanaraja', '', '1', '9', '69'],
                ['32.12.23', 'Anjatan', '', '1', '9', '70'], //9 jabar | 70 Kabupaten Indramayu
                ['32.12.19', 'Arahan', '', '1', '9', '70'],
                ['32.12.14', 'Balongan', '', '1', '9', '70'],
                ['32.12.06', 'Bangodua', '', '1', '9', '70'],
                ['32.12.22', 'Bongas', '', '1', '9', '70'],
                ['32.12.17', 'Cantigi', '', '1', '9', '70'],
                ['32.12.04', 'Cikedung', '', '1', '9', '70'],
                ['32.12.03', 'Gabuswetan', '', '1', '9', '70'],
                ['32.12.25', 'Gantar', '', '1', '9', '70'],
                ['32.12.01', 'Haurgeulis', '', '1', '9', '70'],
                ['32.12.15', 'Indramayu', '', '1', '9', '70'],
                ['32.12.13', 'Jatibarang', '', '1', '9', '70'],
                ['32.12.11', 'Juntinyuat', '', '1', '9', '70'],
                ['32.12.21', 'Kandanghaur', '', '1', '9', '70'],
                ['32.12.10', 'Karangampel', '', '1', '9', '70'],
                ['32.12.28', 'Kedokan Bunder', '', '1', '9', '70'],
                ['32.12.08', 'Kertasemaya', '', '1', '9', '70'],
                ['32.12.09', 'Krangkeng', '', '1', '9', '70'],
                ['32.12.02', 'Kroya', '', '1', '9', '70'],
                ['32.12.05', 'Lelea', '', '1', '9', '70'],
                ['32.12.18', 'Lohbener', '', '1', '9', '70'],
                ['32.12.20', 'Losarang', '', '1', '9', '70'],
                ['32.12.29', 'Pasekan', '', '1', '9', '70'],
                ['32.12.31', 'Patrol', '', '1', '9', '70'],
                ['32.12.16', 'Sindang', '', '1', '9', '70'],
                ['32.12.12', 'Sliyeg', '', '1', '9', '70'],
                ['32.12.27', 'Sukagumiwang', '', '1', '9', '70'],
                ['32.12.24', 'Sukra', '', '1', '9', '70'],
                ['32.12.26', 'Terisi', '', '1', '9', '70'],
                ['32.12.30', 'Tukdana', '', '1', '9', '70'],
                ['32.12.07', 'Widasari', '', '1', '9', '70'],
                ['32.15.24', 'Banyusari', '', '1', '9', '71'], //9 jabar | 71 Kabupaten Karawang
                ['32.15.08', 'Batujaya', '', '1', '9', '71'],
                ['32.15.04', 'Ciampel', '', '1', '9', '71'],
                ['32.15.11', 'Cibuaya', '', '1', '9', '71'],
                ['32.15.13', 'Cikampek', '', '1', '9', '71'],
                ['32.15.23', 'Cilamaya Kulon', '', '1', '9', '71'],
                ['32.15.15', 'Cilamaya Wetan', '', '1', '9', '71'],
                ['32.15.30', 'Cilebar', '', '1', '9', '71'],
                ['32.15.14', 'Jatisari', '', '1', '9', '71'],
                ['32.15.22', 'Jayakerta', '', '1', '9', '71'],
                ['32.15.01', 'Karawang Barat', '', '1', '9', '71'],
                ['32.15.26', 'Karawang Timur', '', '1', '9', '71'],
                ['32.15.05', 'Klari', '', '1', '9', '71'],
                ['32.15.25', 'Kotabaru', '', '1', '9', '71'],
                ['32.15.07', 'Kutawaluya', '', '1', '9', '71'],
                ['32.15.19', 'Lemahabang', '', '1', '9', '71'],
                ['32.15.21', 'Majalaya', '', '1', '9', '71'],
                ['32.15.12', 'Pakisjaya', '', '1', '9', '71'],
                ['32.15.02', 'Pangkalan', '', '1', '9', '71'],
                ['32.15.10', 'Pedes', '', '1', '9', '71'],
                ['32.15.29', 'Purwasari', '', '1', '9', '71'],
                ['32.15.18', 'Rawamerta', '', '1', '9', '71'],
                ['32.15.06', 'Rengasdengklok', '', '1', '9', '71'],
                ['32.15.28', 'Tegalwaru', '', '1', '9', '71'],
                ['32.15.17', 'Talagasari', '', '1', '9', '71'],
                ['32.15.27', 'Telukjambe Barat', '', '1', '9', '71'],
                ['32.15.03', 'Telukjambe Timur', '', '1', '9', '71'],
                ['32.15.20', 'Tempuran', '', '1', '9', '71'],
                ['32.15.09', 'Tirtajaya', '', '1', '9', '71'],
                ['32.15.16', 'Tirtamulya', '', '1', '9', '71'],
                ['32.08.10', 'Ciawigebang', '', '1', '9', '72'], //9 jabar | 72 Kabupaten Kuningan
                ['32.08.28', 'Cibeureum', '', '1', '9', '72'],
                ['32.08.05', 'Cibingbin', '', '1', '9', '72'],
                ['32.08.11', 'Cidahu', '', '1', '9', '72'],
                ['32.08.32', 'Cigandamekar', '', '1', '9', '72'],
                ['32.08.18', 'Cigugur', '', '1', '9', '72'],
                ['32.08.25', 'Cilebak', '', '1', '9', '72'],
                ['32.08.13', 'Cilimus', '', '1', '9', '72'],
                ['32.08.24', 'Cimahi', '', '1', '9', '72'],
                ['32.08.02', 'Ciniru', '', '1', '9', '72'],
                ['32.08.21', 'Cipicung', '', '1', '9', '72'],
                ['32.08.04', 'Ciwaru', '', '1', '9', '72'],
                ['32.08.17', 'Darma', '', '1', '9', '72'],
                ['32.08.08', 'Garawangi', '', '1', '9', '72'],
                ['32.08.26', 'Hantara', '', '1', '9', '72'],
                ['32.08.12', 'Jalaksana', '', '1', '9', '72'],
                ['32.08.23', 'Japara', '', '1', '9', '72'],
                ['32.08.01', 'Kadugede', '', '1', '9', '72'],
                ['32.08.27', 'Kalimanggis', '', '1', '9', '72'],
                ['32.08.29', 'Karangkancana', '', '1', '9', '72'],
                ['32.08.16', 'Kramatmulya', '', '1', '9', '72'],
                ['32.08.09', 'Kuningan', '', '1', '9', '72'],
                ['32.08.07', 'Lebakwangi', '', '1', '9', '72'],
                ['32.08.06', 'Luragung', '', '1', '9', '72'],
                ['32.08.30', 'Maleber', '', '1', '9', '72'],
                ['32.08.14', 'Mandirancan', '', '1', '9', '72'],
                ['32.08.20', 'Nusaherang', '', '1', '9', '72'],
                ['32.08.22', 'Pancalang', '', '1', '9', '72'],
                ['32.08.19', 'Pasawahan', '', '1', '9', '72'],
                ['32.08.31', 'Sindangagung', '', '1', '9', '72'],
                ['32.08.03', 'Subang', '', '1', '9', '72'],
                ['32.10.05', 'Argapura', '', '1', '9', '73'], //9 jabar | 73 Kabupaten Majalengka 
                ['32.10.22', 'Banjaran', '', '1', '9', '73'],
                ['32.10.02', 'Bantarujeg', '', '1', '9', '73'],
                ['32.10.20', 'Cigasong', '', '1', '9', '73'],
                ['32.10.03', 'Cikijing', '', '1', '9', '73'],
                ['32.10.23', 'Cingambul', '', '1', '9', '73'],
                ['32.10.12', 'Dawuan', '', '1', '9', '73'],
                ['32.10.15', 'Jatitujuh', '', '1', '9', '73'],
                ['32.10.11', 'Jatiwangi', '', '1', '9', '73'],
                ['32.10.13', 'Kadipaten', '', '1', '9', '73'],
                ['32.10.24', 'Kasokandel', '', '1', '9', '73'],
                ['32.10.14', 'Kertajati', '', '1', '9', '73'],
                ['32.10.01', 'Lemahsugih', '', '1', '9', '73'],
                ['32.10.10', 'Leuwimunding', '', '1', '9', '73'],
                ['32.10.16', 'Ligung', '', '1', '9', '73'],
                ['32.10.06', 'Maja', '', '1', '9', '73'],
                ['32.10.07', 'Majalengka', '', '1', '9', '73'],
                ['32.10.26', 'Malausma', '', '1', '9', '73'],
                ['32.10.19', 'Palasah', '', '1', '9', '73'],
                ['32.10.18', 'Panyingkiran', '', '1', '9', '73'],
                ['32.10.09', 'Rajagaluh', '', '1', '9', '73'],
                ['32.10.25', 'Sindang', '', '1', '9', '73'],
                ['32.10.21', 'Sindangwangi', '', '1', '9', '73'],
                ['32.10.08', 'Sukahaji', '', '1', '9', '73'],
                ['32.10.17', 'Sumberjaya', '', '1', '9', '73'],
                ['32.10.04', 'Talaga', '', '1', '9', '73'],
                ['32.18.04', 'Cigugur', '', '1', '9', '74'], //9 jabar | 74 Kabupaten Pangandaran
                ['32.18.02', 'Cijulang', '', '1', '9', '74'],
                ['32.18.03', 'Cimerak', '', '1', '9', '74'],
                ['32.18.08', 'Kalipucang', '', '1', '9', '74'],
                ['32.18.05', 'Langkaplancar', '', '1', '9', '74'],
                ['32.18.06', 'Mangunjaya', '', '1', '9', '74'],
                ['32.18.07', 'Padaherang', '', '1', '9', '74'],
                ['32.18.09', 'Pangandaran', '', '1', '9', '74'],
                ['32.18.01', 'Parigi', '', '1', '9', '74'],
                ['32.18.10', 'Sidamulih', '', '1', '9', '74'],
                ['32.14.12', 'Babakancikao', '', '1', '9', '75'], //9 jabar | 75 Kabupaten Purwakarta
                ['32.14.11', 'Bojong', '', '1', '9', '75'],
                ['32.14.13', 'Bungursari', '', '1', '9', '75'],
                ['32.14.02', 'Campaka', '', '1', '9', '75'],
                ['32.14.14', 'Cibatu', '', '1', '9', '75'],
                ['32.14.06', 'Darangdan', '', '1', '9', '75'],
                ['32.14.03', 'Jatiluhur', '', '1', '9', '75'],
                ['32.14.17', 'Kiarapedes', '', '1', '9', '75'],
                ['32.14.07', 'Maniis', '', '1', '9', '75'],
                ['32.14.10', 'Pasawahan', '', '1', '9', '75'],
                ['32.14.04', 'Plered', '', '1', '9', '75'],
                ['32.14.16', 'Pondoksalam', '', '1', '9', '75'],
                ['32.14.01', 'Purwakarta', '', '1', '9', '75'],
                ['32.14.15', 'Sukasari', '', '1', '9', '75'],
                ['32.14.05', 'Sukatani', '', '1', '9', '75'],
                ['32.14.08', 'Tegalwaru', '', '1', '9', '75'],
                ['32.14.09', 'Wanayasa', '', '1', '9', '75'],
                ['32.13.30', 'Pusakajaya', '', '1', '9', '76'], //9 jabar | 76 Kabupaten Subang
                ['32.13.01', 'Sagalaherang', '', '1', '9', '76'],
                ['32.13.02', 'Cisalak', '', '1', '9', '76'],
                ['32.13.03', 'Subang', '', '1', '9', '76'],
                ['32.13.04', 'Kalijati', '', '1', '9', '76'],
                ['32.13.05', 'Pabuaran', '', '1', '9', '76'],
                ['32.13.06', 'Purwadadi', '', '1', '9', '76'],
                ['32.13.07', 'Pagaden', '', '1', '9', '76'],
                ['32.13.08', 'Binong', '', '1', '9', '76'],
                ['32.13.09', 'Ciasem', '', '1', '9', '76'],
                ['32.13.10', 'Pusakanagara', '', '1', '9', '76'],
                ['32.13.11', 'Pamanukan', '', '1', '9', '76'],
                ['32.13.12', 'Jalan Cagak', '', '1', '9', '76'],
                ['32.13.13', 'Blanakan', '', '1', '9', '76'],
                ['32.13.14', 'Tanjung Siang', '', '1', '9', '76'],
                ['32.13.15', 'Compreng', '', '1', '9', '76'],
                ['32.13.16', 'Patok Beusi', '', '1', '9', '76'],
                ['32.13.17', 'Cibogo', '', '1', '9', '76'],
                ['32.13.18', 'Cipunagara', '', '1', '9', '76'],
                ['32.13.19', 'Cijambe', '', '1', '9', '76'],
                ['32.13.20', 'Cipeundeuy', '', '1', '9', '76'],
                ['32.13.21', 'Legon Kulon', '', '1', '9', '76'],
                ['32.13.22', 'Cikaum', '', '1', '9', '76'],
                ['32.13.23', 'Serangpanjang', '', '1', '9', '76'],
                ['32.13.24 ', 'Sukasari', '', '1', '9', '76'],
                ['32.13.25', 'Tambakdahan', '', '1', '9', '76'],
                ['32.13.26', 'Kasomalang', '', '1', '9', '76'],
                ['32.13.27', 'Dawuan', '', '1', '9', '76'],
                ['32.13.28', 'Pagaden Barat', '', '1', '9', '76'],
                ['32.13.29', 'Ciater', '', '1', '9', '76'],
                ['32.02.04', 'Bantargadung', '', '1', '9', '77'], //9 jabar | 77 Kabupaten Sukabumi
                ['32.02.14', 'Bojonggenteng', '', '1', '9', '77'],
                ['32.02.31', 'Caringin', '', '1', '9', '77'],
                ['32.02.47', 'Ciambar', '', '1', '9', '77'],
                ['32.02.11', 'Cibadak', '', '1', '9', '77'],
                ['32.02.25', 'Cibitung', '', '1', '9', '77'],
                ['32.02.28', 'Cicantayan', '', '1', '9', '77'],
                ['32.02.16', 'Cicurug', '', '1', '9', '77'],
                ['32.02.44', 'Cidadap', '', '1', '9', '77'],
                ['32.02.17', 'Cidahu', '', '1', '9', '77'],
                ['32.02.43', 'Cidolog', '', '1', '9', '77'],
                ['32.02.22', 'Ciemas', '', '1', '9', '77'],
                ['32.02.03', 'Cikakak', '', '1', '9', '77'],
                ['32.02.10', 'Cikembar', '', '1', '9', '77'],
                ['32.02.06', 'Cikidang', '', '1', '9', '77'],
                ['32.02.46', 'Cimanggu', '', '1', '9', '77'],
                ['32.02.26', 'Ciracap', '', '1', '9', '77'],
                ['32.02.35', 'Cireunghas', '', '1', '9', '77'],
                ['32.02.29', 'Cisaat', '', '1', '9', '77'],
                ['32.02.05', 'Cisolok', '', '1', '9', '77'],
                ['32.02.42', 'Curugkembar', '', '1', '9', '77'],
                ['32.02.40', 'Gegerbitung', '', '1', '9', '77'],
                ['32.02.27', 'Gunungguruh', '', '1', '9', '77'],
                ['32.02.21', 'Jampang Kulon', '', '1', '9', '77'],
                ['32.02.08', 'Jampang Tengah', '', '1', '9', '77'],
                ['32.02.19', 'Kabandungan', '', '1', '9', '77'],
                ['32.02.30', 'Kadudampit', '', '1', '9', '77'],
                ['32.02.18', 'Kalapanunggal', '', '1', '9', '77'],
                ['32.02.23', 'Kalibunder', '', '1', '9', '77'],
                ['32.02.34', 'Kebonpedes', '', '1', '9', '77'],
                ['32.02.07', 'Lengkong', '', '1', '9', '77'],
                ['32.02.12', 'Nagrak', '', '1', '9', '77'],
                ['32.02.39', 'Nyalindung', '', '1', '9', '77'],
                ['32.02.37', 'Pabuaran', '', '1', '9', '77'],
                ['32.02.01', 'Palabuhanratu', '', '1', '9', '77'],
                ['32.02.15', 'Parakansalak', '', '1', '9', '77'],
                ['32.02.13', 'Parungkuda', '', '1', '9', '77'],
                ['32.02.38', 'Purabaya', '', '1', '9', '77'],
                ['32.02.41', 'Sagaranten', '', '1', '9', '77'],
                ['32.02.02', 'Simpenan', '', '1', '9', '77'],
                ['32.02.32', 'Sukabumi', '', '1', '9', '77'],
                ['32.02.36', 'Sukalarang', '', '1', '9', '77'],
                ['32.02.33', 'Sukaraja', '', '1', '9', '77'],
                ['32.02.24', 'Surade', '', '1', '9', '77'],
                ['32.02.45', 'Tegalbuleud', '', '1', '9', '77'],
                ['32.02.20', 'Waluran', '', '1', '9', '77'],
                ['32.02.09', 'Warung Kiara', '', '1', '9', '77'],
                ['32.11.10', 'Buahdua', '', '1', '9', '78'], //9 jabar | 78 Kabupaten Sumedang
                ['32.11.04', 'Cibugel', '', '1', '9', '78'],
                ['32.11.22', 'Cimalaka', '', '1', '9', '78'],
                ['32.11.14', 'Cimanggung', '', '1', '9', '78'],
                ['32.11.23', 'Cisarua', '', '1', '9', '78'],
                ['32.11.05', 'Cisitu', '', '1', '9', '78'],
                ['32.11.07', 'Conggeang', '', '1', '9', '78'],
                ['32.11.03', 'Darmaraja', '', '1', '9', '78'],
                ['32.11.19', 'Ganeas', '', '1', '9', '78'],
                ['32.11.26', 'Jatigede', '', '1', '9', '78'],
                ['32.11.15', 'Jatinangor', '', '1', '9', '78'],
                ['32.11.02', 'Jatinunggal', '', '1', '9', '78'],
                ['32.11.13', 'Pamulihan', '', '1', '9', '78'],
                ['32.11.08', 'Paseh', '', '1', '9', '78'],
                ['32.11.16', 'Rancakalong', '', '1', '9', '78'],
                ['32.11.06', 'Situraja', '', '1', '9', '78'],
                ['32.11.12', 'Sukasari', '', '1', '9', '78'],
                ['32.11.17', 'Sumedang Selatan', '', '1', '9', '78'],
                ['32.11.18', 'Sumedang Utara', '', '1', '9', '78'],
                ['32.11.09', 'Surian', '', '1', '9', '78'],
                ['32.11.20', 'Tanjungkerta', '', '1', '9', '78'],
                ['32.11.21', 'Tanjungmedar', '', '1', '9', '78'],
                ['32.11.11', 'Tanjungsari', '', '1', '9', '78'],
                ['32.11.24', 'Tomo', '', '1', '9', '78'],
                ['32.11.01', 'Wado', '', '1', '9', '78'],
                ['32.11.25', 'Ujung Jaya', '', '1', '9', '78'],
                ['32.06.08', 'Bantarkalong', '', '1', '9', '79'], //9 jabar | 79 Kabupaten Tasikmalaya
                ['32.06.09', 'Bojongasih', '', '1', '9', '79'],
                ['32.06.11', 'Bojonggambir', '', '1', '9', '79'],
                ['32.06.36', 'Ciawi', '', '1', '9', '79'],
                ['32.06.06', 'Cibalong', '', '1', '9', '79'],
                ['32.06.27', 'Cigalontang', '', '1', '9', '79'],
                ['32.06.03', 'Cikalong', '', '1', '9', '79'],
                ['32.06.05', 'Cikatomas', '', '1', '9', '79'],
                ['32.06.20', 'Cineam', '', '1', '9', '79'],
                ['32.06.01', 'Cipatujah', '', '1', '9', '79'],
                ['32.06.32', 'Cisayong', '', '1', '9', '79'],
                ['32.06.10', 'Culamega', '', '1', '9', '79'],
                ['32.06.23', 'Gunung Tanjung', '', '1', '9', '79'],
                ['32.06.35', 'Jamanis', '', '1', '9', '79'],
                ['32.06.19', 'Jatiwaras', '', '1', '9', '79'],
                ['32.06.37', 'Kadipaten', '', '1', '9', '79'],
                ['32.06.21', 'Karang Jaya', '', '1', '9', '79'],
                ['32.06.02', 'Karangnunggal', '', '1', '9', '79'],
                ['32.06.28', 'Leuwisari', '', '1', '9', '79'],
                ['32.06.25', 'Mangunreja', '', '1', '9', '79'],
                ['32.06.22', 'Manonjaya', '', '1', '9', '79'],
                ['32.06.29', 'Padakembang', '', '1', '9', '79'],
                ['32.06.38', 'Pagerageung', '', '1', '9', '79'],
                ['32.06.04', 'Pancatengah', '', '1', '9', '79'],
                ['32.06.07', 'Parungponteng', '', '1', '9', '79'],
                ['32.06.15', 'Puspahiang', '', '1', '9', '79'],
                ['32.06.34', 'Rajapolah', '', '1', '9', '79'],
                ['32.06.14', 'Salawu', '', '1', '9', '79'],
                ['32.06.18', 'Salopa', '', '1', '9', '79'],
                ['32.06.30', 'Sariwangi', '', '1', '9', '79'],
                ['32.06.24', 'Singaparna', '', '1', '9', '79'],
                ['32.06.12', 'Sodonghilir', '', '1', '9', '79'],
                ['32.06.33', 'Sukahening', '', '1', '9', '79'],
                ['32.06.17', 'Sukaraja', '', '1', '9', '79'],
                ['32.06.26', 'Sukarame', '', '1', '9', '79'],
                ['32.06.31', 'Sukaratu', '', '1', '9', '79'],
                ['32.06.39', 'Sukaresik', '', '1', '9', '79'],
                ['32.06.16', 'Tanjungjaya', '', '1', '9', '79'],
                ['32.06.13', 'Taraju', '', '1', '9', '79'],
                ['32.73.05', 'Andir', '', '1', '9', '80'], //9 jabar | 80 Kota Bandung
                ['32.73.10', 'Astana Anyar', '', '1', '9', '80'],
                ['32.73.20', 'Antapani', '', '1', '9', '80'],
                ['32.73.24', 'Arcamanik', '', '1', '9', '80'],
                ['32.73.03', 'Babakan Ciparay', '', '1', '9', '80'],
                ['32.73.21', 'Bandung Kidul', '', '1', '9', '80'],
                ['32.73.15', 'Bandung Kulon', '', '1', '9', '80'],
                ['32.73.09', 'Bandung Wetan', '', '1', '9', '80'],
                ['32.73.12', 'Batununggal', '', '1', '9', '80'],
                ['32.73.04', 'Bojongloa Kaler', '', '1', '9', '80'],
                ['32.73.17', 'Bojongloa Kidul', '', '1', '9', '80'],
                ['32.73.22', 'Buahbatu', '', '1', '9', '80'],
                ['32.73.18', 'Cibeunying Kaler', '', '1', '9', '80'],
                ['32.73.14', 'Cibeunying Kidul', '', '1', '9', '80'],
                ['32.73.25', 'Cibiru', '', '1', '9', '80'],
                ['32.73.06', 'Cicendo', '', '1', '9', '80'],
                ['32.73.08', 'Cidadap', '', '1', '9', '80'],
                ['32.73.29', 'Cinambo', '', '1', '9', '80'],
                ['32.73.02', 'Coblong', '', '1', '9', '80'],
                ['32.73.27', 'Gedebage', '', '1', '9', '80'],
                ['32.73.16', 'Kiaracondong', '', '1', '9', '80'],
                ['32.73.13', 'Lengkong', '', '1', '9', '80'],
                ['32.73.30', 'Mandalajati', '', '1', '9', '80'],
                ['32.73.28', 'Panyileukan', '', '1', '9', '80'],
                ['32.73.23', 'Rancasari', '', '1', '9', '80'],
                ['32.73.11', 'Regol', '', '1', '9', '80'],
                ['32.73.07', 'Sukajadi', '', '1', '9', '80'],
                ['32.73.01', 'Sukasari', '', '1', '9', '80'],
                ['32.73.19', 'Sumur Bandung', '', '1', '9', '80'],
                ['32.73.26', 'Ujungberung', '', '1', '9', '80'],
                ['32.79.01', 'Banjar', '', '1', '9', '81'], //9 jabar | 81 Kota Banjar
                ['32.79.04', 'Langensari', '', '1', '9', '81'],
                ['32.79.02', 'Pataruman', '', '1', '9', '81'],
                ['32.79.03', 'Purwaharja', '', '1', '9', '81'],
                ['32.75.07', 'Bantargebang', '', '1', '9', '82'], //9 jabar | 82 Kota Bekasi
                ['32.75.02', 'Bekasi Barat', '', '1', '9', '82'],
                ['32.75.04', 'Bekasi Selatan', '', '1', '9', '82'],
                ['32.75.01', 'Bekasi Timur', '', '1', '9', '82'],
                ['32.75.03', 'Bekasi Utara', '', '1', '9', '82'],
                ['32.75.09', 'Jatiasih', '', '1', '9', '82'],
                ['32.75.10', 'Jatisampurna', '', '1', '9', '82'],
                ['32.75.06', 'Medansatria', '', '1', '9', '82'],
                ['32.75.11', 'Mustikajaya', '', '1', '9', '82'],
                ['32.75.08', 'Pondokgede', '', '1', '9', '82'],
                ['32.75.12', 'Pondokmelati', '', '1', '9', '82'],
                ['32.75.05', 'Rawalumbu', '', '1', '9', '82'],
                ['32.71.01', 'Bogor Selatan', '', '1', '9', '83'], //9 jabar | 83 Kota Bogor
                ['32.71.02', 'Bogor Timur', '', '1', '9', '83'],
                ['32.71.03', 'Bogor Tengah', '', '1', '9', '83'],
                ['32.71.04', 'Bogor Barat', '', '1', '9', '83'],
                ['32.71.05', 'Bogor Utara', '', '1', '9', '83'],
                ['32.71.06', 'Tanah Sareal', '', '1', '9', '83'],
                ['32.77.01', 'Cimahi Selatan', '', '1', '9', '84'], //9 jabar | 84 Kota Cimahi 
                ['32.77.02', 'Cimahi Tengah', '', '1', '9', '84'],
                ['32.77.03', 'Cimahi Utara', '', '1', '9', '84'],
                ['32.74.01', 'Kejaksan', '', '1', '9', '85'], //9 jabar | 85  Kota Cirebon
                ['32.74.02', 'Lemahwungkuk', '', '1', '9', '85'],
                ['32.74.03', 'Harjamukti', '', '1', '9', '85'],
                ['32.74.04', 'Pekalipan', '', '1', '9', '85'],
                ['32.74.05', 'Kesambi', '', '1', '9', '85'],
                ['32.76.01', 'Pancoran Mas', '', '1', '9', '86'], //9 jabar | 86 Kota Depok
                ['32.76.02', 'Cimanggis', '', '1', '9', '86'],
                ['32.76.03', 'Sawangan', '', '1', '9', '86'],
                ['32.76.04', 'Limo', '', '1', '9', '86'],
                ['32.76.05', 'Sukmajaya', '', '1', '9', '86'],
                ['32.76.06', 'Beji', '', '1', '9', '86'],
                ['32.76.07', 'Cipayung', '', '1', '9', '86'],
                ['32.76.08', 'Cilodong', '', '1', '9', '86'],
                ['32.76.09', 'Cinere', '', '1', '9', '86'],
                ['32.76.10', 'Tapos', '', '1', '9', '86'],
                ['32.76.11', 'Bojongsari', '', '1', '9', '86'],
                ['32.72.01', 'Gunungpuyuh', '', '1', '9', '87'], //9 jabar | 87 Kota Sukabumi
                ['32.72.02', 'Cikole', '', '1', '9', '87'],
                ['32.72.03', 'Citamiang', '', '1', '9', '87'],
                ['32.72.04', 'Warudoyong', '', '1', '9', '87'],
                ['32.72.05', 'Baros', '', '1', '9', '87'],
                ['32.72.06', 'Lembursitu', '', '1', '9', '87'],
                ['32.72.07', 'Cibeureum', '', '1', '9', '87'],
                ['32.78.01', 'Cihideung', '', '1', '9', '88'], //9 jabar | 88  Kota Tasikmalaya
                ['32.78.02', 'Cipedes', '', '1', '9', '88'],
                ['32.78.03', 'Tawang', '', '1', '9', '88'],
                ['32.78.04', 'Indihiang', '', '1', '9', '88'],
                ['32.78.05', 'Kawalu', '', '1', '9', '88'],
                ['32.78.06', 'Cibeureum', '', '1', '9', '88'],
                ['32.78.07', 'Tamansari', '', '1', '9', '88'],
                ['32.78.08', 'Mangkubumi', '', '1', '9', '88'],
                ['32.78.09', 'Bungursari', '', '1', '9', '88'],
                ['32.78.10', 'Purbaratu', '', '1', '9', '88'],
            ],
            'areas' => [
                ['', 'Pulau Harapan', '', '1', '6', '56', '1'],
                ['', 'Pulau Kelapa', '', '1', '6', '56', '1'],
                ['', 'Pulau Panggang', '', '1', '6', '56', '1'],
                ['', 'Pulau Pari', '', '1', '6', '56', '2'],
                ['', 'Pulau Tidung', '', '1', '6', '56', '2'],
                ['', 'Pulau Untung Jawa', '', '1', '6', '56', '2'],
                ['', 'Cengkareng Barat', '', '1', '6', '57', '3'],
                ['', 'Cengkareng Timur', '', '1', '6', '57', '3'],
                ['', 'Duri Kosambi', '', '1', '6', '57', '3'],
                ['', 'Kapuk', '', '1', '6', '57', '3'],
                ['', 'Kedaung Kali', '', '1', '6', '57', '3'],
                ['', 'Angke', '', '1', '6', '57', '3'],
                ['', 'Rawa Buaya', '', '1', '6', '57', '3'],
                ['', 'Grogol', '', '1', '6', '57', '4'],
                ['', 'Jelambar Baru', '', '1', '6', '57', '4'],
                ['', 'Jelambar', '', '1', '6', '57', '4'],
                ['', 'Tanjung Duren Selatan', '', '1', '6', '57', '4'],
                ['', 'Tanjung Duren Utara', '', '1', '6', '57', '4'],
                ['', 'Tomang', '', '1', '6', '57', '4'],
                ['', 'Wijaya Kusuma', '', '1', '6', '57', '4'],
                ['', 'Glodok', '', '1', '6', '57', '5'],
                ['', 'Keagungan', '', '1', '6', '57', '5'],
                ['', 'Krukut', '', '1', '6', '57', '5'],
                ['', 'Mangga Besar', '', '1', '6', '57', '5'],
                ['', 'Maphar', '', '1', '6', '57', '5'],
                ['', 'Pinangsia', '', '1', '6', '57', '5'],
                ['', 'Taman Sari', '', '1', '6', '57', '5'],
                ['', 'Tangki', '', '1', '6', '57', '5'],
                ['', 'Angke', '', '1', '6', '57', '6'],
                ['', 'Duri Selatan', '', '1', '6', '57', '6'],
                ['', 'Duri Utara', '', '1', '6', '57', '6'],
                ['', 'Jembatan Besi', '', '1', '6', '57', '6'],
                ['', 'Jembatan Lima', '', '1', '6', '57', '6'],
                ['', 'Kali Anyar', '', '1', '6', '57', '6'],
                ['', 'Krendang', '', '1', '6', '57', '6'],
                ['', 'Pekojan', '', '1', '6', '57', '6'],
                ['', 'Roa Malaka', '', '1', '6', '57', '6'],
                ['', 'Tambora', '', '1', '6', '57', '6'],
                ['', 'Tanah Sereal', '', '1', '6', '57', '6'],
                ['', 'Duri Kepa', '', '1', '6', '57', '7'],
                ['', 'Kebon Jeruk', '', '1', '6', '57', '7'],
                ['', 'Kedoya Selatan', '', '1', '6', '57', '7'],
                ['', 'Kedoya Utara', '', '1', '6', '57', '7'],
                ['', 'Kelapa Dua', '', '1', '6', '57', '7'],
                ['', 'Sukabumi Selatan', '', '1', '6', '57', '7'],
                ['', 'Sukabumi Utara', '', '1', '6', '57', '7'],
                ['', 'Kalideres', '', '1', '6', '57', '8'],
                ['', 'Kamal', '', '1', '6', '57', '8'],
                ['', 'Pegadungan', '', '1', '6', '57', '8'],
                ['', 'Semanan', '', '1', '6', '57', '8'],
                ['', 'Tegal Alur', '', '1', '6', '57', '8'],
                ['', 'Jatipulo', '', '1', '6', '57', '9'],
                ['', 'Kemanggisan', '', '1', '6', '57', '9'],
                ['', 'Kota Bambu Selatan', '', '1', '6', '57', '9'],
                ['', 'Kota Bambu Utara', '', '1', '6', '57', '9'],
                ['', 'Palmerah', '', '1', '6', '57', '9'],
                ['', 'Slipi', '', '1', '6', '57', '9'],
                ['', 'Joglo', '', '1', '6', '57', '10'],
                ['', 'Kembangan Selatan', '', '1', '6', '57', '10'],
                ['', 'Kembangan Utara', '', '1', '6', '57', '10'],
                ['', 'Meruya Selatan', '', '1', '6', '57', '10'],
                ['', 'Meruya Utara', '', '1', '6', '57', '10'],
                ['', 'Srengseng', '', '1', '6', '57', '10'],
                ['', 'Cempaka Putih Barat', '', '1', '6', '57', '11'],
                ['', 'Cempaka Putih Timur', '', '1', '6', '57', '11'],
                ['', 'Rawasari', '', '1', '6', '57', '11'],
                ['', 'Cideng', '', '1', '6', '57', '12'],
                ['', 'Duri Pulo', '', '1', '6', '57', '12'],
                ['', 'Gambir', '', '1', '6', '57', '12'],
                ['', 'Kebon Kelapa', '', '1', '6', '57', '12'],
                ['', 'Petojo Selatan', '', '1', '6', '57', '12'],
                ['', 'Petojo Utara', '', '1', '6', '57', '12'],
                ['', 'Galur', '', '1', '6', '57', '13'],
                ['', 'Johar Baru', '', '1', '6', '57', '13'],
                ['', 'Kampung Rawa', '', '1', '6', '57', '13'],
                ['', 'Tanah Tinggi', '', '1', '6', '57', '13'],
                ['', 'Cempaka Baru', '', '1', '6', '57', '14'],
                ['', 'Gunung Sahari Selatan', '', '1', '6', '57', '14'],
                ['', 'Harapan Mulya', '', '1', '6', '57', '14'],
                ['', 'Kebon Kosong', '', '1', '6', '57', '14'],
                ['', 'Kemayoran', '', '1', '6', '57', '14'],
                ['', 'Serdang', '', '1', '6', '57', '14'],
                ['', 'Sumur Batu', '', '1', '6', '57', '14'],
                ['', 'Utan Panjang', '', '1', '6', '57', '14'],
                ['', 'Cikini', '', '1', '6', '57', '15'],
                ['', 'Gondangdia', '', '1', '6', '57', '15'],
                ['', 'Kebon Sirih', '', '1', '6', '57', '15'],
                ['', 'Menteng', '', '1', '6', '57', '15'],
                ['', 'Pegangsaan', '', '1', '6', '57', '15'],
                ['', 'Gunung Sahari Utara', '', '1', '6', '57', '16'],
                ['', 'Karang Anyar', '', '1', '6', '57', '16'],
                ['', 'Kartini', '', '1', '6', '57', '16'],
                ['', 'Mangga Dua Selatan', '', '1', '6', '57', '16'],
                ['', 'Pasar Baru', '', '1', '6', '57', '16'],
                ['', 'Bungur', '', '1', '6', '57', '17'],
                ['', 'Kenari', '', '1', '6', '57', '17'],
                ['', 'Kramat', '', '1', '6', '57', '17'],
                ['', 'Kwitang', '', '1', '6', '57', '17'],
                ['', 'Paseban', '', '1', '6', '57', '17'],
                ['', 'Senen', '', '1', '6', '57', '17'],
                ['', 'Bendungan Hilir', '', '1', '6', '57', '18'],
                ['', 'Gelora', '', '1', '6', '57', '18'],
                ['', 'Kampung Bali', '', '1', '6', '57', '18'],
                ['', 'Karet Tengsin', '', '1', '6', '57', '18'],
                ['', 'Kebon Kacang', '', '1', '6', '57', '18'],
                ['', 'Kebon Melati', '', '1', '6', '57', '18'],
                ['', 'Petamburan', '', '1', '6', '57', '18'],
                ['', 'Cilandak Barat', '', '1', '6', '59', '19'], //59 jaksel | 19 Cilandak
                ['', 'Cipete Selatan', '', '1', '6', '59', '19'],
                ['', 'Gandaria Selatan', '', '1', '6', '59', '19'],
                ['', 'Lebak Bulus', '', '1', '6', '59', '19'],
                ['', 'Pondok Labu', '', '1', '6', '59', '19'],
                ['', 'Ciganjur', '', '1', '6', '59', '20'], //59 jaksel | 20 Jagakarsa 
                ['', 'Cipedak', '', '1', '6', '59', '20'],
                ['', 'Jagakarsa', '', '1', '6', '59', '20'],
                ['', 'Lenteng Agung', '', '1', '6', '59', '20'],
                ['', 'Srengseng Sawah', '', '1', '6', '59', '20'],
                ['', 'Tanjung Barat', '', '1', '6', '59', '20'],
                ['', 'Cipete Utara', '', '1', '6', '59', '21'], //59 jaksel | 21 Kebayoran Baru  
                ['', 'Gandaria Utara', '', '1', '6', '59', '21'],
                ['', 'Gunung', '', '1', '6', '59', '21'],
                ['', 'Kramat Pela', '', '1', '6', '59', '21'],
                ['', 'Melawai', '', '1', '6', '59', '21'],
                ['', 'Petogogan', '', '1', '6', '59', '21'],
                ['', 'Pulo', '', '1', '6', '59', '21'],
                ['', 'Rawa Barat', '', '1', '6', '59', '21'],
                ['', 'Selong', '', '1', '6', '59', '21'],
                ['', 'Senayan', '', '1', '6', '59', '21'],
                ['', 'Cipulir', '', '1', '6', '59', '22'], //59 jaksel | 22 Kebayoran Lama  
                ['', 'Grogol Selatan', '', '1', '6', '59', '22'],
                ['', 'Grogol Utara', '', '1', '6', '59', '22'],
                ['', 'Kebayoran Lama Selatan', '', '1', '6', '59', '22'],
                ['', 'Kebayoran Lama Utara', '', '1', '6', '59', '22'],
                ['', 'Pondok Pinang', '', '1', '6', '59', '22'],
                ['', 'Bangka', '', '1', '6', '59', '23'], //59 jaksel | 23 Mampang Prapatan
                ['', 'Kuningan Barat', '', '1', '6', '59', '23'],
                ['', 'Mampang Prapatan', '', '1', '6', '59', '23'],
                ['', 'Pela Mampang', '', '1', '6', '59', '23'],
                ['', 'Tegal Parang', '', '1', '6', '59', '23'],
                ['', 'Cikoko', '', '1', '6', '59', '24'], //59 jaksel | 24 Pancoran
                ['', 'Duren Tiga', '', '1', '6', '59', '24'],
                ['', 'Kalibata', '', '1', '6', '59', '24'],
                ['', 'Pancoran', '', '1', '6', '59', '24'],
                ['', 'Pengadegan', '', '1', '6', '59', '24'],
                ['', 'Rawajati', '', '1', '6', '59', '24'],
                ['', 'Cilandak Timur', '', '1', '6', '59', '25'], //59 jaksel | 25 Pasar Minggu 
                ['', 'Jati Padang', '', '1', '6', '59', '25'],
                ['', 'Kebagusan', '', '1', '6', '59', '25'],
                ['', 'Pasar Minggu', '', '1', '6', '59', '25'],
                ['', 'Pejaten Barat', '', '1', '6', '59', '25'],
                ['', 'Pejaten Timur', '', '1', '6', '59', '25'],
                ['', 'Ragunan', '', '1', '6', '59', '25'],
                ['', 'Bintaro', '', '1', '6', '59', '26'], //59 jaksel | 26 Pesanggrahan
                ['', 'Pesanggrahan', '', '1', '6', '59', '26'],
                ['', 'Petukangan Selatan', '', '1', '6', '59', '26'],
                ['', 'Petukangan Utara', '', '1', '6', '59', '26'],
                ['', 'Ulujami', '', '1', '6', '59', '26'],
                ['', 'Guntur', '', '1', '6', '59', '27'], //59 jaksel | 27 Setiabudi
                ['', 'Karet Kuningan', '', '1', '6', '59', '27'],
                ['', 'Karet Semanggi', '', '1', '6', '59', '27'],
                ['', 'Karet', '', '1', '6', '59', '27'],
                ['', 'Kuningan Timur', '', '1', '6', '59', '27'],
                ['', 'Menteng Atas', '', '1', '6', '59', '27'],
                ['', 'Pasar Manggis', '', '1', '6', '59', '27'],
                ['', 'Setiabudi', '', '1', '6', '59', '27'],
                ['', 'Bukit Duri', '', '1', '6', '59', '28'], //59 jaksel | 28 Tebet
                ['', 'Kebon Baru', '', '1', '6', '59', '28'],
                ['', 'Manggarai Selatan', '', '1', '6', '59', '28'],
                ['', 'Manggarai', '', '1', '6', '59', '28'],
                ['', 'Menteng Dalam', '', '1', '6', '59', '28'],
                ['', 'Tebet Barat', '', '1', '6', '59', '28'],
                ['', 'Tebet Timur', '', '1', '6', '59', '28'],
                ['', 'Cakung Barat', '', '1', '6', '60', '29'], //60 jaktim | 29 Cakung
                ['', 'Cakung Timur', '', '1', '6', '60', '29'],
                ['', 'Jatinegara', '', '1', '6', '60', '29'],
                ['', 'Penggilingan', '', '1', '6', '60', '29'],
                ['', 'Pulo Gebang', '', '1', '6', '60', '29'],
                ['', 'Rawa Terate', '', '1', '6', '60', '29'],
                ['', 'Ujung Menteng', '', '1', '6', '60', '29'],
                ['', 'Bambu Apus', '', '1', '6', '60', '30'], //60 jaktim | 30 Cipayung
                ['', 'Ceger', '', '1', '6', '60', '30'],
                ['', 'Cilangkap', '', '1', '6', '60', '30'],
                ['', 'Cipayung', '', '1', '6', '60', '30'],
                ['', 'Lubang Buaya', '', '1', '6', '60', '30'],
                ['', 'Munjul', '', '1', '6', '60', '30'],
                ['', 'Pondok Ranggon', '', '1', '6', '60', '30'],
                ['', 'Setu', '', '1', '6', '60', '30'],
                ['', 'Cibubur', '', '1', '6', '60', '31'], //60 jaktim | 31 Ciracas
                ['', 'Ciracas', '', '1', '6', '60', '31'],
                ['', 'Kelapa Dua Wetan', '', '1', '6', '60', '31'],
                ['', 'Rambutan', '', '1', '6', '60', '31'],
                ['', 'Susukan', '', '1', '6', '60', '31'],
                ['', 'Duren Sawit', '', '1', '6', '60', '32'], //60 jaktim | 32 Duren Sawit
                ['', 'Klender', '', '1', '6', '60', '32'],
                ['', 'Malaka Jaya', '', '1', '6', '60', '32'],
                ['', 'Malaka Sari', '', '1', '6', '60', '32'],
                ['', 'Pondok Bambu', '', '1', '6', '60', '32'],
                ['', 'Pondok Kelapa', '', '1', '6', '60', '32'],
                ['', 'Pondok Kopi', '', '1', '6', '60', '32'],
                ['', 'Bali Mester', '', '1', '6', '60', '33'], //60 jaktim | 33 Jatinegara
                ['', 'Bidara Cina', '', '1', '6', '60', '33'],
                ['', 'Cipinang Besar Selatan', '', '1', '6', '60', '33'],
                ['', 'Cipinang Besar Utara', '', '1', '6', '60', '33'],
                ['', 'Cipinang Cempedak', '', '1', '6', '60', '33'],
                ['', 'Cipinang Muara', '', '1', '6', '60', '33'],
                ['', 'Kampung Melayu', '', '1', '6', '60', '33'],
                ['', 'Rawa Bunga', '', '1', '6', '60', '33'],
                ['', 'Balekambang', '', '1', '6', '60', '34'], //60 jaktim | 34 Kramat Jati
                ['', 'Batu Ampar', '', '1', '6', '60', '34'],
                ['', 'Cawang', '', '1', '6', '60', '34'],
                ['', 'Cililitan', '', '1', '6', '60', '34'],
                ['', 'Dukuh', '', '1', '6', '60', '34'],
                ['', 'Kramat Jati', '', '1', '6', '60', '34'],
                ['', 'Tengah', '', '1', '6', '60', '34'],
                ['', 'Cipinang Melayu', '', '1', '6', '60', '35'], //60 jaktim | 35 Makasar
                ['', 'Halim Perdana Kusuma', '', '1', '6', '60', '35'],
                ['', 'Kebon Pala', '', '1', '6', '60', '35'],
                ['', 'Makasar', '', '1', '6', '60', '35'],
                ['', 'Pinang Ranti', '', '1', '6', '60', '35'],
                ['', 'Kayu Manis', '', '1', '6', '60', '36'], //60 jaktim | 36 Matraman
                ['', 'Kebon Manggis', '', '1', '6', '60', '36'],
                ['', 'Pal Meriam', '', '1', '6', '60', '36'],
                ['', 'Pisangan Baru', '', '1', '6', '60', '36'],
                ['', 'Utan Kayu Selatan', '', '1', '6', '60', '36'],
                ['', 'Utan Kayu Utara', '', '1', '6', '60', '36'],
                ['', 'Baru', '', '1', '6', '60', '37'], //60 jaktim | 37 Pasar Rebo
                ['', 'Cijantung', '', '1', '6', '60', '37'],
                ['', 'Gedong', '', '1', '6', '60', '37'],
                ['', 'Kalisari', '', '1', '6', '60', '37'],
                ['', 'Pekayon', '', '1', '6', '60', '37'],
                ['', 'Cipinang', '', '1', '6', '60', '38'], //60 jaktim | 38 Pulo Gadung
                ['', 'Jati', '', '1', '6', '60', '38'],
                ['', 'Jatinegara Kaum', '', '1', '6', '60', '38'],
                ['', 'Kayu Putih', '', '1', '6', '60', '38'],
                ['', 'Pisangan Timur', '', '1', '6', '60', '38'],
                ['', 'Pulo Gadung', '', '1', '6', '60', '38'],
                ['', 'Rawamangun', '', '1', '6', '60', '38'],
                ['', 'Cilincing', '', '1', '6', '61', '39'], //61 jakut | 39 Cilincing
                ['', 'Kalibaru', '', '1', '6', '61', '39'],
                ['', 'Marunda', '', '1', '6', '61', '39'],
                ['', 'Rorotan', '', '1', '6', '61', '39'],
                ['', 'Semper Barat', '', '1', '6', '61', '39'],
                ['', 'Semper Timur', '', '1', '6', '61', '39'],
                ['', 'Sukapura', '', '1', '6', '61', '39'],
                ['', 'Kelapa Gading Barat', '', '1', '6', '61', '40'], //61 jakut | 40 Kelapa Gading
                ['', 'Kelapa Gading Timur', '', '1', '6', '61', '40'],
                ['', 'Pegangsaan Dua', '', '1', '6', '61', '40'],
                ['', 'Koja', '', '1', '6', '61', '41'], //61 jakut | 41 Koja
                ['', 'Lagoa', '', '1', '6', '61', '41'],
                ['', 'Rawa Badak Selatan', '', '1', '6', '61', '41'],
                ['', 'Rawa Badak Utara', '', '1', '6', '61', '41'],
                ['', 'Tugu Selatan', '', '1', '6', '61', '41'],
                ['', 'Tugu Utara', '', '1', '6', '61', '41'],
                ['', 'Ancol', '', '1', '6', '61', '42'], //61 jakut | 42 Pademangan
                ['', 'Pademangan Barat', '', '1', '6', '61', '42'],
                ['', 'Pademangan Timur', '', '1', '6', '61', '42'],
                ['', 'Kamal Muara', '', '1', '6', '61', '43'], //61 jakut | 43 Penjaringan
                ['', 'Kapuk Muara', '', '1', '6', '61', '43'],
                ['', 'Pejagalan', '', '1', '6', '61', '43'],
                ['', 'Penjaringan', '', '1', '6', '61', '43'],
                ['', 'Pluit', '', '1', '6', '61', '43'],
                ['', 'Kebon Bawang', '', '1', '6', '61', '44'], //61 jakut | 44 Tanjung Priok
                ['', 'Papanggo', '', '1', '6', '61', '44'],
                ['', 'Sungai Bambu', '', '1', '6', '61', '44'],
                ['', 'Sunter Agung', '', '1', '6', '61', '44'],
                ['', 'Sunter Jaya', '', '1', '6', '61', '44'],
                ['', 'Tanjung Priok', '', '1', '6', '61', '44'],
                ['', 'Warakas', '', '1', '6', '61', '44'],
                ['', '', '', '1', '6', '', ''],
                ['', '', '', '1', '6', '', ''],
            ]
        ];
    }
}
