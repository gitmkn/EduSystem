
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
			$("a[name='url']").empty();
		   tr = $(this).closest('tr');//找到tr元素
		   getId1 = tr.find('td:eq(0)').html();//找到td元素
		   getId2 = tr.find('td:eq(1)').html();
		   getId3 = tr.find('td:eq(2)').html();
		   getId4 = tr.find('td:eq(3)').html();
		   getId5 = tr.find('td:eq(4)').html();
		   getId6 = tr.find('td:eq(5)').html();
//		   alert(getId1+getId2+getId3+getId4);
		   $("input[name='fid']").val(getId1);
		   $("input[name='name']").val(getId2);
		   $("input[name='cname']").val(getId3);
		   $("a[name='url']").attr("href",baseUrl+"/assets/image/"+getId4);
		   $("a[name='url']").append(getId4);
		   
	});
}
//修改收费信息
function update(){
	$("#deletebtn").click(function(){
		var fid = $("input[name='fid']").val()
		$.get({
			url:baseUrl+"/file/delete/"+fid,
			success:function(data){
				if("0" == data){
					alert();
					$("#updateerror").remove();
					$("#close").trigger("click");
//					var uid = $("input[name='uid']").val()
//					alert(uid);
//					window.location.href = baseUrl+"/file/filelist/"+uid;
					window.location.reload();
					
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

