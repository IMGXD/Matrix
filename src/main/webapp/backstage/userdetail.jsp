<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <link href="js/bootstrap.min.css" rel="stylesheet">
   <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery.js"></script>
    <script type="text/javascript" src="Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <script type="text/javascript" src="js/showdate.js"></script>
    <style type="text/css">
        body {font-size: 20px;
             padding-bottom: 40px;
             background-color:#e9e7ef;
             font-size:17px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
</head>
<body>
<h3><strong>基本信息：</strong></h3>
   <table class="table table-condensed">
                
                <tr>              
	              <td width="18%" height="30" align="center">用 户 名 称：</td>
	              <td width="82%" class="word_grey"> <%= request.getParameter("username") %></td>
	            </tr>
				<tr>              
	              <td width="18%" height="30" align="center">昵称：</td>
	              <td width="82%" class="word_grey"><%= request.getParameter("nickname") %></td>
	            </tr>
	            <tr>
	              <td height="28" align="center">性别：</td>
	              <td height="28"> 
	              <%= request.getParameter("sex") %>
	             </td>
	            </tr> 
	            <tr>
	              <td height="28" align="center">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
	              <td height="28"><%= request.getParameter("password") %></td>
	            </tr>
	            <tr>
	              <td height="28" align="center">E-mail：</td>
	              <td height="28"><%= request.getParameter("email") %></td>
	            </tr> 
	            
	            <tr>
	              <td height="28" align="center">tel：</td>
	              <td height="28"><%= request.getParameter("tel") %></td>
	            </tr> 
			   
	            
	        </table>				
       
</body>
</html>
