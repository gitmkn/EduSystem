
/*登录、验证码请求*/
$(function(){
	$("img").click(function(){
		$("img").attr("src",baseUrl+'/login/code?v='+Math.random());
	});
	blur();
	
});


/*验证码校验，当失去焦点执行*/
function blur(){
	$("input[name='code']").blur(function(){
		var code = $("input[name='code']").val();
		$.post({
			url:baseUrl+"/login/Checkcode/"+code,
			success:function(code){
				if(code == 0){
					$("input[type='button']").attr("value","验证码错误");
				}else{
					$("input[type='button']").attr("value","验证码正确");
					submit();
				}
			},
			error:function(){
				$("input[type='button']").attr("value","请输入验证码");
			}
		});
	});
}	

$(function(){
	submit();
});


/*提交跳转*/
function submit(){
	$("input[type='button']").click(function(){
		$.post({
			url:baseUrl+"/login/dologin",
			data:$('form').serializeArray(),
			beforeSend:function(XMLHttpRequest){ 
				$("input[type='button']").attr("value","加载中...");
		    }, 
			success:function(data){
				if("errer" == data){
					$("input[type='button']").attr("value","密码错误");
				}else{
					$("input[type='button']").attr("value","登录");
					window.document.location.href=baseUrl+"/"+data;
				}
			},
			error:function(){
				alert("与服务器断开链接");
			}
		});
	});
}
