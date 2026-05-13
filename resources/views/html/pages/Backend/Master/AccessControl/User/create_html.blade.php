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

                            <div class="col-md-6">
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
                                        <label for="l">Notes</label>
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
                                    <div class="dropzone" id="uploadPicture"> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="portlet box blue">
                <div class="portlet-title"></div>
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12" style="min-height:800px">
                            <div class="portlet-body form">
                                <div class="form-body">
                                    <div class="col-md-6" style="min-height:800px">
                                        <div class="form-body">
                                            <div class="form-group form-md-line-input">
                                                <textarea class="form-control" name="m" rows="3" placeholder="Enter Address"></textarea>
                                                <label for="m">Address</label>
                                            </div>
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="n" class="form-control" id="n" placeholder="Enter Latitude">
                                                <label for="n">Latitude</label>
                                                <span class="help-block">Latitude</span>
                                            </div>  
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="o" class="form-control" id="o" placeholder="Enter Longitude">
                                                <label for="o">Longitude</label>
                                                <span class="help-block">Longitude</span>
                                            </div>
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="p" class="form-control" id="p" placeholder="Enter Facebook">
                                                <label for="p">Facebook</label>
                                                <span class="help-block">Facebook</span>
                                            </div>
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="q" class="form-control" id="q" placeholder="Enter Tweeter">
                                                <label for="q">Tweeter</label>
                                                <span class="help-block">Tweeter</span>
                                            </div>
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="r" class="form-control" id="r" placeholder="Enter Instagram">
                                                <label for="r">Instagram</label>
                                                <span class="help-block">Instagram</span>
                                            </div>
                                            <div class="form-group form-md-line-input">
                                                <input type="text" name="s" class="form-control" id="s" placeholder="Enter Linkedin">
                                                <label for="s">Linkedin</label>
                                                <span class="help-block">Linkedin</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="min-height:800px">
                                        <div class="form-body">
                                            <div class="form-group form-md-line-input has-info">
                                                <select multiple="multiple" class="form-control" name="t[]" id="t">
                                                    @if(isset($groupOptions) && !empty($groupOptions))
                                                    {!! $groupOptions !!}
                                                    @endif
                                                </select>
                                                <label for="t">Groups</label>
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
</div>