<script>
    var fetch_tree_data = function () {
        response = null;
        var options = {
            url: _base_extraweb_uri + '/master/uac/groups/get_list?a=1',
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
                url: _base_extraweb_uri + '/master/uac/groups/get_list?a=2',
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
        $('#tree_view_groups').jstree("state.clear");
        $('#tree_view_groups').on('before.jstree', function (e, data) {
            if (data.plugin === 'checkbox') {
                // Check if the target is a branch (has children)
                if (data.inst.is_parent(data.args[0])) {
                    // Cancel the check action
                    e.preventDefault();
                    e.stopImmediatePropagation();
                }
            }
        }).jstree({
            "checkbox": {
                "whole_node": true,
                "tie_selection": true,
                "keep_selected_style": true,
                "cascade": 'down',
                "three_state": false, // Disables cascading check/uncheck to parents and children
                "keep_selected_style": false
            },
            "plugins": ["contextmenu", "checkbox", "dnd", "state", "types"],
            "core": {
                "multiple": false,
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
    var __fn_assign_val_to_form = function (formdata) {
        if (formdata) {
            $('input[name="__id"]').val(formdata.id);
            $('input[name="a"]').val(formdata.__name);
            $('input[name="b"]').val(formdata.__path);
            $('input[name="c"]').val(formdata.__icon);
            $('input[name="d"]').val(formdata.__level);
            $('input[name="e"]').val(formdata.__rank);
            $('input[name="f"]').val(formdata.__badge);
            $('input[type="checkbox"][name="g"]').prop('checked', (formdata.__is_badge == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="h"]').prop('checked', (formdata.__is_dashboard == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="i"]').prop('checked', (formdata.__is_selected == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="j"]').prop('checked', (formdata.__is_basic == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="k"]').prop('checked', (formdata.__is_open == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="l"]').prop('checked', (formdata.__is_disabled == 1) ? true : false).trigger('change');
            $('input[type="checkbox"][name="m"]').prop('checked', (formdata.is_active == 1) ? true : false).trigger('change');
            $('input[name="__id"]').attr("value", formdata.id);
        }
    }
    var ViewJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('TreeViewJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                var treedata = fetch_tree_data();
                init_tree_js(treedata);
                //__fn_uncheck_tree_node();

                $('#tree_view_groups').on('click', '.jstree-anchor', function (e) {
                    e.preventDefault();
                    let currentNodeId = $(this).jstree(true).get_node(this);
                    console.log('currentNodeId : ');
                    console.log(currentNodeId);
                    var bottomCheckedIds = $('#tree_view_groups').jstree("get_bottom_checked");
                    console.log("bottomCheckedIds");
                    console.log(bottomCheckedIds);
                    var tree = $('#tree_view_groups').jstree(true);
                    bottomCheckedIds.forEach(function (nodeId) {
                        if (currentNodeId.id != nodeId) {
                            console.log('uncheck nodeid : ' + nodeId);
                            tree.uncheck_node(nodeId);
                        }
                    });
                    //tree.check_node(currentNodeId.id);
                    let id = $(this).jstree(true).get_node(this).original.id;
                    if (currentNodeId.state.selected == true) {
                        $('#updateTreeForm').css({'display': ''});
                        var dataFormMenu = fetch_data_by_id(id);
                        __fn_assign_val_to_form(dataFormMenu);
                    } else {
                        $('#updateTreeForm').css({'display': 'none'});
                    }
                });
                $('#tree_view_groups').on('check_node.jstree', function (e, data) {
                    var currentNodeId = data.node.id;
                    var tree = $('#tree_view_groups').jstree(true);

                    // Get all currently checked nodes
                    var checkedNodes = tree.get_checked();

                    // Loop through checked nodes and uncheck all except the newly checked one
                    checkedNodes.forEach(function (nodeId) {
                        console.log('nodeid : ' + nodeId);

                        if (nodeId !== currentNodeId) {
                            tree.uncheck_node(nodeId);
                        }
                    });
                });
                $('#tree_view_groups').on('rename_node.jstree', function (e, data) {
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
                        url: _base_extraweb_uri + '/master/uac/groups/insert/',
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
                $('#submitForm').on('click', function () {
                    var id = $('input[name="__id"]').val();
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('input[name="d"]').val(),
                        e: $('input[name="e"]').val(),
                        f: $('input[name="f"]').val(),
                        g: ($('input[type="checkbox"][name="g"]:checked').val()) ? 1 : 0,
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0,
                        i: ($('input[type="checkbox"][name="i"]:checked').val()) ? 1 : 0,
                        j: ($('input[type="checkbox"][name="j"]:checked').val()) ? 1 : 0,
                        k: ($('input[type="checkbox"][name="k"]:checked').val()) ? 1 : 0,
                        l: ($('input[type="checkbox"][name="l"]:checked').val()) ? 1 : 0,
                        m: ($('input[type="checkbox"][name="m"]:checked').val()) ? 1 : 0
                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/groups/update/' + id,
                        methodType: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: 2000
                    };
                    var response = __fn_ajax_send(JSON.stringify(formdata), options);
                    console.log('response : ');
                    console.log(response);
                    return false;
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