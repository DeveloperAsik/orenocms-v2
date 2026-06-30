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
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="a" class="form-control" value="{{$menu['data']->__name}}" id="a" placeholder="Enter Menu name">
                                    <label for="a">Name</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="b" class="form-control" value="{{$menu['data']->__path}}" id="b" placeholder="Enter Menu Path">
                                    <label for="b">Path</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" value="{{$menu['data']->__icon}}" id="c" placeholder="Enter Icon Tags">
                                    <label for="c">Icon</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="d" class="form-control" value="{{$menu['data']->__level}}" id="d" placeholder="Enter Menu Level">
                                    <label for="d">Level</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="e" class="form-control" value="{{$menu['data']->__rank}}" id="e" placeholder="Enter Menu Rank">
                                    <label for="e">Rank</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="f" class="form-control" value="{{$menu['data']->__badge}}" id="f" placeholder="Enter Badge type">
                                    <label for="f">Badge</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" >
                            <div class="form-body">
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_badge = ''; @endphp
                                            @if($menu['data']->__is_badge == 1)
                                            @php $__is_badge = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="g" id="g" class="md-check"{!! $__is_badge !!}>
                                            <label for="g">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Badge </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_dashboard = ''; @endphp
                                            @if($menu['data']->__is_dashboard == 1)
                                            @php $__is_dashboard = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="h" id="h" class="md-check"{!! $__is_dashboard !!}>
                                            <label for="h">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Dashboard </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_selected = ''; @endphp
                                            @if($menu['data']->__is_selected == 1)
                                            @php $__is_selected = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="i" id="i" class="md-check"{!! $__is_selected !!}>
                                            <label for="i">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Selected </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_basic = ''; @endphp
                                            @if($menu['data']->__is_basic == 1)
                                            @php $__is_basic = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="j" id="j" class="md-check"{!! $__is_basic !!}>
                                            <label for="j">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Basic </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_open = ''; @endphp
                                            @if($menu['data']->__is_open == 1)
                                            @php $__is_open = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="k" id="k" class="md-check"{!! $__is_open !!}>
                                            <label for="k">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Open </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $__is_disabled = ''; @endphp
                                            @if($menu['data']->__is_disabled == 1)
                                            @php $__is_disabled = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="l" id="l" class="md-check"{!! $__is_disabled !!}>
                                            <label for="l">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Disabled </label>
                                        </div>
                                    </div>
                                </div>                 
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $is_active = ''; @endphp
                                            @if($menu['data']->is_active == 1)
                                            @php $is_active = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="m" id="m" class="md-check">
                                            <label for="m">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Active </label>
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
    <div class="col-md-12">
        <div class="form-actions noborder">
            <button type="button" class="btn blue" id="submitForm">Submit</button>
            <button type="button" class="btn default">Cancel</button>
        </div>
    </div>
</form>