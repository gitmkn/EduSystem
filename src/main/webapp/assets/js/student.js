
$(function(){
	list();
	select();
	add();
	update();
	selectFuzzy();//模糊查询
	selectAchrevements();//
});

//加载学生列表
function list(){
	$(".badge-warning").click(function(){
		var id = $(this).attr('href');
		$.post({
			url:baseUrl+"/students/student/"+id,
		});
	});
}

/**
 * 添加学生 0成功  1填写错误  2此号码已使用
 * @returns
 */
function add(){
	$("#add").click(function(){
		$.post({
			url:baseUrl+"/students/add",
			data:$('#addform').serializeArray(),
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
	   getId5 = tr.find('td:eq(4)').html();
	   getId6 = tr.find('td:eq(5)').html();
	   getId7 = tr.find('td:eq(6)').html();
	   getId8 = tr.find('td:eq(7)').html();
	   $("input[name='uid']").val(getId1);
	   $("input[name='name']").val(getId2);
	   if(getId3 == '男'){
		   $("input:radio[name=sex][value='男']").attr("checked",true); 
	   }else{
		   $("input:radio[name=sex][value='女']").attr("checked",true); 
	   }
	   $("input[name='phone']").val(getId4);
	   $("input[name='email']").val(getId5);
	   $("input[name='address']").val(getId6);
	   $("input[name='school']").val(getId7);
	   if(getId8 == '正常'){
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
			url:baseUrl+"/teacher/update",
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

//模糊学生列表
function selectFuzzy(){
	$("#searchbtn").click(function(){
		var title = $("input[name=title]").val();
		alert(title);
		$.get({
			url:baseUrl+"/students/studentFuzzy/"+title,
		});
	});
}

//查看成绩列表
function selectAchrevements(){
	$("#select").click(function(){
		var uid = $("input[name='uid']").val();
		window.location.href = baseUrl+"/achievements/achievementslist/"+uid;
	});
}
