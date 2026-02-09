<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Libraries\Oreno\Converter;
use App\Models\Object\uac\Tbl_a_uac_groups_p;

/**
 * Description of Tbl_a_uac_groups_p_en
 *
 * @author 64146
 */
class Tbl_a_uac_groups_p_en extends Tbl_a_uac_groups_p {

    //put your code here

    protected $Converter;

    public function __construct() {
        parent::__construct();
        $this->Converter = new Converter();
        $this->Tbl_a_uac_groups_p = new Tbl_a_uac_groups_p();
    }

    public function __get_group(Request $request, $keyword) {
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
                    ['a.__name', 'like', '%' . $keyword],
                    ['a.__rank', 'like', '%' . $keyword],
                    ['a.__level', 'like', '%' . $keyword]
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_groups_p',
            'select' => ['a.id', 'a.__name', 'a.__rank', 'a.__level', 'a.__uac_group_parent_id', 'a.__is_key_group', 'a.__is_menu', 'a.__is_group_project', 'a.is_active'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_groups_p->__find($request, 'first', $paramCheckName);
    }

    public function __get_group_by_id(Request $request, $id) {
        $conditions = [
            'where' => [
                ['a.id', '=', $id]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_groups_p',
            'select' => ['a.id', 'a.__name', 'a.__rank', 'a.__level', 'a.__uac_group_parent_id', 'a.__is_key_group', 'a.__is_menu', 'a.__is_group_project', 'a.is_active'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_groups_p->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_group(Request $request, $keyword) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_groups_p',
            'select' => ['a.id', 'a.__name', 'a.__rank', 'a.__level', 'a.__uac_group_parent_id', 'a.__is_key_group', 'a.__is_menu', 'a.__is_group_project', 'a.is_active'],
            'conditions' => [
                'orWhere' => [
                    ['a.__name', 'like', '%' . $keyword],
                    ['a.__rank', 'like', '%' . $keyword],
                    ['a.__level', 'like', '%' . $keyword]
                ]
            ],
            'offset' => 0,
            'limit' => 25
        ];
        return $this->Tbl_a_uac_groups_p->__find($request, 'all', $paramCheckName);
    }
}
