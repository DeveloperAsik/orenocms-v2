<script>
    var EditJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('EditJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('input[name="d"]').val(),
                        e: $('textarea[name="e"]').val(),
                        f: ($('input[type="checkbox"][name="f"]:checked').val()) ? 1 : 0,
                        g: ($('input[type="checkbox"][name="g"]:checked').val()) ? 1 : 0,
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0,
                        i: $('input[name="__segment1"]').val(),
                        j: $('input[name="__segment2"]').val(),
                        k: $('input[name="__segment3"]').val(),
                        l: $('input[name="__segment4"]').val(),
                        m: $('input[name="__segment5"]').val(),
                        n: $('input[name="__segment6"]').val(),
                        o: $('input[name="__segment7"]').val(),
                        p: $('input[name="__segment8"]').val()

                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/user/update',
                        methodType: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: 2000
                    };
                    var response = __fn_ajax_send(JSON.stringify(formdata), options);
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
        EditJS.init();
    });
</script>