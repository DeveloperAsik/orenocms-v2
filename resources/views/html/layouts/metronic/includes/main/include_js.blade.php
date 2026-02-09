<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/respond.min.js"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->

<script>
var _base_url='{{config("app.url")}}';var _env='{{config("app.env")}}';var _uuid='{{$_uuid}}';var _session_is_autologged_out='{{$_session_is_autologged_out}}';var _session_is_logged_in='{{$_session_is_logged_in}}';var _path_json='{{config("app.base_json_uri")}}';var _base_extraweb_uri='{{config("app.base_extraweb_uri")}}';var _base_api_url='{{config("app.base_api_url")}}';var _base_url_assets='{{config("app.base_url_assets")}}';var _base_url_assets_components='{{config("app.base_url_assets_components")}}';var _base_url_assets_libraries='{{config("app.base_url_assets_libraries")}}';var _base_url_assets_templates='{{config("app.base_url_assets_templates")}}';var _base_url_assets_media='{{config("app.base_url_assets_media")}}';@if (isset($load_ajax_var) && !empty($load_ajax_var)) @foreach ($load_ajax_var AS $key => $values)var {{$values['key']}}='{{$values["val"]}}';@endforeach @endif
</script>

<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/select2/select2.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/pages/scripts/components-dropdowns.js"></script>
<!-- SweetAlert2 -->
<script src="{{config('app.base_url_assets_templates')}}/adminlte/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="{{config('app.base_url_assets_templates')}}/adminlte/plugins/toastr/toastr.min.js"></script>
<script src="{{config('app.base_url_assets_libraries')}}/slick/slick.js"></script> 
<script src="{{config('app.base_url_assets_components')}}/js/base64.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_components')}}/js/dateFormat.min.js" type="text/javascript"></script>
<script src="{{config('app.base_url_assets_libraries')}}/bodymovin/5.6.5/lottie.js"></script>

<!-- load system variable to js function start here -->
@if (isset($js_var) && !empty($js_var))
    <script>
    @foreach ($js_var AS $key => $values)
        @foreach ($values AS $k => $v)
            @if ($k == 'app')
                @foreach ($v AS $j => $n)
                       'var ' . $j = '{{$n}}'; 
                @endforeach
            @endif
            @if ($k == 'config')
                @foreach ($v AS $j => $n)
                        'var '. $j = '{{$n}}'; 
                @endforeach
            @endif
            @if ($k == 'path')
                @foreach ($v AS $j => $n)
                        @php'var '. $j  = '{{$n}}'; 
                @endforeach
            @endif
            @if ($k == 'options')
                @foreach ($v AS $j => $n)
                       @php'var '. $j  = '{{$n}}'; 
                @endforeach
            @endif
            @if ($k == 'appUri')
                @foreach ($v AS $j => $n)
                       @php'var '. $j  = '{{$n}}'; 
                @endforeach
            @endif

        @endforeach
    @endforeach
    </script>
@endif
<!-- load system variable to js function start here -->

<!-- load js lib / class / library from controller start here -->
@if (isset($load_js) && !empty($load_js))
    @foreach ($load_js AS $key => $values)
        <script src="{{$values}}" type="text/javascript"></script>
    @endforeach;
@endif
<!-- load js lib / class / library from controller end here -->


<!-- load global js lib for every controller start here -->
@if (isset($_path_app_global_js) && !empty($_path_app_global_js))
    @include("{$_path_app_global_js}")
@endif
<!-- load global js lib for every controller end here -->
<!-- load specified js lib for a view start here -->
@if(isset($_default_views) && !empty($_default_views))
    @foreach($_default_views AS $keyword => $value)
        @if($keyword == 'js')
            @include($value)   
        @endif
    @endforeach
@endif