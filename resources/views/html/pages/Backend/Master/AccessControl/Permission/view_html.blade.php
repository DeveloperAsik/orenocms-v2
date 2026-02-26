<div class="col-md-10">
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption">
                {!! $_config['pages']['icon'] !!}{{$_config['pages']['title']}}
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                <a href="javascript:;" class="reload"></a>
            </div>
        </div>
        <div class="portlet-body">
            <div class="table-toolbar">
                <div class="row">
                    <div class="col-md-6">
                        <div class="btn-group">
                            <a href="{!! $_config['header']['link'] !!}" id="sample_editable_1_new" class="btn green">
                               {!! $_config['header']['title'] !!} {!! $_config['header']['icon'] !!}
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="btn-group pull-right">
                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i></button>
                            <ul class="dropdown-menu pull-right">
                                @if(isset($_config['tables']['btn-tools']) && !empty($_config['tables']['btn-tools']))
                                    @foreach($_config['tables']['btn-tools'] AS $k => $v)
                                        {!! $v !!}
                                    @endforeach
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover table-bordered" id="{{$_config['tables']['el-id']}}">
                <thead>
                    <tr>
                        @if(isset($_config['tables']['dt_tbl_th']) && !empty($_config['tables']['dt_tbl_th']))
                            @foreach($_config['tables']['dt_tbl_th'] AS $k => $v)
                                {!! $v !!}
                            @endforeach
                        @endif
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>