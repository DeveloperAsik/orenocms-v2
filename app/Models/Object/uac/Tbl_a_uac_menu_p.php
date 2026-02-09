<?php


namespace App\Models\Object\uac;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_a_uac_menu_p
 *
 * @author 64146
 */
class Tbl_a_uac_menu_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_a_uac_menu_p";
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
                'name' => '__path',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__icon',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__level',
                'type' => 'int',
                'length' => 4,
                'default' => 0
            ],
            [
                'name' => '__rank',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__badge',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__badge_value',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__badge_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__is_badge',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_menu_parent_id',
                'type' => 'int',
                'length' => 32,
                'default' => 0
            ],
            [
                'name' => '__is_dashboard',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_head',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_basic',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_open',
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
