<script>
    var code = "{{$code}}";
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('#u').multiSelect({
                    selectableOptgroup: true
                });
                $('#v').multiSelect({
                    selectableOptgroup: true
                });
                Dropzone.autoDiscover = false;
                var myDropzone = new Dropzone("#uploadPicture", {
                    url: _base_extraweb_uri + "/master/uac/users/insert?a=1&code=" + code,
                    // Add the CSRF token to headers
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                });
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('input[name="d"]').val(),
                        e: $('input[name="e"]').val(),
                        f: $('input[name="f"]').val(),
                        g: $('input[name="g"]').val(),
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0,
                        i: $('input[name="i"]').val(),
                        j: $('input[name="j"]').val(),
                        k: $('input[name="k"]').val(),
                        l: $('input[name="l"]').val(),
                        m: $('textarea[name="m"]').val(),
                        n: $('input[name="n"]').val(),
                        o: $('input[name="o"]').val(),
                        p: $('input[name="p"]').val(),
                        q: $('input[name="q"]').val(),
                        r: $('input[name="r"]').val(),
                        s: $('input[name="s"]').val(),
                        t: $('input[name="t"]').val(),
                        u: $('select[name="u"]').val(),
                        u: $('select[name="v"]').val()
                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/users/insert?a=2',
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
        CreateJS.init();
    });
</script>