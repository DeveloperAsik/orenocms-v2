<div class="col-md-10">
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption">
                {!! $_config['pages']['icon'] !!}{{$_config['pages']['title']}}
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="#{{$_config['modals']['el-id']}}" data-toggle="modal" class="config"></a>
                <a href="javascript:;" class="reload"></a>
            </div>
        </div>
        <div class="portlet-body">
            <form role="form">
                <div class="row">
                    <div class="portlet-body form">
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__name" class="form-control" id="form_control_1" placeholder="Enter Permission Title">
                                    <label for="form_control_1">Name</label>
                                    <span class="help-block">Some help goes here...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__path" class="form-control" id="form_control_1" placeholder="Enter Permission Path : extraweb/...">
                                    <label for="form_control_1">Path</label>
                                    <span class="help-block">Some help goes here...</span>
                                </div>
                                <div class="form-group form-md-line-input has-success">
                                    <input type="text" name="__controller" class="form-control" id="form_control_1" placeholder="Enter Controller Name">
                                    <label for="form_control_1">Controller</label>
                                </div>

                                <div class="form-group form-md-line-input has-info">
                                    <select class="form-control" name="__action" id="form_control_1">
                                        <option value="0">-- select one --</option>
                                        @if(isset($StrHtmlActions) && !empty($StrHtmlActions))
                                        {!! $StrHtmlActions !!}
                                        @endif
                                    </select>
                                    <label for="form_control_1">Action Controller</label>
                                </div>
                                <div class="form-group form-md-line-input has-warning">
                                    <input type="text" name="__method" class="form-control" id="__method" placeholder="Enter Form Submit Method Name (Put, Post, Get, Options etc)">
                                    <label for="form_control_1">Form Method</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="__description" rows="3" placeholder="Enter Description"></textarea>
                                    <label for="form_control_1">Description</label>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="is_basic" id="is_basic" class="md-check">
                                            <label for="is_basic">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Basic Permission </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="is_public" id="is_public" class="md-check">
                                            <label for="is_public">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Public Permission </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="is_active" id="is_active" class="md-check">
                                            <label for="is_active">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Active </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment1" readonly="" class="form-control" id="__segment1" placeholder="Automatic generate from path to input field">
                                    <label for="__segment1">Segment 1</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment2" readonly="" class="form-control" id="__segment2" placeholder="Automatic generate from path to input field">
                                    <label for="__segment2">Segment 2</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment3" readonly="" class="form-control" id="__segment3" placeholder="Automatic generate from path to input field">
                                    <label for="__segment3">Segment 3</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment4" readonly="" class="form-control" id="__segment4" placeholder="Automatic generate from path to input field">
                                    <label for="__segment4">Segment 4</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment5" readonly="" class="form-control" id="__segment5" placeholder="Automatic generate from path to input field">
                                    <label for="__segment5">Segment 5</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="__segment6" readonly="" class="form-control" id="__segment6" placeholder="Automatic generate from path to input field">
                                    <label for="__segment6">Segment 6</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-actions noborder">
                                <button type="button" class="btn blue">Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>