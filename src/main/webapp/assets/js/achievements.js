
$(function(){
	select();
	update();
});


//查看收费信息
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
//		   alert(getId1+getId2+getId3+getId4);
		   $("input[name='aid']").val(getId1);
		   $("input[name='name']").val(getId2);
		   $("input[name='cname']").val(getId3);
		   $("input[name='sresult']").val(getId4);
		   $("input[name='eresult']").val(getId5);
		   $("input[name='remarks']").val(getId6);
		   $("input[name='uid']").val(getId7);
		   $("input[name='cid']").val(getId8);
		   
	});
}
//修改收费信息
function update(){
	$("#updatebtn").click(function(){
		$.ajax({
			url:baseUrl+"/achievements/update",
			data:$('#updateform').serialize(),
			success:function(data){
				if("0" == data){
					$("#updateerror").remove();
					$("#close").trigger("click");
					var uid = $("input[name='uid']").val()
					alert(uid);
					window.location.href = baseUrl+"/achievements/achievementslist/"+uid;
					
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

