<?php

namespace App\Libraries\Oreno;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Date;
use App\Models\Entity\app\Tbl_a_app_contents_p_en;
use App\Models\Entity\app\Tbl_b_app_messages_p_en;
use App\Models\Entity\uac\Tbl_a_uac_users_p_en;
use View;

/**
 * Description of Loader
 *
 * @author 64146
 */
class Loader {

    //put your code here
    protected $General;
    protected $Date;
    protected $Tbl_a_app_contents_p_en;
    protected $Tbl_b_app_messages_p_en;
    protected $Tbl_a_uac_users_p_en;

    public function init($request) {
        $this->General = new General();
        $this->Date = new Date();
        if (!$request->session()->get('_uuid') || $request->session()->get('_uuid') == null) {
            $request->session()->put('_uuid', uniqid());
        }
        View::share('_uuid', $request->session()->get('_uuid'));

        //init date now
        View::share('_date_now', $this->Date->indonesian_format('l, j F Y H:i'));

        //env
        View::share('_env', config('app.env'));

        //init days name
        $days_name = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
        $this->days_name = $days_name;
        View::share('_days_name', $days_name);

        //init month name
        $month_name = [1 => 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', ' Desember'];
        $this->month_name = $month_name;
        View::share('_months_name', $month_name);

        //init global js
        $path_app_global_js = 'html.helpers.global_js';
        View::share('_path_app_global_js', $path_app_global_js);

        //init class & method name
        $class_name = str_replace('Controller', '', $this->General->getRoutes('controller'));
        $method_name = $this->General->getRoutes('action');

        $routeArray = app('request')->route()->getAction();
        $namespace = $routeArray['namespace'];
        $path_without_namespace = str_replace($namespace, '', $routeArray['uses']);
        $path_without_namespace = $this->__replace_namespace($path_without_namespace);
        //$path = str_replace('\\', '.', $path_without_namespace);
        $path_ = explode('\\', $path_without_namespace);
        $controller_path = '';
        $modul = $path_[0];
        $total_namespace = count($path_) - 1;
        for ($i = 0; $i < $total_namespace; $i++) {
            if (isset($controller_path))
                $controller_path .= '.';

            $controller_path .= $path_[$i];
        }
        //$controller_path = $path_[3]; // str_replace($controller, '', $path);
        $controller = $class_name . 'Controller@' . $method_name;
        $views = array(
            'class' => $class_name,
            'method' => $method_name,
            'html' => strtolower('html.pages' . $controller_path . '.' . $class_name . '.' . $method_name . '_html'),
            'js' => strtolower('html.pages' . $controller_path . '.' . $class_name . '.' . $method_name . '_js')
        );
        View::share('_default_views', $views);
        $arr_nav_menu = [
            [
                'id' => 1,
                'title' => 'Profile',
                'key' => 'profile',
                'path' => config('app.base_extraweb_uri') . '/profile'
            ],
        ];
        $default_layout = 'sidebar-collapse layout-fixed'; //'layout-navbar-fixed'; //'layout-fixed';
        View::share('default_layout', $default_layout);
        View::share('_default_module', $modul);
        View::share('_menu_navigation', json_decode(json_encode($arr_nav_menu)));
        $_session_is_autologged_out = (int) config('app.auto_logout');
        View::share('_session_is_autologged_out', $_session_is_autologged_out);

        $data = $request->session()->all();
        $_session_is_logged_in = 0;
        if (isset($data['_session_is_logged_in']) && !empty($data['_session_is_logged_in']) && $data['_session_is_logged_in'] == true) {
            $_session_is_logged_in = $data['_session_is_logged_in'];
            $this->__is_logged_in = (int) $_session_is_logged_in;
        }
        View::share('_session_is_logged_in', $_session_is_logged_in);
        $default__breadcrumbs = $this->__default_breadcrumbs($request);
        View::share('_breadcrumbs', $default__breadcrumbs);

        $top_menu = $this->__default_top_menu($request);
        View::share('_notifications', $top_menu['notif']);
        View::share('_messages', $top_menu['messages']);
    }

    public function __replace_namespace($namespace) {
        $path_without_namespace = str_replace("App", '', $namespace);
        $path_without_namespace = str_replace("\Http", '', $path_without_namespace);
        $path_without_namespace = str_replace("\Controllers\\", '', $path_without_namespace);
        return $path_without_namespace;
    }

    public function __default_top_menu($request) {
        $notif = $this->get_notif($request);
        $msg = $this->get_messages($request);
        return [
            'notif' => $notif,
            'messages' => $msg
        ];
    }

    public function get_notif($request) {
        //$this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_a_app_contents_p_en = new Tbl_a_app_contents_p_en();
        $params = [
            'table_name' => 'tbl_a_app_contents_p',
            'select' => ['a.*', 'b.id AS content_category_id', 'b.__name AS content_category_name'],
            'join' => [
                'leftJoin' => [
                    ['tbl_a_app_contents_categories_c AS b', 'b.id', '=', 'a.__uac_content_category_id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.__uac_content_category_id', '=', 3]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $notif = $this->Tbl_a_app_contents_p_en->__find($request, 'all', $params, 'mysql_app');
        $total_notif = 0;
        $strHtmlNotif = '';
        if (isset($notif['data']) && !empty($notif['data'])) {
            $total_notif = $notif['meta']['total'];
            foreach ($notif['data'] AS $key => $value) {
                //$user = $this->Tbl_a_uac_users_p_en->__get_user_by_id($request, $value->created_by);
                $strHtmlNotif .= '<li>
                            <a href="javascript:;">
                                <span class="time">' . substr($value->__content_title, 0, 100) . '</span>
                                <span class="details">
                                    <span class="label label-sm label-icon label-success">
                                        ' . $value->__content_icon . '
                                    </span>
                                    ' . substr($value->__content_raw, 0, 100) . '</span>
                            </a>
                        </li>';
            }
        }
        return [
            'total' => $total_notif,
            'strHtml' => $strHtmlNotif
        ];
    }

    public function get_messages($request) {
        $this->Tbl_a_uac_users_p_en = new Tbl_a_uac_users_p_en();
        $this->Tbl_b_app_messages_p_en = new Tbl_b_app_messages_p_en();
        $params = [
            'table_name' => 'tbl_b_app_messages_p',
            'select' => ['a.*'],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_app_messages_send_r AS b', 'b.__message_id', '=', 'a.id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.is_active', '=', 1],
                    ['a.__is_mail', '=', 1],
                    ['a.__is_read_notif', '=', 0]
                ]
            ],
            'limit' => 100,
            'offset' => 0
        ];
        $messages = $this->Tbl_b_app_messages_p_en->__find($request, 'all', $params, 'mysql_app');
        $total_messages = 0;
        $strHtmlMessages = '';
        if (isset($messages['data']) && !empty($messages['data'])) {
            $total_messages = $messages['meta']['total'];
            foreach ($messages['data'] AS $key => $value) {
                $strHtmlMessages .= '<li>
                            <a href="inbox.html?a=view">
                                <span class="photo">
                                     ' . $value->__icon . '
                                </span>
                                <span class="subject">
                                    <span class="from">
                                       ' . $value->__subject . ' </span>
                                    <span class="time">' . $this->Date->time_ago(strtotime($value->created_date)) . ' </span>
                                </span>
                                <span class="message">
                                    ' . substr($value->__text, 0, 100) . ' </span>
                            </a>
                        </li>';
            }
        }
        return [
            'total' => $total_messages,
            'strHtml' => $strHtmlMessages
        ];
    }

    public function __default_breadcrumbs($request) {
        $segment1 = request()->segment(1);
        if ($segment1 == null) {
            $segment1 = 'extraweb';
        }
        $segment2 = request()->segment(2);
        $segment3 = request()->segment(3);
        $segment4 = request()->segment(4);
        $segment5 = request()->segment(5);
        $segment6 = request()->segment(6);
        $segment7 = request()->segment(7);

        $arr_breadcrumbs = $_breadcrumbs1 = $_breadcrumbs2 = $_breadcrumbs3 = $_breadcrumbs4 = $_breadcrumbs5 = $_breadcrumbs6 = $_breadcrumbs7 = [];
        if ($segment1) {
            $arrow = '';
            $path = ucfirst($segment1);
            if (isset($segment2) && !empty($segment2)) {
                $arrow = true;
                $path = config('app.base_extraweb_uri');
            }
            $_breadcrumbs1 = [
                [
                    'id' => 1,
                    'title' => ucfirst($segment1),
                    'icon' => '<i class="fa fa-home"></i>',
                    'arrow' => '<i class="fa fa-angle-right"></i>',
                    'path' => '<a href="' . $path . '">' . ucfirst($segment1) . '</a>'
                ]
            ];
        }
        if ($segment2) {
            $arrow = '';
            $path = '<a href="' . config('app.base_extraweb_uri') . '/' . $segment2 . '">' . ucfirst($segment2) . '</a>';
            if (isset($segment3) || $segment3 == '' || $segment3 == null) {
                $arrow = '<i class="fa fa-angle-right"></i>';
                $path = ucfirst($segment2);
            }
            $_breadcrumbs2 = [
                [
                    'id' => 2,
                    'title' => ucfirst($segment2),
                    'icon' => '',
                    'arrow' => $arrow,
                    'path' => $path
                ]
            ];
        }
        if ($segment3) {
            $arrow = '';
            $path = '<a href="' . config('app.base_extraweb_uri') . '/' . $segment2 . '/' . $segment3 . '">' . ucfirst($segment3) . '</a>';
            if (isset($segment4) && !empty($segment4)) {
                $arrow = '<i class="fa fa-angle-right"></i>';
                $path = ucfirst($segment3);
            }
            $_breadcrumbs3 = [
                [
                    'id' => 3,
                    'title' => ucfirst($segment3),
                    'icon' => '',
                    'arrow' => $arrow,
                    'path' => $path
                ]
            ];
        }
        if ($segment4) {
            $arrow = '';
            $path = '<a href="' . config('app.base_extraweb_uri') . '/' . $segment2 . '/' . $segment3 . '/' . $segment4 . '">' . ucfirst($segment4) . '</a>';
            if (isset($segment5) && !empty($segment5)) {
                $arrow = '<i class="fa fa-angle-right"></i>';
                $path = ucfirst($segment4);
            }
            $_breadcrumbs4 = [
                [
                    'id' => 4,
                    'title' => ucfirst($segment4),
                    'icon' => '',
                    'arrow' => $arrow,
                    'path' => $path
                ]
            ];
        }
        if ($segment5) {
            $arrow = '';
            $path = '<a href="' . config('app.base_extraweb_uri') . '/' . $segment2 . '/' . $segment3 . '/' . $segment4 . '/' . $segment5 . '">' . ucfirst($segment5) . '</a>';
            if (isset($segment6) && !empty($segment6)) {
                $arrow = '<i class="fa fa-angle-right"></i>';
                $path = ucfirst($segment5);
            }
            $_breadcrumbs5 = [
                [
                    'id' => 5,
                    'title' => ucfirst($segment5),
                    'icon' => '',
                    'arrow' => $arrow,
                    'path' => $path
                ]
            ];
        }

        if ($segment6) {
            $arrow = '';
            $path = '<a href="' . config('app.base_extraweb_uri') . '/' . $segment2 . '/' . $segment3 . '/' . $segment4 . '/' . $segment5 . '/' . $segment6 . '">' . ucfirst($segment6) . '</a>';
            if (isset($segment7) && !empty($segment7)) {
                $arrow = '<i class="fa fa-angle-right"></i>';
                $path = ucfirst($segment6);
            }
            $_breadcrumbs6 = [
                [
                    'id' => 6,
                    'title' => ucfirst($segment6),
                    'icon' => '',
                    'arrow' => $arrow,
                    'path' => $path
                ]
            ];
        }
        return array_merge($_breadcrumbs1, $_breadcrumbs2, $_breadcrumbs3, $_breadcrumbs4, $_breadcrumbs5, $_breadcrumbs6);
    }
}
