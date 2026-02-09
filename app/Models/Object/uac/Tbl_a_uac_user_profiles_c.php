<?php

namespace App\Models\Object\uac;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_a_uac_user_profiles_c
 *
 * @author 64146
 */
class Tbl_a_uac_user_profiles_c extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_a_uac_user_profiles_c";
        $this->field = [
            [
                'name' => 'id',
                'type' => 'int',
                'length' => 32,
                'primary' => true,
                'auto_increment' => true
            ],
            [
                'name' => '__email',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__pass_attempt',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__device_id',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__ip_address',
                'type' => 'varchar',
                'length' => 32
            ],
            [
                'name' => '__browser',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => 'is_active',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => 'created_by',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => 'created_date',
                'type' => 'datetime',
                'length' => ''
            ],
            [
                'name' => 'updated_by',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => 'updated_date',
                'type' => 'datetime',
                'length' => ''
            ]
        ];
    }
}
