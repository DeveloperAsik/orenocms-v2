w<div class="top-menu">
    <ul class="nav navbar-nav pull-right">
        <!-- BEGIN NOTIFICATION DROPDOWN -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-bell"></i>
                <span class="badge badge-default">
                    {{$_notifications['total']}} </span>
            </a>
            <ul class="dropdown-menu">
                <li class="external">
                    <h3><span class="bold">{{$_notifications['total']}} pending</span> notifications</h3>
                    <a href="extra_profile.html">view all</a>
                </li>
                <li>
                    <ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
                        @if(isset($_notifications['strHtml']) && !empty($_notifications['strHtml']))
                        {!! $_notifications['strHtml'] !!}
                        @endif
                    </ul>
                </li>
            </ul>
        </li>
        <!-- END NOTIFICATION DROPDOWN -->
        <!-- BEGIN INBOX DROPDOWN -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-envelope-open"></i>
                <span class="badge badge-default">
                    {{$_messages['total']}} </span>
            </a>
            <ul class="dropdown-menu">
                <li class="external">
                    <h3>You have <span class="bold">{{$_messages['total']}} New</span> Messages</h3>
                    <a href="page_inbox.html">view all</a>
                </li>
                <li>
                    <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                        @if(isset($_messages['strHtml']) && !empty($_messages['strHtml']))
                        {!! $_messages['strHtml'] !!}
                        @endif
                    </ul>
                </li>
            </ul>
        </li>
        <!-- END INBOX DROPDOWN -->
        <!-- BEGIN TODO DROPDOWN -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-calendar"></i>
                <span class="badge badge-default">
                    3 </span>
            </a>
            <ul class="dropdown-menu extended tasks">
                <li class="external">
                    <h3>You have <span class="bold">12 pending</span> tasks</h3>
                    <a href="page_todo.html">view all</a>
                </li>
                <li>
                    <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">New release v1.2 </span>
                                    <span class="percent">30%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">Application deployment</span>
                                    <span class="percent">65%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">Mobile app release</span>
                                    <span class="percent">98%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">98% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">Database migration</span>
                                    <span class="percent">10%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">10% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">Web server upgrade</span>
                                    <span class="percent">58%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">58% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">Mobile development</span>
                                    <span class="percent">85%</span>
                                </span>
                                <span class="progress">
                                    <span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">85% Complete</span></span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="task">
                                    <span class="desc">New UI release</span>
                                    <span class="percent">38%</span>
                                </span>
                                <span class="progress progress-striped">
                                    <span style="width: 38%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">38% Complete</span></span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <!-- END TODO DROPDOWN -->
        <!-- BEGIN USER LOGIN DROPDOWN -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-user">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <img alt="" class="img-circle" src="{{config('app.base_url_assets_templates')}}/metronic/assets/admin/layout/img/avatar3_small.jpg"/>
                <span class="username username-hide-on-mobile">
                    Nick </span>
                <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-default">
                <li>
                    <a href="extra_profile.html">
                        <i class="icon-user"></i> My Profile </a>
                </li>
                <li>
                    <a href="page_calendar.html">
                        <i class="icon-calendar"></i> My Calendar </a>
                </li>
                <li>
                    <a href="inbox.html">
                        <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
                            3 </span>
                    </a>
                </li>
                <li>
                    <a href="page_todo.html">
                        <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
                            7 </span>
                    </a>
                </li>
                <li class="divider">
                </li>
                <li>
                    <a href="extra_lock.html">
                        <i class="icon-lock"></i> Lock Screen </a>
                </li>
                <li>
                    <a href="login.html">
                        <i class="icon-key"></i> Log Out </a>
                </li>
            </ul>
        </li>
        <!-- END USER LOGIN DROPDOWN -->
        <!-- BEGIN QUICK SIDEBAR TOGGLER -->
        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
        <li class="dropdown dropdown-quick-sidebar-toggler">
            <a href="javascript:;" class="dropdown-toggle">
                <i class="icon-logout"></i>
            </a>
        </li>
        <!-- END QUICK SIDEBAR TOGGLER -->
    </ul>
</div>