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
                        methodType: 'POST',
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
                                $('input[name="__segment' + i + '"]').css({'border': '1px solid red'});
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
                $('#r').multiSelect({
                    selectableOptgroup: true
                });
                $('#t').multiSelect({
                    selectableOptgroup: true
                });
                $('#q').on('click', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    if (checked) {
                        setTimeout(function () {
                            console.log('checked q : ' + checked);
                           $('#r').multiSelect('select_all');
                            __fn_loading_img('img-loading', 'stop');
                        }, 700);
                    }
                });
                $('#s').on('click', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    setTimeout(function () {
                        console.log('checked s : ' + checked);
                           $('#t').multiSelect('select_all');
                        __fn_loading_img('img-loading', 'stop');
                    }, 700);
                });
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('select[name="d[]"]').val(),
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
                        p: $('input[name="__segment8"]').val(),
                        q: ($('input[type="checkbox"][name="q"]:checked').val()) ? 1 : 0,
                        r: $('select[name="r[]"]').val(),
                        s: ($('input[type="checkbox"][name="s"]:checked').val()) ? 1 : 0,
                        t: $('select[name="t[]"]').val(),

                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/insert',
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