<script>
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
            }
        }
    }();
    jQuery(document).ready(function () {
        CreateJS.init();
    });
</script>