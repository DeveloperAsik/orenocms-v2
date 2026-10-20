<form role="form">
    <div class="col-md-12" style="padding-left:0px !important">   
        <div class="btn-group" style="margin:0px 0px 5px 0px">
            @if(isset($_config['header']) && !empty($_config['header']))
            @foreach($_config['header'] AS $k => $v)
            <a href="{!! $v['link'] !!}" class="btn green" style="margin:0px 0px 0px 5px">
                {!! $v['title'] !!} {!! $v['icon'] !!}
            </a>
            @endforeach
            @endif
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
                                {!! isset($forms) ? $forms : $forms !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-actions noborder">
            <button type="button" class="btn blue" id="submitForm">Submit</button>
            <button type="button" class="btn default">Cancel</button>
        </div>
    </div>
</form>