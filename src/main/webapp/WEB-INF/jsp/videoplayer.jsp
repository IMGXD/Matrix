<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: IMGXD
  Date: 2017/7/31
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.matrix.constants.Constant" %>
<%@ page import="com.matrix.pojo.User" %>
<%@ page import="com.matrix.dto.ServerResponse" %>
<%@ page import="com.matrix.pojo.Video" %>
<%@ page import="com.github.pagehelper.PageInfo" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) session.getAttribute(Constant.CURRENT_USER);

    ServerResponse serverResponse = (ServerResponse) request.getAttribute("videoInfo");
    if (null != serverResponse) {
        if (0 == serverResponse.getStatus()) {
            Video video = (Video) serverResponse.getData();
            if (null != video) {
                System.out.println("当前播放的视频");
                request.setAttribute("currentVideo", video);
                ObjectMapper mapper = new ObjectMapper();
                String str = mapper.writeValueAsString(video);
                System.out.println(str);
            }
        }
    }
//    List<Video> videos;
//    if (null != serverResponse) {
//        PageInfo<Video> pageInfo = (PageInfo<Video>) serverResponse.getData();
//        System.out.println(pageInfo);
//        videos = pageInfo.getList();
//        System.out.println("查询出的视频");
//        if (null != videos) {
//            System.out.println("当前查询出的视频");
//            System.out.println(videos.size());
//            request.setAttribute("videos", videos);
//            ObjectMapper mapper = new ObjectMapper();
//            String str = mapper.writeValueAsString(videos);
//            System.out.println(str);
//        }
//    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Matrix · Infinite Sky</title>
    <link rel="icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/flat-ui-2.2.2-dist/css/flat-ui.min.css"/>
    <link rel="stylesheet" href="statics/css/css-common.css">
    <link rel="stylesheet" href="statics/css/video.css">

</head>
<body>
<nav role="navigation" class="navbar navbar-default" style="font-size:15px !important;">
    <div class="navbar-header" style="margin-right:5%;margin-left:5%;">
        <a href="#" class="navbar-brand">
            <img alt="Matrix · Infinite Sky" src="statics/img/logo-b.png" style="height: 100%"/>
        </a>
    </div>
    <div class="collapse navbar-collapse" style="margin-right:5%">
        <ul class="nav navbar-nav" style="margin-right:5%">
            <li class="active item">
                <a href="index.jsp">首页</a>
                <ul>
                    <li><a href="#">java</a></li>
                    <li><a href="#">JavaScript</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">H5</a></li>
                    <li><a href="#">C++</a></li>
                </ul>
            </li>
            <li class="item">
                <a href="#">课程</a>
                <ul>
                    <li><a href="#">java</a></li>
                    <li><a href="#">JavaScript</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">H5</a></li>
                    <li><a href="#">C++</a></li>
                </ul>
            </li>
            <li class="item">
                <a href="#">计划</a>
                <ul>
                    <li><a href="#">java</a></li>
                    <li><a href="#">JavaScript</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">H5</a></li>
                    <li><a href="#">C++</a></li>
                </ul>
            </li>
        </ul>
        <%--${currentUser.nickname}--%>
        <%--<%=user.getNickname()%>--%>
        <%--${!empty currentUser }--%>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${!empty currentUser }">
                <li>
                    <a href="usercenter.jsp">你好！<%=user.getNickname()%>
                        <input type="hidden" name="userId" value="${currentUser.id}">
                    </a>
                </li>
                <li>
                    <a href="javascript:userLogout()">退出</a>
                </li>
            </c:if>
            <c:if test="${empty currentUser }">
                <li>
                    <a href="login.html">登录</a>
                </li>
                <li>
                    <a href="register.html">注册</a>
                </li>
            </c:if>
        </ul>
        <form role="search" id="search" class="navbar-form navbar-left" action="video/searchVideoByParams.do"
              method="post">
            <div class="form-group">
                <input type="text" name="title" placeholder="搜索" class="form-control" style="">
            </div>
            <button class="btn btn-default" type="button" onclick="$('#search').submit()">搜索</button>
        </form>
    </div>
</nav>
<section>
    <div class="cont o">

        <c:choose>
        <c:when test="${not empty currentVideo}">
        <h6>${currentVideo.title}</h6>
        <div class="player">
            <input type="hidden" name="videoId" value="${currentVideo.id}">
            <video src="${currentVideo.url}" controls poster="${currentVideo.image}" preload="metadata"></video>
            </c:when>
            <c:otherwise>
            <h6>没有相关资源，随便看看吧</h6>
            <div class="player">
                <video src="statics/video/b.mp4" controls poster="statics/video/sky.jpg" preload="metadata"></video>
                </c:otherwise>
                </c:choose>
            </div>
            <div class="list">
                <h3>相关推荐</h3>
                <ul id="recommendList">
                </ul>
            </div>
        </div>
</section>
<div id="comment">
    <div class="cont">
        <div class="main">
            <div class="write">
                <textarea name="" id="weibo" cols="30" rows="5" placeholder="看点槽点，不吐不快！别憋着，马上大声说出来吧！"
                          style="resize: none"></textarea>
                <div class="send" id="send">发布</div>
            </div>
            <div id="list">


            </div>
        </div>
    </div>
</div>
<div class="jumbotron footer">
    <div class="footer_nav_out">
        <ul class="footer_nav">
            <li class="title">首页</li>
            <li><a href="http://www.exmobi.cn/console/main.html">控制台</a></li>
            <li><a href="http://www.exmobi.cn/open/index.jsp">开放平台</a></li>
            <li><a href="http://www.exmobi.cn/sitemap.xml">网站地图</a></li>
        </ul>

        <ul class="footer_nav">
            <li class="title">产品</li>
            <li><a href="http://www.exmobi.cn/product.html">产品介绍</a></li>
            <li><a href="http://www.exmobi.cn/quote.html">产品类型</a></li>
            <li><a href="http://www.exmobi.cn/resources/product/exmobi-white-paper.pdf">白皮书</a></li>
        </ul>
        <ul class="footer_nav">
            <li class="title">开发</li>
            <li><a href="http://www.exmobi.cn/get-start.html">新手入门</a></li>
            <li><a href="http://docs.exmobi.cn/">文档中心</a></li>
            <li><a href="http://www.exmobi.cn/agile-lite/index.jsp">Agile Lite</a></li>
        </ul>
        <ul class="footer_nav">
            <li class="title">论坛</li>
            <li><a href="http://bbs.exmobi.cn/forum.php?mod=guide&view=new">查看新贴</a></li>
            <li><a href="http://bbs.exmobi.cn/portal.php">论坛导读</a></li>
            <li><a href="http://bbs.exmobi.cn/plugin.php?id=auction">插件商城</a></li>
        </ul>
        <ul class="footer_nav">
            <li class="title">关于</li>
            <li><a href="http://www.fhss.com.cn/aboutus.htm">关于我们</a></li>
            <li><a href="http://www.fhss.com.cn/contactus.htm">联系我们</a></li>
            <li><a href="http://www.exmobi.cn/recruitment/index.jsp">招贤纳士</a></li>
        </ul>
    </div>
    <p class="copyright"><a href="" class="copyright" target="_blank">gengdaoping</a>&nbsp;&nbsp;<img
        "statics/img//p_icon_phone.png"><span
                class="phone_large">400-110-1111</span>&nbsp;&nbsp;<span>025-6677-7333</span></p>
</div>


</body>
<script src="statics/js/jquery-1.11.3.js"></script>
<script src="statics/js/jquery.SuperSlide.2.1.js"></script>
<script src="statics/js/DateFormat.js"></script>
<script src="statics/js/video-player.js"></script>
<script type="text/template" id="commentTemplate">
    <div class="item">
        <div class="content">
            @content
        </div>
        <div class="date"><span>@user </span> 发表于: @date</div>
        <div class="btnGroup">
            <%--<span class="mark">❤收藏</span>--%>
            <%--<span>|</span>--%>
            <%--<span class="del">✂删除</span>--%>
        </div>
    </div>
</script>
<script type="text/template" id="recommandTemplate">
    <li>
        <div class='video-pic'>
           <a href="video/videoPlayer.do?id=@videoId"><img src="@videoImage" alt="@videoTitle"></a>
        </div>
        <div class='video-art'>
            <h4>
                <a href="video/videoPlayer.do?id=@videoId">@videoTitle</a>
            </h4>
            <p>
                @videoDetail
            </p>
        </div>
    </li>
</script>
</html>