<form class="login-form" id="login-form" method="post">
    <h3 class="form-title" style="text-align:center">{{$_page_elements['header']['title']}}</h3>
    <div class="alert alert-danger display-hide">
        <button class="close" data-close="alert"></button>
        <span>
            Enter any username and password. </span>
    </div>
    <div class="form-group">
        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
        <label class="control-label visible-ie8 visible-ie9">Username</label>
        <div class="input-icon">
            <i class="fa fa-user"></i>
            <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="{{$_page_elements['input'][0]['placeholder']}}" name="{{$_page_elements['input'][0]['name']}}"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9">Password</label>
        <div class="input-icon">
            <i class="fa fa-lock"></i>
            <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="{{$_page_elements['input'][1]['placeholder']}}" name="{{$_page_elements['input'][1]['name']}}"/>
        </div>
    </div>
    <div class="form-actions">
        <label class="checkbox">
            <input type="checkbox" name="remember" value="1"/> Remember me 
        </label>
        <button type="submit" class="btn blue pull-right" id="login-page">
            Login <i class="m-icon-swapright m-icon-white"></i>
        </button>
    </div>   
    @if($_page_styles['login']['options'] && $_page_styles['login']['options'] == true)
        @include('html.widgets.login.widgets_login_options')
    @endif
    <div class="forget-password">
        <h4>Forgot your password ?</h4>
        <p>
            no worries, click <a href="javascript:;" id="forget-password">
                here </a>
            to reset your password.
        </p>
    </div>
    <div class="create-account">
        <p>
            Don't have an account yet ?&nbsp; <a href="javascript:;" id="register-btn">
                Create an account </a>
        </p>
    </div>
</form>
<!-- END LOGIN FORM -->
