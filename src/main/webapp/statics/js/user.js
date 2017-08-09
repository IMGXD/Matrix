$(function(){
	
	$("#btn").attr("disabled",true);// 按钮禁用
	
	/**
	 * 输入框失去焦点事件
	 */
	$("#nickName").blur(function(){
		/**
		 * 发送ajax 执行昵称唯一性校验
		 */
		var oldNickName=$("#oldNickName").val();// 原始昵称值
		var nickName=$("#nickName").val();// 获取修改后的昵称
		
		if(null==nickName||nickName==""||nickName.trim()==""){
			alert("昵称非空");
			$("#btn").attr("disabled",true);// 按钮禁用
			return;
		}
		
		if(oldNickName!=nickName){
			/**
			 * 昵称已修改  发送ajax 执行唯一性校验
			 */
			$.ajax({
				type:"post",
				url:"user",
				data:"act=checkNickName&nickName="+nickName,
				dataType:"json",
				success:function(data){
					if(data.code==300){
						$("#btn").attr("disabled",true);
						$("#msg").html(data.msg);
					}else{
						$("#btn").attr("disabled",false);
						$("#msg").html("");
					}
				}
			})
			
		}
	})
	
	/**
	 * 获取焦点事件
	 */
	$("#nickName").focus(function(){
		$("#btn").attr("disabled",false);
		$("#msg").html("");
	})
	
})