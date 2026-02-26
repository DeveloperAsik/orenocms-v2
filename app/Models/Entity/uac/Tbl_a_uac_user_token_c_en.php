<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Date;
use App\Models\Object\uac\Tbl_a_uac_user_token_c;

/**
 * Description of Tbl_a_uac_user_token_c_en
 *
 * @author 64146
 */
class Tbl_a_uac_user_token_c_en extends Tbl_a_uac_user_token_c {

    //put your code here

    protected $Converter;
    protected $Date;
    protected $Tbl_a_uac_users_p;

    public function __construct() {
        parent::__construct();
        $this->Converter = new Converter();
        $this->Date = new Date();
        $this->Tbl_a_uac_user_token_c = new Tbl_a_uac_user_token_c();
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
                    ['a.__uac_group_id', 'like', '%' . $keyword['user']['groupid']],
                    ['a.__uac_user_id', 'like', '%' . $keyword['user']['userid']],
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'select' => ['a.id', 'a.__token', 'a.__device_id', 'a.__expiry_date', 'a.__uac_group_id', 'a.__uac_user_id', 'a.__is_logged_in', 'a.__is_expiry'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_user_token_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_user_by_id(Request $request, $id) {
        $conditions = [
            'where' => [
                ['a.id', '=', $id]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'select' => ['a.id', 'a.__token', 'a.__device_id', 'a.__expiry_date', 'a.__uac_group_id', 'a.__uac_user_id', 'a.__is_logged_in', 'a.__is_expiry'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_user_token_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_user_by_groupid(Request $request, $id) {
        $conditions = [
            'where' => [
                ['a.__uac_group_id', '=', $id]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'select' => ['a.id', 'a.__token', 'a.__device_id', 'a.__expiry_date', 'a.__uac_group_id', 'a.__uac_user_id', 'a.__is_logged_in', 'a.__is_expiry'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_user_token_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_user_by_userid(Request $request, $id) {
        $conditions = [
            'where' => [
                ['a.__uac_user_id', '=', $id]
            ]
        ];
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'select' => ['a.id', 'a.__token', 'a.__device_id', 'a.__expiry_date', 'a.__uac_group_id', 'a.__uac_user_id', 'a.__is_logged_in', 'a.__is_expiry'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_user_token_c->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_user(Request $request, $keyword) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'select' => ['a.id', 'a.__token', 'a.__device_id', 'a.__expiry_date', 'a.__uac_group_id', 'a.__uac_user_id', 'a.__is_logged_in', 'a.__is_expiry'],
            'conditions' => [
                'orWhere' => [
                    ['a.__token', 'like', '%' . $keyword],
                    ['a.__device_id', 'like', '%' . $keyword],
                ]
            ]
        ];
        return $this->Tbl_a_uac_user_token_c->__find($request, 'all', $paramCheckName);
    }

    public function __update_clear_user_token(Request $request, $optitons) {
        $data = [
            '__token' => '',
            '__expiry_date' => $this->Date->now(),
            '__uac_group_id'=> 0,
            '__uac_user_id' => 0,
            '__is_logged_in' => 0,
            '__is_expiry' => 1
        ];
        $params = [
            'table_name' => 'tbl_a_uac_user_token_c',
            'conditions' => [
                'keyword' => 'id',
                'value' => $optitons['id']
            ]
        ];        
        return $this->Tbl_a_uac_user_token_c->__update($request, $data, $params);
    }
}
