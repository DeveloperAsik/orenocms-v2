<?php


namespace App\Models\Entity\uac;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */
use App\Models\Object\uac\Tbl_a_uac_users_module_c;

/**
 * Description of Tbl_a_uac_users_module_c_en
 *
 * @author 64146
 */
class Tbl_a_uac_users_module_c_en extends Tbl_a_uac_users_module_c {

//put your code here protected $Tbl_a_uac_users_p;

    protected $Converter;

    public function __construct() {
        parent::__construct();
        $this->Tbl_a_uac_users_module_c = new Tbl_a_uac_users_module_c();
    }
    
    public function __find_selected_value($request, $id) {
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_users_module_c',
            'select' => ['a.__module_id'],
             'join' => [
                'leftJoin' => [
                    ['tbl_a_uac_modules_p AS b', 'b.id', '=', 'a.__module_id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.__user_id', '=', $id]
                ]
            ]
        ];
        $user_goups = $this->Tbl_a_uac_users_module_c->__find($request, 'all', $paramCheckName);
        $response = [];
        if(isset($user_goups['data']) && !empty($user_goups['data'])){
            foreach($user_goups['data'] AS $key => $value){
                $response[] = $value->__module_id;
            }
        }
        return $response;
    }
}
