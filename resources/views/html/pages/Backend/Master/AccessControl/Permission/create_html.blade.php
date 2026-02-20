<div class="col-md-10">
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption">
                {!! $_config['pages']['icon'] !!}{{$_config['pages']['title']}}
            </div>
            <div class="tools">
                <a href="javascrht:;" class="collapse"></a>
                <a href="javascrht:;" class="reload"></a>
            </div>
        </div>
        <div class="portlet-body">
            <form role="form">
                <div class="row">
                    <div class="portlet-body form">
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="a" class="form-control" id="a" placeholder="Enter Permision Title">
                                    <label for="a">Name</label>
                                    <span class="help-block">Some help goes here...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="b" class="form-control" id="b" placeholder="Enter Permision Path">
                                    <label for="b">Path</label>
                                    <span class="help-block">e.g. : extraweb/[segment2]/[segment3]/[segment4]/...</span>
                                </div>
                                <div class="form-group form-md-line-input has-success">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Controller</label>
                                </div>
                                <div class="form-group form-md-line-input has-info">
                                    <select class="form-control" name="d" id="d">
                                        <option value="0">-- select one --</option>
                                        @if(isset($StrHtmlActions) && !empty($StrHtmlActions))
                                        {!! $StrHtmlActions !!}
                                        @endif
                                    </select>
                                    <label for="d">Action Controller</label>
                                </div>
                                <div class="form-group form-md-line-input has-warning">
                                    <input type="text" name="e" class="form-control" id="e" placeholder="Enter Form Submit Method Name (Put, Post, Get, Options etc)">
                                    <label for="e">Form Method</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="f" rows="3" placeholder="Enter Descrhtion"></textarea>
                                    <label for="form_control_1">Descrhtion</label>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="g" id="g" class="md-check">
                                            <label for="g">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Basic Permision </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="h" id="h" class="md-check">
                                            <label for="h">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Public Permision </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="i" id="i" class="md-check">
                                            <label for="i">
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