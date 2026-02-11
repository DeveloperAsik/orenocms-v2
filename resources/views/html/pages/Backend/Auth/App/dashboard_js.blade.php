<script>
    var DashboardJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('DashboardJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
            }
        }
    }();
    jQuery(document).ready(function () {
        DashboardJS.init();
    });
</script>