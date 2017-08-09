<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>：
<title></title>
<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="Css/style.css" />
<script type="text/javascript" src="js/jquery2.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/ckform.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
body {
	font-size: 20px;
	padding-bottom: 40px;
	background-color: #e9e7ef;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<script type="text/javascript">
function del(id){
	$.ajax({
		type:"post",
		url:"/matrix/manage/user/del.do",
		data:{"id":id},
		dataType:"json",
		success:function(msg){
			if(msg){
				$("#tr_"+id).remove();
				
			}else{
				error();
			}
			
		}
	})
}
</script>
</head>
<body>

	<form id="fm" class="form-inline definewidth m20" method="post" action="/matrix/manage/user/list.do">
		<font color="#777777"><strong>用户名称：</strong></font> <input type="text"
			name="username" id="username" class="abc input-default"
			placeholder="" value="">&nbsp;&nbsp;
		<button type="submit">查询</button>
		<button type="button" id="modifyUser">
			<a href="modifyUser.jsp">修改用户</a>
		</button>
	</form>
	<table id="dg" class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th>id</th>
				<th>用户姓名</th>
				<th>性别</th>
				<th>昵称</th>
				<!-- <th>密码</th> -->
				<th>创建时间</th>
				<th>Email</th>
				<th>tel</th>
				<th>注销账户</th>
			</tr>
		</thead>
		<c:forEach items="${userList }" var="user">
				<tr id="tr_${user.id}">
					<td>  ${user.id}</td>
					<td><a href="userdetail.jsp?nickname=${user.nickname}&sex=${user.sex eq'0'?'女':'男'} &tel=${user.tel }&email=${user.email }&id=${user.id}&username=${user.username}&password=${user.password}&createtime=${user.createTime}">${user.username}</a></td>
					
					<td id="sex">  
						${user.sex eq'0'?'女':'男'} 
					</td>
					<td>${user.nickname}</td>
					<%-- <td>${user.password}</td> --%>
					
					<td>
						<fmt:formatDate value="${user.createTime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
					<td>${user.email }</td>
					<td>${user.tel }</td>
					<td><button type="submit" onclick="del('${user.id}')">注销</button></td>
				</tr>
			</c:forEach>
	</table>
	
	
	<%-- <c:choose>
		<c:when test="${empty response}">
			<h3>暂无用户信息</h3>
		</c:when>
		<c:otherwise>
			<c:forEach items="${response}" var="list">
				<tr>
					<td><a href="userdetail.jsp">${list.username}</a></td>
					<td>${list.email}></td>
					<td>${list.createTime}></td>
					<td><button type="submit">注销</button></td>
					<td>${list.id }</td>
				</tr>
			</c:forEach>
			</table>
		</c:otherwise>
	</c:choose> --%>
	<br>
</body>
</html>