<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="js/jquery2.js"></script>
    <script type="text/javascript" src="js/jquery2.sorted.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/ckform.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquerypicture.js"></script>
    <script>
	
	$.ajax({
		type:"post",
		url:url,
		data:{"id":id},
		dataType:"json",
		success:function(data){
			if(msg){
				$("#tr_"+id).update();
				window.location.href="http://localhost:8080/matrix/backstage/index.jsp";
				//<a href="javascript:dpUpdate('10086')">更新</a>
			}else{
				error();
			}
			//window.location.href="跳转的url,后边也可以拼接点data中数据作为参数";
		}
	});
</script>
    <style type="text/css">
        body {font-size: 20px;
            padding-bottom: 40px;
            background-color:#e9e7ef;
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
<br>
 <font color="#777777"><strong>请填写用户资料：</strong></font>
<form action="#" method="post" class="definewidth m20" enctype="multipart/form-data">
<table class="table table-bordered table-hover m10" style="margin-left:10px;margin-top:3px;">
    
   
   <br>
    <tr>
    	<td class="tableleft">id</td>
    	<td><input type="text" name="TloginId"/></td>
        <td class="tableleft">用户名称</td>
        <td><input type="text" name="TloginName"/></td>
    </tr>
    <tr>
        <td class="tableleft">密码</td>
        <td><input type="text" name="Tpassword"/></td>
        <td class="tableleft">生日</td>
        <td><input type="text" name="Tbirthday"/></td>
    
    </tr>
	<tr>
        <td class="tableleft">昵称</td>
        <td><input type="text" name="TrealName"/></td>
        <td class="tableleft">创建时间</td>
        <td><input type="text" name="TcreateTime"/></td>
    </tr>
	<tr>
        <td class="tableleft">邮箱</td>
        <td><input type="text" name="Temail"/></td>
        <td class="tableleft">电话</td>
        <td><input type="text" name="Ttel"/></td>
	</tr>
	
</table>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary"><h3>提交</h3></button>
</form>
 <img src="" id="img0" > 
 
<script>	
$("#GoodsPicture").change(function(){
	var objUrl = getObjectURL(this.files[0]) ;
	console.log("objUrl = "+objUrl) ;
	if (objUrl) {
		$("#img0").attr("src", objUrl) ;
	}
}) ;
</body>
</html>
<script>
   $(function (){       
		$('#backid').click(function(){
				window.location.href="goodsQuery.html";
		 });
    });
		
</script>


