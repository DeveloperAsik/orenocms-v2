<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Object\uac\Tbl_b_uac_user_permissions_r;

/**
 * Description of Tbl_b_uac_user_permissions_r_en
 *
 * @author 64146
 */
class Tbl_b_uac_user_permissions_r_en extends Tbl_b_uac_user_permissions_r {

    //put your code here

    public function __construct() {
        parent::__construct();
        $this->Tbl_b_uac_user_permissions_r = new Tbl_b_uac_user_permissions_r();
    }

    public function __get_permission_user(Request $request, $keyword) {
        $__get_segment_by_url = $this->__get_segment_by_url($keyword);
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($keyword) && !empty($keyword)) {
            $conditions = [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.__path', 'like', $__get_segment_by_url . '%']
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_permissions_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__path', 'a.__controller', 'a.__action', 'a.__method', 'a.__is_basic', 'a.__is_public', 'a.is_active','b.__user_id','b.__permission_id','b.__is_denied'],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_uac_user_permissions_r AS b', 'b.__permission_id', '=', 'a.id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_permissions_r->__find($request, 'first', $paramCheckName);
    }

    public function __get_permission_user_by_id(Request $request, $param) {
        if ($param && is_array($param)) {
            $paramCheckName = [
                'table_name' => 'tbl_a_uac_users_p',
                'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email', 'b.__permission_id', 'b.__is_denied'],
                'join' => [
                    'leftJoin' => [
                        ['tbl_b_uac_user_permissions_r AS b', 'b.__user_id', '=', 'a.id']
                    ]
                ],
                'conditions' => [
                    'where' => [
                        ['b.__user_id', '=', 1]
                    ],
                ]
            ];
            return $this->Tbl_b_uac_user_permissions_r->__find($request, 'first', $paramCheckName);
        }
    }

    public function __get_all_permission_user(Request $request, $keyword) {
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
            'table_name' => 'tbl_a_uac_users_p',
            'select' => ['a.id', 'a.__user_name', 'a.__first_name', 'a.__last_name', 'a.__email', 'b.__permission_id', 'b.__is_denied'],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_uac_user_permissions_r AS b', 'b.__user_id', '=', 'a.id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_user_permissions_r->__find($request, 'all', $paramCheckName);
    }

    public function __get_segment_by_url($url) {
        $arrData = [];
        if ($url) {
            $url2 = explode('/', $url);
            $newArr = [];
            $unsetID = null;
            foreach ($url2 AS $key => $value) {
                if ($value) {
                    $newArr[] = $value;
                    if (Str::contains($value, '-')) {
                        $unsetID = $key;
                    }
                }
            }
            unset($newArr[$unsetID]);
            $arrData = implode('/', $newArr);
        }
        return $arrData;
    }
}
