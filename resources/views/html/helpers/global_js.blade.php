<script>
    var __fn_welcome_greetings = function () {
        console.log(`%c
                                        i!""<I                  
              <qqqqqqp  qqqqqqqqqqq   </Xzzzzz{[.   qqqqqpwQo    
             iqqwYzJqq .qqqqpqqqqpq  ,zzzzzzzzzc_   qppqpqpqqI   
            qpp  .  ..     pqq    ._zXzc"  _zzzz>   qpq   ~ppq   
            pqqJ:    .     qqq     1zzzI ]~ }zzz<   qqq   .qqq   
             "qqqqpw0'      qqq    <zzzz..cX :zzcc, pqq   Lqq0   
              'Jqqpqqp^     qqq    lzzzz..zX :zzzz> qqqqqqwqq    
                  ^ZqqJ     qqq    <zzzz..z   "zXv" qqqqq0|,.    
             "      pqJ     qqq     ]zzz..cz  cczi  qqq          
             qpY; :ppp~     qqq     <ccz .zz<xzXzi  qqq          
            .qpqqpqqqn      qqq      lvXzzXzzzcc-   qqq          
               ."ll^        qqq       >_czzzzz!I    qqq            
                            qqq         .'l!::<     qqq      `, 'font-family:monospace;color:red');
        console.log("%c Hai guys... \n cuma info nih, Console ini hanya untuk akses development dan debuging programmer \n jadi kalau ada yang iming - imingin bisa hack atau buka fitur diskon 50% dengan copas apapun di console browser \n bisa di pastikan bahwa itu penipuan \n tengkiyu ya udah main kesini. Btw saat ini belum ada info loker nanti jika sudah ada info dari tim HR kita share disini juga", 'color:orange;font-size:14px');
        console.log("%c by tim kuli koding.", 'color:#000;font-size:10px');
    };
    var __fn_idle_session_check = function () {
        var ii = 1;
        var auto_logout = (_session_is_autologged_out) && (_session_is_autologged_out != '') ? _session_is_autologged_out : 0;
        if (document.URL != _base_extraweb_uri + '/login' && auto_logout == 1) {
            setInterval(function () {
                console.log(ii + ' seconds');
                ii = parseInt(ii) + 1;
                if (ii == 1200) { //20 minutes idle
                    loadingImg('img-loading', 'start');
                    setTimeout(function () {
                        console.log('system detected idle session..... close all apps and poweroff... please relogin');
                        fnAlertStr('Idle Session detected, close apps... please relogin...', 'info', {type: 'toastr', timeOut: 1000});
                        loadingImg('img-loading', 'stop');
                        window.location.href = _base_extraweb_uri + '/logout';
                    }, 1500);
                }
            }, 1000);
        }
        var i = 1;
        var __curr_module = "{{$_default_module}}";
        if (__curr_module && __curr_module == 'Backend' && _session_is_logged_in == 1) {
            __fn_init_info_board(i);
            __fn_init_info_line(i);
            setInterval(function () {
                __fn_fetch_notif();
                i++;
                __fn_init_info_board(i);
                __fn_init_info_line(i);
            }, 30000);
        }
    };

    var __fn_alert_message = function (k, t, o) {
        var c = 'color:green;font-size:12px';
        if (o && o.console && o.console == true) {
            console.log('%c log: ' + string, color);
        } else {
            const toastParams = Swal.mixin({
                toast: true,
                position: 'top',
                timer: 3000
            });
            const hTXT = '';
            if (o.header) {
                hTXT = o.header;
            }
            toastr.option = {
                "closeButton": o.closeButton,
                "debug": o.debug,
                "newestOnTop": o.newestOnTop,
                "progressBar": o.progressBar,
                "positionClass": o.positionClass,
                "preventDuplicates": o.preventDuplicates,
                "onclick": o.onclick,
                "showDuration": o.showDuration,
                "hideDuration": o.hideDuration,
                "timeOut": o.timeOut,
                "extendedTimeOut": o.extendedTimeOut,
                "showEasing": o.showEasing,
                "hideEasing": o.hideEasing,
                "showMethod": o.showMethod,
                "hideMethod": o.hideMethod
            };
            switch (t) {
                case "info":
                case "warning":
                    if (o.type == 'swal') {
                        Toast.fire({
                            type: 'warning',
                            title: k
                        });
                    } else {
                        (_env && _env !== 'production') ? toastr.info(k, hTXT) : '';
                    }
                    color = 'color:#fe8642; font-size:12px';
                    break;
                case "success":
                    if (o.type == 'swal') {
                        Toast.fire({
                            type: 'success',
                            title: k
                        });
                    } else {
                        (_env && _env !== 'production') ? toastr.success(k, hTXT) : '';
                    }
                    break;
                case "error":
                case "danger":
                    if (o.type == 'swal') {
                        Toast.fire({
                            type: 'danger',
                            title: k
                        });
                    } else {
                        (_env && _env !== 'production') ? toastr.error(k, hTXT) : '';
                    }
                    c = 'color:#a40000; font-size:12px';
                    break;
            }
            console.log('%c log: ' + k, c);
            if (o.withHtml == true) {
                __fn_alert_html(k, t);
            }
        }
    };

    var __fn_alert_html = function (k, t, o) {
        var s = '<div class="row"><div class="col-md-12">';
        switch (t) {
            case 'success':
                s = s + '<div id="alert_info" class="alert alert-success alert-dismissible">';
                s = s + '  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
                s = s + '  <h5><i class="icon fas fa-check"></i> Alert!</h5>';
                s = s + k;
                s = s + '</div>';
                break;
            case 'error':
                s = s + '<div id="alert_info" class="alert alert-danger alert-dismissible">';
                s = s + '  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
                s = s + '  <h5><i class="icon fas fa-ban"></i> Alert!</h5>';
                s = s + k;
                s = s + '</div>';
                break;
            case 'warning':
                s = s + '<div id="alert_info" class="alert alert-warning alert-dismissible">';
                s = s + '  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
                s = s + '  <h5><i class="icon fas fa-exclamation-triangle"></i> Alert!</h5>';
                s = s + k;
                s = s + '</div>';
                break;
            default :
                s = s + '<div id="alert_info" class="alert alert-info alert-dismissible">';
                s = s + '  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
                s = s + '  <h5><i class="icon fas fa-info"></i> Alert!</h5>';
                s = s + k;
                s = s + '</div>';
                break;
        }
        s = s + '</div></div>';
        if (o && o['element']) {
            $(el).append(s);
        } else {
            $('.content-header > .container-fluid').append(s);
        }
    };
    
    var __fn_loading_bg = function(a, e, m, r){
        if(a == 'start' || e == '' ){
            console.log('loading background . . . ');
            var path_svg = "{{config('app.base_url_assets_media')}}" + '/images/loading/sprite.svg';
            $('body').append('<div id="loading_bg" style="z-index:9998; background-color:#f9f9fb; opacity:0.8; width:100%; height:100%; position: fixed; top:0px; left:0px"><button style="position:fixed; top: 40%; left: 50%; background-color: transparent; border: none; color: #fff;" class="btn btn-primary btn-loading btn-xl btn-svg-icon"><svg width="16px" height="16px"><use Content-Type="application/font-woff2" xlink:href="' + path_svg + '#quickview-16"></use></svg></button></div>');
        }else{
            $('#loading_bg').css({'display': 'none'});
            $('#loading_bg').hide();
            $('#loading_bg').remove();
            if (e) {
               var c = 'rgb(204, 51, 51)';
               if (r === 'success') {
                   c = 'rgb(52, 194, 105)';
               }
               $(e).html('<p style="color:' + c + '">' + m + '</p>');
            }
        }
    };
    
    var __fn_loading_img = function(e,a,o){
        if(!e) e = 'img-loading';
        if(!o) o = 'circle-loading';
        var animation = bodymovin.loadAnimation({container: document.getElementById(e),
            path: _path_json + '/lottie/' + o + '.json',
            renderer: 'svg',
            loop: true,
            autoplay: true,
            name: "Loading cuy... sabar ye"
        });
        if (a === 'play' || a == 'start') {
            __fn_loading_bg('start');
            $('#' + e).show();
            animation.play();
        }
        if (a === 'destroy' || a === 'stop') {
            __fn_loading_bg('stop');
            animation.destroy();
            $('#' + e).hide();
        }
    };

    var __fn_ajax_send = function(d, o){
        //var options = {
        //  uri : '',
        //  type : '',
        //  dataType: 'json',
        //  file : '',
        //  header : '',
        //  async : '',
        //  timeout : ''
        //};
        //__fn_ajax_send = {arrdata, arrOptions};
        var url = o.url;
        var type = o.type;
        var file = o.file;
        var header = o.header;
        var dataType = o.dataType;
        var async = o.async;
        var timeout = o.timeout;
        var param_ajax = {
            url: url, 
            type: type, 
            dataType: dataType, 
            data: d, 
            headers: (header) ? header : '', 
            async: async, 
            CrossDomain: true, 
            timeout: timeout
        }
        if (file == true){
            param_ajax = {
                url: url,
                cache: false,
                type: type,
                data: d,
                headers: (header) ? header : '',
                async: async,
                enctype: 'multipart/form-data',
                processData: false,
                contentType: true,
                CrossDomain: true,
                timeout: timeout
            };
        }
        return $.ajax(param_ajax);
    };
    var __fn_set_sleep = function (ms) { return new Promise(resolve => setTimeout(resolve, ms)); };
    var __str_slug = function (s) { var str = s.replace(/\+/g, ''); str = str.replace(/:/g, ''); str = str.replace(/,/g, ''); str = str.replace(/\./g, ''); str = str.replace(/&/g, ''); str = str.replace(/\|/g, ''); str = str.replace(/ /g, '-'); str = str.replace(/\--/g, '-'); str = str.replace(/\---/g, '-'); return str.toLowerCase(); };
    var __fn_set_pagination_info = function (e, d) { if (e) { for (var i = 0; i < Object.keys(d).length; i++) { var key = Object.keys(d)[i]; $(e).attr(key, d[key]); } } };
    var __fn_get_date_now = function (f) { if (!f) f = 'd-m-Y h:i:s'; return dateFormat(new Date(), f); };
    var __fn_set_html_decode = function (input) { const textArea = document.createElement("textarea"); textArea.innerHTML = input; return textArea.value; };
    var __fn_set_html_encode = function (input) { const textArea = document.createElement("textarea"); textArea.innerText = input; return textArea.innerHTML.split("<br>").join("\n"); };
    var __fn_blink_char = function (e) { var i = 1;  setInterval(function () { if (i % 2 == 0) { $('#' + e).css('display', ''); } else { $('#' + e).css('display', 'none'); } i++ }, 1000); };
    var __fn_uppercase = function (s) { return s[0].toUpperCase() + s.slice(1); };
    var __fn_play_loading_animation = function (e) { var element = $(e); lottie.loadAnimation({container: element, renderer: 'svg', loop: true, autoplay: true, path: _path_json + '/lottie/circle-loading.json' }); };
    var __fn_currency_format = function (n) { return new Intl.NumberFormat(['ban', 'id']).format(n); };
    var __fn_reload_datatables = function(e){ $(e).DataTable().ajax.reload(); return false; };
    var __fn_find_word = function(w, s) { return RegExp('\\b' + w + '\\b').test(s) };
    var __fn_hex_to_rgba = function(hex){ var c; if(/^#([A-Fa-f0-9]{3}){1,2}$/.test(hex)){ c= hex.substring(1).split(''); if(c.length== 3){ c= [c[0], c[0], c[1], c[1], c[2], c[2]]; } c= '0x'+c.join(''); return 'rgb('+[(c>>16)&255, (c>>8)&255, c&255].join(',')+')'; } throw new Error('Bad Hex'); };
    
    //custom request between dbs
    var __fn_reload_total_chat = function(){ if (typeof __session_is_logged_in !== 'undefined') { var uri = _base_extraweb_uri + '/messaging/inbox/get_list?a=2'; var response = __fn_ajax_send({}, {url : _base_extraweb_uri + '/messaging/inbox/get_list?a=2', type : 'POST', dataType: 'json', file : '', header : {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}, async : false, timeout : 2000}); if(response.responseJSON){ $('span#total_chat').html(response.responseJSON.total_chat); } } return false; };
    var __fn_fetch_notif = function(){ var i = 0; setInterval(function(){ i++; if(i%10 == 0){ var full_url = document.URL; var segment = full_url.replace(_base_extraweb_uri ,''); switch(segment){ case "/messaging/inbox": __fn_reload_datatables('#inbox'); break;  default: __fn_reload_total_chat();  break; } } },1000); };
    
    
    var __fn_init_info_board  = function(i){
        //__fn_loading_bg('start','sidebarWrapper');
        var sh = screen.height;
        var eh = parseInt(sh * 0.7);
        $('#sidebar_info').css({'height': eh + 'px', 'width':'100%', 'overflow-y': 'auto'});
        var divIDVar = $('#sidebar_info').length;
        if (divIDVar !== 0){
            var arrOptions = {
                url : _base_extraweb_uri + '/ajax/post/get_information_board',
                type : 'POST',
                dataType: 'json',
                file : '',
                header :  {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                async :false,
                timeout : 2000
            };
            var response = __fn_ajax_send({}, arrOptions);
            var resp = JSON.parse(response.responseText);
            if (resp && resp.data && resp.data.strHtml) {
                var total_update = resp.data.is_total_update;
                var el_total_update = $('#sidebar_info').attr('data-id');
                if (el_total_update == 0 || total_update > el_total_update){
                    setTimeout(function(){
                        //__fn_loading_bg('stop','sidebarWrapper');
                        $('#sidebar_info').attr('data-id', total_update);
                        $('#sidebar_info').html(resp.data.strHtml);
                    }, 2000);
                } else{
                    $('#sidebar_info').attr('data-id', total_update);
                }
            }
        }
    };
    
    var __fn_init_info_line = function(i){
        var arrOptions = {
                url : _base_extraweb_uri + '/ajax/post/get_information_line',
                type : 'POST',
                dataType: 'json',
                file : '',
                header :  {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                async :false,
                timeout : 2000
            };
        var response = __fn_ajax_send({}, arrOptions);
        var resp = JSON.parse(response.responseText);
        var divIDVar = $('#informational_line_msg').length;
        if (divIDVar !== 0){
            $('#informational_line_msg').css({'height':' 55px','width':'100%','overflow-y': 'auto'});
            if (resp && resp.data && resp.data.strHtml) {
                var total_update = resp.data.is_total_update;
                var el_total_update = $('#informational_line_msg').attr('data-id');
                if(el_total_update == 0 || total_update >= el_total_update ){
                    setTimeout(function(){
                        $('#informational_line_msg').attr('data-id',total_update);
                        $('#informational_line_msg').html(resp.data.strHtml);
                    },2000);
                }else{
                    $('#informational_line_msg').attr('data-id',total_update);
                }
            }
        }
    };
    
    var Globaljs = function () {
        return {
            //main function to initiate the module
            init: function () {
                __fn_welcome_greetings();
                __fn_alert_message('Globaljs successfully load', 'success', {type: 'toastr', timeOut: 2000});
                $('.close').on('click', function () {
                    var t = $(this).attr('data-dismiss');
                    if (t == 'alert') {
                        __fn_ajax_send({type: t, close: true}, {url : _base_url + '/remove-session-flash', type : 'POST', dataType: 'json', file : '', header : {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}, async : false, timeout : 2000});
                    }
                });
            }
        };
    }();
    jQuery(document).ready(function () {
        Globaljs.init();
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        //QuickSidebar.init(); // init quick sidebar
        Demo.init(); // init demo features
    });
    jQuery(window).on("load", function () {
        __fn_alert_message('page completed load', 'success', {type: 'toastr', timeOut: 2000});
        __fn_idle_session_check();
    });
</script>
