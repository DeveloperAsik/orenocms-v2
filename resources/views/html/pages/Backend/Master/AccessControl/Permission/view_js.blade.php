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
            }
        }
    }();
    jQuery(document).ready(function () {
        ViewJS.init();
    });
</script>