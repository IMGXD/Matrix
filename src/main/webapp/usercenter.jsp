<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.matrix.constants.Constant" %>
<%@ page import="com.matrix.pojo.User" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) session.getAttribute(Constant.CURRENT_USER);

%>
<!DOCTYPE html>
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="renderer" content="webkit"/>
    <meta name="keywords" content=""/>
    <meta name="description" content="">
    <link rel="icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="statics/css/animate.min.css">
    <link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/flat-ui-2.2.2-dist/css/flat-ui.min.css"/>
    <link rel="stylesheet" href="statics/css/css-common.css">
    <title>Matrix的空间</title>
    <style>
        .footer {
            margin: 0px;
            background-color: #2a2a2a;
            text-align: center;
            padding: 30px;
            margin-top: 40px;
            clear: both;
        }

        .footer_nav_out {
            display: inline-block;
            border-bottom: 1px solid #4d4d4d;
            padding: 0px 50px;
        }

        .footer_nav {
            display: inline-block;
            color: #9e9e9e;
            padding: 10px 50px;
            vertical-align: top;
        }

        .footer_nav li {
            font-size: 14px;
            text-align: left;
            line-height: 30px;
        }

        .footer_nav li a {
            color: #9e9e9e;
        }

        .footer_nav li a:hover {
            opacity: .9;
        }

        .footer_nav .title {
            font-size: 18px;
        }

        .footer .copyright {
            color: #787878;
            font-size: 12px;
            margin-top: 30px;
        }

        .footer .copyright img {
            margin-left: 6px;
            margin-right: 6px;
            margin-top: -10px;
        }

        .footer .copyright span {
            color: #57dfc7;
        }

        .footer .copyright span.phone_large {
            font-size: 20px;
        }

        ul,
        ol {
            list-style: none;
            margin: 0;
            padding: 0
        }

        .navbar {
            margin-bottom: 0px;
        }

        .background-gradient {
            background: -webkit-linear-gradient(90deg, rgb(21, 37, 53), rgb(60, 175, 170));
            background: linear-gradient(90deg, rgb(21, 37, 53), rgb(60, 175, 170));
        }

        .content-title-1 {
            padding: 15px 0px 10px;
            font-size: 16px;
            border-bottom: 1px solid #d7dee0;
        }

        .tips {
            color: #ff0000;
        }

        .pagination-self > ul {
            display: inline-block;
            margin-top: 20px;
        }

        .pagination-self > ul > li {
            display: inline-block;
            margin: 0px 8px 0px 0px;
        }

        .pagination-self > ul > li > a {
            font-size: 17px;
            display: inline-block;
            color: #bbb;
            padding: 1px 8px;
            font-family: "Arial";
        }

        .pagination-self > ul > li > a:active,
        .pagination-self > ul > li > a:hover {
            color: #fff;
            background-color: #00d3d4
        }

        .pagination-self > ul > li > a.active {
            color: #fff;
            background-color: #00d3d4
        }

        .content-1-div-1 {
            padding: 0 0;
        }

        .content-1-div-2 {
            padding: 0;
        }

        .content-1-div-2 > ul > li > h6,
        p {
            margin: 0;
            padding: 0;
            font-weight: normal;
            line-height: 1;
        }

        .content-1-div-2 > ul > li {
            padding: 0px 0px 0px 15px;;
        }

        .content-1-div-2 > ul > li > h6 {
            color: #000000;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .content-1-div-2 > ul > li > p {
            width: 615px;
            text-overflow: ellipsis;
            overflow: hidden;
            line-height: 24px;
            max-height: 48px;
            text-overflow: ellipsis;
        }

        .p1 {
            font-size: 15px;
            color: #777;
            height: 48px;
        }

        .search-strong {
            color: #00d3d4;
        }

        .p2 {
            color: #969696;
            font-size: 15px;
        }

        .p3 {
            color: #ff0000;
            font-size: 15px;
        }

        .content {
            overflow: hidden;
            border-bottom: 1px solid #d7dee0;
            padding-bottom: 27px;
            padding-top: 27px;
        }

        .content:last-child {
            overflow: hidden;
            padding-bottom: 20px;
            border: none
        }

        .list-inline > li {
            margin-bottom: 8px;
        }

        .list-inline > li > a {
            border: 1px solid #ddd;
            padding: 2px 15px;
            background-color: #fff;
            color: #969696;
            border-radius: 16px;
            font-size: 14px;
        }
    </style>
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

<!--<div class="background-gradient">
<div class="container">
<div class="row">
<div class="col-lg-12" style="padding:108px 0px">
<div class="input-group form-group-lg" style="width:700px;margin:0 auto;border:none">
<input type="text" class="form-control input-lg" placeholder="请输入您要搜索的内容" style="border:none;">
<span class="input-group-btn">
<button class="btn btn-default" type="button" style="height:45px;padding-right:50px;padding-left:50px;background-color:#FF5454;border:none">搜索</button>
</span>
</div>
</div>
</div>
</div>
</div>-->
<div class="background-gradient">
    <div class="container">
        <div class="row-fluid">
            <div class="col-md-6">
                <div class="data_list">
                    <div class="userimg" align="center"
                         style="height: 220px; width: 220px;;margin-top:40px; display: block;">
                        <!--<%-- <img src="user?act=pic&fn=${userInfo.result.pic}"> --%>-->
                        <!--<img  src="user?act=uld&img=${userInfo.result.img }">-->
                        <img src="statics/img/user-image.jpg" class="img-circle animated fadeInLeft"
                             style="height: 180px; width: 180px; display: block;">
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="color:white">
                <!-- 模板填充区域 -->
                <%--<!--<div class="nick">${userInfo.result.nickName }</div>--%>
                <%--<div class="mood">${userInfo.result.mood }</div>-->--%>
                <h1 style="margin-top: 40px" class="animated fadeInDown">Hi!
                    <c:choose>
                        <c:when test="${not empty currentUser }">
                            <%=user.getNickname()%>
                        </c:when>
                        <c:otherwise>
                            Matrixer
                        </c:otherwise>
                    </c:choose>
                    !</h1>


                <div class="nick animated fadeInUp">我已沉溺于知识的海洋无法自拔……</div>
                <%--<!--<jsp:include page="${change}"></jsp:include>-->--%>
            </div>
        </div>
    </div>

</div>

<div class="container">
    <div class="row">
        <div class="col-md-9">
            <br/>
            <!--<ul class="nav nav-tabs" style="height: 100px; width:auto;">-->
            <ul class="nav nav-tabs">
                <li onclick="toMain()" class="active">
                    <a id="toMain" href="javascript:void(0)">&nbsp;主&nbsp;&nbsp;页&nbsp;</a>
                    <%--href="javascript:userMain()"--%>
                </li>
                <li onclick="toShare()">
                    <a id="toShare" href="javascript:void(0)">&nbsp;分&nbsp;&nbsp;享&nbsp;</a>
                    <%--href="javascript:userShare()"--%>
                </li>
                <li onclick="toFavourite()">
                    <a id="toFavourite" href="javascript:void(0)">&nbsp;收&nbsp;&nbsp;藏&nbsp;</a>
                    <%--href="javascript:userFavourite()"--%>
                </li>
                <li onclick="toUpload()">
                    <a id="toUpload" href="javascript:void(0)">&nbsp;上&nbsp;&nbsp;传&nbsp;</a>
                    <%--href="javascript:userUpload()"--%>
                </li>

            </ul>
            <!--<ul class="content-title-1">
            <li>
            哇！您已经积累了<span class="tips">18</span>个资源！
            </li>
            </ul>-->
            <%--内容根节点--%>
            <div id="changeContent">
                <%--<object type="text-x-scriptlet" data="template.html"></object>--%>
                <%--<link rel="import" href="template.html">--%>
            </div>
        </div>
        <div class="col-md-3">
            <br/>

            <ul class="content-title-1" style="margin-bottom: 11px;">
                <li>标签</li>
            </ul>
            <ul id="labels" class="list-inline">
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="pagination-self">
                <ul>
                    <li>
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">上一页</a>
                    </li>
                    <li>
                        <a href="#" class="active">
                            1
                        </a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">6</a>
                    </li>
                    <li>
                        <a href="#">7</a>
                    </li>
                    <li>
                        <a href="#">下一页</a>
                    </li>
                    <li>
                        <a href="#">尾页</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="jumbotron footer">
    <div class="footer_nav_out">
        <ul class="footer_nav">
            <li class="title">首页</li>
            <li>
                <a href="http://www.exmobi.cn/console/main.html">控制台</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/open/index.jsp">开放平台</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/sitemap.xml">网站地图</a>
            </li>
        </ul>

        <ul class="footer_nav">
            <li class="title">产品</li>
            <li>
                <a href="http://www.exmobi.cn/product.html">产品介绍</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/quote.html">产品类型</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/resources/product/exmobi-white-paper.pdf">白皮书</a>
            </li>
        </ul>
        <ul class="footer_nav">
            <li class="title">开发</li>
            <li>
                <a href="http://www.exmobi.cn/get-start.html">新手入门</a>
            </li>
            <li>
                <a href="http://docs.exmobi.cn/">文档中心</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/agile-lite/index.jsp">Agile Lite</a>
            </li>
        </ul>
        <ul class="footer_nav">
            <li class="title">论坛</li>
            <li>
                <a href="http://bbs.exmobi.cn/forum.php?mod=guide&view=new">查看新贴</a>
            </li>
            <li>
                <a href="http://bbs.exmobi.cn/portal.php">论坛导读</a>
            </li>
            <li>
                <a href="http://bbs.exmobi.cn/plugin.php?id=auction">插件商城</a>
            </li>
        </ul>
        <ul class="footer_nav">
            <li class="title">关于</li>
            <li>
                <a href="http://www.fhss.com.cn/aboutus.htm">关于我们</a>
            </li>
            <li>
                <a href="http://www.fhss.com.cn/contactus.htm">联系我们</a>
            </li>
            <li>
                <a href="http://www.exmobi.cn/recruitment/index.jsp">招贤纳士</a>
            </li>
        </ul>
    </div>
    <p class="copyright">
        <a href="" class="copyright" target="_blank">gengdaoping</a>&nbsp;&nbsp;<img src="statics/img/p_icon_phone.png"><span
            class="phone_large">400-110-1111</span>&nbsp;&nbsp;<span>025-6677-7333</span></p>
</div>


<!--<script src="./resources/flat-ui-2.2.2-dist/js/vendor/jquery.min.js"></script>-->
<!--<script src="./resources/bootstrap3/js/bootstrap.min.js"></script>-->
<!--<script src="./resources/flat-ui-2.2.2-dist/js/flat-ui.min.js"></script>-->

<script src="statics/js/jquery-1.11.3.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<script src="statics/js/matrix-common.js"></script>
<script src="statics/js/usercenter.js"></script>
<script type="text/template" id="contentTemplate">
    <ul id=videoList>
        <li class="content">
            <div class="col-md-3 content-1-div-1">
                <div style="width: 200px; height: 150px;">
                    <a href="video/videoPlayer.do?id=@{video.id}">
                        <img style="width: 200px; height: 150px;" src="@{video.image}">
                    </a>
                </div>
                <a href="video/videoPlayer.do?id=@{video.id}">
                    <img data-src="holder.js/100%x120">
                </a>
            </div>
            <div class="col-md-9 content-1-div-2">
                <ul>
                    <li><a href="video/videoPlayer.do?id=@{video.id}">
                        <h6>
                            @{video.title}
                        </h6>
                    </a>
                        <p class="p1">
                            @{video.detail}
                        </p>
                        <p class="p2">
                            上传时间：
                            <%--// "<fmt:formatDate value="@{video.createTime}" pattern="yyyy:mm:dd HH:mm:ss"/>"--%>
                            &nbsp;|&nbsp;&nbsp;&nbsp;标签：<a class="videoLabel">@{video.remark}</a>
                        </p>
                        <p class="p3">
                            <span>

                            </span>
                        </p>
                    </li>
                </ul>
            </div>
</script>
<script type="text/template" id="processbar">
    <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
             aria-valuemax="100" style="width: 0%;">
        <%--<span class="sr-only">--%>
            <%--40%Complete--%>
        <%--</span>--%>
        </div>
    </div>
</script>
</body>

</html>
<script>
</script>