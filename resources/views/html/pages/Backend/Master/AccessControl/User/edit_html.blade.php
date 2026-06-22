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
                                    <input type="text" name="a" class="form-control" value="{{$user['data']->__user_name}}"  id="a" placeholder="Enter user name">
                                    <label for="a">User Name</label>
                                    <span class="help-block"></span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="b" class="form-control" value="{{$user['data']->__user_ldap}}" id="b" placeholder="Enter LDAP user account">
                                    <label for="b">User LDAP</label>
                                    <span class="help-block">e.g. : ...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" value="{{$user['data']->__first_name}}" id="c" placeholder="Enter first Name">
                                    <label for="c">First Name</label>
                                    <span class="help-block">User first name</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="d" class="form-control" value="{{$user['data']->__last_name}}" id="d" placeholder="Enter last Name">
                                    <label for="d">Last Name</label>
                                    <span class="help-block">User last name</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="e" class="form-control" value="{{$user['data']->__email}}" id="e" placeholder="Enter email">
                                    <label for="e">Email</label>
                                    <span class="help-block">User Email</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="f" class="form-control" value="{{$user['data']->__phone_number}}" id="f" placeholder="Enter phone number">
                                    <label for="f">Phone Number</label>
                                    <span class="help-block">User Phone Number</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="g" rows="3" placeholder="Enter Description">{!! $user['data']->__description !!}</textarea>
                                    <label for="g">Description</label>
                                </div>
                                <div class="form-group form-md-checkboxes">
                                    <div class="md-checkbox-inline">
                                        <div class="md-checkbox">
                                            @php $is_active = ''; @endphp
                                            @if($user['data']->is_active == 1)
                                            @php $is_active = ' checked=""'; @endphp
                                            @endif
                                            <input type="checkbox" name="h" id="h" class="md-check"{!! $is_active !!}>
                                            <label for="h">
                                                <span></span>
                                                <span class="check"></span>
                                                <span class="box"></span>
                                                Is Active </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="min-height:600px!important">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <label for="i" style="top: 0;  margin-bottom: 0;  font-size: 13px;  color: #888888;  opacity: 1;">Photo Profile</label>
                                    @php $show_photo = ' display:none';  $show_upload = ''; @endphp
                                    @if(isset($user_profile['data']->__photos) && !empty($user_profile['data']->__photos) && $user_profile['data']->__photos)
                                    @php $show_photo = '';  $show_upload = ' display:none'; @endphp
                                    @endif
                                    <div style="{{$show_photo}}" id="show_photo">
                                        <img src="{{config('app.base_url_assets_media') . '/images/users/' . $user_profile['data']->__photos}}" style="width:128px" />
                                        <a href="javascript:;" class="btn btn-icon-only red" id="change_photo">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                    <div style="{{$show_upload}}" id="show_upload">
                                        <div class="dropzone" id="uploadPicture" style="min-height: 200px !important"></div>
                                        <p>
                                            <span class="label label-danger">
                                                NOTE: </span>
                                            &nbsp; This plugins works only on Latest Chrome, Firefox, Safari, Opera & Internet Explorer 10.
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="k" class="form-control" value="{{$user_profile['data']->__last_education}}"  id="k" placeholder="Enter Controller Name">
                                    <label for="k">Last Education</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="l" class="form-control" value="{{$user_profile['data']->__last_education_institution}}"  id="l" placeholder="Enter Controller Name">
                                    <label for="l">Education Institution</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="m" rows="3" placeholder="Enter Skills">{!! $user_profile['data']->__skill !!}</textarea>
                                    <label for="m">Skills</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="n" rows="3" placeholder="Enter Notes">{!! $user_profile['data']->__notes !!}</textarea>
                                    <label for="n">Notes</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12" style="padding-left:0px !important">   
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    Permission & Social Media Informations
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
                        <div class="col-md-6" style="min-height:400px!important">
                            <div class="form-body">
                                <div class="portlet-title">
                                    <div class="caption font-green">
                                        <i class="icon-check font-red-sunglo"></i>
                                        <span class="caption-subject bold uppercase"> User Groups & Permissions</span>
                                    </div>
                                    <div class="actions"></div>
                                </div>
                                <div class="portlet-body form">
                                    <div class="form-group form-md-line-input has-info">
                                        <select multiple="multiple" class="form-control" name="i[]" id="i">
                                            @if(isset($groupOptions) && !empty($groupOptions))
                                            {!! $groupOptions !!}
                                            @endif
                                        </select>
                                        <label for="i">Groups</label>
                                    </div>
                                    <div class="form-group form-md-line-input has-info">
                                        <select multiple="multiple" class="form-control" name="j[]" id="j">
                                            @if(isset($moduleOptions) && !empty($moduleOptions))
                                            {!! $moduleOptions !!}
                                            @endif
                                        </select>
                                        <label for="j">Module</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="min-height:400px!important">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="o" class="form-control" value="{{$user_profile['data']->__socmed_fb}}" id="o" placeholder="Enter Facebook">
                                    <label for="o">Facebook</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="p" class="form-control" value="{{$user_profile['data']->__socmed_tw}}" id="p" placeholder="Enter Tweeter">
                                    <label for="p">Tweeter</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="q" class="form-control" value="{{$user_profile['data']->__socmed_ins}}" id="q" placeholder="Enter Instagram">
                                    <label for="q">Instagram</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="r" class="form-control" value="{{$user_profile['data']->__socmed_lnkd}}" id="r" placeholder="Enter Linkedin">
                                    <label for="r">Linkedin</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12" style="padding-left:0px !important">   
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    Address & Locations
                </div>
                <div class="tools">
                    <a href="javascrht:;" class="collapse"></a>
                    <a href="javascrht:;" class="reload"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6" style="min-height:200px!important">
                            <div class="form-group form-md-line-input">
                                <textarea class="form-control" name="s" rows="3" id="s">{{$user_profile['data']->__address}}</textarea>
                                <label for="s">Address</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" class="form-control" value="{{$user_profile['data']->__lat}}"  id="t" name="t">
                                <label for="t">Latitude</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" class="form-control" value="{{$user_profile['data']->__lng}}"  id="u" name="u">
                                <label for="u">Longitude</label>
                            </div>
                            <div class="form-group form-md-line-input">
                                <input type="text" class="form-control" value="{{$user_profile['data']->__zoom}}"  id="v" name="v">
                                <label for="v">Zoom</label>
                            </div>
                        </div>
                        <div class="col-md-6" style="min-height:200px!important">
                            <div class="form-group form-md-line-input ">
                                <select class="form-control" id="w" name="w">
                                    @if(isset($user_location['data']) && !empty($user_location['data']) && $user_location['data']->country_id != null)
                                    <option value="{{$user_location['data']->country_id}}">{{$user_location['data']->country_name}}</option>
                                    @else
                                    <option value="0">-- select one --</option>
                                    {!! $countryOptions !!}
                                    @endif
                                </select>
                                <label for="w">Country</label>
                            </div>
                            <div class="form-group form-md-line-input ">
                                <select class="form-control" id="x" name="x">
                                    @if(isset($user_location['data']) && !empty($user_location['data']) && $user_location['data']->province_id != null)
                                    <option value="{{$user_location['data']->province_id}}">{{$user_location['data']->province_name}}</option>
                                    @else
                                    <option value="0">-- select country first --</option>
                                    @endif
                                </select>
                                <label for="x">Province</label>
                            </div>
                            <div class="form-group form-md-line-input ">
                                <select class="form-control" id="y" name="y">
                                    @if(isset($user_location['data']) && !empty($user_location['data']) && $user_location['data']->city_id != null)
                                    <option value="{{$user_location['data']->city_id}}">{{$user_location['data']->city_name}}</option>
                                    @else
                                    <option value="0">-- select provinces first --</option>
                                    @endif
                                </select>
                                <label for="y">City</label>
                            </div>
                            <div class="form-group form-md-line-input ">
                                <select class="form-control" id="z" name="z">
                                    @if(isset($user_location['data']) && !empty($user_location['data']) && $user_location['data']->district_id != null)
                                    <option value="{{$user_location['data']->district_id}}">{{$user_location['data']->district_name}}</option>
                                    @else
                                    <option value="0">-- select City first --</option>                                    
                                    @endif
                                </select>
                                <label for="z">District</label>
                            </div>
                            <div class="form-group form-md-line-input ">
                                <select class="form-control" id="aa" name="aa">
                                    @if(isset($user_location['data']) && !empty($user_location['data']) && $user_location['data']->area_id != null)
                                    <option value="{{$user_location['data']->area_id}}">{{$user_location['data']->area_name}}</option>
                                    @else
                                    <option value="0">-- select district first --</option>                                 
                                    @endif
                                </select>
                                <label for="aa">Area</label>
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