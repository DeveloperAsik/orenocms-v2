<?php

namespace App\Models\Entity\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\app\Tbl_b_app_messages_p;

/**
 * Description of Tbl_b_app_messages_p
 *
 * @author 64146
 */
class Tbl_b_app_messages_p_en extends Tbl_b_app_messages_p {

    //put your code here
    //put your code here
    public function __construct() {
        parent::__construct();
        $this->Tbl_b_app_messages_p = new Tbl_b_app_messages_p();
    }

    public function __get_all(Request $request, $find, $params, $connection) {
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
            'select' => ['a.*'],
            'conditions' => $conditions,
            'limit' => $limit,
            'offset' => $offset
        ];
        return $this->Tbl_b_app_messages_p->__find($request, $find, $paramCheckName, $connection);
    }
}
