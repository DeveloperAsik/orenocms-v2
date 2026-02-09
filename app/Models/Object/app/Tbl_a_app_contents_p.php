<?php

namespace App\Models\Object\app;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;

/**
 * Description of Tbl_a_app_contents_p
 *
 * @author 64146
 */
class Tbl_a_app_contents_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_a_app_contents_p";
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
                'name' => '__alias',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__name',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__content_title',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__content_icon',
                'type' => 'varchar',
                'length' => 255
            ],
            [
                'name' => '__content_raw',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__content_sanitize',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__uac_content_type_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_content_photo_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_content_category_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__uac_content_meta_id',
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
