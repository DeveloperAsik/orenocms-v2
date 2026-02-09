<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Models\Object\uac\Tbl_a_uac_modules_p;

/**
 * Description of Tbl_a_uac_modules_p_en
 *
 * @author 64146
 */
class Tbl_a_uac_modules_p_en extends Tbl_a_uac_modules_p {

    //put your code here
    protected $Tbl_a_uac_modules_p;

    public function __construct() {
        parent::__construct();
        $this->Tbl_a_uac_modules_p = new Tbl_a_uac_modules_p();
    }

    public function __get_module(Request $request, $keyword = '') {
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
                    ['a.__alias', 'like', '%' . $keyword],
                    ['a.__name', 'like', '%' . $keyword],
                    ['a.__default_path', 'like', '%' . $keyword]
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_modules_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__default_path', 'a.__rank', 'a.is_active'],
            'conditions' => $conditions
        ];
        return $this->Tbl_a_uac_modules_p->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_module(Request $request, $keyword) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_modules_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__default_path', 'a.__rank', 'a.is_active'],
            'conditions' => [
                'orWhere' => [
                    ['a.__alias', 'like', '%' . $keyword],
                    ['a.__name', 'like', '%' . $keyword],
                    ['a.__default_path', 'like', '%' . $keyword]
                ]
            ]
        ];
        return $this->Tbl_a_uac_modules_p->__find($request, 'all', $paramCheckName);
    }
}
