<?php

namespace App\Models\Object\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_c_app_logs
 *
 * @author 64146
 */
class Tbl_c_app_logs extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_c_app_logs";
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
                'name' => '__fraud_scan',
                'type' => 'textarea',
                'length' => ''
            ],
            [
                'name' => '__ip_address',
                'type' => 'varchar',
                'length' => 16
            ],
            [
                'name' => '__browser',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__class',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__method',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__event',
                'type' => 'varchar',
                'length' => 255
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
