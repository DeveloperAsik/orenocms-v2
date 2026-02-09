<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\uac\Tbl_b_uac_user_group_c;

/**
 * Description of Tbl_b_uac_user_group_c_en
 *
 * @author 64146
 */
class Tbl_b_uac_user_group_c_en extends Tbl_b_uac_user_group_c {

    //put your code here

    public function __construct() {
        parent::__construct();
        $this->Tbl_b_uac_user_group_c = new Tbl_b_uac_user_group_c();
    }

    public function __get_user_group(Request $request, $id) {
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1],
                ['a.__uac_user_id', '=', $id]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_b_uac_user_group_c',
            'select' => ['a.*', 'b.__name', 'b.__rank', 'b.__level', 'b.__uac_group_parent_id', 'b.__is_key_group', 'b.__is_menu', 'b.__is_group_project'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_groups_p AS b', 'b.id', '=', 'a.__uac_group_id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_group_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_user_group_by_id(Request $request, $userid, $groupid) {
        $conditions = [
            'where' => [
                ['a.__uac_group_id', '=',$groupid],
                ['a.__uac_user_id', '=', $userid]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_b_uac_user_group_c',
            'select' => ['a.*', 'b.__name', 'b.__rank', 'b.__level', 'b.__uac_group_parent_id', 'b.__is_key_group', 'b.__is_menu', 'b.__is_group_project'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_groups_p AS b', 'b.id', '=', 'a.__uac_group_id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_group_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_user_group(Request $request, $keyword) {
        $paramCheckName = [
            'table_name' => 'tbl_b_uac_user_group_c',
            'select' => ['a.*', 'b.__name', 'b.__rank', 'b.__level', 'b.__uac_group_parent_id', 'b.__is_key_group', 'b.__is_menu', 'b.__is_group_project'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_groups_p AS b', 'b.id', '=', 'a.__uac_group_id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.__uac_user_id', '=', $id]
                ]
            ]
        ];
        return $this->Tbl_b_uac_user_group_c->__find($request, 'all', $paramCheckName);
    }
}
