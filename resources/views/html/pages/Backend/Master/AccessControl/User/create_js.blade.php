<script>
    var code = "{{$code}}";
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('#i').multiSelect({
                    selectableOptgroup: true
                });
                $('#j').multiSelect({
                    selectableOptgroup: true
                });
                $('select#w').on('change', function () {
                    var id = $(this).val();
                    console.log(id);
                    if (id) {
                        var formdata = {
                            country_id: id
                        }
                        var options = {
                            url: _base_extraweb_uri + '/master/uac/users/get_list?a=2',
                            methodType: 'POST',
                            dataType: 'json',
                            file: false,
                            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            async: false,
                            timeout: 2000
                        };
                        var response = __fn_ajax_send(JSON.stringify(formdata), options);
                        if (response && response.responseText) {
                            $('select#x').html(response.responseText);
                        }
                    }
                });
                $('select#x').on('change', function () {
                    var id = $(this).val();
                    console.log(id);
                    if (id) {
                        var formdata = {
                            province_id: id
                        }
                        var options = {
                            url: _base_extraweb_uri + '/master/uac/users/get_list?a=3',
                            methodType: 'POST',
                            dataType: 'json',
                            file: false,
                            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            async: false,
                            timeout: 2000
                        };
                        var response = __fn_ajax_send(JSON.stringify(formdata), options);
                        if (response && response.responseText) {
                            $('select#y').html(response.responseText);
                        }
                    }
                });
                $('select#y').on('change', function () {
                    var id = $(this).val();
                    console.log(id);
                    if (id) {
                        var formdata = {
                            city_id: id
                        }
                        var options = {
                            url: _base_extraweb_uri + '/master/uac/users/get_list?a=4',
                            methodType: 'POST',
                            dataType: 'json',
                            file: false,
                            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            async: false,
                            timeout: 2000
                        };
                        var response = __fn_ajax_send(JSON.stringify(formdata), options);
                        if (response && response.responseText) {
                            $('select#z').html(response.responseText);
                        }
                    }
                });
                $('select#z').on('change', function () {
                    var id = $(this).val();
                    console.log(id);
                    if (id) {
                        var formdata = {
                            district_id: id
                        }
                        var options = {
                            url: _base_extraweb_uri + '/master/uac/users/get_list?a=5',
                            methodType: 'POST',
                            dataType: 'json',
                            file: false,
                            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            async: false,
                            timeout: 2000
                        };
                        var response = __fn_ajax_send(JSON.stringify(formdata), options);
                        if (response && response.responseText) {
                            $('select#aa').html(response.responseText);
                        }
                    }
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
                        code: $('input[name="code"]').val(),
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('input[name="d"]').val(),
                        e: $('input[name="e"]').val(),
                        f: $('input[name="f"]').val(),
                        g: $('textarea[name="g"]').val(),
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0,
                        i: $('#i').val(),
                        j: $('#j').val(),
                        k: $('input[name="k"]').val(),
                        l: $('input[name="l"]').val(),
                        m: $('textarea[name="m"]').val(),
                        n: $('textarea[name="n"]').val(),
                        o: $('input[name="o"]').val(),
                        p: $('input[name="p"]').val(),
                        q: $('input[name="q"]').val(),
                        r: $('input[name="r"]').val(),
                        s: $('textarea[name="s"]').val(),
                        t: $('input[name="t"]').val(),
                        u: $('input[name="u"]').val(),
                        v: $('input[name="v"]').val(),
                        w: $('select[name="w"]').val(),
                        x: $('select[name="x"]').val(),
                        y: $('select[name="y"]').val(),
                        z: $('select[name="z"]').val(),
                        aa: $('select[name="aa"]').val()
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