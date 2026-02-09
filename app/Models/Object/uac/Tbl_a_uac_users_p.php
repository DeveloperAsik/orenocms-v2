<?php

namespace App\Models\Object\uac;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_a_uac_users_p
 *
 * @author 64146
 */
class Tbl_a_uac_users_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_a_uac_users_p";
        $this->field = [
            [
                'name' => 'id',
                'type' => 'int',
                'length' => 32,
                'primary' => true,
                'auto_increment' => true
            ],
            [
                'name' => 'code',
                'type' => 'varchar',
                'length' => 32
            ],
            [
                'name' => '__user_name',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__user_ldap',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__first_name',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__last_name',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__phone_number',
                'type' => 'varchar',
                'length' => 16
            ],
            [
                'name' => '__email',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__password',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__salt',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__description',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__score',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_user_profile_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_user_registered_type_id',
                'type' => 'int',
                'length' => 32
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
