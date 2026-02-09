<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\uac\Tbl_a_uac_menu_p;

/**
 * Description of Tbl_a_uac_menu_p_en
 *
 * @author 64146
 */
class Tbl_a_uac_menu_p_en extends Tbl_a_uac_menu_p {

    //put your code here
    public function __construct() {
        parent::__construct();
        $this->Tbl_a_uac_menu_p = new Tbl_a_uac_menu_p();
    }

    public function __get_menu(Request $request, $keyword) {
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($keyword) && !empty($keyword)) {
            $conditions = [
                'where' => [
                    ['a.is_active', '=', 1]
                ],
                'orWhere' => [
                    ['a.__user_name', 'like', '%' . $keyword],
                    ['a.__first_name', 'like', '%' . $keyword],
                    ['a.__last_name', 'like', '%' . $keyword],
                    ['a.__email', 'like', '%' . $keyword]
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_menu_p',
            'select' => ['a.id', 'a.__name', 'a.__path', 'b.__icon', 'a.__level', 'a.__rank', 'b.__badge', 'b.__badge_value', 'b.__badge_id', 'b.__is_badge', 'b.__uac_menu_parent_id', 'b.__is_dashboard', 'b.__is_head', 'b.__is_basic', 'b.__is_open', 'b.id AS menu_parent_id', 'b.__name AS menu_parent_name'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_menu_p AS b', 'b.id', '=', 'a.__uac_menu_parent_id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_permissions_r->__find($request, 'first', $paramCheckName);
    }

    public function __get_menu_by_id(Request $request, $id) {
        if ($id && is_array($id)) {
            $paramCheckName = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.id', 'a.__name', 'a.__path', 'b.__icon', 'a.__level', 'a.__rank', 'b.__badge', 'b.__badge_value', 'b.__badge_id', 'b.__is_badge', 'b.__uac_menu_parent_id', 'b.__is_dashboard', 'b.__is_head', 'b.__is_basic', 'b.__is_open', 'b.id AS menu_parent_id', 'b.__name AS menu_parent_name'],
                'join' => [
                    'leftJoin' => [
                        ['tbl_a_uac_menu_p AS b', 'b.id', '=', 'a.__uac_menu_parent_id']
                    ]
                ],
                'conditions' => [
                    'where' => [
                        ['b.id', '=', $id]
                    ],
                ]
            ];
            return $this->Tbl_b_uac_user_permissions_r->__find($request, 'first', $paramCheckName);
        }
    }

    public function __get_all_menu(Request $request, $keyword) {
        $limit = 25;
        if ($params['limit']) {
            $limit = $params['limit'];
        }
        $offset = 0;
        if ($params['offset']) {
            $offset = $params['offset'];
        }
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if ($params['conditions']) {
            $conditions = $params['conditions'];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_menu_p',
            'select' => ['a.id', 'a.__name', 'a.__path', 'b.__icon', 'a.__level', 'a.__rank', 'b.__badge', 'b.__badge_value', 'b.__badge_id', 'b.__is_badge', 'b.__uac_menu_parent_id', 'b.__is_dashboard', 'b.__is_head', 'b.__is_basic', 'b.__is_open', 'b.id AS menu_parent_id', 'b.__name AS menu_parent_name'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_menu_p AS b', 'b.id', '=', 'a.__uac_menu_parent_id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_permissions_r->__find($request, 'all', $paramCheckName);
    }
    
    
    public function __get_menu_by_parent_id(Request $request, $id) {
        if ($id && is_array($id)) {
            $paramCheckName = [
                'table_name' => 'tbl_a_uac_menu_p',
                'select' => ['a.id', 'a.__name', 'a.__path', 'b.__icon', 'a.__level', 'a.__rank', 'b.__badge', 'b.__badge_value', 'b.__badge_id', 'b.__is_badge', 'b.__uac_menu_parent_id', 'b.__is_dashboard', 'b.__is_head', 'b.__is_basic', 'b.__is_open', 'b.id AS menu_parent_id', 'b.__name AS menu_parent_name'],
                'join' => [
                    'leftJoin' => [
                        ['tbl_a_uac_menu_p AS b', 'b.id', '=', 'a.__uac_menu_parent_id']
                    ]
                ],
                'conditions' => [
                    'where' => [
                        ['b.id', '=', $id]
                    ],
                ]
            ];
            return $this->Tbl_b_uac_user_permissions_r->__find($request, 'first', $paramCheckName);
        }
    }
}
