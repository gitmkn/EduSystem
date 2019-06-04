
$(function(){
//	list();
	select();
	add();
	update();
});


/**
 * 添加学生 0成功  1填写错误  2此号码已使用
 * @returns
 */
function add(){
	$("#add").click(function(){
		alert($('form').serializeArray());
		$.post({
			url:baseUrl+"/classroom/add",
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
					$("#adderror").html("添加时发生错误，修改教室id");
				}
				
			},
			error:function(){
				alert("添加教室时发生错误与服务器断开链接");
			}
		});
	});
}

//查看修改信息
function select(){
	var tr ;
	var getId1;
	var getId2;
	var getId3;
	var getId4;
	var getId5;
	$(".myclass").click(function(){
	   tr = $(this).closest('tr');//找到tr元素
	   getId1 = tr.find('td:eq(0)').html();//找到td元素
	   getId2 = tr.find('td:eq(1)').html();
	   getId3 = tr.find('td:eq(2)').html();
	   getId4 = tr.find('td:eq(3)').html();
//	   alert(getId1+getId2+getId3+getId4);
	   $("input[name='rid']").val(getId1);
	   $("input[name='rname']").val(getId2);
	   $("input[name='number']").val(getId3);
	   if(getId4 == '正常'){
		   $("input:radio[name=state][value='1']").attr("checked",true); 
	   }else{
		   $("input:radio[name=state][value='0']").attr("checked",true); 
	   }
	   
	});
}
//修改教师信息
function update(){
	$("#updatebtn").click(function(){
		$.post({
			url:baseUrl+"/classroom/update",
			data:$('#updateform').serializeArray(),
			beforeSend:function(XMLHttpRequest){ 
				$(this).attr("value","等待");
		    }, 
			success:function(data){
				if("0" == data){
					$("#updateerror").remove();
					$("#close").trigger("click");
					window.location.reload();
					
				}else if("1" == data){
					$("#updateerror").html("填写错误");
					
				}else{
					$("#updateerror").html("修改失败");
				}
				
			},
			error:function(){
				alert("发生错误请重试");
			}
		});
	});
}