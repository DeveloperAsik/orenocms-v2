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
use App\Models\Entity\uac\Tbl_a_uac_groups_p_en;
use App\Models\Entity\uac\Tbl_a_uac_user_profiles_c_en;
use App\Models\Entity\uac\Tbl_a_uac_modules_p_en;
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
    protected $Tbl_a_uac_groups_p_en;
    protected $Tbl_d_app_assets_documents_p_en;
    protected $Tbl_d_app_assets_document_type_r_en;
    protected $Tbl_a_uac_user_profiles_c_en;
    protected $Tbl_a_uac_modules_p_en;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->UploadFile = new UploadFile();
        $this->Encrypter = new Encrypter();
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_a_uac_groups_p_en = new Tbl_a_uac_groups_p_en();
        $this->Tbl_d_app_assets_documents_p_en = new Tbl_d_app_assets_documents_p_en();
        $this->Tbl_d_app_assets_document_type_r_en = new Tbl_d_app_assets_document_type_r_en();
        $this->Tbl_a_uac_user_profiles_c_en = new Tbl_a_uac_user_profiles_c_en();
        $this->Tbl_a_uac_modules_p_en = new Tbl_a_uac_modules_p_en();
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
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetching and reformat data', 'valid' => true, 'data' => $segmented]);
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
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'code', 'groupOptions', 'moduleOptions'));
    }

    protected function __get_user_groups($request) {
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
                $responseOptions .= "<option value=" . $value->id . ">" . $value->__name . "</option>";
            }
        }
        return $responseOptions;
    }

    protected function __get_modules($request) {
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

    protected function __insert_user_profile($request) {
        $data = $request->json()->all();
        dd($data);
        $insertData[] = [
            'code' => $code,
            '__address' => $data['m'],
            '__lat' => $data['n'],
            '__lng' => $data['o'],
            '__zoom' => $data['p'],
            '__socmed_fb' => $data['q'],
            '__socmed_tw' => $data['r'],
            '__socmed_ins' => $data['s'],
            '__socmed_lnkd' => $data['t'],
            '__photos' => $data[''],
            '__last_education' => $data[''],
            '__last_education_institution' => $data[''],
            '__skill' => $data[''],
            '__notes' => $data[''],
            '__description' => $data[''],
            'is_active' => $data[''],
            'created_by' => (int) $this->__user_id,
            'created_date' => $this->Date->now(),
            'updated_by' => (int) $this->__user_id,
            'updated_date' => $this->Date->now()
        ];
        $insert = [
            'table_name' => 'tbl_a_uac_user_profiles_c',
            'data' => $insertData
        ];
        $response = $this->Tbl_a_uac_user_profiles_c_en->__insert_get_id($request, $insert);
    }

    public function __insert_default($request) {
        $data = $request->json()->all();
        $insertData = [];
        if (isset($data['d']) && !empty($data['d'])) {
            $password = $this->General->getRandomChar(8);
            $__password = $this->Encrypter->encrypt($password);
            $__salt = '';
            $__uac_user_profile_id = 0;
            $__uac_user_registered_type_id = 0;
            dd($data);
            foreach ($data['d'] AS $key => $value) {
                $insertData[] = [
                    'code' => $code,
                    '__user_name' => $value['a'],
                    '__user_ldap' => $value['b'],
                    '__first_name' => $value['c'],
                    '__last_name' => $value['d'],
                    '__email' => $value['e'],
                    '__phone_number' => $value['f'],
                    '__password' => $__password,
                    '__salt' => $__salt,
                    '__description' => isset($value['g'],) ? $value['g'] : '-',
                    '__score' => $__score,
                    '__uac_user_profile_id' => $__uac_user_profile_id,
                    '__uac_user_registered_type_id' => $__uac_user_registered_type_id,
                    'is_active' => $value['h'],
                    'created_by' => (int) $this->__user_id,
                    'created_date' => $this->Date->now(),
                    'updated_by' => (int) $this->__user_id,
                    'updated_date' => $this->Date->now()
                ];
            }
        }
        $insert = [
            'table_name' => 'tbl_a_uac_users_p',
            'data' => $insertData
        ];
        $response = true; //$this->Tbl_a_uac_users_p_en->__insert($request, $insert);
        if ($response) {
            $users = $this->__get_list_by_controller($request, $data['c']);
            $arrUserUsers = [];
            $arrUserUsers = [];
            foreach ($users['data'] AS $key1 => $permission) {
                //apply to user
                if (isset($data['r']) && !empty($data['r'])) {
                    foreach ($data['r'] AS $key => $user) {
                        $arrUserUsers[] = [
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
                        $arrUserUsers[] = [
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
            $insertUserUsers = [
                'table_name' => 'tbl_b_uac_user_users_r',
                'data' => $arrUserUsers
            ];
            $this->Tbl_b_uac_user_users_r_en->__insert($request, $insertUserUsers);
            $insertUserUsers = [
                'table_name' => 'tbl_b_uac_group_users_r',
                'data' => $arrUserUsers
            ];
            $this->Tbl_b_uac_group_users_r_en->__insert($request, $insertUserUsers);
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully insert data', 'valid' => true]);
        } else {
            return $this->General->_set_response('json', ['code' => 200, 'message' => 'failed insert data.', 'valid' => false]);
        }
    }

    public function __insert_photo($request) {
        $data = $request->all();
        if (isset($data['file']) && !empty($data['file'])) {
            $options = array(
                'id' => $data['code'],
                'name' => $data['file']->getClientOriginalName(),
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
        $id = base64_decode($params);
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>User</b> master data management page',
            'pages' => [
                'title' => 'Edit Page Master Data Users',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/edit/' . $params
            ],
            'header' => [
                'title' => 'View',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/users/view'
            ]
        ];
        $params = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.*'],
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $user = $this->Tbl_a_uac_users_p_en->__find($request, 'first', $params);
        $this->load_css([
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css",
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css",
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css"
        ]);
        $this->load_js([
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js",
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
                //config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js",
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config', 'user'));
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
                        ['a.id', '=', $id]
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
