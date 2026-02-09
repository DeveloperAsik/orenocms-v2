<?php

namespace App\Models\Entity\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\app\Tbl_c_app_logs;

/**
 * Description of Tbl_c_app_logs
 *
 * @author 64146
 */
class Tbl_c_app_logs_en extends Tbl_c_app_logs {

    //put your code here

    public function __construct() {
        parent::__construct();
        $this->Tbl_c_app_logs = new Tbl_c_app_logs();
    }

    public function __get_log(Request $request, $id) {
        $paramCheckName = [
            'table_name' => 'tbl_c_app_logs',
            'conditions' => [
                'where' => [
                    ['a.id', '=', $id]
                ]
            ]
        ];
        return $this->Tbl_c_app_logs->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_log(Request $request, $params) {
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
            'table_name' => 'tbl_c_app_logs',
            'select' => ['a.*', 'b.__name', 'b.__rank', 'b.__level', 'b.__uac_group_parent_id', 'b.__is_key_group', 'b.__is_menu', 'b.__is_group_project'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_groups_p AS b', 'b.id', '=', 'a.__uac_group_id']
                ]
            ],
            'conditions' => $conditions,
            'order' => [
                ['a.id', 'asc']
            ],
            'limit' => $limit,
            'offset' => $offset
        ];
        return $this->Tbl_c_app_logs->__find($request, 'all', $paramCheckName);
    }
}
