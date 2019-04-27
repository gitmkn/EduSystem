
$(function(){
	list();
	add();
});

//加载学生列表
function list(){
	$(".badge-warning").click(function(){
		var id = $(this).attr('href');
		$.post({
			url:"/user/student/"+id,
		});
	});
}

// 添加学生
function add(){
	$("#add").click(function(){
		$.post({
			url:baseUrl+"/student/add",
			data:$('form').serializeArray(),
			beforeSend:function(XMLHttpRequest){ 
				$(this).attr("value","等待");
		    }, 
			success:function(data){
				if("0" == data){
					$("#adderror").remove();
					$("#close").trigger("click");
					window.location.reload();
					
				}else if("1" == data){
					$("#adderror").html("填写错误");
					
				}else{
					$("#adderror").html("此号码已使用");
				}
				
			},
			error:function(){
				alert("添加学生时发生错误与服务器断开链接");
			}
		});
	});
}
	