<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of MessagingDefaultController
 *
 * @author 64146
 */
class MessagingDefaultController {

    //put your code here


    public function compose(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function inbox(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function sent(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function draft(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function junk(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function detail(Request $request, $id = null) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function chat(Request $request) {
        $title_for_layout = config('app.default_variables.title_for_layout');
        $_config = [
            'title_for_header' => '<b>Compose</b> master data management page',
            'pages' => [
                'title' => 'View Page Master Data Messages',
                'icon' => '<i class="fa fa-list"></i>',
                'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
            ],
            'header' => [
                [
                    'title' => 'Create',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/create'
                ],
                [
                    'title' => 'Tree View',
                    'icon' => '<i class="fa fa-plus-square"></i>',
                    'link' => config('app.base_extraweb_uri') . '/master/uac/groups/tree-view'
                ]
            ],
            'tables' => [
                'el-id' => 'dt_tbl_groups',
                'btn-tools' => [
                    '<li><a href="javascript:;"> Print </a></li>',
                    '<li><a href="javascript:;">Save as PDF </a></li>',
                    '<li><a href="javascript:;">Export to Excel </a></li>'
                ],
                'dt_tbl_th' => [
                    '<th> ID </th>',
                    '<th> Name </th>',
                    '<th> Icon </th>',
                    '<th> Rank </th>',
                    '<th> Level </th>',
                    '<th> Is Key Compose </th>',
                    '<th> Is Compose </th>',
                    '<th> Is Compose Project  </th>',
                    '<th> Status </th>',
                    '<th> Action </th>'
                ]
            ]
        ];
        $this->load_css([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.css"
        ]);
        $this->load_js([
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/select2/select2.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js",
            config('app.base_url_assets_templates') . "/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
        ]);
        return view('html.layouts.metronic.main', compact('title_for_layout', '_config'));
    }

    public function get_list(Request $request) {
        
    }
}
