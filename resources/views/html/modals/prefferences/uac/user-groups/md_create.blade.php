<div class="modal fade" id="{{$_config['modals']['el-id']}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="POST" name="frm_{{$_config['modals']['el-id']}}">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">{{$_config['modals']['title']}}</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group form-md-line-input has-info">
                        <select class="form-control" name="a" id="a">
                            <option value="0">-- select one --</option>
                        </select>
                        <label for="form_control_1">Users</label>
                    </div>
                    <div class="form-group form-md-line-input has-info">
                        <select class="form-control" name="b" id="b">
                            <option value="0">-- select one --</option>
                        </select>
                        <label for="form_control_1">Groups</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" value="submit" class="btn blue" id="btn_{{$_config['modals']['el-id']}}">Save changes</button>
                    <button type="button" class="btn default" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
