<script>
    var CreateJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('CreateJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                Dropzone.autoDiscover = false;
                var myDropzone = new Dropzone("#uploadPicture", {
                    url: _base_extraweb_uri +  "/master/uac/users/insert?a=1",
                    // Add the CSRF token to headers
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    // Additional configuration options...
                });
//                Dropzone.options.uploadForm = {// The camelized version of the ID of the form element
//
//                    // The configuration we've talked about above
//                    autoProcessQueue: false,
//                    uploadMultiple: true,
//                    parallelUploads: 100,
//                    maxFiles: 100,
//
//                    // The setting up of the dropzone
//                    init: function () {
//                        var myDropzone = this;
//
//                        // First change the button to actually tell Dropzone to process the queue.
//                        this.element.querySelector("button[type=submit]").addEventListener("click", function (e) {
//                            // Make sure that the form isn't actually being sent.
//                            e.preventDefault();
//                            e.stopPropagation();
//                            myDropzone.processQueue();
//                        });
//
//                        // Listen to the sendingmultiple event. In this case, it's the sendingmultiple event instead
//                        // of the sending event because uploadMultiple is set to true.
//                        this.on("sendingmultiple", function () {
//                            // Gets triggered when the form is actually being sent.
//                            // Hide the success button or the complete form.
//                        });
//                        this.on("successmultiple", function (files, response) {
//                            // Gets triggered when the files have successfully been sent.
//                            // Redirect user or notify of success.
//                        });
//                        this.on("errormultiple", function (files, response) {
//                            // Gets triggered when there was an error sending the files.
//                            // Maybe show form again, and notify user of error
//                        });
//                    }
//
//                }
                $('#submitForm').on('click', function () {
                    var formdata = {
                        a: $('input[name="a"]').val(),
                        b: $('input[name="b"]').val(),
                        c: $('input[name="c"]').val(),
                        d: $('input[name="d"]').val(),
                        e: $('input[name="e"]').val(),
                        f: $('input[name="f"]').val(),
                        g: $('input[name="g"]').val(),
                        h: ($('input[type="checkbox"][name="h"]:checked').val()) ? 1 : 0
                    };
                    var options = {
                        url: _base_extraweb_uri + '/master/uac/user/insert',
                        methodType: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: 2000
                    };
                    var response = __fn_ajax_send(JSON.stringify(formdata), options);
                    var msg = 'error';
                    if (response.responseJSON.status.code == 200) {
                        msg = 'success';
                    }
                    setTimeout(function () {
                        __fn_loading_img('img-loading', 'stop');
                        __fn_alert_message(response.responseJSON.status.message, msg, {type: 'toastr', timeOut: 2000});
                    }, 1500);
                });
            }
        }
    }();
    jQuery(document).ready(function () {
        CreateJS.init();
    });
</script>