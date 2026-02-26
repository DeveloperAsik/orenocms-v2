<script>
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('input[name="b"]').on('change', function () {
                    var val = $(this).val();
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/get_list?a=1',
                        type: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: ''
                    };
                    var response = __fn_ajax_send(JSON.stringify({'value': val}), options);
                    if (response && response.responseJSON && response.responseJSON.data) {
                        for (var i = 1; i <= response.responseJSON.data.length; i++) {
                            if (i > response.responseJSON.data.length) {
                                $('input[name="__segment' + i + '"]').css({'border':'1px solid red'});
                            } else {
                                var j = i - 1;
                                $('input[name="__segment' + i + '"]').val(response.responseJSON.data[j])
                            }
                        }
                    }
                    console.log(response);
                });
                $('#d').multiSelect({
                    selectableOptgroup: true
                });
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('select[name="d[]"]').val(),
                        e: $('input[name="e"]').val(),
                        f: ($('input[type="checkbox"][name="f"]:checked').val()) ? 1 : 0,
                        g: ($('input[type="checkbox"][name="g"]:checked').val()) ? 1 : 0,
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0
                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/insert/',
                        type: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: ''
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