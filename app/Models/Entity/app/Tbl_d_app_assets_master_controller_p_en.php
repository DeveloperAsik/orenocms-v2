<?php

namespace App\Models\Entity\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Object\app\Tbl_d_app_assets_master_controller_p;

/**
 * Description of Tbl_d_app_assets_master_controller_p_en
 *
 * @author 64146
 */
class Tbl_d_app_assets_master_controller_p_en extends Tbl_d_app_assets_master_controller_p {

    //put your code here

    protected $Tbl_d_app_assets_master_controller_p;

    public function __construct() {
        parent::__construct();
        $this->Tbl_d_app_assets_master_controller_p = new Tbl_d_app_assets_master_controller_p();
    }

    public function __get_all(Request $request, $keyword = null) {
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
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_d_app_assets_master_controller_p',
            'select' => ['a.id', 'a.__name', '__description', 'a.is_active'],
            'conditions' => $conditions
        ];
        return $this->Tbl_d_app_assets_master_controller_p->__find($request, 'all', $paramCheckName,'mysql_app');
    }
}
