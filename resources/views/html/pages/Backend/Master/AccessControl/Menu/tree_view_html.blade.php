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
</div>
<div class="col-md-7" style="padding-left:0px !important">
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
            <div id="tree_view_menus" ></div>
        </div>
    </div>
</div>

<div class="col-md-5">
    <form>
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    Update Data Menu
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                    <a href="javascript:;" class="reload"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="form-body">
                    <div class="row" style="display:none" id="updateTreeForm">
                        <div class="col-md-12">
                            <div class="form-group form-md-line-input">
                                <input type="text" name="a" class="form-control" id="a" placeholder="Enter Menu name">
                                <label for="a">Name</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" name="b" class="form-control" id="b" placeholder="Enter Menu Path">
                                <label for="b">Path</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" name="c" class="form-control" id="c" placeholder="Enter Icon Tags">
                                <label for="c">Icon</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" name="d" class="form-control" id="d" placeholder="Enter Menu Level">
                                <label for="d">Level</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" name="e" class="form-control" id="e" placeholder="Enter Menu Rank">
                                <label for="e">Rank</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" name="f" class="form-control" id="f" placeholder="Enter Badge type">
                                <label for="f">Badge</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-md-checkboxes">
                                <div class="md-checkbox-inline">
                                    <div class="md-checkbox">
                                        <input type="checkbox" name="g" id="g" class="md-check">
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
                                        <input type="checkbox" name="h" id="h" class="md-check">
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
                                        <input type="checkbox" name="i" id="i" class="md-check">
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
                                        <input type="checkbox" name="j" id="j" class="md-check">
                                        <label for="j">
                                            <span></span>
                                            <span class="check"></span>
                                            <span class="box"></span>
                                            Is Basic </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-md-checkboxes">
                                <div class="md-checkbox-inline">
                                    <div class="md-checkbox">
                                        <input type="checkbox" name="k" id="k" class="md-check">
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
                                        <input type="checkbox" name="l" id="l" class="md-check">
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
                        <div class="col-md-12">
                            <div class="form-actions noborder">
                                <button type="button" class="btn blue" id="submitForm">Submit</button>
                                <button type="button" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>