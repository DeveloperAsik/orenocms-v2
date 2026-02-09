<script>
    var ViewJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('ViewJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
            }
        }
    }();
    jQuery(document).ready(function () {
        ViewJS.init();
    });
</script>