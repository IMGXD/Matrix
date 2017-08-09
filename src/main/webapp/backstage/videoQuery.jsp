<%@ page language="java" pageEncoding="UTF-8"%>

<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="Css/style.css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery2.js"></script>
<!--   <script type="text/javascript" src="js/jquery2.sorted.js"></script>  -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/ckform.js"></script>
<script type="text/javascript" src="js/common.js"></script>


<style type="text/css">
body {
	font-size: 20px;
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
window.onload=function(){
	queryvideo();
}
	
	  
	function queryvideo() {
	 var pageInfo=new Array();
	 $("#video").html("");
	
		console.log("开始");
		$.ajax({
			url : "/matrix/manage/video/queryVideoByParams.do",
			type : "post",
			data : $("#fm").serialize(),
			dataType : "json",
			success:function(data){
				if (data.status == 0) {
					pageInfo=data.data.list;
					console.log(pageInfo);
					var op="<thead><tr><th>id</th><th>标题</th><th>备注</th><th>上传时间</th><th>状态</th><th>管理</th></tr></thead>";
		 			for(var i=0; i<pageInfo.length;i++){
					op=op+" <tr> <td>"+pageInfo[i].id+"</td>"+"<td>"+pageInfo[i].title+"</td>"+"<td>"+pageInfo[i].remark+"</td>"+
					"<td>"+pageInfo[i].creatTime+"</td>"+"<td>";
					if(pageInfo[i].status==1){
						op=op+"可看"+"</td>"+"<td><a href='/matrix/manage/video/soldOut.do?id="+pageInfo[i].id+"'>"+"下架</a>|删除</td>";
					}
					else if(pageInfo[i].status==2){
						op=op+"下架"+"</td>"+"<td><a href='/matrix/manage/video/onSale.do?id="+pageInfo[i].id+"'>"+"可看</a>|删除</td>";
					}else {									
						op=op+"删除"+"</td>"+"<td><a href='/matrix/manage/video/onSale.do?id="+pageInfo[i].id+"'>"+"可看</a>|删除</td>";
					}
					
					
				}
				
				$("#video").append(op);
				
				} else {
					console.log("出错");
				}
			}
		});
		console.log("结束查询");
	   }
</script>
</head>
<body  ready="ac()">
<!-- <form action="" id="cs">
<input type="text" name="title">
<button  type="button"  onclick="queryvideo()" >提交</button>

</form> -->
	<form class="form-inline definewidth m20" method="post" id="fm">
		<font color="#777777"><strong>视频名称：</strong></font> <input type="text"
			name="title"  class="abc input-default" placeholder=""
			value="">&nbsp;&nbsp;
			
			
			
		<button type="button" class="btn btn-primary" onclick="queryvideo()">查询</button>
		&nbsp;&nbsp;
	<button type="button" id="addnew">
		<a href="videosAdd.html">添加视频</a>
	</button>
	</form>
	<table class="table table-bordered table-hover definewidth m10"  id="video">
			
			
			</table>
	<!-- <table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th>id</th>
				<th>标题</th>
				<th>备注</th>
				<th>上传日期</th>
				<th>状态</th>
			</tr>
		</thead>
		</table> -->
			
		
		
		
		
		
			<%-- <c:if test="${!empty pageInfo }">
			<c:forEach  items="${pageInfo}" var="video">
			<tr>
			<td>${video.id }</td>
			<td>${video.title }</td>
			<td>${video.remark }</td>
			<td>${video.creatTime }</td>
			<td>${video.status }</td>
			</tr>
			</c:forEach>
		</c:if> --%>

		<!--  <td>复仇者联盟</td>
                <td>电影</td>
                <td><a href="studentdetail.html">小强</a></td>
                <td>2016.07.22</td>
                
                <td> <button type="submit">删除</button></a></td> -->



		<%--             <c:forEach items="${page.datas}" var="video">
   <tr>
	<td>${video.category}</td>
	<td>${video.}</td>
	<td >${payIn.name }</td>
	<td>
	   <c:choose>
	     <c:when test="${payIn.type==1 }">
	             工资
	     </c:when>
	     <c:when test="${payIn.type==2 }">
	              外快
	     </c:when>
	      <c:when test="${payIn.type==3 }">
	              红包
	     </c:when>
	     <c:otherwise>
	          其他
	     </c:otherwise>
	   
	   </c:choose>
	</td>
	<td>${payIn.money }</td>
	<td>${payIn.remark }</td>
	<td>
	   <fmt:formatDate value="${payIn.createTime }" pattern="yyyy年MM月dd日"/>
	</td>
	<td>
	  <fmt:formatDate value="${payIn.updateTime }" pattern="yyyy年MM月dd日"/>
	</td>
	<td>
	   ${payIn.aname}
	</td>
	<td><a href="#">编辑</a> | <a href="#">删除</a></td>
</tr>
</c:forEach> --%>





	

</body>
</html>

