<form role="form">
    <div class="col-md-12" style="padding-left:0px !important">   
        <div class="btn-group" style="margin: 0px 0px 5px 0px">
            <a href="{!! $_config['header']['link'] !!}" id="sample_editable_1_new" class="btn green">
                {!! $_config['header']['title'] !!} {!! $_config['header']['icon'] !!}
            </a>
        </div>
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
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-6"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="portlet-body form">
                        <div class="col-md-6" style="min-height:600px!important">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="a" class="form-control" value="{{$permission['data']->__name}}" id="a" placeholder="Enter Permision Title">
                                    <label for="a">Name</label>
                                    <span class="help-block">Some help goes here...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="b" class="form-control" value="{{$permission['data']->__path}}" id="b" placeholder="Enter Permision Path">
                                    <label for="b">Path</label>
                                    <span class="help-block">e.g. : extraweb/[segment2]/[segment3]/[segment4]/...</span>
                                </div>
                                <div class="form-group form-md-line-input has-success">
                                    <input type="text" name="c" class="form-control" value="{{$permission['data']->__controller}}" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Controller</label>
                                </div>
                                <div class="form-group form-md-line-input has-success">
                                    <input type="text" name="d" class="form-control" value="{{$permission['data']->__action}}" id="c" placeholder="Enter Action Name">
                                    <label for="d">Action</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="e" rows="3" placeholder="Enter Description">{{$permission['data']->__description}}</textarea>
                                    <label for="e">Description</label>
                                </div>
                                @php $is_basic =  $is_public =  $is_active = ''; @endphp
                                @if($permission['data']->__is_basic == 1)
                                @php $is_basic = ' checked=""'; @endphp
                                @endif
                                @if($permission['data']->__is_public == 1)
                                @php $is_public = ' checked=""'; @endphp
                                @endif
                                @if($permission['data']->is_active == 1)
                                @php $is_active = ' checked=""'; @endphp
                                @endif
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="f" id="f" class="md-check"{!! $is_basic !!}>
                                            <label for="f">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Basic Permissions </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="g" id="g" class="md-check"{!! $is_public !!}>
                                            <label for="g">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Public Permissions </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            <input type="checkbox" name="h" id="h" class="md-check"{!! $is_active !!}>
                                            <label for="h">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Active </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="min-height:800px">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment1}}" name="__segment1" readonly="" class="form-control" id="__segment1" placeholder="Automatic generate from path to input field">
                                    <label for="__segment1">Segment 1</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment2}}" name="__segment2" readonly="" class="form-control" id="__segment2" placeholder="Automatic generate from path to input field">
                                    <label for="__segment2">Segment 2</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment3}}" name="__segment3" readonly="" class="form-control" id="__segment3" placeholder="Automatic generate from path to input field">
                                    <label for="__segment3">Segment 3</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment4}}" name="__segment4" readonly="" class="form-control" id="__segment4" placeholder="Automatic generate from path to input field">
                                    <label for="__segment4">Segment 4</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment5}}" name="__segment5" readonly="" class="form-control" id="__segment5" placeholder="Automatic generate from path to input field">
                                    <label for="__segment5">Segment 5</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment6}}" name="__segment6" readonly="" class="form-control" id="__segment6" placeholder="Automatic generate from path to input field">
                                    <label for="__segment6">Segment 6</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment7}}" name="__segment7" readonly="" class="form-control" id="__segment7" placeholder="Automatic generate from path to input field">
                                    <label for="__segment7">Segment 7</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" value="{{$permission['data']->__segment8}}" name="__segment8" readonly="" class="form-control" id="__segment8" placeholder="Automatic generate from path to input field">
                                    <label for="__segment8">Segment 8</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12" style="padding-left:0px !important">
        <div class="form-actions noborder">
            <button type="button" class="btn blue" id="submitForm">Submit</button>
            <button type="button" class="btn default">Cancel</button>
        </div>
    </div>
</form>