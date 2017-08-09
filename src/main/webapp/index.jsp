<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.matrix.constants.Constant" %>
<%@ page import="com.matrix.pojo.User" %>
<%@ page import="com.matrix.dto.ServerResponse" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) session.getAttribute(Constant.CURRENT_USER);

%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Matrix · Infinite Sky</title>
    <link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="statics/bootstrap/css/bootstrap-theme.css" />-->
    <link rel="stylesheet" href="statics/flat-ui-2.2.2-dist/css/flat-ui.min.css"/>
    <link rel="stylesheet" href="statics/css/animate.min.css">
    <link rel="stylesheet" href="statics/css/css-common.css">
    <script src="statics/js/jquery-1.11.3.js"></script>
    <script src="statics/js/jquery.SuperSlide.2.1.js"></script>
    <script src="statics/js/wow.min.js"></script>
    <script type="text/javascript" src="statics/js/index.js"></script>
    <script type="text/javascript" src="statics/js/matrix-common.js"></script>
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
                    <a href="usercenter.jsp">你好！<%=user.getNickname()%></a>
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
        <form role="search" id="search" class="navbar-form navbar-left" action="video/searchVideoByParams.do" method="post">
            <div class="form-group">
                <input type="text" name="title" placeholder="搜索" class="form-control" style="">
            </div>
            <button class="btn btn-default" type="button" onclick="$('#search').submit()">搜索</button>
        </form>
    </div>
</nav>
<section>
    <div class="cont">
        <div id="demo1" class="picBtnTop">
            <div class="hd">
                <ul>
                    <li class="on"><img src="statics/img/banner1.jpg"/></li>
                    <li><img src="statics/img/banner2.jpg"/></li>
                    <li><img src="statics/img/banner3.jpg"/></li>
                    <li><img src="statics/img/banner4.jpg"/></li>
                    <li><img src="statics/img/banner5.jpg"/></li>
                </ul>
            </div>
            <div class="bd">
                <ul>
                    <li>
                        <div class="pic"><a href=""><img src="statics/img/banner1.jpg"/></a></div>
                    </li>
                    <li>
                        <div class="pic"><a href=""><img src="statics/img/banner2.jpg"/></a></div>
                    </li>
                    <li>
                        <div class="pic"><a href=""><img src="statics/img/banner3.jpg"/></a></div>
                    </li>
                    <li>
                        <div class="pic"><a href=""><img src="statics/img/banner4.jpg"/></a></div>
                    </li>
                    <li>
                        <div class="pic"><a href=""><img src="statics/img/banner5.jpg"/></a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<div class="music">
    <div class="cont">
        <div class="title wow animated flipInY">
            <h3>倾情推荐</h3>
            <span><img src="statics/img/ico-music.png" alt=""></span>
            <p>Recommend</p>
        </div>
        <div class="article o">
            <ul>
                <li class="o wow animated fadeInUp">
                    <a href="#">
                        <img src="statics/img/img-art-01.png" alt="">
                    </a>
                    <a href="#">
                        <div class="li-div">
                            <h4>Java Android</h4>
                            <p>
                            <h3> BAT大咖助力 全面升级Android面试</h3>
                            2017最全面的Android面试课程，赢取称心offer的不二之选!
                            </p>
                        </div>
                    </a>

                </li>
                <li class="o wow animated fadeInUp">
                    <a href="#"><img src="statics/img/img-art-02.png" alt=""></a>
                    <a href="#">
                        <div class="li-div">
                            <h4>PHP</h4>
                            <p>
                            <h3>高性能 高价值的PHP API接口开发</h3>
                            掌握核心API接口开发及性能调优，让你的代码运行效率加倍!
                            </p>
                        </div>
                    </a>
                </li>
            </ul>
            <ul>
                <li class="o wow animated fadeInUp">
                    <a href="#"><img src="statics/img/img-art-03.png" alt=""></a>
                    <a href="#">
                        <div class="li-div">
                            <h4>Vue.js</h4>
                            <p>
                            <h3>Vue2.0+Node.js+MongoDB全栈打造商城系统</h3>
                            从前端入门全栈，让你的未来更宽广!
                            </p>
                        </div>
                    </a>

                </li>
                <li class="o wow animated fadeInUp">
                    <a href="#"><img src="statics/img/img-art-04.png" alt=""></a>
                    <a href="#">
                        <div class="li-div">
                            <h4>ES6零基础教学</h4>
                            <p>
                            <h3>ES6零基础教学 解析彩票项目</h3>
                            ES6从零开始，量身设计的迷你案例，让你全面掌握ES6!
                            </p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="free">
    <div class="cont">
        <h3 class=" wow animated bounceInLeft">免费课程</h3>
        <ul>
            <li class="wow animated fadeInDown">
                <div class="title">
                    <a href="#"><span>HTML/CSS JavaScript</span></a>
                </div>
                <div class="pvw">
                    <a href="#"><h3>java基础</h3></a>
                   <div id="v1"> <p>设计模式</p>
                   <span id="1" style="display :'none'"></span>
                    
                    <img src="statics\video\241.jpg" alt=""></div>
                    <span>中级·20000人在学</span>
                </div>
            </li>
            <li class="wow animated fadeInDown">
                <div class="title">
                    <a href="#"><span>HTML/CSS JavaScript</span></a>
                </div>
                <div class="pvw">
                    <a href="#"><h3>Handlebars模板引擎</h3></a>
                    <div id="v2"> <p>使用Handlebars.js模板渲染页面。</p>
                   <span id="2" style="display :'none'"></span>
                    
                    <img src="statics\video\b.jpg" alt=""></div>
                    <span>中级·20000人在学</span>
                </div>
            </li>
            <li class="wow animated fadeInDown">
                <div class="title">
                    <a href="#"><span>HTML/CSS JavaScript</span></a>
                </div>
                <div class="pvw">
                    <a href="#"><h3>javascript</h3></a>
                   <div id="v3"> <p>jQuryDom操作</p>
                   <span id="3" style="display :'none'"></span>
                    
                    <img src="statics\video\dom.jpg" alt=""></div>
                    <span>中级·20000人在学</span>
                </div>
            </li>
            <li class="wow animated fadeInDown">
                <div class="title">
                    <a href="#"><span>HTML/CSS JavaScript</span></a>
                </div>
                <div class="pvw">
                    <a href="#"><h3>SpringMvc</h3></a>
                   <div id="v4"> <p>java 的春天。</p>
                   <span id="4" style="display :'none'"></span>
                    
                    <img src="statics/img/freeClass2.png" alt=""></div>
                    <span>中级·20000人在学</span>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="web">
    <div class="cont o">
        <h3 class="wow animated rotateInDownLeft">热门视频</h3>
        <div class="txtMarquee-top lt wow animated fadeInLeft">
            <div class="hd">
                <a class="next"></a>
                <a class="prev"></a>
            </div>
            <div class="bd">
                <ul class="infoList">
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Nginx从入门到实践</a>
                    </li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Android通用框架设计与完整电商APP开发</a>
                    </li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Spring
                        Boot微信点餐系统</a></li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Java三端分离开发在线教育平台</a>
                    </li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Vue2.0+Node.js+MongoDB全栈打造商城系统</a>
                    </li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Python操作三大主流数据库
                        项目实战</a></li>
                    <li><span class="date">2011-11-11</span><a href="http://www.SuperSlide2.com" target="_blank">Java从零打造企业级电商项目实战-服务端</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="img rt wow animated fadeInRight">
            <a href="#"> <img src="statics/img/hot-3.jpg" alt=""></a>
        </div>
        <div class="web-pvw rt wow animated fadeInRight">
            <div class="web-left lt web-le">
                <div class="title">
                    <h3>Node.js</h3>
                </div>
                <div class="content">
                    <h4>前端沙龙分享第三期</h4>
                    <p>本课程为去哪儿网前端交互沙龙第三期，精彩分享不容错过噢
                        本课程为去哪儿网前端交互沙龙第三期，精彩分享不容错过噢~本课程为去哪儿网前端交互沙龙第三期~
                    </p>
                </div>
            </div>
            <div class="web-left rt">
                <div class="title title-rt">
                    <h3>java</h3>
                </div>
                <div class="content">
                    <h4>java从入门到入土</h4>
                    <p>本课程为去哪儿网前端交互沙龙第三期，精彩分享不容错过噢
                        本课程为去哪儿网前端交互沙龙第三期，精彩分享不容错过噢~本课程为去哪儿网前端交互沙龙第三期~
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="listening">
    <div class="cont">
        <h3 class="wow animated flipInX">讲师风采</h3>
        <div class="article wow animated fadeIn">
            <ul class="o">
                <li><img src="statics/img/teacher-1.jpg" alt="">
                    <i><img src="statics/img/ico-diam.png" alt=""></i>
                </li>
                <li>
                    <div class="art">
                        <span>马士兵</span>
                        <h3>java</h3>
                        <p>履历：1994-1999 年就读于清华大学，历任程序员、Team Leader、Project Manager、CTO等职位，有过十几个大型项目的开发经验。</p>
                    </div>
                </li>
                <li>
                    <img src="statics/img/teacher-1.jpg" alt="">
                </li>
                <li>
                    <div class="art">
                        <span>马士兵</span>
                        <h3>java</h3>
                        <p>履历：1994-1999 年就读于清华大学，历任程序员、Team Leader、Project Manager、CTO等职位，有过十几个大型项目的开发经验。</p>
                    </div>

                </li>
                <li><img src="statics/img/teacher-1.jpg" alt="">
                    <i><img src="statics/img/ico-diam.png" alt=""></i>
                </li>
                <li>
                    <div class="art">
                        <span>马士兵</span>
                        <h3>java</h3>
                        <p>履历：1994-1999 年就读于清华大学，历任程序员、Team Leader、Project Manager、CTO等职位，有过十几个大型项目的开发经验。</p>
                    </div>

                </li>
                <li><img src="statics/img/teacher-1.jpg" alt="">
                    <i><img src="statics/img/ico-diam.png" alt=""></i>
                </li>
                <li>
                    <div class="art">
                        <span>马士兵</span>
                        <h3>java</h3>
                        <p>履历：1994-1999 年就读于清华大学，历任程序员、Team Leader、Project Manager、CTO等职位，有过十几个大型项目的开发经验。</p>
                    </div>
                </li>
                <li><img src="statics/img/teacher-1.jpg" alt="">
                    <i><img src="statics/img/ico-diam.png" alt=""></i>
                </li>
                <li>
                    <div class="art">
                        <span>马士兵</span>
                        <h3>java</h3>
                        <p>履历：1994-1999 年就读于清华大学，历任程序员、Team Leader、Project Manager、CTO等职位，有过十几个大型项目的开发经验。</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="music chat">
    <div class="cont">
        <h3 class="wow animated flipInX">论坛</h3>
    </div>
    <div class="cont o wow animated bounceInLeft">
        <div class="life o">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
            </div>
        </div>
        <div class="life o">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
            </div>
        </div>
        <div class="life o lifeEnd">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
            </div>
        </div>
        <div class="life o">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
            </div>
        </div>
        <div class="life o">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
            </div>
        </div>
        <div class="life o lifeEnd">
            <div class="yuan">求助</div>
            <div class="chou">
                <h3>零基础能学会java吗</h3>
                <p>有一定的自学能力和自控能力，有一套完整的教程资料，熟练使用stackoverflower，segmentfault等站点解决技术性的问题，自学起来难度不会太大。
                </p>
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
            src="statics/img/p_icon_phone.png"><span class="phone_large">400-110-1111</span>&nbsp;&nbsp;<span>025-6677-7333</span>
    </p>
</div>

<script type="text/javascript">
    jQuery("#demo1").slide({mainCell: ".bd ul", effect: "top", autoPlay: true, triggerTime: 0});
    jQuery(".txtMarquee-top").slide({
        mainCell: ".bd ul",
        autoPlay: true,
        effect: "topMarquee",
        vis: 5,
        interTime: 50,
        trigger: "click"
    });

    $('.item').hover(
        function () {
            $(this).find('ul')
                .stop(true)
                .slideDown();//显示
        },
        function () {
            $(this).find('ul')
                .stop(true)
                .slideUp();//隐藏
        }
    );


    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
        new WOW().init();
    }
</script>
<!--<script type="text/javascript">-->
<!--jQuery(".txtMarquee-top").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:5,interTime:50,trigger:"click"});-->
<!--</script>       -->

</body>
</html>
<script type="text/javascript">
    $(function () {
        console.log("欢迎登陆！")
        <%--console.log("<%=basePath%>");--%>
        <%--console.log("<%=user%>");--%>
    });

</script>