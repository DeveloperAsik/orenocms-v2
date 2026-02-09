<div class="page-bar">
    <ul class="page-breadcrumb">
        @if(isset($_breadcrumbs) && !empty($_breadcrumbs))
            @foreach($_breadcrumbs AS $key => $value)
                <li>
                    {!! $value['icon'] !!}
                    {!! $value['path'] !!}
                    {!! $value['arrow'] !!}
                </li>
            @endforeach
        @endif
        
    </ul>
    <div class="page-toolbar">
        <div id="dashboard-report-range" class="pull-right tooltips btn btn-sm btn-default" data-container="body" data-placement="bottom" data-original-title="Change dashboard date range">
            <i class="icon-calendar"></i>&nbsp; <span class="thin uppercase visible-lg-inline-block"><b>{{ isset($_date_now) ? $_date_now : ''}}</b></span>&nbsp; <i class="fa fa-angle-down"></i>
        </div> 
    </div>
</div>