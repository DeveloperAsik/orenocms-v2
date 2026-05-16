<div class="col-md-10" style="padding-left:0px !important">    
    <form role="form">
        <div class="col-md-12">
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
                            <div class="col-md-6">

                            </div>
                            <div class="col-md-6"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="portlet-body form">
                            <div class="col-md-6" style="min-height:800px">
                                <div class="form-body">
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="a" class="form-control" value="{{$user['data']->__user_name}}" id="a" placeholder="Enter User Name">
                                        <label for="a">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="b" class="form-control" value="{{$user['data']->__user_ldap}}" id="b" placeholder="Enter User AD/LDAP">
                                        <label for="b">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" value="{{$user['data']->__first_name}}" id="c" placeholder="Enter First Name">
                                        <label for="c">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="d" class="form-control" value="{{$user['data']->__last_name}}" id="d" placeholder="Enter Last Name">
                                        <label for="d">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="e" class="form-control" value="{{$user['data']->__email}}" id="e" placeholder="Enter Email">
                                        <label for="e">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="f" class="form-control" value="{{$user['data']->__phone_number}}" id="f" placeholder="Enter Phone Number">
                                        <label for="f">Name</label>
                                        <span class="help-block">Some help goes here...</span>
                                    </div>

                                    @php $is_active = ''; @endphp
                                    @if($user['data']->is_active == 1)
                                    @php $is_active = ' checked=""'; @endphp
                                    @endif

                                    <div class="form-group form-md-checkboxes">
                                        <div class="md-checkbox-inline">
                                            <div class="md-checkbox">
                                                <input type="checkbox" name="g" id="g" class="md-check"{!! $is_active !!}>
                                                <label for="g">
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
                                        <input type="text" name="i" class="form-control" id="i" placeholder="Enter Controller Name">
                                        <label for="i">Last Education</label>
                                        <span class="help-block">Last Education</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="j" class="form-control" id="j" placeholder="Enter Controller Name">
                                        <label for="j">Education Institution</label>
                                        <span class="help-block">Education Institution</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <textarea class="form-control" name="k" rows="3" placeholder="Enter Skills"></textarea>
                                        <label for="k">Skills</label>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <textarea class="form-control" name="l" rows="3" placeholder="Enter Notes   "></textarea>
                                        <label for="m">Notes</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-body">
                                    <p>
                                        <span class="label label-danger">
                                            NOTE: </span>
                                        &nbsp; This plugins works only on Latest Chrome, Firefox, Safari, Opera & Internet Explorer 10.
                                    </p>
                                    <div action="{{ config('app._base_extraweb_uri') . '/master/uac/user/insert'}}" class="dropzone" id="uploadPicture"> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
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
                    <div class="row">
                        <div class="portlet-body form">
                            <div class="col-md-6" style="min-height:800px">
                                <div class="form-body">
                                    <div class="form-group form-md-line-input">
                                        <textarea class="form-control" name="e" rows="3" placeholder="Enter Address"></textarea>
                                        <label for="e">Address</label>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Latitude">
                                        <label for="c">Latitude</label>
                                        <span class="help-block">Latitude</span>
                                    </div>  
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Longitude">
                                        <label for="c">Longitude</label>
                                        <span class="help-block">Longitude</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Facebook">
                                        <label for="c">Facebook</label>
                                        <span class="help-block">Facebook</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Tweeter">
                                        <label for="c">Tweeter</label>
                                        <span class="help-block">Tweeter</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Instagram">
                                        <label for="c">Instagram</label>
                                        <span class="help-block">Instagram</span>
                                    </div>
                                    <div class="form-group form-md-line-input">
                                        <input type="text" name="c" class="form-control" id="c" placeholder="Enter Linkedin">
                                        <label for="c">Linkedin</label>
                                        <span class="help-block">Linkedin</span>
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
</div>