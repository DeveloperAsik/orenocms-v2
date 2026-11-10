<script>
    var __init=function(e){var t=e.async;""!=e.async&&null!=e.async||(t=!1);var a=e.timeout;return""!=e.timeout&&null!=e.timeout||(a=0),$.ajax({url:e.url,cache:!1,headers:e.headers,type:e.type,contentType:e.contentType,dataType:e.dataType,data:e.data,processData:!1,CrossDomain:!0,async:t,timeout:a})},__ajax_send=function(e){var t=__init(e);if(t){if(t.responseJSON)return t.responseJSON;if(t.responseText)return JSON.parse(t.responseText)}};
    //var __init = function (params) {
    //    var asyncVal = params.async;
    //    if (params.async == '' || params.async == null) {
    //        asyncVal = false;
    //    }
    //    var timeoutVal = params.timeout;
    //    if (params.timeout == '' || params.timeout == null) {
    //        timeoutVal = 0;
    //    }
    //    return $.ajax({
    //        url: params.url,
    //        cache: false,
    //        headers: params.headers,
    //        type: params.type,
    //        contentType: params.contentType,
    //        dataType: params.dataType,
    //        data: params.data,
    //        processData: false,
    //        CrossDomain: true,
    //        async: asyncVal,
    //        timeout: timeoutVal
    //    });
    //}
    //var __ajax_send = function (params) {
    //    var response = __init(params);
    //    if (response) {
    //        if (response.responseJSON) {
    //            return response.responseJSON;
    //        }
    //        if (response.responseText) {
    //            return JSON.parse(response.responseText);
    //        }
    //    }
    //}
</script>