<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="{{config('app.base_url_assets_components')}}/css/font-family.css" rel="stylesheet">
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet"  type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/select2/select2.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/jquery-multi-select/css/multi-select.css" rel="stylesheet" type="text/css"/>

<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/plugins/bootstrap-toastr/toastr.min.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/adminlte/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css" rel="stylesheet">
<link href="{{config('app.base_url_assets_libraries')}}/slick/slick.css" rel="stylesheet">
<link href="{{config('app.base_url_assets_libraries')}}/slick/slick-theme.css" rel="stylesheet">
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="{{config('app.base_url_assets_media')}}/images/logo2.png"/>
<!-- load css lib / class / library from controller start here -->
@if(isset($load_css) && !empty($load_css))
@foreach ($load_css AS $key => $values)
<link href="{{$values}}" rel="stylesheet" type="text/css"/>
@endforeach
@endif
<!-- load css lib / class / library from controller end here -->