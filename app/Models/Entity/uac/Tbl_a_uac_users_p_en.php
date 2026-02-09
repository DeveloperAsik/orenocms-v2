<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Libraries\Oreno\Converter;
use App\Models\Object\uac\Tbl_a_uac_users_p;

/**
 * Description of Tbl_a_uac_users_p_en
 *
 * @author 64146
 */
class Tbl_a_uac_users_p_en extends Tbl_a_uac_users_p {

//put your code here protected $Tbl_a_uac_users_p;

    protected $Converter;

    public function __construct() {
        parent::__construct();
        $this->Converter = new Converter();
        $this->Tbl_a_uac_users_p = new Tbl_a_uac_users_p();
    }

    public function __get_user(Request $request, $keyword) {
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
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_users_p->__find($request, 'first', $paramCheckName);
    }

    public function __get_user_by_id(Request $request, $id = null) {
        if ($id != null) {
            $paramCheckName = [
                'table_name' => 'tbl_a_uac_users_p',
                'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email'],
                'conditions' => [
                    'where' => [
                        ['a.id', '=', $id]
                    ]
                ]
            ];
            return $this->Tbl_a_uac_users_p->__find($request, 'first', $paramCheckName);
        }
    }

    public function __get_user_pass(Request $request, $id) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email', 'a.__password', 'a.__salt', 'a.is_active'],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.id', '=', $id]
                ]
            ]
        ];
        return $this->Tbl_a_uac_users_p->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_user(Request $request, $keyword) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email'],
            'conditions' => [
                'orWhere' => [
                    ['a.__user_name', 'like', '%' . $keyword],
                    ['a.__first_name', 'like', '%' . $keyword],
                    ['a.__last_name', 'like', '%' . $keyword],
                    ['a.__email', 'like', '%' . $keyword]
                ]
            ]
        ];
        return $this->Tbl_a_uac_users_p->__find($request, 'all', $paramCheckName);
    }
}
