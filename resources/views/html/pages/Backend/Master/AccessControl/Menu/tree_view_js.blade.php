<script>
    var fetch_tree_data = function () {
        response = null;
        var options = {
            url: _base_extraweb_uri + '/master/uac/menus/get_list?a=1',
            methodType: 'POST',
            dataType: 'json',
            file: false,
            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            async: false,
            timeout: ''
        };
        var responseAll = __fn_ajax_send({}, options);
        if (responseAll.responseJSON.status.code && responseAll.responseJSON.status.code == 200) {
            response = responseAll.responseJSON.data;
        }
        return response;
    }

    var fetch_data_by_id = function (id) {
        response = null;
        if (id != null) {
            var formdata = {
                'id': id
            };
            var options = {
                url: _base_extraweb_uri + '/master/uac/menus/get_list?a=2',
                methodType: 'POST',
                dataType: 'json',
                file: false,
                header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                async: false,
                timeout: ''
            };
            var responseAll = __fn_ajax_send(JSON.stringify(formdata), options);
            if (responseAll.responseJSON.status.code && responseAll.responseJSON.status.code == 200) {
                response = responseAll.responseJSON.data;
            }
        }
        return response;
    }


    var init_tree_js = function (treedata) {
        $('#tree_view_menus').jstree("state.clear");
        $('#tree_view_menus').jstree({
            "plugins": ["contextmenu", "checkbox", "dnd", "state", "types"],
            "core": {
                "themes": {
                    "responsive": true
                },
                "check_callback": true,
                "data": treedata
            },
            "types": {
                "default": {
                    "icon": "fa fa-folder icon-state-warning icon-lg"
                },
                "file": {
                    "icon": "fa fa-file icon-state-warning icon-lg"
                }
            }
        });
    }
    var __fn__assign_val_to_form = function (formdata) {
        if (formdata) {
            $('input[name="a"]').val(formdata.__name);
            $('input[name="b"]').val(formdata.__path);
            $('input[name="c"]').val(formdata.__icon);
            $('input[name="d"]').val(formdata.__level);
            $('input[name="e"]').val(formdata.__rank);
            $('input[name="f"]').val(formdata.__badge);
            $('checkbox[id="g"]').prop('checked', (formdata.__is_badge == 1) ? true : false).trigger('change');
            $('checkbox[id="h"]').prop('checked', (formdata.__is_dashboard == 1) ? true : false).trigger('change');
            $('checkbox[id="i"]').prop('checked', (formdata.__is_selected == 1) ? true : false).trigger('change');
            $('checkbox[id="j"]').prop('checked', (formdata.__is_basic == 1) ? true : false).trigger('change');
            $('checkbox[id="k"]').prop('checked', (formdata.__is_open == 1) ? true : false).trigger('change');
            $('checkbox[id="l"]').prop('checked', (formdata.__is_disabled == 1) ? true : false).trigger('change');
            $('checkbox[id="m"]').prop('checked', (formdata.is_active == 1) ? true : false).trigger('change');
        }
    }
    var ViewJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('TreeViewJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                var treedata = fetch_tree_data();
                init_tree_js(treedata);
                $('#tree_view_menus').on('click', '.jstree-anchor', function (e) {
                    e.preventDefault();
                    let node_id = $(this).jstree(true).get_node(this);//.id;
                    let id = $(this).jstree(true).get_node(this).original.id;
                    let level = $(this).jstree(true).get_node(this).original.level_id;
                    console.log("Clicked Node :");
                    console.log(node_id);
                    console.log("Clicked ID :");
                    console.log(id);
                    console.log("Clicked Level :");
                    console.log(level);
                    console.log("Clicked Node checked :");
                    console.log(node_id.state.selected);
                    if (node_id.state.selected == true) {
                        $('#updateTreeForm').css({'display': ''});
                        var dataFormMenu = fetch_data_by_id(id);
                        __fn__assign_val_to_form(dataFormMenu);
                    } else {
                        $('#updateTreeForm').css({'display': 'none'});
                    }

                });
                $('#tree_view_menus').on('rename_node.jstree', function (e, data) {
                    e.preventDefault();
                    let parent = data.node.parent;
                    var formdata = {
                        'a': 1,
                        'id': parseInt(data.node.id),
                        'is_insert': false,
                        'is_update': true,
                        'parent_id': parent,
                        'value': data.node.text
                    };
                    if (data.node.original.text == 'New node') {
                        formdata = {
                            'a': 1,
                            'id': data.node.id,
                            'is_insert': true,
                            'is_update': false,
                            'parent_id': parseInt(parent),
                            'value': data.node.text
                        };
                    }
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/menus/insert/',
                        methodType: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: ''
                    };
                    console.log(formdata);
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