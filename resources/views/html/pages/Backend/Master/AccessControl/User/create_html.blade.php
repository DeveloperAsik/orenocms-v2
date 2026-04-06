<div class="col-md-10">
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
            <form role="form">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="btn-group">
                                <a href="{!! $_config['header']['link'] !!}" id="sample_editable_1_new" class="btn green">
                                    {!! $_config['header']['title'] !!} {!! $_config['header']['icon'] !!}
                                </a>
                            </div>
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
                                    <input type="text" name="b" class="form-control" id="b" placeholder="Enter Permision Path">
                                    <label for="b">User LDAP</label>
                                    <span class="help-block">e.g. : ...</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">First Name</label>
                                    <span class="help-block">User first name</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Last Name</label>
                                    <span class="help-block">User last name</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Email</label>
                                    <span class="help-block">User Email</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Phone Number</label>
                                    <span class="help-block">User Phone Number</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="e" rows="3" placeholder="Enter Description"></textarea>
                                    <label for="e">Description</label>
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
                        <div class="col-md-6">
                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Last Education</label>
                                    <span class="help-block">Last Education</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <input type="text" name="c" class="form-control" id="c" placeholder="Enter Controller Name">
                                    <label for="c">Education Institution</label>
                                    <span class="help-block">Education Institution</span>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="e" rows="3" placeholder="Enter Skills"></textarea>
                                    <label for="e">Skills</label>
                                </div>
                                <div class="form-group form-md-line-input">
                                    <textarea class="form-control" name="e" rows="3" placeholder="Enter Notes   "></textarea>
                                    <label for="e">Notes</label>
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
                                <form action="../../assets/global/plugins/dropzone/upload.php" class="dropzone" id="my-dropzone"> </form>
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
            </form>
        </div>
    </div>
</div>