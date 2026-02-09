<?php

namespace App\Models\Entity;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Models\Object\ObjectTable;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Date;

/**
 * Description of EntityTable
 *
 * @author 64146
 */
class EntityTable extends ObjectTable {

    //put your code here

    protected $ObjectTable;
    protected $General;
    protected $Converter;
    protected $Date;

    public function __construct() {
        $this->ObjectTable = new ObjectTable;
        $this->General = new General();
        $this->Converter = new Converter();
        $this->Date = new Date();
    }

    //put your code here
    public function do_find($request, $type = '', $params = [], $connection = 'mysql', $test = null) {
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        if (!isset($type) || empty($type) || $type == '' || $type == null) {
            $type = 'all';
        }
        $data = [];
        if (isset($request) && !empty($request)) {
            $data = $this->AppTable->__find($request, $type, $params, $connection, $test);
        }
        return $data;
    }

    public function do_insert($request, $params = [], $connection = 'mysql', $debug = 0) {
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        $data = [];
        if (isset($request) && !empty($request)) {
            //if($debug==1){
            //    dd($params);
            //}
            $data = $this->AppTable->__insert($request, $params, $connection, $debug);
        }
        return $data;
    }

    public function do_insert_get_id($request, $params = [], $connection = 'mysql') {
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        $data = [];
        if (isset($request) && !empty($request)) {
            $data = $this->AppTable->__insert_get_id($request, $params, $connection);
        }
        return $data;
    }

    public function do_update($request, $data = [], $params = [], $connection = 'mysql') {
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        if (isset($request) && !empty($request)) {
            $data = $this->AppTable->__update($request, $data, $params, $connection);
        }
        return $data;
    }

    public function do_delete($request, $params = [], $connection = 'mysql') {
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        if (isset($request) && !empty($request)) {
            $data = $this->AppTable->__delete($request, $params, $connection);
        }
        return $data;
    }

    public function do_remove($request, $params = [], $connection = 'mysql') {
        $this->AppTable = new AppTable;
        if (!isset($params['table_name']) || empty($params['table_name'])) {
            $params['table_name'] = $this->table_name;
        }
        if (isset($request) && !empty($request)) {
            $data = $this->AppTable->__remove($request, $params, $connection);
        }
        return $data;
    }
}
