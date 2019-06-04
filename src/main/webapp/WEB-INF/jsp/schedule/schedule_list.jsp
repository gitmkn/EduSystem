<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
<%-- <script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/cost.js"></script> --%>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">
						<span id="classroom"></span>&nbsp;课程表
						<!-- <span class="badge badge-success"  style="float:right;" title="刷新">
							<i class="la la-rotate-right"></i>
							<select>
								<option>123</option>
								<option>123</option>
								<option>123</option>
							</select>
						</span> -->
					</h4>
					<!-- ================================================================================================ -->
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										<p class="demo">
										<div class="dropdown">
											<button class="btn btn-primary dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown">教室</button>
											<ul class="dropdown-menu" role="menu"
												aria-labelledby="dropdownMenu">
												<div id="mvn">
													
												</div>
												<!-- <div class="dropdown-divider"></div>
												<div id="lvn">
													<a class="dropdown-item" href="#">z1501</a> <a
														class="dropdown-item" href="#">z1502</a>
												</div> -->
											</ul>
										</div>
										
										</p>
										
									</div>
								</div>

								<div class="card-body">
									<table
										class="table table-head-bg-primary table-bordered-bd-info change2 mt-4"
										style="text-align: center;">
										<thead>
											<tr>
												<th width="12.5%"></th>
												<th class="th2" width="12.5%">星期一</th>
												<th class="th2" width="12.5%">星期二</th>
												<th class="th2" width="12.5%">星期三</th>
												<th class="th2" width="12.5%">星期四</th>
												<th class="th2" width="12.5%">星期五</th>
												<th class="th2" width="12.5%">星期六</th>
												<th class="th2" width="12.5%">星期日</th>
											</tr>
										</thead>
										<tbody id="tablepage">
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<!-- ================================================================================================ -->
				</div>
			</div>
			<%@ include file="../footer.jsp" %>
		</div>
	</div>



	<!-- ================================================================================================ -->


	<!-- 教师信息 -->
	<div class="modal fade" id="update" tabindex="-1" role="dialog"
		aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title">
						<i class="la la-plus-circle"></i> 课表信息修改
					</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="updateform" method="post">
					<div class="modal-body">
						<!-- ===================================================================================================== -->

					<input type="hidden" name="week">
					<input type="hidden" name="coursetime">
					<input type="hidden" name="uid">
					<input type="hidden" name="cid">
					<input type="hidden" name="scid">
					<input type="hidden" name="rid">
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程名称</label>
						<div id="course" class="col-md-9 p-0">
							<select id="course" class="form-control input-full" name="cname">
								<!-- <option class="active"></option> -->
							</select>
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程课时</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" name="chours" readonly="readonly">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">授课教师</label>
						<div id="teacher" class="col-md-9 p-0">
							<select id="teacher" class="form-control input-full" name="name">
								<!-- <option class="active"></option> -->
							</select>
						</div>
					</div>

					<!-- ===================================================================================================== -->
					</div>
					<div class="modal-footer">
						<span id="updateerror" style="color: red;"></span>
						<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
						<input type="button" id="delete" class="btn btn-danger" value="删除"></c:if>
						<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
						<input type="button" id="updatebtn" class="btn btn-success" value="提交">
						</c:if>
						<input type="button" class="btn btn-secondary" data-dismiss="modal" value="取消">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var rid = 0;
		var scid = 0;
		$(function() {
			var div = '<tr class="myclass"><td class="td" colspan="8">请选择教室</td></tr>';
			$("#tablepage").append(div);
			
			//加载教室，下拉
			var div1 = "";
			$.get({
				url:baseUrl+"/classroom/classroomlist",
				success:function(data){
					for(var i=0;i<data.length;i++){
						div1 += '<a class="dropdown-item" onclick="dropdown('+data[i].rid+')">'+data[i].rid+'-'+data[i].rname+'-'+data[i].number+'</a>';
					}
					$("#mvn").append(div1);
				}
			});
			
		});
		
		var list = [];
		
		//加载课表
		function dropdown(a) {
			rid = a;
			$("#classroom").text("");
			$("#classroom").append(a+"教室");
			$("#tablepage tr").remove();
			//画课表
			for(var i = 1;i <= 8;i++){
				div = '<tr class="myclass">'
					+ '<td class="td">第'+i+'节</td>'
					+ '<td class="td" data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td>'
					+ '<td data-toggle="modal" data-target="#update"></td></tr>';
				$("#tablepage").append(div);
			}
			list = [];
			$.get({
				url:baseUrl+"/schedule/schedulelist/"+a,
				success:function(data){
					if(data != null){
						for(var i=0;i<data.length;i++){
							$('#tablepage').find("tr").eq(data[i].coursetime-1).find("td").eq(data[i].week).text(data[i].course.cname);
							list[i] = data[i];
						}
					}
				}
			});
			modal();
			update();
			deleteCost()
		}
		function modal(){
			$("#tablepage td").click(function() {
				$("select[name='name'] option").remove();
				$("input[name='uid']").val("");
			/* 	$("input[name='chours']").val(""); */
				$("input[name='scid']").val("");
				$("input[name='cid']").val("");
				var div2 = "";
				var div3 = '';
				var div4 = null;
				var week = 0;
				var coursetime = 0;
				var uid = 0;
				var cid = 0;
				scid = 0;
				var tdSeq = $(this).parent().find("td").index($(this)[0]);//列
				var trSeq = $(this).parent().parent().find("tr").index($(this).parent()[0]);//行
				var list2 = [];
				$.get({
					url:baseUrl+"/teacher/teacherlist/"+tdSeq+"/"+trSeq,
					success:function(data){
						/* alert(data); */
						for(var i=0;i<data.length;i++){
							div3 += '<option value="'+data[i].name+'">'+data[i].name+'</option>';
							list2[i] = data[i];
						}
						/* alert(div3); */
						$("select[name='name'] option").remove();
						$("select[name='name']").append(div3);
					}
				});
				var list1 = [];
				$.get({
					url:baseUrl+"/course/courselist",
					success:function(data){
						for(var i=0;i<data.length;i++){
							div2 += '<option value="'+data[i].cname+'">'+data[i].cname+'</option>';
							list1[i] = data[i];
						}
						$("select[name='cname'] option").remove();
						$("select[name='cname']").append(div2);
					}
				});
				
				for(var i=0;i<list.length;i++){
					if(list[i].coursetime == trSeq+1 && list[i].week == tdSeq){
						div2 += '<option value="'+list[i].course.cname+'" select="selected">'+list[i].course.cname+'</option>';
						div4 = list[i].course.chours;
						div3 += '<option value="'+list[i].user.name+'" select="selected">'+list[i].user.name+'</option>';
						week = list[i].week;
						coursetime = list[i].coursetime;
						uid = list[i].user.uid;
						scid = list[i].scid;
						cid = list[i].course.cid;
					}else{
						/* $("select[name='cname'] option").remove(); */
						/* $("input[name='chours']").val(""); */
						/* $("select[name='name'] option").remove(); */
						
					}
				}
				if(scid == 0){
					div3 += '<option select="selected">请选择教师</option>';
					div2 += '<option select="selected">请选择课程</option>';
				}
				//获取keshi
				$("body #course").change("select[name='cname']",function(){
					var m = $("select[name='cname']").val();
					
					/* for(var i = 0;i < list.length;i++){
						if(m == list[i].course.cname){
							$("input[name='chours']").val(list[i].course.chours);
							$("input[name='cid']").val(list[i].course.cid);
							
						}else{
							for(var j = 0;j < list1.length;j++){
								if(m == list1[j].cname){
									$("input[name='chours']").val(list1[j].chours);
									$("input[name='cid']").val(list1[j].cid);
								}
							}
						}
						
					} */
					for(var j = 0;j < list1.length;j++){
						if(m == list1[j].cname){
							$("input[name='chours']").val(list1[j].chours);
							$("input[name='cid']").val(list1[j].cid);
						}
					}
				});
				
				//获取keshi
				$("body #teacher").change("select[name='name']",function(){
					var m = $("select[name='name']").val();
					for(var j = 0;j < list2.length;j++){
						if(m == list2[j].name){
							/* alert(list2[i].name); */
							$("input[name='uid']").val(list2[j].uid);
						}
					}
				});
				$("input[name='rid']").val(rid);
				$("input[name='week']").val(tdSeq);
				$("input[name='coursetime']").val(trSeq+1);
				$("input[name='uid']").val(uid);
				$("select[name='cname']").append(div2);
				$("input[name='chours']").val(div4);
				$("select[name='name']").append(div3);
				if($('#tablepage').find("tr").eq(trSeq+1).find("td").eq(tdSeq).text() != null){
					$("input[name='scid']").val(scid);
				}else{
					$("input[name='scid']").val("");
				}
				$("input[name='cid']").val(cid);
				
			});
			
		}
/* ==============================================================================================================	 */			
		
		function update(){
			//修改
			$("#updatebtn").click(function() {
				if(scid == 0){
					if($("input[name='chours']").val() != 0){
						if($("input[name='uid']").val() != 0){
							$.post({
								url:baseUrl+"/schedule/add",
								data:$('#updateform').serialize(),
								success:function(data){
									if("0" == data){
										$("#updateerror").remove();
										$("#close").trigger("click");
										window.location.reload();
									}else if("1" == data){
										$("#updateerror").html("修改失败");
									}
								},
								error:function(){
									alert("发生错误请重试");
								}
							});
						}else{
							alert("请重新选择教师");	
						}
					}else{
						alert("请重新选择课程");	
					}
				}else{
					$.post({
						url:baseUrl+"/schedule/update",
						data:$('#updateform').serialize(),
						success:function(data){
							if("0" == data){
								$("#updateerror").remove();
								$("#close").trigger("click");
								window.location.reload();
							}else if("1" == data){
								$("#updateerror").html("修改失败");
							}
						},
						error:function(){
							alert("发生错误请重试");
						}
					});
				}
				
			});
		}
		//删除课表信息
		function deleteCost(){
			$("#delete").click(function(){
				alert("确定要删除吗")
				if(scid == 0){
					alert("不需要删除");
				}else{
					$.ajax({
						url:baseUrl+"/schedule/delete",
						data:$('#updateform').serialize(),
						success:function(data){
							if("0" == data){
								$("#updateerror").remove();
								$("#close").trigger("click");
								window.location.reload();
								
							}else if("1" == data){
								$("#updateerror").html("删除失败");
								
							}
						},
						error:function(){
							alert("发生错误请重试");
						}
					});
				}
			});
		}
	</script>
</body>
</html>