
/*修改密码验证请求*/
$(function(){
	$("#updatepassword").click(function(){
		var password = $("input[name='password1']").val();
		var password2 = $("input[name='password2']").val();
		var password3 = $("input[name='password3']").val();
		if(password2 == password3){
			$.post({
				url:baseUrl+"/home/password/"+password+"/"+password2,
				beforeSend:function(XMLHttpRequest){ 
					$(this).attr("value","等待");
			    }, 
				success:function(data){
					if(0 == data){
						$("#passworderror").remove();
						$("#close").trigger("click");
						window.location.reload();
						
					}else if(1 == data){
						$("#passworderror").html("旧密码错误");
						
					}else{
						$("#passworderror").html("修改密码失败");
					}
					
				},
				error:function(){
					alert("添加学生时发生错误与服务器断开链接");
				}
			});
		}else{
			$("#passworderror").html("输入两次新密码不一样");
		}
	});
	$("#updateuser").click(function(){
		$.post({
			url:baseUrl+"/home/userupdate",
			data:$('#user').serializeArray(),
			success:function(data){
				if('0' == data){
					$("#userdate").remove();
					$("#close").trigger("click");
					window.location.reload();
				}else if('1' == data){
					$("#userdate").html("填写错误");
					
				}else{
					$("#userdate").html("发生未知错误");
				}
			},
			error:function(){
				alert("修改信息时发生错误与服务器断开链接");
			}
		});
	});
});
