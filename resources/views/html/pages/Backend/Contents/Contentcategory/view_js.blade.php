<script>
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
                        url: _base_extraweb_uri + '/master/uac/permissions/get_list',
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        type: 'POST'
                    },
                    "columns": [
                        {"data": "id", width: "5%", className: "dt-center", targets: '_all'},
                        {"data": "__name"},
                        {"data": "__path"},
                        {"data": "__controller"},
                        {"data": "__action"},
                        {"data": "__method"},
                        {"data": "basic"},
                        {"data": "public"},
                        {"data": "status", width: "8%", className: "dt-center", targets: '_all'},
                        {"data": "action", width: "15%", className: "dt-center", targets: '_all'}
                    ]
                });

                $('#' + table_id).on('click', 'input[type="checkbox"][name="is_basic"]', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    var id = $(this).attr('data-id');
                    var formdata = {a: 'is_basic', b: (checked == true) ? 1 : 0};
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/update/' + id,
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
                $('#' + table_id).on('click', 'input[type="checkbox"][name="is_public"]', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    var id = $(this).attr('data-id');
                    var formdata = {a: 'is_public', b: (checked == true) ? 1 : 0};
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/update/' + id,
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
                $('#' + table_id).on('click', 'input[type="checkbox"][name="is_active"]', function () {
                    __fn_loading_img('img-loading', 'start');
                    var checked = this.checked;
                    var id = $(this).attr('data-id');
                    var formdata = {a: 'is_active', b: (checked == true) ? 1 : 0};
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/permissions/update/' + id,
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
        ViewJS.init();
    });
</script>