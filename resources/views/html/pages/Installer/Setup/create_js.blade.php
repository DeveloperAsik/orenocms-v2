<script>
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('textarea[name="d"]').val(),
                        e: ($('input[type="checkbox"][name="e"]:checked').val()) ? 1 : 0,

                    };
                    var options = {
                        'url': _base_extraweb_uri + '/installer/setup/insert',
                        'type': 'POST',
                        'dataType': 'json',
                        'header': {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        'async': false,
                        'timeout': 2000,
                        'data': JSON.stringify(formdata)
                    };
                    var response = __ajax_send(options);
                    var msg = 'error';
                    if (response.responseJSON.status.code == 200) {
                        msg = 'success';
                    }
                    setTimeout(function () {
                        __fn_loading_img('img-loading', 'stop');
                        __fn_alert_message(response.responseJSON.status.message, msg, {type: 'toastr', timeOut: 2000});
                    }, 1500);
                });
            }
        }
    }();
    jQuery(document).ready(function () {
        CreateJS.init();
    });
</script>