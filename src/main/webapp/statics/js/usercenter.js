$(function () {
    toMain();
    initUserLabels(queryLabels());
    $('.container ul.nav > li').click(function () {
        event.preventDefault();
        $(this).siblings().removeClass('active');
        $(this).addClass('active');
    });
});

function initUserLabels(labels) {
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

function toMain() {
    console.log("主页")
    $("#changeContent").html("");
    var userId = $("input[name='userId']").val();
    if (null == userId || "" == userId || "undefined" == userId) {
        alert("请先登录");
        return;
    }
    ;
    $.ajax({
        url: "video/queryVideoByParams.do",
        data: {userId: userId},
        dataType: "json",
        method: "get",
        // async:false,
        success: function (response) {
            console.log(response);
            if (status == 0) {
                console.log("response.data");
                console.log(response.data);
                console.log("response.data.list");
                console.log(response.data.list);
                changeContent(response.data.list);
            } else {
                console.log(response.msg)

            }
        }
    });
}
function toShare() {
    console.log("分享")
    $("#changeContent").html("");
    var userId = $("input[name='userId']").val();
    if (null == userId || "" == userId || "undefined" == userId) {
        alert("请先登录");
        return;
    }
    ;
    $.ajax({
        url: "video/queryVideoByParams.do",
        data: {userId: userId},
        dataType: "json",
        method: "get",
        // async:false,
        success: function (response) {
            console.log(response);
            if (status == 0) {
                console.log("response.data");
                console.log(response.data);
                console.log("response.data.list");
                console.log(response.data.list);
                changeContent(response.data.list);
            } else {
                console.log(response.msg)

            }
        }
    });
}
function toFavourite() {
    console.log("收藏")
    $("#changeContent").html("");
    var userId = $("input[name='userId']").val();
    if (null == userId || "" == userId || "undefined" == userId) {
        alert("请先登录");
        return;
    }
    $.ajax({
        url: "favourite/list.do",
        dataType: "json",
        method: "get",
        // async:false,
        success: function (response) {
            console.log(response);
            if (status == 0) {
                console.log("response.data");
                console.log(response.data);
                console.log("response.data.list");
                console.log(response.data.list);
                var favourite = response.data.list;
                if (null == favourite || "" == favourite || "undefined" == favourite) {
                    $("#changeContent").append("没有收藏，还不去找！");
                    return;
                }
                changeContent(favourite);
            } else {
                console.log(response.msg)

            }
        }
    });
}
function toUpload() {
    console.log("上传界面")
    $("#changeContent").html("");
    $(".pagination-self").html("");
    // var str="<div><br/><form action='video/add.do'enctype='multipart/form-data'method='post'><table border='0'cellpadding='0'cellspacing='0'><tr><td>标题</td><td><input type='text'></td></tr><tr><td>详情</td><td><input type='text'></td></tr><tr><td>标签</td><td><input type='text'></td></tr><tr><td>分类</td><td><input type='text'></td></tr><input id='imageName'type='hidden'><input id='videoName'type='hidden'><tr><td><input type='submit'></td></tr></table></form><form action='video/uploadFile.do'enctype='multipart/form-data'method='post'><tr><td width='90'align='center'>选择视频：</td><td width='160'align='center'><input type='file'></td><td><input type='submit'></td></tr><tr></form action='video/uploadFile.do'enctype='multipart/form-data'method='post'><td width='90'align='center'>选择封面：</td><td width='160'align='center'><input type='file'></td><td><input type='submit'></td></tr></form></div>";
    // var str="<div><br/><form action='video/add.do'enctype='multipart/form-data'method='post'><table border='0'cellpadding='0'cellspacing='0'><td colspan='0'>上传视频</td><tr><td>标题</td><td><input type='text'></td></tr><tr><td>详情</td><td><input type='text'></td></tr><tr><td>标签</td><td><input type='text'></td></tr><tr><td>分类</td><td><input type='text'></td></tr><input id='imageName'name='imageName'type='hidden'><input id='videoName'ame='videoName'type='hidden'></table></form><form action='video/uploadFile.do'enctype='multipart/form-data'method='post'><tr><td><select name='type'><option value=''selected='selected'>类型</option><option value='video'>视频</option><option value='image'>封面</option></select></td><td><input type='file'></td></tr></form><table><tr><td><button onclick='uploadFile()'>上传</button></td><td><button onclick='commitFile()'>提交</button></td></tr></table></div>";
    // var str = "<div><br/><form id='fileCommit'action='video/add.do'enctype='multipart/form-data'method='post'><table border='0'cellpadding='0'cellspacing='0'><td colspan='0'>上传视频</td><tr><td>标题</td><td><input type='text'></td></tr><tr><td>详情</td><td><input type='text'></td></tr><tr><td>标签</td><td><input type='text'></td></tr><tr><td>分类</td><td><input type='text'></td></tr><input id='imageName'name='imageName'type='hidden'><input id='videoName'ame='videoName'type='hidden'></table></form><form id='fileUpload'action='video/uploadFile.do'enctype='multipart/form-data'method='post'><tr><td><select name='type'><option value=''selected='selected'>类型</option><option value='video'>视频</option><option value='image'>封面</option></select></td><td><input type='file'></td></tr></form><table><tr><td><button onclick='uploadFile()'>上传</button></td><td><button onclick='commitFile()'>提交</button></td></tr></table></div>";
    // var str = "<div><br/><form id='fileCommit'action='video/add.do'method='post'><table border='0'cellpadding='0'cellspacing='0'><td colspan='0'>上传视频</td><tr><td>标题</td><td><input type='text'></td></tr><tr><td>详情</td><td><input type='text'></td></tr><tr><td>标签</td><td><input type='text'></td></tr><tr><td>分类</td><td><input type='text'></td></tr><input id='imageName'name='image'type='hidden'><input id='videoName'name='video'type='hidden'></table></form><form id='fileUpload'action='video/uploadFile.do'enctype='multipart/form-data'method='post'><tr><td><select name='type'><option value=''selected='selected'>类型</option><option value='video'>视频</option><option value='image'>封面</option></select></td><td><input type='file'name='file'></td></tr></form><table><tr><td><button onclick='uploadFile()'>上传</button></td><td><button onclick='commitFile()'>提交</button></td></tr></table></div>";
    var str = "<div><br/><form id='fileCommit'action='video/add.do'method='post'><table border='0'cellpadding='0'cellspacing='0'><td colspan='0'>上传视频</td><tr><td>标题</td><td><input type='text'name='title'></td></tr><tr><td>详情</td><td><input type='text'name='detail'></td></tr><tr><td>标签</td><td><input type='text'name='remark'></td></tr><tr><td>分类</td><td><input type='text'name='categoryId'></td></tr><input id='imageName'name='image'type='hidden'><input id='videoName'name='url'type='hidden'></table></form><form id='fileUpload'action='video/uploadFile.do'enctype='multipart/form-data'method='post'><tr><td><select name='type'><option value=''selected='selected'>类型</option><option value='video'>视频</option><option value='image'>封面</option></select></td><td><input type='file'name='file'></td></tr></form><table><tr><td><button onclick='uploadFile()'>上传</button></td><td><button onclick='commitFile()'>提交</button></td></tr></table></div>";
    $("#changeContent").append(str);
    var processbar = $("#processbar").html();
    $("#changeContent").append(processbar);
}


function uploadFile() {
    var formData = new FormData($("#fileUpload")[0]);
    $.ajax({
        url: 'video/uploadFile.do',
        type: 'POST',
        data: formData,
        async: false,
        cache: false,
        contentType: false,
        processData: false,
        xhr:function(){
            var xhr=$.ajaxSettings.xhr();
            xhr.upload.addEventListener("progress", onProgress, false);
            xhr.upload.onprogress=function (e) {
            };
            xhr.upload.onload = function (){
                alert('finish downloading')
            }
            return xhr;
        },
        success: function (response) {
            console.log(response);
            if (response.status == 0) {
                var name = response.data;
                var type = $("select").val();
                $("#" + type + "Name").val(name);
                alert("上传完成");
                console.log("返回文件名" + name);
                console.log("返回文件类型" + type);
                console.log("设置后的属性" + $("#" + type + "Name").val());
                $(".progress-bar").css("width", 100 + "%");
                console.log($.ajaxSettings.xhr());
            } else {
                response = JSON.parse(response);
                console.log(response.status);
                alert(response.msg);

            }

        },
        error: function (response) {
            console.log(response);
        }
    });
}


function onProgress(evt) {
    console.log("上传进度");
    var loaded = evt.loaded;     //已经上传大小情况
    var tot = evt.total;      //附件总大小
    var per = Math.floor(100 * loaded / tot);  //已经上传的百分比
    // $(".progress-bar").html( per +"%" );
    $(".progress-bar").css("width", per + "%");
    console.log(per);
}

function commitFile() {
    var form = $("#fileCommit").serialize();
    $.ajax({
        url: 'video/add.do',
        method: 'post',
        data: form,
        success: function (response) {
            console.log(response);
        }
    });
}
// url:$("#fileUpload").submit(),
//表单直接提交，会导致找不到对应的地址
//contentType: "multipart/form-data",这个属性在表单中设置，不在js中设置

function setFileName(name) {
    $("#" + name).attr(type, name)
}
function setLabel() {

}
function createLabel() {

}
function setCategory() {

}
function createCategory() {

}
function changeContent(list) {
    $("#changeContent").html("");
    list.forEach(function (video) {
        var content = $("#contentTemplate").html();
        content = content.replace("@{video.id}", video.id).replace("@{video.title}", video.title).replace("@{video.detail}", video.detail).replace("@{video.createTime}", video.createTime).replace("@{video.remark}", video.remark).replace("@{video.image}", video.image).replace("@{video.id}", video.id);
        $("#changeContent").append(content);
    });

}
    	