<script>
    var __fn_validate_input = function (keyword, types) {
        var formdata = {t: types, k: keyword};
        var options = {
            url: _base_extraweb_uri + '/authentification/init',
            type: 'POST',
            dataType: 'json',
            file: false,
            header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            async: false,
            timeout: ''
        };
        var response = __fn_ajax_send(JSON.stringify(formdata), options);
        var strResponse = '';
        if (response.responseJSON.status.code == 200) {
            strResponse = response.responseJSON.data;
        }
        return strResponse;
    };

    var __fn_prevent_enterkey_hit = function (el) {
        const form = document.getElementById(el);
        form.addEventListener('keydown', function (event) {
            if (event.key === 'Enter') {
                event.preventDefault(); // Stop the form from submitting
            }
        });
    };
    var LoginJS = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_alert_message('LoginJS successfully load', 'success', {type: 'toastr', timeOut: 2000});
                Metronic.init(); // init metronic core components
                Layout.init(); // init current layout
                Login.init();
                Demo.init();
                console.log('_env : ' + _env);
                // init background slide images
                $.backstretch([
                    "{{config('app.base_url_assets_templates')}}/metronic/assets/admin/pages/media/bg/1.jpg",
                    "{{config('app.base_url_assets_templates')}}/metronic/assets/admin/pages/media/bg/2.jpg",
                    "{{config('app.base_url_assets_templates')}}/metronic/assets/admin/pages/media/bg/3.jpg",
                    "{{config('app.base_url_assets_templates')}}/metronic/assets/admin/pages/media/bg/4.jpg"
                ], {fade: 1000, duration: 8000});
                __fn_prevent_enterkey_hit('login-form');
                $('input[name="' + a + '"').on("keydown", function (event) {
                    // Check if the key code is 32 (spacebar)
                    if (event.keyCode === 32) {
                        // You can add your custom logic here
                        $('input[name="' + a + '"]').addClass('is-invalid');
                        $('input[name="' + a + '"]').css({'color': 'red', 'border': '2px solid red', 'font-size': '10px'});
                        __fn_alert_message('spacebar on your keyboard is disabled!', 'info', {type: 'toastr', timeOut: 2000});
                        return false;
                    } else {
                        $('input[name="' + a + '"]').removeClass('is-invalid');
                        $('input[name="' + a + '"').css({'color': '#666', 'border': '1px solid #ced4da', 'font-size': '12px'});
                    }
                });
                $('input[name="' + b + '"]').on("keydown", function (event) {
                    // Check if the key code is 32 (spacebar)
                    if (event.keyCode === 32) {
                        // You can add your custom logic here
                        $('input[name="' + b + '"]').addClass('is-invalid');
                        $('input[name="' + b + '"]').css({'color': 'red', 'border': '2px solid red', 'font-size': '10px'});
                        __fn_alert_message('spacebar on your keyboard is disabled!', 'info', {type: 'toastr', timeOut: 2000});
                        return false;

                        // Example: prevent the default spacebar action (e.g., scrolling the page)
                        // event.preventDefault();
                    } else {
                        $('input[name="' + b + '"]').removeClass('is-invalid');
                        $('input[name="' + b + '"]').css({'color': '#666', 'border': '1px solid #ced4da', 'font-size': '12px'});
                    }
                });
                $('input[name="' + a + '"]').on('change', function () {
                    __fn_loading_img('img-loading', 'start');
                    var keys = this.value;
                    var type = 'validate-userid';
                    var stringSanitize = __fn_validate_input(keys, type);
                    setTimeout(function () {
                        __fn_loading_img('img-loading', 'stop');
                        $('input[name="' + a + '"]').val(stringSanitize);
                    }, 2000);
                });
                $('input[name="' + b + '"]').on('change', function () {
                    var a = 'input[name="' + b + '"]';
                    if (a == '' || a == null) {
                        __fn_alert_message('Please Insert Username / Email / NPP first', 'error', {type: 'toastr', timeOut: 2000});
                        return false;
                    }
                    var keys = this.value;
                    var type = 'validate-passid';
                    var stringSanitize = __fn_validate_input(keys, type);
                    $('input[name="' + b + '"]').val(stringSanitize);
                });
                $('button#login-page').on('click', function (e) {
                    __fn_loading_img('img-loading', 'start');
                    var options = {
                        url: _base_extraweb_uri + '/authentification/init',
                        type: 'POST',
                        dataType: 'json',
                        file: false,
                        header: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                        async: false,
                        timeout: ''
                    };
                    var formdata = {
                        t: 'validate-login-form',
                        c: _uuid,
                        d: Base64.encode($('input[name="' + a + '"]').val()),
                        e: Base64.encode($('input[name="' + b + '"]').val())
                    };
                    var response = __fn_ajax_send(JSON.stringify(formdata), options);
                    //console.log(response.responseJSON);
                    //return false;
                    if (response.responseJSON.status.code == 200) {
                        $('input[name="' + a + '"]').removeClass('is-invalid');
                        $('input[name="' + a + '"').css({'color': '#666', 'border': '1px solid #ced4da', 'font-size': '12px'});
                        $('input[name="' + b + '"]').removeClass('is-invalid');
                        $('input[name="' + b + '"]').css({'color': '#666', 'border': '1px solid #ced4da', 'font-size': '12px'});
                        setTimeout(function () {
                            __fn_loading_img('img-loading', 'stop');
                            window.location = _base_extraweb_uri + '/dashboard';
                        }, 2000);
                    } else {
                        __fn_alert_message('Failed login, username or password is not matched or not founded!', 'error', {type: 'toastr', timeOut: 2000});
                        $('input[name="' + a + '"]').addClass('is-invalid');
                        $('input[name="' + a + '"]').css({'color': 'red', 'border': '2px solid red', 'font-size': '10px'});
                        $('input[name="' + b + '"]').addClass('is-invalid');
                        $('input[name="' + b + '"]').css({'color': 'red', 'border': '2px solid red', 'font-size': '10px'});
                        return false;
                    }
                    e.preventDefault();
                });
            }
        }
    }();
    jQuery(document).ready(function () {
        LoginJS.init();
    });
</script>