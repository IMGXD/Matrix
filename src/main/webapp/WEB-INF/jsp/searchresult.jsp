<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<%--
  Created by IntelliJ IDEA.
  User: IMGXD
  Date: 2017/7/31
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="com.fasterxml.jackson.databind.ObjectMapper" pageEncoding="UTF-8" %>
<%@ page import="com.github.pagehelper.PageInfo" %>
<%@ page import="com.matrix.constants.Constant" %>
<%@ page import="com.matrix.dto.ServerResponse" %>
<%@ page import="com.matrix.pojo.User" %>
<%@ page import="com.matrix.pojo.Video" %>
<%@ page import="java.util.List" %>
<%@ page import="com.matrix.pojo.Label" %>
<%@ page import="com.matrix.controller.portal.LabelController" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) session.getAttribute(Constant.CURRENT_USER);
    ServerResponse serverResponse = (ServerResponse) request.getAttribute("pageInfo");
    List<Video> videos;
    if (null != serverResponse) {
        PageInfo<Video> pageInfo = (PageInfo<Video>) serverResponse.getData();
        if (null != pageInfo && pageInfo.getSize() > 0) {
            System.out.println(pageInfo);
            videos = pageInfo.getList();
            System.out.println("查询出的视频");
            if (null != videos) {
                System.out.println("当前查询出的视频");
                System.out.println(videos.size());
                request.setAttribute("videos", videos);
                request.setAttribute("page", pageInfo);
                ObjectMapper mapper = new ObjectMapper();
                String str = mapper.writeValueAsString(videos);
                System.out.println(str);
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="renderer" content="webkit"/>

    <link rel="icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="statics/img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/flat-ui-2.2.2-dist/css/flat-ui.min.css"/>
    <link rel="stylesheet" href="statics/css/animate.min.css">
    <link rel="stylesheet" href="statics/css/css-common.css">
    <link rel="stylesheet" href="statics/css/matrix-common.css">
    <title>Matrix · Infinite Sky</title>
</head>
<body>
<nav role="navigation" class="navbar navbar-default" style="font-size:15px !important;">
    <div class="navbar-header" style="margin-right:5%;margin-left:5%;">
        <a href="#" class="navbar-brand">
            <img alt="Matrix · Infinite Sky" src="statics/img/logo-new.png" style="height:100%"/>
        </a>
    </div>
    <div class="collapse navbar-collapse" style="margin-right:5%">
        <ul class="nav navbar-nav" style="margin-right:5%">
            <li class="active">
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">课程</a>
            </li>
            <li>
                <a href="#">计划</a>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${!empty currentUser }">
                <li>
                    <a href="usercenter.jsp">你好！<%=user.getNickname()%>
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
        <form role="search" id="search" class="navbar-form navbar-left" action="video/searchVideoByParams.do" method="post"
        hidden="hidden">
            <div class="form-group">
                <input type="text" name="title" placeholder="搜索" class="form-control" style="">
            </div>
            <button class="btn btn-default" type="button" onclick="$('#search').submit()">搜索</button>
        </form>
    </div>
</nav>
<div class="background-gradient">
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="padding:108px 0px">
                <div class="input-group form-group-lg" style="width:700px;margin:0 auto;border:none">
                    <%--<form action="video/searchVideoByParams.do" method="post">--%>
                    <input ID="keyword" type="text" class="form-control input-lg" placeholder="请输入您要搜索的内容"
                           style="border:none;" name="title" value="${params.title}">
                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="searchVideoByTitle()"
                                    style="height:45px;padding-right:50px;padding-left:50px;background-color:#FF5454;border:none">
                                搜索
                            </button>
                        </span>
                    <%--</form>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<div id=videoContainer class="container">
    <div class="row">
        <div class="col-md-9">
            <ul class="content-title-1">
                <li id="videoCount">
                    <sapn>&nbsp;</sapn>
                </li>
            </ul>
            <ul id=videoList>
                <c:if test="${not empty videos}">
                    <c:forEach items="${videos}" var="video">
                        <li class="content">
                            <div class="col-md-3 content-1-div-1">
                                <c:choose>
                                    <c:when test="${not empty video.image}">
                                        <div style="width: 200px; height: 150px;">
                                            <a href="video/videoPlayer.do?id=${video.id}"><img style="width: 200px; height: 150px;" src="${video.image}" ></a>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="video/videoPlayer.do?id=${video.id}"><img data-src="holder.js/100%x120" ></a>

                                    </c:otherwise>
                                </c:choose>

                            </div>
                            <div class="col-md-9 content-1-div-2">
                                <ul>
                                    <li><a href="video/videoPlayer.do?id=${video.id}">
                                        <h6>
                                                ${video.title}
                                        </h6>
                                    </a>
                                        <p class="p1">
                                                ${video.detail}
                                        </p>
                                        <p class="p2">
                                            上传时间：
                                            "<fmt:formatDate value="${video.createTime}" pattern="yyyy:mm:dd HH:mm:ss"/>"
                                                <%--"${video.createTime}"--%>
                                                <%--<fmt:formatDate value="<%= new Date()%>" pattern="yyyy:mm:dd HH:mm:ss" />--%>
                                                <%--<fmt:formatDate value="new Date()"/>--%>
                                                <%--<fmt:formatDate value="${video.createTime}" />--%>
                                            &nbsp;|&nbsp;&nbsp;&nbsp;标签：<a class="videoLabel" >${video.remark}</a>
                                        </p>
                                        <p class="p3">
											<span>

                                    </span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </c:forEach>


                </c:if>
            </ul>
        </div>
        <div id=videoLabel class="col-md-3">
            <ul class="content-title-1" style="margin-bottom: 11px;">
                <li>热门搜索</li>
            </ul>
            <ul id="labels" class="list-inline">
            </ul>
        </div>
    </div>
</div>
<div id=pageNavigator class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="pagination-self">
                <ul>
                    <li>
                        <c:if test="${!page.isFirstPage}">
                            <a href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=1">首页</a>
                        </c:if>
                    </li>
                    <li>
                        <c:if test="${page.hasPreviousPage}">
                            <a href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=${page.prePage}">上一页</a>
                        </c:if>
                    </li>
                    <c:forEach begin="${page.navigatepageNums[0]}"
                               end="${page.navigatepageNums[page.navigatePages-1]}"
                               var="p">
                        <li>
                            <c:choose>
                                <c:when test="${page.pageNum != p}">
                                    <a href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=${p}">
                                        ${p}
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="active" href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=${p}">
                                        ${p}
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </c:forEach>
                    <li>
                        <c:if test="${!page.isLastPage}">
                            <a href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=${page.nextPage}">下一页</a>
                        </c:if>
                    </li>
                    <li>
                        <c:if test="${!page.isLastPage}">
                            <a href="video/searchVideoByParams.do?title=${params.title}&remark=${params.remark}&pageNum=${page.pages}">尾页</a>
                        </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id=footContainer class="jumbotron footer">
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

</body>
<script src="statics/js/jquery-1.11.3.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<script src="statics/flat-ui-2.2.2-dist/js/flat-ui.min.js"></script>
<script src="statics/js/matrix-common.js"></script>
<script src="statics/js/searchresult.js"></script>


</html>