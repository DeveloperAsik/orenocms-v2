<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

namespace App\Libraries\Oreno;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Libraries\Oreno\Sanitize;

/**
 * Description of Global
 *
 * @author User
 */
class Formater {

    public function __fn_generate_form($params = []) {
        $strHtml = '';
        if (isset($params['form']) && !empty($params['form'])) {
            foreach ($params['form'] AS $keyword => $value) {
                $cols = $value['col'];
                $style = $value['style'];
                $strHtml .= '<div class="' . $cols . '" style="' . $style . '"><div class="form-body">';
                foreach ($value['data'] AS $key => $val) {
                    $strHtml .= $this->__generate_html_input($val);
                }
                $strHtml .= '</div></div>';
            }
        }
        return $strHtml;
    }

    public function __generate_html_input($params = []) {
        
    }
}
