<?php


namespace App\Models\Object\uac;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */
use App\Models\Object\ObjectTable;


/**
 * Description of Tbl_c_uac_location_e_areas_p
 *
 * @author 64146
 */
class Tbl_c_uac_location_e_areas_p extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    public static $table_name;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->table_name = "tbl_c_uac_location_e_areas_p";
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
                'name' => '__description',
                'type' => 'text',
                'length' => ''
            ],
            [
                'name' => '__country_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__province_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__city_id',
                'type' => 'int',
                'length' => 32
            ],
            [
                'name' => '__disctrict_id',
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
