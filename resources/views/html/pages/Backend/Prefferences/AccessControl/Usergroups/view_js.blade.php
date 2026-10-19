<script>
    var __fn_get_users = function (el) {
        var formdata = {
            a: 1
        };
        var options = {
            'url': _base_extraweb_uri + '/prefferences/uac/user-groups/get_list',
            'type': 'POST', // Compatibility for older jQuery
            'contentType': 'application/json',
            'header': {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            'async': false,
            'timeout': '',
            'data': JSON.stringify(formdata)
        };
        var response = __ajax_send(options);
        if (response && response.responseText) {
            $('select#' + el).html(response.responseText);
        }
        return response;
    };
    var __fn_get_groups = function (el) {
        var formdata = {
            a: 2
        };
        var options = {
            'url': _base_extraweb_uri + '/prefferences/uac/user-groups/get_list',
            'type': 'POST', // Compatibility for older jQuery
            'contentType': 'application/json',
            'header': {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            'async': false,
            'timeout': '',
            'data': JSON.stringify(formdata)
        };
        var response = __ajax_send(options);
        if (response && response.responseText) {
            $('select#' + el).html(response.responseText);
        }
        return response;
    };

    var __fn_send_new_assign = function (formdata) {
        var formData = {t: types, k: keyword};
        var paramsData = {
            'url': _base_extraweb_uri + '/prefferences/uac/user_groups/update/' + formdata.b,
            'type': 'POST',
            'headers': {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            'contentType': 'application/json',
            'dataType': 'json',
            'data':JSON.stringify(formData)
        };
        var response = __ajax_send(paramsData);
        if (response.status.code == 200) {
            strResponse = response.data;
        }
        return strResponse;
        
    }

    var el = "{{$_config['modals']['el-id']}}";
    var ViewJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('ViewJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                var table_id = "{{$_config['tables']['el-id']}}";
                var table = $('#' + table_id).DataTable({
                    "sPaginationType": "bootstrap",
                    "paging": true,
                    "pagingType": "full_numbers",
                    "pageLength": 10,
                    "ordering": false,
                    "serverSide": true,
                    "cache": false,
                    "processing": true,
                    "lengthMenu": [[10, 25, 50, 100, 150, 200, 500, -1], [10, 25, 50, 100, 150, 200, 500, "1000"]],
                    "lengthChange": true,
                    "language": {
                        processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span> '
                    },
                    "ajax": {
                        url: _base_extraweb_uri + '/prefferences/uac/user-groups/get_list',
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        type: 'POST'
                    },
                    "columns": [
                        {"data": "id", width: "5%", className: "dt-center", targets: '_all'},
                        {"data": "__user"},
                        {"data": "__group"},
                        {"data": "status", width: "8%", className: "dt-center", targets: '_all'},
                        {"data": "action", width: "8%", className: "dt-center", targets: '_all'}
                    ]
                });

                $('#' + table_id).on('click', 'input[type="checkbox"][name="is_active"]', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    var id = $(this).attr('data-id');
                    var formdata = {a: 'is_active', b: (checked == true) ? 1 : 0};
                    var options = {
                        'url': _base_extraweb_uri + '/prefferences/uac/user-groups/update/' + id,
                        'type': 'POST', // Compatibility for older jQuery
                        'contentType': 'application/json',
                        'header': {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        'async': false,
                        'timeout': '',
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

                $("#" + el).on('shown.bs.modal', function () {
                    $(this).trigger('focus');
                    __fn_get_users('a');
                    __fn_get_groups('b');
                });

                $("#btn_md_create_user_group").on('click', function (e) {
                    //e.preventDefault();
                    var formdata = {
                        a: 'is_insert',
                        b: $('#a').val(),
                        c: $('#b').val()
                    };
                    var msg = 'error';
                    var response = __fn_send_new_assign(formdata);
                    console.log(response);
                    return false;
                    if (response.responseJSON.status.code == 200) {
                        msg = 'success';
                    }
                });
            }
        }
    }();
    jQuery(document).ready(function () {
        ViewJS.init();
    });
</script>