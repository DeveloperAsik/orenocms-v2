<?php

namespace App\Models\Object\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_a_uac_groups_p
 *
 * @author 64146
 */
class Tbl_a_uac_groups_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_a_uac_groups_p";
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
                'name' => '__name',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__icon',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__rank',
                'type' => 'tinyint',
                'length' => 4,
                'default' => 0
            ],
            [
                'name' => '__level',
                'type' => 'tinyint',
                'length' => 4,
                'default' => 0
            ],
            [
                'name' => '__description',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__uac_group_parent_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__is_key_group',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_menu',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_group_project',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
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
