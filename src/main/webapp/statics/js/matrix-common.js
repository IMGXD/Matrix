/**
 * Created by IMGXD on 2017/8/1.
 */

function userLogout() {
    console.log("退出登陆")
    $.ajax({
            url: "/matrix/user/logout.do",
            method: "post",
            success: function () {
                window.location.reload();
            }
        }
    )
}
function videoQueryByParams(key, value) {
    console.log("开始查询");
    // var key = $("#keyword").val();
    var videos = [];
    console.log(key);
    $.ajax({
        url: "video/queryVideoByParams.do",
        data: {key: value, "pageNum": 1, "pageSize": 10},
        dataType: "json",
        // async:false,
        success: function (response) {
            // console.log(key);
            // console.log(value);
            if (response.status == 1) {
                error();
            } else {
                console.log(response);
                videos = response.data.list;
                console.log(videos);
                if (videos.length > 0) {
                    videoList(response.data);
                } else {
                    error();
                }
            }
        }
    });
}

function videoSearch() {
    console.log("开始查询");
    var key = $("#keyword").val();
    var videos = [];
    console.log(key);
    $.ajax({
        url: "video/queryVideoByTitle.do",
        data: {"title": key, "pageNum": 1, "pageSize": 10},
        dataType: "json",
        // async:false,
        success: function (response) {
            if (response.status == 1) {
                error();
            } else {
                console.log(response);
                videos = response.data.list;
                console.log(videos);
                if (videos.length > 0) {
                    videoList(response.data);
                } else {
                    error();
                }
            }
        }
    });
}

function error() {
    $("#videoCount").html("额，竟然没找到……");
    console.log("额，竟然没找到……");
    $("#videoList").html("");
    $("#pageNavigator").html("");
}
function videoList(data) {
    console.log("开始转换");
    var videos = data.list;
    console.log(videos);
    var msg = "为您找到相关课程<span  class='tips'>" + data.total + "</span>个";
    $("#videoCount").html(msg);
    $("#videoList").html("");
    for (i = 0; i < videos.length; i++) {
        var video = videos[i];
        var createTime = new Date(video.createTime);
        var str = "<li class='content'> <div class='col-md-3 content-1-div-1'> <img data-src='holder.js/100%x120'> </div> <div class='col-md-9 content-1-div-2'> <ul> <li> <h6>" + video.title + "</h6> <p class='p1'>" + video.title + "</p> <p class='p2'> 上传时间：" + createTime + " &nbsp;|&nbsp;&nbsp;&nbsp;难度：初级 </p> <p class='p3'> </p> </li> </ul> </div> </li>";
        $("#videoList").append(str)
    }
    console.log("转换结束");
}


function searchVideoByTitle() {
    // console.log( "video/searchVideoByParams.do?" + $("#keyword").attr("name") + "=" + $("#keyword").val());
    window.location.href = "video/searchVideoByParams.do?" + $("#keyword").attr("name") + "=" + $("#keyword").val();
    console.log(2222);
}

function queryLabels() {
    console.log("开始查询标签");
    var labels = [];
    $.ajax({
        url: "label/queryAllLabels.do",
        dataType: "json",
        async: false,
        success: function (response) {
            if (response.status == 0) {
                if (null != response.data) {
                    console.log(response.data);
                    labels = response.data;
                    console.log(labels);
                }
            }
        }
    });
    if (null != window.localStorage) {
        window.localStorage.setItem("labels", JSON.stringify(labels));
    }
    return labels;
}
function initLabels(labels) {
    if (null != labels) {
        console.log("开始初始化标签");
        $("#labels").html("");
        for (i = 0; i < labels.length; i++) {
            var label = labels[i];
//         var str="<li><a href='video/queryVideoByParams.do?title="+label.name +"'>"+label.name+"</a></li>";
//             var str = "<li><a href='javascript:void(0)'onclick='videoQueryByParams('remark,'" + label.id + "')>" + label.name + "</a></li>";
//             var str="<li><a href='javascript:void(0)'  onclick='videoQueryByParams(&quot"+"remark','"+label.id+"')>"+label.name+"</a></li>";
//             var loaction = "searchVideoByParams.do?remark=" + label.id;
            var str = "<li><a href='video/searchVideoByParams.do?remark=" + label.id + "'>" + label.name + "</a></li>";
            $("#labels").append(str);
        }

    }
    labelDetail();
}
function labelDetail() {

    if (null != window.localStorage) {
        var labels = JSON.parse(window.localStorage.getItem("labels"));
        console.log(labels);
        $(".videoLabel").each(function () {
            var result = "未分类";
            var labelId = $(this).html();
            labels.forEach(function (label) {
                // console.log("遍历数组元素"+label.id);
                if (label.id == labelId) {
                    result = label.name;
                    console.log("原始ID" + labelId + "标签内容" + result);
                    // $(this).html("");
                }
            })
            $(this).html(result)
            // item.html(result);
            // item.html("原始ID" + labelId + "标签内容" + result);


        });

    }
}