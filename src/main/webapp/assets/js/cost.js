$(function() {
	select();
	update();
	selectlist()
	add();
	deleteCost()
});

// 查看收费信息
function select() {
	var tr;
	var getId1;
	var getId2;
	var getId3;
	var getId4;
	var getId5;
	$(".myclass").click(function() {
		tr = $(this).closest('tr');// 找到tr元素
		getId1 = tr.find('td:eq(0)').html();// 找到td元素
		getId2 = tr.find('td:eq(1)').html();
		getId3 = tr.find('td:eq(2)').html();
		getId4 = tr.find('td:eq(3)').html();
		getId5 = tr.find('td:eq(4)').html();
		getId6 = tr.find('td:eq(5)').html();
		// alert(getId1+getId2+getId3+getId4);
		$("input[name='coid']").val(getId1);
		$("input[name='name']").val(getId2);
		$("input[name='cname']").val(getId3);
		$("input[name='createtime']").val(getId4);
		$("input[name='money']").val(getId5);
		if (getId6 == '已收费') {
			$("input:radio[name=state][value='1']").attr("checked", true);
		} else {
			$("input:radio[name=state][value='0']").attr("checked", true);
		}
	});
}
// 修改收费信息
function update() {
	$("#updatebtn").click(function() {
		$.ajax({
			url : baseUrl + "/cost/update",
			data : $('#updateform').serialize(),
			success : function(data) {
				if ("0" == data) {
					$("#updateerror").remove();
					$("#close").trigger("click");
					window.location.reload();

				} else if ("1" == data) {
					$("#updateerror").html("填写错误");

				} else {
					$("#updateerror").html("修改失败");
				}

			},
			error : function() {
				alert("发生错误请重试");
			}
		});
	});
}
// 添加收费信息
function add() {
	$("#add").click(
			function() {
				$("input[name='money']").val("");
				if ($('input[name=uid]').val() != 0
						&& $('input[name=cid]').val() != 0) {
					$("#adderror").html("");
					$.post({
						url : baseUrl + "/cost/add",
						data : $('form').serializeArray(),
						beforeSend : function(XMLHttpRequest) {
							$(this).attr("value", "等待");
						},
						success : function(data) {
							if ("0" == data) {
								$("#adderror").remove();
								$("#close").trigger("click");
								window.location.reload();

							} else if ("1" == data) {
								$("#adderror").html("填写错误");

							} else {
								$("#adderror").html("添加时发生错误，修改课程id");
							}

						},
						error : function() {
							alert("添加课程时发生错误与服务器断开链接");
						}
					});
				} else {
					$("#adderror").html("请选择学生和课程");
				}

			});
}

function selectlist() {
	var div1 = "";
	var data1 = 0;
	var list1 = [];
	$.get({
		url : baseUrl + "/students/studentlist",
		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				div1 += '<option value="' + data[i].uid + '">' + data[i].name
						+ '</option>';
				data1 = data[i].uid;
				list1[i] = data[i];
			}
			$("select[name='name']").append(div1);
			$("input[name='uid']").val(money);
		}
	});
	// 获取金额
	$("body").change("select[name='name']", function() {
		var m = $("select[name='name']").val();
		for (var i = 0; i < list1.length; i++) {
			if (m == list1[i].uid) {
				$("input[name='uid']").val(list1[i].uid);
			}

		}
	});
	var div2 = "";
	var money = 0;
	var list = [];
	$.get({
		url : baseUrl + "/course/courselist",
		success : function(data) {
			for (var i = 0; i < data.length; i++) {
				div2 += '<option value="' + data[i].cid + '">' + data[i].cname
						+ '</option>';
				list[i] = data[i];
			}
			$("select[name='cname']").append(div2);
			$("input[name='money']").val(money);
		}
	});
	// 获取金额
	$("body").change("select[name='cname']", function() {
		var m = $("select[name='cname']").val();
		for (var i = 0; i < list.length; i++) {
			if (m == list[i].cid) {
				money = list[i].chours * list[i].cmoney;
				$("input[name='money']").val(money);
				$("input[name='cid']").val(list[i].cid);
			}

		}
	});
}

// 删除收费信息
function deleteCost() {
	$("#delete").click(function() {
		alert("确定要删除吗")
		$.ajax({
			url : baseUrl + "/cost/delete",
			data : $('#updateform').serialize(),
			success : function(data) {
				if ("0" == data) {
					$("#updateerror").remove();
					$("#close").trigger("click");
					window.location.reload();

				} else if ("1" == data) {
					$("#updateerror").html("删除失败");

				}
			},
			error : function() {
				alert("发生错误请重试");
			}
		});
	});
}