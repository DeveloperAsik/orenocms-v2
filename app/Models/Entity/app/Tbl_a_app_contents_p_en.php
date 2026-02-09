<?php

namespace App\Models\Entity\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\app\Tbl_a_app_contents_p;

/**
 * Description of Tbl_a_app_contents_p_en
 *
 * @author 64146
 */
class Tbl_a_app_contents_p_en extends Tbl_a_app_contents_p {

    //put your code here
    public function __construct() {
        parent::__construct();
        $this->Tbl_a_app_contents_p = new Tbl_a_app_contents_p();
    }

    public function __get_content(Request $request, $find, $params, $connection) {
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1],
                ['a.id', '=', $id]
            ]
        ];
        if (isset($keyword) && !empty($keyword)) {
            $conditions = [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.id', '=', $id]
                ]
            ];
        }
        $table_name = 'tbl_a_app_contents_p';
        if (isset($params['table_name']) && !empty($params['table_name'])) {
            $table_name = $params['table_name'];
        }
        $paramCheckName = [
            'table_name' => $table_name,
            'select' => [
                'a.id', 'a.__alias', 'a.__name', 'a.__content_raw', 'a.__content_sanitize',
                'b.__name AS content_type_name', 'b.__element AS content_type_name',
                'c.__path AS content_photo_path', 'c.__description AS content_photo_desc',
                'd.__name AS content_category_name', 'd.__element',
                'e.__name AS content_meta_name', 'e.__meta_keyword', 'e.__meta_description'
            ],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_app_contents_types_c AS b', 'b.id', '=', 'a.__uac_content_type_id'],
                    ['tbl_a_app_contents_photo_c AS c', 'c.id', '=', 'a.__uac_content_photo_id'],
                    ['tbl_a_app_contents_categories_c AS d', 'd.id', '=', 'a.__uac_content_category_id'],
                    ['tbl_a_app_contents_meta_c AS e', 'e.id', '=', 'a.__uac_content_meta_id']
                ]
            ],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_app_contents_p->__find($request, $find, $paramCheckName, $connection);
    }

    public function __get_content_by_options(Request $request, $find, $params, $connectionn) {
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
            return $this->Tbl_a_app_contents_p->__find($request, 'first', $paramCheckName, $connection);
        }
    }

    public function __get_all_contents(Request $request, $find, $params, $connection) {
        $limit = 25;
        if (isset($params['limit']) && !empty($params['limit'])) {
            $limit = $params['limit'];
        }
        $offset = 0;
        if (isset($params['offset']) && !empty($params['offset'])) {
            $offset = $params['offset'];
        }
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($params['conditions']) && !empty($params['conditions'])) {
            $conditions = $params['conditions'];
        }
        $table_name = 'tbl_a_app_contents_p';
        if (isset($params['table_name']) && !empty($params['table_name'])) {
            $table_name = $params['table_name'];
        }
        $paramCheckName = [
            'table_name' => $table_name,
            'select' => [
                'a.id', 'a.__alias', 'a.__name', 'a.__content_raw', 'a.__content_sanitize',
                'b.__name AS content_type_name', 'b.__element AS content_type_name',
                'c.__path AS content_photo_path', 'c.__description AS content_photo_desc',
                'd.__name AS content_category_name', 'd.__element',
                'e.__name AS content_meta_name', 'e.__meta_keyword', 'e.__meta_description'
            ],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_app_contents_types_c AS b', 'b.id', '=', 'a.__uac_content_type_id'],
                    ['tbl_a_app_contents_photo_c AS c', 'c.id', '=', 'a.__uac_content_photo_id'],
                    ['tbl_a_app_contents_categories_c AS d', 'd.id', '=', 'a.__uac_content_category_id'],
                    ['tbl_a_app_contents_meta_c AS e', 'e.id', '=', 'a.__uac_content_meta_id']
                ]
            ],
            'conditions' => $conditions,
            'limit' => $limit,
            'offset' => $offset
        ];
        return $this->Tbl_a_app_contents_p->__find($request, $find, $paramCheckName, $connection);
    }
}
