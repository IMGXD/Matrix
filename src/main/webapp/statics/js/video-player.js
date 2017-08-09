/**
 * Created by IMGXD on 2017/8/1.
 */
$(function () {
    recommendList();
    initCommentForm();
    loadCommentForm();

});

function initCommentForm() {
    console.log("初始化评论列表");
    $('body').on('click', '.mark', function () {
        $(this).toggleClass('love')
    });
    $('body').on('click', '.del', function () {
        $(this).parent().parent().slideUp(function () {
            $(this).remove();
        })
    });
    $('#send').on('click', function () {
        var v = $('#weibo').val();
        if (v == '') {
            alert('请先输入内容~');
            return;
        }
        var userId = $("input[name='userId']").val();
        var content=$('#weibo').val();
        var videoId=$("input[name='videoId']").val();
        $.ajax({
            url: "comment/add.do",
            method: "post",
            data: {'userId': userId, "content": content, "videoId": videoId},
            dataType: 'json',
            success: function (response) {
                console.log(response)
                if (null != response && response.status == 0) {
                    alert("发表成功");
                    console.log(userId+content+videoId);
                    loadCommentForm();
                } else {
                    alert(response.msg);
                    console.log(userId+content+videoId);
                }
            }
        });


        // var temp = $('#temp').html();
        // temp = temp.replace('@content', v).replace('@user', 'matrix').replace('@date', (new Date()).Format("yyyy-M-d hh:mm:ss"));
        // $(temp).prependTo($('#list')).hide().slideDown();
        // $('#weibo').val('');
    });
}


function loadCommentForm() {
    console.log("加载评论列表");
    $.ajax({
        url: "comment/list.do",
        method: "get",
        data: {videoId: 1,pageNum:1,pageSize:100},
        success: function (response) {
            if (response.status == 0) {
                var page = response.data;
                console.log(page);
                var list = page.list;
                console.log(list);
                listComment(list);
            }
        }
    });
}

function listComment(list) {
    $("#list").html("");
    list.forEach(function (item) {
        console.log(item);
        var temp = $("#commentTemplate").html();
        // console.log(item.content);
        temp = temp.replace('@content', item.content).replace('@user', item.userId).replace('@date', (new Date(item.createTime)).Format("yyyy-M-d hh:mm:ss"));
        // $(temp).prependTo($('#list')).hide().slideDown();
        // temp.replace('@content', item.content);
        // temp.replace('@date', (new Date(item.createTime)).Format("yyyy-M-d hh:mm:ss"));
        // temp.replace('@content', item.userId);
        // temp.children("content").html(item.content);
        $("#list").append(temp);
    });
}


function recommendList() {
    $.ajax({
        url: "video/recommendList.do",
        data: {"remark": 1},
        method: "get",
        dataType: "json",
        success: function (response) {
            if (response.status == 1) {
                error();
            } else {
                // console.log(response);
                videos = response.data;
                // console.log(videos);
                if (videos.length > 0) {
                    // console.log(response.data);
                    listRecommend(response.data)
                    // videoList(response.data);
                } else {
                    error();
                }
            }
        }
    })
}

function listRecommend(lists) {
    console.log("开始转换");
    $("#recommendList").html("");

    for (var i = 0; i < ((4 < lists.length) ? 4 : lists.length); i++) {
        var list = lists[i];
        // var str = "<li><div class='video-pic'><img src='" + list.image + "' alt='" + list.title + "'></div><div class='video-art'><h4>" + list.title + "</h4><p>" + list.detail + "</p></div> </li>"
        var str = $("#recommandTemplate").html();
        // console.log(list);
        str = str.replace('@videoId', list.id).replace('@videoId', list.id).replace('@videoImage', list.image).replace('@videoTitle', list.title).replace('@videoDetail', list.detail).replace('@videoTitle', list.title);
        // console.log(str);
        $("#recommendList").append(str);
    }
}


function videoSearch() {
    console.log("开始查询");
    var key = $("#keyword").val();
    var videos = [];
    console.log(key);
    $.ajax({
        url: "video/queryVideoByTitle.do",
        data: {"title": key, "pageNum": 3, "pageSize": 3},
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





