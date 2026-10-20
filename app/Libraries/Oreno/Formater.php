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
            //$params = [
            //    'form' => [
            //        [
            //          'title'=>'', 'type' => '', 'name' => '', 'default' => '',
            //           'el' => [
            //                'id' => '', 'class' => '',
            //                'custom' => [
            //                  ['title' => '', 'value'=>''], ['title' => '', 'value'=>'']
            //                ]
            //            ]
            //        ],
            //        [
            //          'title'=>'', 'type' => '', 'name' => '', 'default' => '',
            //           'el' => [
            //                'id' => '', 'class' => '',
            //                'custom' => [
            //                  ['title' => '', 'value'=>''], ['title' => '', 'value'=>'']
            //                ]
            //            ]
            //        ],
            //    ]
            //];
            foreach ($params['form'] AS $keyword => $value) {
                $strHtml .= $this->__generate_html_input($value);
                $strHtml .= $this->__generate_html_checkbox($value);
                $strHtml .= $this->__generate_html_radio($value);
                $strHtml .= $this->__generate_html_select($value);
            }
        }
        return $strHtml;
    }

    public function __generate_html_input($params = '') {
        $strHtml = '';
        if (isset($params['type']) && !empty($params['type']) && $params['type'] == 'input') {
            $strHtml .= '<div class="form-group form-md-line-input">';
            $value = '';
            if (isset($params['default']) && !empty($params['default'])) {
                $value = 'value="' . $params['default'] . '"';
            }
            $el_custom = '';
            if (isset($params['el']['custom']) && !empty($params['el']['custom'])) {
                foreach ($params['el']['custom'] AS $k => $v) {
                    $el_custom .= 'data-' . $v['title'] . '="' . $v['value'] . '" ';
                }
            }
            $el_style = '';
            if (isset($params['el']['style']) && !empty($params['el']['style'])) {
                $el_style = 'style="' . $params['el']['style'] . '"';
            }
            $strHtml .= '<input type="' . $params['type'] . '" name="' . $params['name'] . '" ' . $value . ' id="' . $params['el']['id'] . '" class="' . $params['el']['class'] . '" ' . $el_custom . $el_style . '/><label for="' . $params['el']['id'] . '">' . $params['label'] . '</label>';
            if (isset($params['el']['info']) && !empty($params['el']['info'])) {
                $strHtml .= '<span class="' . $params['el']['info']['class'] . '"' . $params['el']['info']['style'] . '>' . $params['el']['info']['label'] . '</span>';
            }
            $strHtml .= '</div>';
        }
        return $strHtml;
    }

    public function __generate_html_checkbox($params = []) {
        $strHtml = '';
        if (isset($params['type']) && !empty($params['type']) && $params['type'] == 'checkbox') {
            $value = '';
            if (isset($params['default']) && !empty($params['default'])) {
                $value = 'value="' . $params['default'] . '"';
            }
            $el_custom = '';
            if (isset($params['el']['custom']) && !empty($params['el']['custom'])) {
                foreach ($params['el']['custom'] AS $k => $v) {
                    $el_custom .= 'data-' . $v['title'] . '="' . $v['value'] . '" ';
                }
            }
            $el_style = '';
            if (isset($params['el']['style']) && !empty($params['el']['style'])) {
                $el_style = 'style="' . $params['el']['style'] . '"';
            }
            $strHtml .= '<div class="form-group form-md-checkboxes"><div class="md-checkbox-inline"><div class="md-checkbox">';
            $strHtml .= '<input type="' . $params['type'] . '" name="' . $params['name'] . '" ' . $value . 'id="' . $params['el']['id'] . '" class="' . $params['el']['class'] . '"><label for="' . $params['el']['id'] . '"><span></span><span class="check"></span><span class="box"></span>' . $params['label'] . ' </label>';
            $strHtml .= '</div></div></div>';
        }
        return $strHtml;
    }

    public function __generate_html_radio($params = []) {
        $strHtml = '';
        if (isset($params['type']) && !empty($params['type']) && $params['type'] == 'radio') {
            $styleType = 'inline';
            if ($params['styleType'] == 'list') {
                $styleType = 'list';
            }
            $strHtml .= '<div class="form-group form-md-radios"><label>' . $params['label'] . '</label><div class="md-radio-' . $styleType . '">';
            if (isset($params['list']) && !empty($params['list'])) {
                foreach ($params['list'] AS $k => $v) {
                    $strHtml .= '<div class="md-radio"><input type="' . $params['type'] . '" id="' . $v['id'] . '" name="' . $v['name'] . '" class="' . $v['class'] . '"><label for="' . $v['id'] . '"><span class="inc"></span><span class="check"></span><span class="box"></span> ' . $v['label'] . ' </label></div>';
                }
            }
            $strHtml .= '</div></div>';
        }
        return $strHtml;
    }

    public function __generate_html_select($params = []) {
        $strHtml = '';
        if (isset($params['type']) && !empty($params['type']) && $params['type'] == 'select') {
            $styleType = 'inline';
            if (isset($params['styleType']) && !empty($params['styleType']) && $params['styleType'] == 'list') {
                $styleType = 'list';
            }
            $el_style = '';
            if (isset($params['style']) && !empty($params['style'])) {
                $el_style = 'style="' . $params['style'] . '"';
            }
            $strHtml .= '<div class="form-group form-md-line-input has-info">';
            if (isset($params['list']) && !empty($params['list'])) {
                $strHtml .= '<select class="' . $params['class'] . '" id="' . $params['id'] . '" name="' . $params['name'] . '"' . $el_style . '>';
                foreach ($params['list'] AS $k => $v) {
                    $strHtml .= '<option value="' . $v['value'] . '">' . $v['label'] . '</option>';
                }
                $strHtml .= '</select><label for="' . $params['name'] . '">' . $params['label'] . '</label>';
            }
            $strHtml .= '</div>';
        }
        return $strHtml;
    }
}