<!DOCTYPE html>
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <title>{{$title_for_layout ? $title_for_layout : config('app.title_for_layout')}}</title>
        @include('html.layouts.metronic.includes.main.include_meta')
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        @include('html.layouts.metronic.includes.main.include_css')
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-fixed page-sidebar-closed-hide-logo">
        <div id="img-loading" style="position: fixed; top:40%; left:45%; width:120px; z-index:9999"></div>
        <!-- BEGIN HEADER -->
        <div class="page-header -i navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner">
                <!-- BEGIN LOGO -->
                
                @include('html.layouts.metronic.includes.main.include_page_logo')
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                @include('html.layouts.metronic.includes.main.include_top_menu')
                <!-- END TOP NAVIGATION MENU -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <div class="clearfix"></div>
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            @include('html.layouts.metronic.includes.main.include_sidebar')
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="row">
                        @include('html.layouts.metronic.includes.main.include_breadcrumb')
                        @include('html.widgets.main.sidebar_info')
                        @include('html.components.content')
                    </div>
                    <!-- END PAGE CONTENT-->
                </div>
            </div>
            <!-- END CONTENT -->
            @include('html.components.modal')
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <!-- BEGIN COPYRIGHT -->
        @include('html.layouts.metronic.includes.main.include_footer')
        <!-- END COPYRIGHT -->
        @include('html.layouts.metronic.includes.main.include_js')
        <!-- END JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>