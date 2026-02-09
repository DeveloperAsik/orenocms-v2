<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <title>{{$title_for_layout ? $title_for_layout : config('app.title_for_layout')}}</title>
        @include('html.layouts.metronic.includes.login.include_meta')
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        @include('html.layouts.metronic.includes.login.include_css')
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="login">
        @include('html.components.loading')
        @include('html.widgets.login.widgets_login_message_box')
        <!-- BEGIN LOGO -->
        <div class="logo">
            <a href="{{$_page_styles['login']['url']}}">
                <img src="{{$_page_styles['logo']['path']}}" alt="{{$_page_styles['logo']['alt']}}" style="width:84px"/>
            </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="menu-toggler sidebar-toggler"></div>
        <!-- END SIDEBAR TOGGLER BUTTON -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            @include('html.components.content')
            @include('html.components.modal')
            <!-- END REGISTRATION FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        @include('html.layouts.metronic.includes.login.include_footer')
        <!-- END COPYRIGHT -->
        @include('html.layouts.metronic.includes.login.include_js')
        <!-- END JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>