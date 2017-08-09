$(function(){

	$("#addBtn").click(function(){
		$("#msg").html("");
		$("#typeName").val("");
		$("#btn_submit").attr("disabled",false);
		$("#myModalLabel").html("添加");
		$("#btn_submit").html("添加");
		$("#myModal").modal("show");
	})
	
	/**
	 * 失去焦点事件
	 */
		var typeName=$.trim($("#typeName").val());
		if(""==typeName){
			//alert("类型名称不能为空!");
			$("#msg").html("类型名称不能为空!");
			$("#btn_submit").attr("disabled",true);
			return 
		}
		
		var oldTypeName=$("#oldTypeName").val();
		if(typeName!=oldTypeName){
			$.ajax({
				type:"post",
				url:"noteType",
				data:"act=noteTypeNameUniqueCheck&typeName="+typeName,
				dataType:"json",
				success:function(data){
					if(data.code==200){
						$("#msg").html("");
						$("#btn_submit").attr("disabled",false);
					}else{
						$("#msg").html(data.msg);
						$("#btn_submit").attr("disabled",true);
					}
				}
			})
		}
	})
	
	/**
	 * 获取焦点事件
	 */
	$("#typeName").focus(function(){
		$("#msg").html("");
		$("#btn_submit").attr("disabled",false);
	})
	
	
	$("#close_btn").click(function(){
		$("#msg").html("");
		$("#typeName").val("");
		$("#btn_submit").attr("disabled",false);
	})
	
	
	/**
	 * 提交 输入内容  请求后台添加 
	 */
	$("#btn_submit").click(function(){
		
		var typeName=$("#typeName").val();
		var typeName=$.trim($("#typeName").val());
		if(""==typeName){
			//alert("类型名称不能为空!");
			$("#msg").html("类型名称不能为空!");
			$("#btn_submit").attr("disabled",true);
			return ; 
		}
		
		var id=$.trim($("#id").val());
		$.ajax({
			type:"post",
			url:"noteType",
			data:"act=saveOrUpdateNoteType&typeName="+typeName+"&id="+id,
			dataType:"json",
			success:function(data){
				if(data.code==200){
					if("" !=id){
						/**
						 * 更新指定行  修改指定节点
						 */
						updateTr(id,typeName);
						
					}else{
						/**
						 * 添加节点  使用jquery 操作 dom 
						 */
						addTr(data.result,typeName);//添加新行
					} 
					$("#myModal").modal("hide");	
				}else{
					$("#msg").html(data.msg);
					$("#btn_submit").attr("disabled",true);
				}
			}
		})
		
		
	})
	
	
	
	
	
	/**
	 * 对列表中所有更新按钮  绑定更新事件
	 */
	attachUpdate();
	
	/**
	 * 对列表中所有删除按钮  绑定删除事件
	 */
	attachDelete();
	
	
	
	
	
	
	
	
	
	
})


function addTr(id,typeName){
	var table=$(".table.table-hover.table-striped");// 数组
	if(table.length==0){
		/**
		 * 表格不存在
		 */
		//var h3=$("h3");
		
		var parent=$("h3").parent();// 获取父节点
		/**
		 * 追加table 表格
		 */
		var table="<table class='table table-hover table-striped'>" +
				" <tr>" +
				" <th>编号</th>" +
				" <th>类型</th>" +
				" <th>操作</th>" +
				" </tr>" +
				" </table>";
		
		parent.append(table);
		$("h3").remove();//移除h3 节点
		
	}
	
	/**
	 * 添加新行
	 *  <tr>
			<td>${noteType.id }</td>
			<td>${noteType.typeName }</td>
			<td>
				<button class="btn btn-primary" type="button">修改</button>&nbsp;
				<button class="btn btn-danger del" type="button">删除</button>
			</td>
		</tr>
	 */
	console.log(table);
	var tr="  <tr>" +
			" <td>"+id+"</td>" +
			" <td id=tr"+id+">"+typeName+"</td>" +
			" <td>" +
			" <button class='btn btn-primary update' type='button'>修改</button>&nbsp;" +
			" <button class='btn btn-danger del' type='button'>删除</button>" +
			" </td>" +
			" </tr>";
	$(".table.table-hover.table-striped").children().append(tr);// tbody 下追加tr 行记录
	
	/**
	 * 新加的节点统一绑定更新与删除事件
	 */
	attachUpdate();
	attachDelete();
}


/**
 * 更新事件
 */
function attachUpdate(){
	$(".btn.btn-primary.update").click(function(){
		//alert(11);
		var tr= $(this).parent().parent();// 获取当前行tr 节点
		var id= tr.children("td").eq(0).text();// 获取当前行 记录id
		var typeName= tr.children("td").eq(1).text();// 获取当前行 记录id
		$("#typeName").val(typeName);// 设置输入框的值
		$("#oldTypeName").val(typeName);//设置原始类型名称值
		$("#id").val(id);// 设置隐藏域id 值
		$("#btn_submit").html("更新");
		$("#myModalLabel").html("更新");
		$("#myModal").modal("show");
	})
}


function updateTr(id,typeName){
	$("#tr"+id).html(typeName);
	$("#id").val("");
	$("#oldTypeName").val("");
}

function attachDelete(){
	
	
	$(".btn.btn-danger.del").click(function(){
		var tr=$(this).parent().parent();
		swal({
			  title: "确定删除当前类别?",
			  text: "记录将会永久删除!",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "确定",
			  cancelButtonText: "取消",
			  closeOnConfirm: false,
			  closeOnCancel: false
			}).then(function(isConfirm){
				if (isConfirm) {
					var id=tr.children("td").eq(0).text();
					
					/**
					 * 执行ajax 发送删除请求
					 */
					$.ajax({
						type:"post",
						url:"noteType",
						data:"act=deleteNoteTypeById&id="+id,
						dataType:"json",
						success:function(data){
							if(data.code==200){
								/**
								 * 移除节点 
								 */
								deleteTr(id);
							}else{
								swal("删除操作",data.msg, "error");
							}
						}
					})
					
					
				    //swal("Deleted!", "Your imaginary file has been deleted.", "success");
				  }
			})
	})
	
}




function deleteTr(id){
	/**
	 * 当前表格剩余数据行数
	 * 
	 */
	var tr= $("#tr"+id).parent();
	var table=tr.parent().parent();
	var div=table.parent();//  获取div 节点 
	if(table.children().children("tr").length==2){
		table.remove();//删除整个表格
		div.append("<h3>暂无类别信息</h3>");
	}else{
		tr.remove();
	}
	
}


