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
use App\Libraries\Oreno\UploadFile;
use App\Libraries\Oreno\Encrypter;
use App\Models\Entity\uac\Tbl_a_uac_users_p_en;
use App\Models\Entity\uac\Tbl_b_uac_user_group_c_en;
use App\Models\Entity\uac\Tbl_a_uac_user_profiles_c_en;
use App\Models\Entity\uac\Tbl_b_uac_group_permissions_r_en;
use App\Models\Entity\uac\Tbl_b_uac_user_permissions_r_en;
use App\Models\Entity\uac\Tbl_a_uac_users_module_c_en;
use App\Models\Entity\uac\Tbl_a_uac_permissions_p_en;
use App\Models\Entity\uac\Tbl_a_uac_permissions_schemes_p_en;
use App\Models\Entity\uac\Tbl_a_uac_groups_p_en;
use App\Models\Entity\uac\Tbl_a_uac_modules_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_a_country_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_b_provinces_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_c_cities_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_d_districts_p_en;
use App\Models\Entity\uac\Tbl_c_uac_location_e_areas_p_en;
use App\Models\Entity\uac\Tbl_a_uac_user_locations_p_en;
use App\Models\Entity\uac\Tbl_a_uac_user_registered_type_c_en;
use App\Models\Entity\app\Tbl_d_app_assets_documents_p_en;
use App\Models\Entity\app\Tbl_d_app_assets_document_type_r_en;

/**
 * Description of UserController
 *
 * @author 64146
 */
class UserController extends Controller {

    //put your code here
    protected $General;
    protected $Converter;
    protected $Date;
    protected $UploadFile;
    protected $Encrypter;
    protected $Tbl_a_uac_users_p_en;
    protected $Tbl_b_uac_user_group_c_en;
    protected $Tbl_a_uac_user_profiles_c_en;
    protected $Tbl_b_uac_group_permissions_r_en;
    protected $Tbl_b_uac_user_permissions_r_en;
    protected $Tbl_a_uac_permissions_p_en;
    protected $Tbl_a_uac_permissions_schemes_p_en;
    protected $Tbl_a_uac_users_module_c_en;
    protected $Tbl_a_uac_groups_p_en;
    protected $Tbl_a_uac_modules_p_en;
    protected $Tbl_c_uac_location_a_country_p_en;
    protected $Tbl_c_uac_location_b_provinces_p_en;
    protected $Tbl_c_uac_location_c_cities_p_en;
    protected $Tbl_c_uac_location_d_districts_p_en;
    protected $Tbl_c_uac_location_e_areas_p_en;
    protected $Tbl_a_uac_user_locations_p_en;
    protected $Tbl_a_uac_user_registered_type_c_en;
    protected $Tbl_d_app_assets_documents_p_en;
    protected $Tbl_d_app_assets_document_type_r_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->UploadFile = new UploadFile();
        $this->Encrypter = new Encrypter();
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_b_uac_user_group_c_en = new Tbl_b_uac_user_group_c_en();
        $this->Tbl_a_uac_user_profiles_c_en = new Tbl_a_uac_user_profiles_c_en();
        $this->Tbl_b_uac_group_permissions_r_en = new Tbl_b_uac_group_permissions_r_en();
        $this->Tbl_b_uac_user_permissions_r_en = new Tbl_b_uac_user_permissions_r_en();
        $this->Tbl_a_uac_users_module_c_en = new Tbl_a_uac_users_module_c_en();
        $this->Tbl_a_uac_permissions_p_en = new Tbl_a_uac_permissions_p_en();
        $this->Tbl_a_uac_permissions_schemes_p_en = new Tbl_a_uac_permissions_schemes_p_en();
        $this->Tbl_a_uac_groups_p_en = new Tbl_a_uac_groups_p_en();
        $this->Tbl_a_uac_modules_p_en = new Tbl_a_uac_modules_p_en();
        $this->Tbl_c_uac_location_a_country_p_en = new Tbl_c_uac_location_a_country_p_en();
        $this->Tbl_c_uac_location_b_provinces_p_en = new Tbl_c_uac_location_b_provinces_p_en();
        $this->Tbl_c_uac_location_c_cities_p_en = new Tbl_c_uac_location_c_cities_p_en();
        $this->Tbl_c_uac_location_d_districts_p_en = new Tbl_c_uac_location_d_districts_p_en();
        $this->Tbl_c_uac_location_e_areas_p_en = new Tbl_c_uac_location_e_areas_p_en();
        $this->Tbl_a_uac_user_locations_p_en = new Tbl_a_uac_user_locations_p_en();
        $this->Tbl_a_uac_user_registered_type_c_en = new Tbl_a_uac_user_registered_type_c_en();
        $this->Tbl_d_app_assets_documents_p_en = new Tbl_d_app_assets_documents_p_en();
        $this->Tbl_d_app_assets_document_type_r_en = new Tbl_d_app_assets_document_type_r_en();
    }

    public function view(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>User</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Users',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/create'
            ],
            'header' => [
                'title' => 'Create',
                'icon' => '<i class="fa fa-plus-square"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/create'
            ],
            'tables' => [
                'el-id' => 'dt_tbl_users',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Code </th>',
                    '<th> User Name </th>',
                    '<th> User LDAP </th>',
                    '<th> Full Name </th>',
                    '<th> Email </th>',
                    '<th> Phone Number </th>',
                    '<th> Score </th>',
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
                    case 2:
                        return $this->__get_list_provinces($request);
                        break;
                    case 3 :
                        return $this->__get_list_city($request);
                        break;
                    case 4 :
                        return $this->__get_list_district($request);
                        break;
                    case 5 :
                        return $this->__get_list_area($request);
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
                    ['a.code', 'like', '%' . $search . '%'],
                    ['a.__user_name', 'like', '%' . $search . '%'],
                    ['a.__first_name', 'like', '%' . $search . '%'],
                    ['a.__last_name', 'like', '%' . $search . '%'],
                    ['a.__email', 'like', '%' . $search . '%']
                ]
            ];
        }
        $params = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => 100,
            'offset' => 0
        ];
        $data = $this->Tbl_a_uac_users_p_en->__find($request, 'all', $params);
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
                    'code' => $value->code,
                    '__user_name' => $value->__user_name,
                    '__user_ldap' => $value->__user_ldap,
                    '__full_name' => $value->__first_name . ' ' . $value->__last_name,
                    '__email' => $value->__email,
                    '__phone_number' => $value->__phone_number,
                    '__score' => $value->__email,
                    'status' => '<input type="checkbox"' . $is_active . ' name="is_active" class="make-switch" data-size="small" data-id="' . base64_encode($value->id) . '">',
                    'action' => '<div class="btn-group">
                        <button type="button" class="btn btn-sm blue"><a href="' . config('app.base_extraweb_uri') . '/master/uac/users/edit/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Edit"><i class="fa fa-edit"></i></a></button>
                        <button type="button" class="btn btn-sm yellow"><a href="' . config('app.base_extraweb_uri') . '/master/uac/users/remove/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Remove"><i class="fa fa-minus-square"></i></a></button>
                        <button type="button" class="btn btn-sm red"><a href="' . config('app.base_extraweb_uri') . '/master/uac/users/delete/' . base64_encode($value->id) . '" style="color:#fff;font-size:14px;" title="Delete"><i class="fa fa-trash-o"></i></a></button>
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
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'Successfully fetching and reformat data', 'valid' => true, 'data' => $segmented]);
        }
    }

    public function __get_list_by_email($request, $keywords = null) {
        if (isset($keywords) && !empty($keywords) && $keywords !== null) {
            $params = [
                'table_name' => 'tbl_a_uac_users_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.__email', '=', $keywords]
                    ]
                ],
                'limit' => 100
            ];
            return $this->Tbl_a_uac_users_p_en->__find($request, 'all', $params);
        }
    }

    public function __get_list_provinces($request) {
        $data = $request->json()->all();
        if (isset($data['country_id']) && !empty($data['country_id'])) {
            $params = [
                'table_name' => 'tbl_c_uac_location_b_provinces_p',
                'select' => ['a.id', 'a.__name'],
                'conditions' => [
                    'where' => [
                        ['a.__country_id', '=', (int) $data['country_id']]
                    ]
                ],
                'limit' => 100
            ];
            $result = $this->Tbl_c_uac_location_b_provinces_p_en->__find($request, 'all', $params);
            $stringOptions = '<option value="0">-- select one --</option>';
            if (isset($result['data']) && !empty($result['data'])) {
                foreach ($result['data'] AS $key => $value) {
                    $stringOptions .= '<option value="' . $value->id . '">' . $value->__name . '</option>';
                }
            }
            return $stringOptions;
        }
    }

    public function __get_list_city($request) {
        $data = $request->json()->all();
        if (isset($data['province_id']) && !empty($data['province_id'])) {
            $params = [
                'table_name' => 'tbl_c_uac_location_c_cities_p',
                'select' => ['a.id', 'a.__name'],
                'conditions' => [
                    'where' => [
                        ['a.__province_id', '=', (int) $data['province_id']]
                    ]
                ],
                'limit' => 100
            ];
            $result = $this->Tbl_c_uac_location_c_cities_p_en->__find($request, 'all', $params);
            $stringOptions = '<option value="0">-- select one --</option>';
            if (isset($result['data']) && !empty($result['data'])) {
                foreach ($result['data'] AS $key => $value) {
                    $stringOptions .= '<option value="' . $value->id . '">' . $value->__name . '</option>';
                }
            }
            return $stringOptions;
        }
    }

    public function __get_list_district($request) {
        $data = $request->json()->all();
        if (isset($data['city_id']) && !empty($data['city_id'])) {
            $params = [
                'table_name' => 'tbl_c_uac_location_d_districts_p',
                'select' => ['a.id', 'a.__name'],
                'conditions' => [
                    'where' => [
                        ['a.__city_id', '=', (int) $data['city_id']]
                    ]
                ],
                'limit' => 100
            ];
            $result = $this->Tbl_c_uac_location_d_districts_p_en->__find($request, 'all', $params);
            $stringOptions = '<option value="0">-- select one --</option>';
            if (isset($result['data']) && !empty($result['data'])) {
                foreach ($result['data'] AS $key => $value) {
                    $stringOptions .= '<option value="' . $value->id . '">' . $value->__name . '</option>';
                }
            }
            return $stringOptions;
        }
    }

    public function __get_list_area($request) {
        $data = $request->json()->all();
        if (isset($data['disctrict_id']) && !empty($data['disctrict_id'])) {
            $params = [
                'table_name' => 'tbl_c_uac_location_e_areas_p',
                'select' => ['a.id', 'a.__name'],
                'conditions' => [
                    'where' => [
                        ['a.__disctrict_id', '=', (int) $data['disctrict_id']]
                    ]
                ],
                'limit' => 100
            ];
            $result = $this->Tbl_c_uac_location_e_areas_p_en->__find($request, 'all', $params);
            $stringOptions = '<option value="0">-- select one --</option>';
            if (isset($result['data']) && !empty($result['data'])) {
                foreach ($result['data'] AS $key => $value) {
                    $stringOptions .= '<option value="' . $value->id . '">' . $value->__name . '</option>';
                }
            }
            return $stringOptions;
        }
    }

    public function create(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $code = $this->General->getRandomChar(32);
        $_config = [
            'title_for_header' => '<b>User</b> master data management page',
            'pages' => [
                'title' => 'Create Page Master Data Users',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/create'
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/view'
            ],
            'form' => [
                'el-id' => 'frm_create_permission',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ]
            ]
        ];
        $groupOptions = $this->__get_user_groups($request);
        $moduleOptions = $this->__get_modules($request);
        $countryOptions = $this->__get_countries($request);
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/dropzone/css/dropzone.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/dropzone/dropzone.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'code', 'groupOptions', 'moduleOptions', 'countryOptions'));
    }

    protected function __get_user_groups($request, $selectedArr = []) {
        $params = [
            'table_name' => 'tbl_a_uac_groups_p',
            'conditions' => [
                'where' => [
                    ['a.__is_group_project', '=', 1],
                    ['a.is_active', '=', 1]
                ]
            ], 'order' => [
                'conditions' => ['a.__name', 'asc']
            ],
            'order' => [
                'conditions' => ['a.__name', 'asc']
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $response = $this->Tbl_a_uac_groups_p_en->__find($request, 'list', $params);
        $responseOptions = '';
        if (isset($response['data']) && !empty($response['data'])) {
            foreach ($response['data'] AS $key => $value) {
                $selectedOptions = '';
                if (isset($selectedArr) && !empty($selectedArr) && in_array($value->id, $selectedArr)) {
                    $selectedOptions = ' selected';
                }
                $responseOptions .= '<option value="' . $value->id . '"' . $selectedOptions . '>' . $value->__name . '</option>';
            }
        }
        return $responseOptions;
    }

    protected function __get_modules($request, $selectedArr = []) {
        $params = [
            'table_name' => 'tbl_a_uac_modules_p',
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1]
                ]
            ],
            'order' => [
                'conditions' => ['a.__name', 'asc']
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $response = $this->Tbl_a_uac_modules_p_en->__find($request, 'list', $params);
        $responseOptions = '';
        if (isset($response['data']) && !empty($response['data'])) {
            foreach ($response['data'] AS $key => $value) {
                $selectedOptions = '';
                if (isset($selectedArr) && !empty($selectedArr) && in_array($value->id, $selectedArr)) {
                    $selectedOptions = ' selected';
                }
                $responseOptions .= '<option value="' . $value->id . '"' . $selectedOptions . '>' . $value->__name . '</option>';
            }
        }
        return $responseOptions;
    }

    public function __get_countries($request) {
        $params = [
            'table_name' => 'tbl_c_uac_location_a_country_p',
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1]
                ]
            ],
            'order' => [
                'conditions' => ['a.__name', 'asc']
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $response = $this->Tbl_c_uac_location_a_country_p_en->__find($request, 'list', $params);
        $responseOptions = '';
        if (isset($response['data']) && !empty($response['data'])) {
            foreach ($response['data'] AS $key => $value) {
                $responseOptions .= "<option value=" . $value->id . ">" . $value->__name . "</option>";
            }
        }
        return $responseOptions;
    }

    public function insert(Request $request) {
        $data = $request->all();
        if (isset($data) && !empty($data) && isset($data['a']) && !empty($data['a'])) {
            switch ($data['a']) {
                case 1 :
                    return $this->__insert_photo($request);
                    break;
                case 2 :
                default:
                    return $this->__insert_default($request);
                    break;
            }
        }
    }

    public function __insert_default($request) {
        $data = $request->json()->all();
        $insertData = [];
        if (isset($data['d']) && !empty($data['d'])) {
            $password = $this->General->getRandomChar(8);
            $__password = $this->Encrypter->encrypt($password);
            $__salt = '';
            $__score = 0;
            $__uac_user_profile_id = 0;

            $__uac_user_registered_type_id = 2; //superuser.manual.create
            $validateEmail = $this->__check_exist_email($request, $data['e']);
            if ($validateEmail && $validateEmail['data'] && $validateEmail['data'] != null) {
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'email address(' . $data['e'] . ') already exist, please use different one', 'valid' => true]);
            }
            $__uac_user_profile_id = $this->__insert_user_profile($request);
            $__uac_user_location_id = $this->__insert_user_location($request);
            $insertData = [
                'code' => $data['code'],
                '__user_name' => $data['a'],
                '__user_ldap' => $data['b'],
                '__first_name' => $data['c'],
                '__last_name' => $data['d'],
                '__email' => $data['e'],
                '__phone_number' => $data['f'],
                '__password' => $__password,
                '__salt' => $__salt,
                '__description' => isset($data['g']) ? $data['g'] : '-',
                '__score' => $__score,
                '__uac_user_profile_id' => $__uac_user_profile_id,
                '__uac_user_registered_type_id' => $__uac_user_registered_type_id,
                '__uac_user_location_id' => $__uac_user_location_id,
                'is_active' => $data['h'],
                'created_by' => (int) $this->__user_id,
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->__user_id,
                'updated_date' => $this->Date->now()
            ];
        }
        $insert = [
            'table_name' => 'tbl_a_uac_users_p',
            'data' => $insertData
        ];
        $user_id = $this->Tbl_a_uac_users_p_en->__insert_get_id($request, $insert);
        if ($user_id) {
            if (isset($data['i']) && !empty($data['i'])) {
                $this->__insert_group_user($request, $user_id);
            }
            if (isset($data['j']) && !empty($data['j'])) {
                $this->__insert_user_module($request, $user_id);
                $this->__insert_group_permissions($request, $user_id);
                $this->__insert_user_permissions($request, $user_id);
            }
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
        } else {
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed insert data.', 'valid' => false]);
        }
    }

    protected function __check_exist_email($request, $email = null) {
        $responseMessage = 'Params Email cannot set empty, or your email address format is not corrected!';
        $code = 500;
        $valid = false;
        if ($email != null) {
            $params = [
                'table_name' => 'tbl_a_uac_users_p',
                'select' => ['a.id', '.code', 'a.__user_name', 'a.__user_ldap', 'a.__first_name', 'a.__last_name', 'a.__email'],
                'conditions' => [
                    'where' => [
                        ['a.__email', 'like', '%' . $email . '%']
                    ]
                ]
            ];
            $response = $this->Tbl_a_uac_users_p_en->__find($request, 'first', $params);
            if (isset($response['data']) && !empty($response['data'])) {
                $code = 200;
                $valid = true;
                $responseMessage = 'Successfully find data.';
            } else {
                $code = 200;
                $valid = true;
                $responseMessage = 'Failed find data.';
            }
        }
        return ['code' => $code, 'message' => $responseMessage, 'valid' => $valid, 'data' => $response['data']];
    }

    protected function __insert_user_profile($request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $photo_path = config('app.base_url_assets_media') . '/images/users/' . $data['code'] . '/001/original/default.jpg';
            $insertData = [
                'code' => $data['code'],
                '__address' => $data['s'],
                '__lat' => $data['t'],
                '__lng' => $data['u'],
                '__zoom' => $data['v'],
                '__socmed_fb' => $data['o'],
                '__socmed_tw' => $data['p'],
                '__socmed_ins' => $data['q'],
                '__socmed_lnkd' => $data['r'],
                '__photos' => $photo_path,
                '__last_education' => $data['k'],
                '__last_education_institution' => $data['l'],
                '__skill' => $data['m'],
                '__notes' => $data['n'],
                '__description' => '-',
                'is_active' => $data['h'],
                'created_by' => (int) $this->__user_id,
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->__user_id,
                'updated_date' => $this->Date->now()
            ];
            $insert = [
                'table_name' => 'tbl_a_uac_user_profiles_c',
                'data' => $insertData
            ];
            return $this->Tbl_a_uac_user_profiles_c_en->__insert_get_id($request, $insert);
        }
    }

    protected function __insert_user_location($request) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $insertData = [
                'code' => $data['code'],
                '__country_id' => (int) $data['w'],
                '__province_id' => (int) $data['x'],
                '__city_id' => (int) $data['y'],
                '__district_id' => (int) $data['z'],
                '__area_id' => (int) $data['aa'],
                'is_active' => $data['h'],
                'created_by' => (int) $this->__user_id,
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->__user_id,
                'updated_date' => $this->Date->now()
            ];
            $insert = [
                'table_name' => 'tbl_a_uac_user_locations_p',
                'data' => $insertData
            ];
            return $this->Tbl_a_uac_user_locations_p_en->__insert_get_id($request, $insert);
        }
    }

    protected function __insert_group_user($request, $user_id = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data) && $user_id != null) {
            $insertData = [];
            foreach ($data['i'] AS $k => $v) {
                $insertData[] = [
                    'code' => $data['code'],
                    '__uac_user_id' => $user_id,
                    '__uac_group_id' => (int) $v,
                    'is_active' => $data['h'],
                    'created_by' => (int) $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->__user_id,
                    'updated_date' => $this->Date->now()
                ];
            }
            $insert = [
                'table_name' => 'tbl_b_uac_user_group_c',
                'data' => $insertData
            ];
            return $this->Tbl_b_uac_user_group_c_en->__insert($request, $insert);
        }
    }

    protected function __insert_user_module($request, $user_id = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $module_id = $data['j'];
            $insertData[] = [
                'code' => $data['code'],
                '__user_id' => $user_id,
                '__module_id' => (int) $module_id,
                'is_active' => $data['h'],
                'created_by' => (int) $this->__user_id,
                'created_date' => $this->Date->now(),
                'updated_by' => (int) $this->__user_id,
                'updated_date' => $this->Date->now()
            ];
            $insert = [
                'table_name' => 'tbl_a_uac_users_module_c',
                'data' => $insertData
            ];
            return $this->Tbl_a_uac_users_module_c_en->__insert($request, $insert);
        }
    }

    protected function __insert_group_permissions($request, $user_id = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data)) {
            $group_ids = [];
            //$photo_path = config('app.base_url_assets_media') . '/images/users/' . $data['code'] . '/001/original/default';
            if (isset($data['i']) && !empty($data['i'])) {
                $a1 = $data['i'];
                $a2 = $data['j'];
                $result = [];
                foreach ($a1 as $item1) {
                    foreach ($a2 as $item2) {
                        $result[] = [$item1, $item2];
                    }
                }
                $permutationResult = [];
                if ($result) {
                    foreach ($result AS $key => $value) {
                        $permissions = $this->Tbl_a_uac_permissions_p_en->__get_all_permission($request);
                        foreach ($permissions['data'] AS $k => $v) {
                            $permutationResult[] = [
                                '__user_id' => $user_id,
                                '__group_id' => (int) $value[0],
                                '__permission_id' => (int) $v->id,
                                '__module_id' => (int) $value[1],
                                '__is_allowed' => 1,
                                'is_active' => 1,
                                'created_by' => (int) $this->__user_id,
                                'created_date' => $this->Date->now(),
                                'updated_by' => (int) $this->__user_id,
                                'updated_date' => $this->Date->now()
                            ];
                        }
                    }
                }
            }
            $insert = [
                'table_name' => 'tbl_b_uac_group_permissions_r',
                'data' => $permutationResult
            ];
            return $this->Tbl_b_uac_group_permissions_r_en->__insert($request, $insert);
        }
    }

    public function __insert_user_permissions($request, $user_id = null) {
        $data = $request->json()->all();
        if (isset($data) && !empty($data) && $user_id != null) {
            $permissions = $this->Tbl_a_uac_permissions_p_en->__get_all_permission($request);
            foreach ($permissions['data'] AS $k => $v) {
                $permutationResult[] = [
                    '__user_id' => $user_id,
                    '__permission_id' => $v->id,
                    '__is_denied' => 0,
                    'is_active' => 1,
                    'created_by' => (int) $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->__user_id,
                    'updated_date' => $this->Date->now()
                ];
            }
            $insert = [
                'table_name' => 'tbl_b_uac_user_permissions_r',
                'data' => $permutationResult
            ];
            $response = $this->Tbl_b_uac_user_permissions_r_en->__insert($request, $insert);
            return $response;
        }
    }

    protected function __insert_photo($request) {
        $data = $request->all();
        if (isset($data['file']) && !empty($data['file'])) {
            $options = array(
                'id' => $data['code'],
                'name' => 'default', //$data['file']->getClientOriginalName(),
                'origin_name' => $data['file']->getClientOriginalName(),
                'tmp_name' => $data['file']->path(),
                'img_path' => config('app.path_assets_media') . '/images/users',
                'img_size_width' => array('128', '320'),
                'img_name' => array('tiny', 'small')
            );
            $upload_file = $this->UploadFile->do_upload($request, $options);
            if (isset($upload_file) && !empty($upload_file)) {
                $doc_ids = [];
                foreach ($upload_file AS $key => $val) {
                    $insertData = [
                        'code' => $options['id'],
                        '__name' => $options['name'],
                        '__content' => $val,
                        '__description' => 'upload photos from create user at admin dashboard',
                        'is_active' => 1,
                        'created_by' => (int) $this->__user_id,
                        'created_date' => $this->Date->now(),
                        'updated_by' => (int) $this->__user_id,
                        'updated_date' => $this->Date->now()
                    ];
                    $insert = [
                        'table_name' => 'tbl_d_app_assets_documents_p',
                        'data' => $insertData
                    ];
                    $doc_id = $this->Tbl_d_app_assets_documents_p_en->__insert_get_id($request, $insert, 'mysql_app');
                    if ($doc_id) {
                        $doc_ids[] = $doc_id;
                        $insertDataDocType = [
                            '__app_document_id' => $doc_id,
                            '__app_document_type_id' => 1,
                            'is_active' => 1,
                            'created_by' => (int) $this->__user_id,
                            'created_date' => $this->Date->now(),
                            'updated_by' => (int) $this->__user_id,
                            'updated_date' => $this->Date->now()
                        ];
                        $insertDocType = [
                            'table_name' => 'tbl_d_app_assets_document_type_r',
                            'data' => $insertDataDocType
                        ];
                        $this->Tbl_d_app_assets_document_type_r_en->__insert($request, $insertDocType, 'mysql_app');
                    }
                }
                return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully upload documents', 'data' => ['code' => $data['code'], 'document_id' => $doc_ids]]);
            }
        }
    }

    public function edit(Request $request, $params = null) {
        $id = (int) base64_decode($params);
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>User</b> master data management page',
            'pages' => [
                'title' => 'Edit Page Master Data Users',
                'icon' => '<i class = "fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/edit/' . $params
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class = "fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/view'
            ]
        ];
        $params = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.code', 'a.__user_name', 'a.__user_ldap', 'a.__first_name', 'a.__last_name', 'a.__email', 'a.__phone_number', 'a.__description', 'a.__score', 'a.__uac_user_profile_id', 'a.__uac_user_registered_type_id', 'a.__uac_user_location_id', 'a.is_active'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ],
            'limit' => 1
        ];
        $user = $this->Tbl_a_uac_users_p_en->__find($request, 'first', $params);
        $paramUserProfiles = [
            'table_name' => 'tbl_a_uac_user_profiles_c',
            'select' => ['a.id', 'a.code', 'a.__address', 'a.__lat', 'a.__lng', 'a.__zoom', 'a.__socmed_fb', 'a.__socmed_tw', 'a.__socmed_ins', 'a.__socmed_lnkd', 'a.__photos', 'a.__last_education', 'a.__last_education_institution', 'a.__skill', 'a.__notes', 'a.__description', 'a.is_active'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $user['data']->__uac_user_profile_id]
                ]
            ],
            'limit' => 1
        ];
        $user_profile = $this->Tbl_a_uac_user_profiles_c_en->__find($request, 'first', $paramUserProfiles);
        $paramUserLocations = [
            'table_name' => 'tbl_a_uac_user_locations_p',
            'select' => [
                'a.id', 'a.is_active',
                'b.id AS country_id', 'b.__name AS country_name',
                'c.id AS province_id', 'c.__name AS province_name',
                'd.id AS city_id', 'd.__name AS city_name',
                'e.id AS district_id', 'e.__name AS district_name',
                'f.id AS area_id', 'f.__name AS area_name'
            ],
            'join' => [
                'leftJoin' => [
                    ['tbl_c_uac_location_a_country_p AS b', 'b.id', '=', 'a.__country_id'],
                    ['tbl_c_uac_location_b_provinces_p AS c', 'c.id', '=', 'a.__province_id'],
                    ['tbl_c_uac_location_c_cities_p AS d', 'd.id', '=', 'a.__city_id'],
                    ['tbl_c_uac_location_d_districts_p AS e', 'e.id', '=', 'a.__district_id'],
                    ['tbl_c_uac_location_e_areas_p AS f', 'f.id', '=', 'a.__area_id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $user['data']->__uac_user_location_id]
                ]
            ],
            'limit' => 1
        ];
        $user_location = $this->Tbl_a_uac_user_locations_p_en->__find($request, 'first', $paramUserLocations);
        $user_groups = $this->Tbl_b_uac_user_group_c_en->__find_selected_value($request, $id);
        $user_modules = $this->Tbl_a_uac_users_module_c_en->__find_selected_value($request, $id);
        $code = $user['data']->code;
        $groupOptions = $this->__get_user_groups($request, $user_groups);
        $moduleOptions = $this->__get_modules($request, $user_modules);
        $countryOptions = $this->__get_countries($request);        
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/dropzone/css/dropzone.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/dropzone/dropzone.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'code', 'user', 'user_profile', 'user_location', 'user_groups', 'groupOptions', 'moduleOptions', 'countryOptions'));
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
                'table_name' => 'tbl_a_uac_users_p',
                'conditions' => [
                    'keyword' => 'id',
                    'value' => $id
                ]
            ];
            $response = $this->Tbl_a_uac_users_p_en->__update($request, $update_data, $paramsUpdate);
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
                'table_name' => 'tbl_a_uac_users_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.id', ' = ', $id]
                    ]
                ]
            ];
            $existData = $this->Tbl_a_uac_users_p_en->__find($request, 'first', $params);
            if ($existData && $existData['data']) {
                $insertUserUsersBackup = [
                    'table_name' => 'tbl_a_uac_users_p',
                    'data' => (array) $existData['data']
                ];
                $this->Tbl_b_uac_user_users_r_en->__insert($request, $insertUserUsersBackup, 'mysql_bak');
                $deleteParams = [
                    'table_name' => 'tbl_a_uac_users_p',
                    'conditions' => [
                        'keyword' => 'id',
                        'value' => $id
                    ]
                ];
                $response = $this->Tbl_a_uac_users_p_en->__delete($request, $deleteParams, 'mysql');
                return redirect()->back()->with('success', 'successfully delete data');
            } else {
                return redirect()->back()->with('error', 'failed delete data.');
            }
        }
    }
}
