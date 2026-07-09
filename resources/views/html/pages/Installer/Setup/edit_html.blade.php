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
                                    <input type="text" name="a" class="form-control" id="a" placeholder="Enter Permision Title" value="{{$installers['data']->__subject}}">
                                    <label for="a">Subject</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="b" class="form-control" id="b" placeholder="Enter Permision Path" value="{{$installers['data']->__target_table}}">
                                    <label for="b">Target Table</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name" value="{{$installers['data']->__action}}">
                                    <label for="c">Action</label>
                                </div>
                                 <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="d" rows="3" placeholder="Enter Description">{!! $installers['data']->__description !!}</textarea>
                                    <label for="d">Description</label>
                                </div>
                                @php $is_active = ''; @endphp
                                @if($installers['data']->is_active == 1)
                                @php $is_active = ' checked=""'; @endphp
                                @endif
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