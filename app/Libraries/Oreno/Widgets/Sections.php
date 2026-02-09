<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */

namespace App\Helpers\Oreno\Widgets;

use Illuminate\Http\Request;
use App\Helpers\Oreno\Sanitize;
use App\Helpers\Oreno\Converter;
use App\Models\Entity\AppEntity;

/**
 * Description of Global
 *
 * @author User
 */
class Sections {

    protected $AppEntity;
    protected $Converter;

    public function __fetch_menu_shorturl($request) {
        $this->AppEntity = new AppEntity();
        $this->Converter = new Converter();
        $data = $request->session()->all();
     
        $params = [
            'table_name' => 'tbl_a_menus',
            'select' => ['a.id', 'a.name', 'a.icon', 'a.path', 'a.content_path', 'a.badge', 'a.badge_id', 'a.badge_value', 'a.level', 'a.rank', 'a.parent_id', 'a.is_dashboard', 'a.is_badge', 'a.is_open', 'a.is_active','b.id AS menu_permission_id','b.group_id','b.is_allowed'],
            'conditions' => [
                'where' => [
                    ['a.is_dashboard', '=', 1],
                    ['b.is_allowed', '=', 1],
                    ['b.group_id', '=', $data['_session_group_id']],
                ]
            ],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_menu_permission AS b','b.menu_id','=','a.id']
                ]
            ],
            'order' => [
                ['a.level', 'asc'],
                ['a.rank', 'asc']
            ],
        ];
        $menu = $this->AppEntity->find($request, 'all', $params);
        if (isset($menu['data']) && !empty($menu['data'])) {
            foreach ($menu['data'] AS $key => $val) {
                $param_childs = [
                    'table_name' => 'tbl_a_menus',
                    'select' => ['a.id', 'a.name', 'a.icon', 'a.path', 'a.content_path', 'a.badge', 'a.badge_id', 'a.badge_value', 'a.level', 'a.rank', 'a.parent_id', 'a.is_dashboard', 'a.is_badge', 'a.is_open', 'a.is_active'],
                    'conditions' => [
                        'where' => [
                            ['a.parent_id', '=', $val->id],
                            ['a.path', '!=', '']
                        ]
                    ],
                    'order' => [
                        ['a.level', 'asc'],
                        ['a.rank', 'asc']
                    ],
                ];
                $menu_childs = $this->AppEntity->find($request, 'all', $param_childs)['data'];
                $menu['data'][$key] = array_merge((array) $menu['data'][$key], ['childs' => $menu_childs]);
            }
        }
        $menus = $this->Converter->array_to_object($menu);
        $sections_html = '';
        if (isset($menus->data) && !empty($menus->data)) {
            foreach ($menus->data AS $key => $value) {
                $sections_html .= '<div class="col-lg-2 col-4">
                    <!-- small box -->
                    <div class="small-box bg-default" style=" text-align: center; padding:5px!important">
                        <div class="inner">
                            <p style="font-size: 12px !important;">' . $value->name . '</p>
                        </div>
                        <div class="btn-group">';
                if (isset($value->childs) && !empty($value->childs)) {
                    foreach ($value->childs AS $k => $v) {
                        $sections_html .= '<button type="button" class="btn btn-info" style="font-size: 0.6em !important;">
                                    <a title="' . config('app.base_extraweb_uri') . $v->path . '" href="' . config('app.base_extraweb_uri') . $v->path . '" style="color:#FFF">' . $v->name . '</a>
                                </button>';
                    }
                }
                $sections_html .= '</div>
                    </div>
                </div>';
            }
        }
        return $sections_html;
    }
}
