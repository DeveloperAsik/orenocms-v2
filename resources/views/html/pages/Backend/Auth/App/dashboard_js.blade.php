<script>
    var DashboardJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('DashboardJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                Metronic.init(); // init metronic core components
                Layout.init(); // init current layout
                QuickSidebar.init(); // init quick sidebar
                Demo.init(); // init demo features
            }
        }
    }();
    jQuery(document).ready(function () {
        DashboardJS.init();
    });
</script>