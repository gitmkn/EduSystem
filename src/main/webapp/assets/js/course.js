
$(function(){
//	list();
	select();
	add();
	update();
	selectFile();
	fileupload();
});


/**
 * 添加课程 0成功  1填写错误  2此号码已使用
 * @returns
 */
function add(){
	$("#add").click(function(){
		/*alert($('form').serializeArray());*/
		$.post({
			url:baseUrl+"/course/add",
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
					$("#adderror").html("添加时发生错误，修改课程id");
				}
				
			},
			error:function(){
				alert("添加课程时发生错误与服务器断开链接");
			}
		});
	});
}

//查看课程信息
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
	   /*alert(getId1+getId2+getId3);*/
	   $("input[name='cid']").val(getId1);
	   $("input[name='cname']").val(getId2);
	   $("input[name='chours']").val(getId3);
	   $("input[name='cmoney']").val(getId4);
	   $("input[name='url']").val("");
	});
}
//修改课程信息
function update(){
	$("#updatebtn").click(function(){
		/*alert($('#updateform').serializeArray());*/
		$.post({
			url:baseUrl+"/course/update",
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

//备课文件上传
function fileupload(){
	$("#upload").click(function(){
		var uid = $('input[name=uid]').val();
		var cid = $('input[name=cid]').val();
		var file = document.getElementById("FileUpload").files[0];
		var formData = new FormData();
		formData.append("uid",uid);
		formData.append("cid",cid);
		formData.append("file",file);
		/*alert(uid);
		alert(cid);*/
		$.post({
			url:baseUrl+"/file/fileupload",
			data:formData,
			// 告诉jQuery不要去处理发送的数据，用于对data参数进行序列化处理 这里必须false
			processData : false,
			// 告诉jQuery不要去设置Content-Type请求头
			contentType : false,
			beforeSend:function(XMLHttpRequest){ 
				$(this).attr("value","等待");
		    }, 
			success:function(data){
				if("0" == data){
					$("#updateerror").remove();
					$("#close").trigger("click");
					window.location.reload();
					
				}else{
					$("#updateerror").html("上传失败");
				}
				
			},
			error:function(){
				alert("发生错误请重试");
			}
		});
	});
}

//查看备课文件列表
function selectFile(){
	$("#select").click(function(){
		var cid = $("input[name='cid']").val();
		/*alert(cid);*/
		window.location.href = baseUrl+"/file/fileByCid/"+cid;
	});
}
