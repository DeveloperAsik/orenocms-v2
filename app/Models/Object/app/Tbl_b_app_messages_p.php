<?php

namespace App\Models\Object\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_b_app_messages_p
 *
 * @author 64146
 */
class Tbl_b_app_messages_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_b_app_messages_p";
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
                'name' => '__subject',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__text',
                'type' => 'text',
                'length' => 255
            ],
            [
                'name' => '__icon',
                'type' => 'text',
                'length' => 255
            ],
            [
                'name' => '__is_chat',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ], 
            [
                'name' => '__is_mail',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ], 
            [
                'name' => '__is_draft',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ],
            [
                'name' => '__is_junk',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ], 
            [
                'name' => '__is_trash',
                'type' => 'tinyint',
                'length' => 1,
                'default' => 0
            ], 
            [
                'name' => '__is_read_notif',
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
