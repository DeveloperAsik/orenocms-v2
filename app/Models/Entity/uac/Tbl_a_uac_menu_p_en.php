<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Authentification;
use App\Models\Object\uac\Tbl_a_uac_menu_p;

/**
 * Description of Tbl_a_uac_menu_p_en
 *
 * @author 64146
 */
class Tbl_a_uac_menu_p_en extends Tbl_a_uac_menu_p {

    //put your code here
    protected $Converter;
    protected $Authentification;
    protected $General;

    public function __construct() {
        parent::__construct();
        $this->Converter = new Converter();
        $this->Authentification = new Authentification();
        $this->General = new General();
        $this->Tbl_a_uac_menu_p = new Tbl_a_uac_menu_p();
    }

    public function __get_tree_data($request) {
        $menus = $this->__get_tree_view_list($request);
        $raw_menu = json_decode($menus);
        $is_active1 = 'start active';
        $is_open1 = ($raw_menu->data->state->opened == true) ? 'open' : '';
        $path1 = ($raw_menu->data->path) ? ' href="' . config('app.base_extraweb_uri') . $raw_menu->data->path . '"' : 'javascript:;';
        $is_arrow1 = ($raw_menu->data->children) ? '<span class="arrow"></span>' : '';
        $icon1 = ($raw_menu->data->icon) ? ' <i class="' . $raw_menu->data->icon . '"></i> ' : '';
        $text1 = ($raw_menu->data->text) ? $raw_menu->data->text : '';
        $strHtmlMenu = '<li class="' . $is_active1 . ' ' . $is_open1 . '">';
        $strHtmlMenu .= '<a data-txt="lvl-1"' . $path1 . ' style="padding: 5px 15px 6px 15px !important">' . $icon1 . '<span class="title">' . $text1 . '</span>' . $is_arrow1 . '</a>';
        if (isset($raw_menu->data->children) && !empty($raw_menu->data->children)) {
            $strHtmlMenu .= '<ul class="sub-menu">';
            foreach ($raw_menu->data->children AS $key2 => $value2) {
                $is_active2 = '';
                $is_open2 = ($value2->state->opened == true) ? 'active open' : '';
                $path2 = ($value2->path) ? ' href="' . config('app.base_extraweb_uri') . $value2->path . '"' : 'javascript:;';
                $is_arrow2 = ($value2->children) ? '<span class="arrow"></span>' : '';
                $icon2 = ($value2->icon) ? ' <i class="' . $value2->icon . '"></i> ' : '';
                $text2 = ($value2->text) ? $value2->text : '';
                $strHtmlMenu .= '<li class="' . $is_active2 . ' ' . $is_open2 . '">';
                $strHtmlMenu .= '<a data-txt="lvl-2"' . $path2 . '>' . $icon2 . '<span class="title">' . $text2 . '</span>' . $is_arrow2 . '</a>';
                if (isset($value2->children) && !empty($value2->children)) {
                    $strHtmlMenu .= '<ul class="sub-menu">';
                    foreach ($value2->children AS $key3 => $value3) {
                        $is_active3 = '';
                        $is_open3 = ($value3->state->opened == true) ? 'active open' : '';
                        $path3 = ($value3->path) ? ' href="' . config('app.base_extraweb_uri') . $value3->path . '"' : 'javascript:;';
                        $is_arrow3 = ($value3->children) ? '<span class="arrow"></span>' : '';
                        $icon3 = ($value3->icon) ? ' <i class="' . $value3->icon . '"></i> ' : '';
                        $text3 = ($value3->text) ? $value3->text : '';
                        $strHtmlMenu .= '<li class="' . $is_active3 . ' ' . $is_open3 . '">';
                        $strHtmlMenu .= '<a data-txt="lvl-2"' . $path3 . '>' . $icon3 . '<span class="title">' . $text3 . '</span>' . $is_arrow3 . '</a>';
                        if (isset($value3->children) && !empty($value3->children)) {
                            $strHtmlMenu .= '<ul class="sub-menu">';
                            foreach ($value3->children AS $key4 => $value4) {
                                $is_active4 = '';
                                $is_open4 = ($value4->state->opened == true) ? 'active open' : '';
                                $path4 = ($value4->path) ? ' href="' . config('app.base_extraweb_uri') . $value4->path . '"' : 'javascript:;';
                                $is_arrow4 = ($value4->children) ? '<span class="arrow"></span>' : '';
                                $icon4 = ($value4->icon) ? ' <i class="' . $value4->icon . '"></i> ' : '';
                                $text4 = ($value4->text) ? $value4->text : '';
                                $strHtmlMenu .= '<li class="' . $is_active4 . ' ' . $is_open4 . '">';
                                $strHtmlMenu .= '<a data-txt="lvl-3"' . $path4 . '>' . $icon4 . '<span class="title">' . $text4 . '</span>' . $is_arrow4 . '</a>';
                                if (isset($value4->children) && !empty($value4->children)) {
                                    $strHtmlMenu .= '<ul class="sub-menu">';
                                    foreach ($value4->children AS $key5 => $value5) {
                                        $is_active5 = '';
                                        $is_open5 = ($value5->state->opened == true) ? 'active open' : '';
                                        $path5 = ($value5->path) ? ' href="' . config('app.base_extraweb_uri') . $value5->path . '"' : 'javascript:;';
                                        $is_arrow5 = ($value5->children) ? '<span class="arrow"></span>' : '';
                                        $icon5 = ($value5->icon) ? ' <i class="' . $value5->icon . '"></i> ' : '';
                                        $text5 = ($value5->text) ? $value5->text : '';
                                        $strHtmlMenu .= '<li class="' . $is_active5 . ' ' . $is_open5 . '">';
                                        $strHtmlMenu .= '<a data-txt="lvl-4"' . $path5 . '>' . $icon5 . '<span class="title">' . $text5 . '</span>' . $is_arrow5 . '</a>';
                                        if (isset($value5->children) && !empty($value5->children)) {
                                            $strHtmlMenu .= '<ul class="sub-menu">';
                                            foreach ($value5->children AS $key6 => $value6) {
                                                $is_active6 = '';
                                                $is_open6 = ($value6->state->opened == true) ? 'active open' : '';
                                                $path6 = ($value6->path) ? ' href="' . config('app.base_extraweb_uri') . $value6->path . '"' : 'javascript:;';
                                                $is_arrow6 = ($value6->children) ? '<span class="arrow"></span>' : '';
                                                $icon6 = ($value6->icon) ? ' <i class="' . $value6->icon . '"></i> ' : '';
                                                $text6 = ($value6->text) ? $value6->text : '';
                                                $strHtmlMenu .= '<li class="' . $is_active6 . ' ' . $is_open6 . '">';
                                                $strHtmlMenu .= '<a data-txt="lvl-5"' . $path6 . '>' . $icon6 . '<span class="title">' . $text6 . '</span>' . $is_arrow6 . '</a>';
                                                if (isset($value6->children) && !empty($value6->children)) {
                                                    $strHtmlMenu .= '<ul class="sub-menu">';
                                                    foreach ($value6->children AS $key7 => $value7) {
                                                        $is_active7 = '';
                                                        $is_open7 = ($value7->state->opened == true) ? 'active open' : '';
                                                        $path7 = ($value7->path) ? ' href="' . config('app.base_extraweb_uri') . $value7->path . '"' : 'javascript:;';
                                                        $is_arrow7 = ($value7->children) ? '<span class="arrow"></span>' : '';
                                                        $icon7 = ($value7->icon) ? ' <i class="' . $value7->icon . '"></i> ' : '';
                                                        $text7 = ($value7->text) ? $value7->text : '';
                                                        $strHtmlMenu .= '<li class="' . $is_active7 . ' ' . $is_open7 . '">';
                                                        $strHtmlMenu .= '<a data-txt="lvl-6"' . $path7 . '>' . $icon7 . '<span class="title">' . $text7 . '</span>' . $is_arrow7 . '</a>';
                                                        //$strHtmlMenu .= '<ul class="sub-menu">';
                                                        //$strHtmlMenu .= '</ul>';
                                                        $strHtmlMenu .= '</li>';
                                                    }
                                                    $strHtmlMenu .= '</ul>';
                                                }
                                                $strHtmlMenu .= '</li>';
                                            }
                                            $strHtmlMenu .= '</ul>';
                                        }
                                        $strHtmlMenu .= '</li>';
                                    }
                                    $strHtmlMenu .= '</ul>';
                                }
                                $strHtmlMenu .= '</li>';
                            }
                            $strHtmlMenu .= '</ul>';
                        }
                        $strHtmlMenu .= '</li>';
                    }
                    $strHtmlMenu .= '</ul>';
                }
                $strHtmlMenu .= '</li>';
            }
            $strHtmlMenu .= '</ul>';
        }
        $strHtmlMenu .= '</li>';
        return $strHtmlMenu;
    }

    public function __get_tree_view_list($request) {
        $data = $request->session()->all();
        if (isset($data['_authentification']) && !empty($data['_authentification'])) {
            $user_id = $data['_authentification'][$this->Authentification->__encr_to_var('_user_id')];
            $group_id = $data['_authentification'][$this->Authentification->__encr_to_var('_group_id')];
            $module_id = $data['_authentification'][$this->Authentification->__encr_to_var('_module_id')];
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
            $data = $this->__find($request, 'all', $params);
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
                                                                        'path' => $value6->__path,
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
                                                                'path' => $value5->__path,
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
                                                        'path' => $value4->__path,
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
                                                'path' => $value3->__path,
                                                'icon' => $value3->__icon,
                                                'level_id' => $value3->__level,
                                                'parent_id' => $value3->__uac_menu_parent_id,
                                                'state' => [
                                                    'opened' => $__is_open3,
                                                    'disabled' => $__is_disabled3
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
                                        'path' => $value2->__path,
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
                                'path' => $value1->__path,
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
                'path' => '',
                'icon' => 'fa fa-home',
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
            $data = $this->__find($request, 'all', $params);
            if (isset($data['data']) && !empty($data['data'])) {
                $response = $data['data'];
            }
        }
        return $response;
    }

    public function __fetch_last_rank($request, $parent_id = null) {
        $response = 0;
        if ($parent_id != '') {
            $params = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.*'],
                'conditions' => [
                    'where' => [
                        ['a.__uac_menu_parent_id', '=', $parent_id]
                    ]
                ]
            ];
            $data = $this->__find($request, 'last', $params);
            if (isset($data['data']) && !empty($data['data'])) {
                $response = $data['data'];
            }
        }
        return $response;
    }
}
