<div class="row">
    <form role="form">
        <div class="col-md-6 ">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:700px;">
                <div class="portlet-title">
                    <div class="caption font-green">
                        {!! $_config['pages']['icon'] !!}
                        <span class="caption-subject bold uppercase">{{$_config['pages']['title']}}</span>
                    </div>
                    <div class="actions">
                        <a href="{!! $_config['header']['link'] !!}" id="sample_editable_1_new" class="btn green">
                            {!! $_config['header']['title'] !!} {!! $_config['header']['icon'] !!}
                        </a>

                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="form-group form-md-line-input">
                            <input type="text" name="a" class="form-control" id="a" placeholder="Enter user name">
                            <label for="a">User Name</label>
                            <span class="help-block"></span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="b" class="form-control" id="b" placeholder="Enter LDAP user account">
                            <label for="b">User LDAP</label>
                            <span class="help-block">e.g. : ...</span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="c" class="form-control" id="c" placeholder="Enter first Name">
                            <label for="c">First Name</label>
                            <span class="help-block">User first name</span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="d" class="form-control" id="d" placeholder="Enter last Name">
                            <label for="d">Last Name</label>
                            <span class="help-block">User last name</span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="e" class="form-control" id="e" placeholder="Enter email">
                            <label for="e">Email</label>
                            <span class="help-block">User Email</span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="f" class="form-control" id="f" placeholder="Enter phone number">
                            <label for="f">Phone Number</label>
                            <span class="help-block">User Phone Number</span>
                        </div>
                        <div class="form-group form-md-line-input">
                            <textarea class="form-control" name="g" rows="3" placeholder="Enter Description"></textarea>
                            <label for="g">Description</label>
                        </div>
                        <div class="form-group form-md-checkboxes">
                            <div class="md-checkbox-inline">
                                <div class="md-checkbox">
                                    <input type="checkbox" name="h" id="h" class="md-check">
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
            </div>
            <!-- END SAMPLE FORM PORTLET-->
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:600px;">
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
            <!-- END SAMPLE FORM PORTLET-->
        </div>
        <div class="col-md-6 ">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:600px;">
                <div class="portlet-title">
                    <div class="caption font-green">
                        <i class="icon-pin font-green"></i>
                        <span class="caption-subject bold uppercase"> User Profiles</span>
                    </div>
                    <div class="actions"></div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="form-group form-md-line-input">
                            <label for="i" style="top: 0;  margin-bottom: 0;  font-size: 13px;  color: #888888;  opacity: 1;">Photo Profile</label>
                            <div class="dropzone" id="uploadPicture" style="min-height: 200px !important"></div>
                            <p>
                                <span class="label label-danger">
                                    NOTE: </span>
                                &nbsp; This plugins works only on Latest Chrome, Firefox, Safari, Opera & Internet Explorer 10.
                            </p>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="k" class="form-control" id="k" placeholder="Enter Controller Name">
                            <label for="k">Last Education</label>
                        </div>
                        <div class="form-group form-md-line-input">
                            <input type="text" name="l" class="form-control" id="l" placeholder="Enter Controller Name">
                            <label for="l">Education Institution</label>
                        </div>
                        <div class="form-group form-md-line-input">
                            <textarea class="form-control" name="m" rows="3" placeholder="Enter Skills"></textarea>
                            <label for="m">Skills</label>
                        </div>
                        <div class="form-group form-md-line-input">
                            <textarea class="form-control" name="n" rows="3" placeholder="Enter Notes   "></textarea>
                            <label for="n">Notes</label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END SAMPLE FORM PORTLET-->
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:605px;">
                <div class="portlet-title">
                    <div class="caption font-green">
                        <i class="icon-drop font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> User Social Media</span>
                    </div>
                    <div class="actions"></div>
                </div>
                <div class="portlet-body form" >
                    <div class="form-group form-md-line-input">
                        <input type="text" name="o" class="form-control" id="o" placeholder="Enter Facebook">
                        <label for="o">Facebook</label>
                        <span class="help-block">Facebook</span>
                    </div>
                    <div class="form-group form-md-line-input">
                        <input type="text" name="p" class="form-control" id="p" placeholder="Enter Tweeter">
                        <label for="p">Tweeter</label>
                    </div>
                    <div class="form-group form-md-line-input">
                        <input type="text" name="q" class="form-control" id="q" placeholder="Enter Instagram">
                        <label for="q">Instagram</label>
                    </div>
                    <div class="form-group form-md-line-input">
                        <input type="text" name="r" class="form-control" id="r" placeholder="Enter Linkedin">
                        <label for="r">Linkedin</label>
                    </div>
                </div>
            </div>
            <!-- END SAMPLE FORM PORTLET-->
        </div>
        <div class="col-md-6 ">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:605px;">
                <div class="portlet-title">
                    <div class="caption font-green">
                        <i class="icon-pin font-green"></i>
                        <span class="caption-subject bold uppercase"> User Address</span>
                    </div>
                    <div class="actions"></div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="form-group form-md-line-input form-md-floating-label">
                            <textarea class="form-control" name="s" rows="3" id="s"></textarea>
                            <label for="s">Address</label>
                        </div>
                        <div class="form-group form-md-line-input form-md-floating-label has-success">
                            <input type="text" class="form-control" id="t" name="t">
                            <label for="t">Latitude</label>
                        </div>
                        <div class="form-group form-md-line-input form-md-floating-label has-success">
                            <input type="text" class="form-control" id="u" name="u">
                            <label for="u">Longitude</label>
                        </div>
                        <div class="form-group form-md-line-input form-md-floating-label has-success">
                            <input type="text" class="form-control" id="v" name="v">
                            <label for="v">Zoom</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 ">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered" style="min-height:605px;">
                <div class="portlet-title">
                    <div class="caption font-green">
                        <i class="icon-pin font-green"></i>
                        <span class="caption-subject bold uppercase"> User Locations</span>
                    </div>
                    <div class="actions"></div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="form-group form-md-line-input ">
                            <select class="form-control" id="w" name="w">
                                <option value="0">-- select one --</option>
                                {!! $countryOptions !!}
                            </select>
                            <label for="w">Country</label>
                        </div>
                        <div class="form-group form-md-line-input ">
                            <select class="form-control" id="x" name="x">
                                <option value="0">-- select country first --</option>
                            </select>
                            <label for="x">Province</label>
                        </div>
                        <div class="form-group form-md-line-input ">
                            <select class="form-control" id="y" name="y">
                                <option value="0">-- select provinces first --</option>
                            </select>
                            <label for="y">City</label>
                        </div>
                        <div class="form-group form-md-line-input ">
                            <select class="form-control" id="z" name="z">
                                <option value="0">-- select City first --</option>
                            </select>
                            <label for="z">District</label>
                        </div>
                        <div class="form-group form-md-line-input ">
                            <select class="form-control" id="aa" name="aa">
                                <option value="0">-- select district first --</option>
                            </select>
                            <label for="aa">Area</label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END SAMPLE FORM PORTLET-->
        </div>
        <div class="col-md-12">
            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">
                <div class="portlet-body form">
                    <div class="form-actions noborder">
                        <input type="text" id="code" name="code" value="{{$code}}" hidden>
                        <button type="button" class="btn blue" id="submitForm">Submit</button>
                        <button type="button" class="btn default">Cancel</button>
                    </div>
                </div>
            </div>
            <!-- END SAMPLE FORM PORTLET-->
        </div>
    </form>
</div>