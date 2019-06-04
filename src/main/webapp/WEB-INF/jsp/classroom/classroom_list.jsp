<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/classroom.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/page.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">教室管理
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
								<!-- <div class="card-header">
									<div class="card-title">标题
										<span class="badge badge-danger"  style="float:right;">提交</span>
									</div>
								</div>  -->
							
								<div class="card-body">
									<table class="table table-head-bg-primary change2 mt-4 table-hover" style="text-align:center;">
										<thead>
											<tr>
												<th width="10%">教室ID</th>
												<th class="th1 th2" width="30%">教室名称</th>
												<th class="th0 th1 th2" width="20%">教室容纳人数</th>
												<th width="10%">状态</th>
											</tr>
										</thead>
										<tbody id="tablepage">
										 <c:forEach items="${ classroomList }" var="classroom">
										<tr class="myclass"   data-toggle="modal" data-target="#update">
												<td>${ classroom.rid }</td>
												<td>${ classroom.rname }</td>
												<td class="th0 th1 th2">${ classroom.number }</td>
												<td><c:if test="${ classroom.state == 1 }">正常</c:if><c:if test="${ classroom.state == 0 }">占用</c:if></td>
											</tr>
											
											<!-- <tr class="myclass"   data-toggle="modal" data-target="#update">
												<td>A402</td>
												<td class="th0 th1 th2">数学教室</td>
												<td class="th1 th2">40</td>
												<td>正常</td>
											</tr> -->
										</c:forEach>
										</tbody>
									</table>
									<p class="demo">
										<ul id="barcon" class="pagination pg-primary"  style="float:left;">
											<!-- <li class="page-item">
												<a class="page-link" href="#" aria-label="Previous">
													<span aria-hidden="true">&laquo;</span>
													<span class="sr-only">Previous</span>
												</a>
											</li>
											<li class="page-item active"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">4</a></li>
											<li class="page-item">
												<a class="page-link" href="#" aria-label="Next">
													<span aria-hidden="true">&raquo;</span>
													<span class="sr-only">Next</span>
												</a>
											</li> -->
										</ul>
										<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
										<button class="btn btn-primary btn-border btn-round" style="float:right;"   data-toggle="modal" data-target="#modalUpdate">
										添加
										</button>
										</c:if>
									</p>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
					<%@ include file="classroom_add.jsp" %>
					</c:if>
<!-- ================================================================================================ -->	
				</div>
			</div>
			<%@ include file="../footer.jsp" %>
		</div>
	</div>
	
	
	
<!-- ================================================================================================ -->		
	
	
	<!-- 教师信息 -->
	<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title"><i class="la la-plus-circle"></i> 教室详细信息修改 </h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="updateform" method="post">
				<div class="modal-body">
<!-- ===================================================================================================== -->								
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">教室id</label>
						<div class="col-md-9 p-0">
							<input type="text" name="rid" class="form-control input-full" value="">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">教室名称</label>
						<div class="col-md-9 p-0">
							<input type="text" name="rname" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">容纳人数</label>
						<div class="col-md-9 p-0">
							<input type="text" name="number" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="state" value="1">
							<span class="form-radio-sign">正常</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="state" value="0">
							<span class="form-radio-sign">占用</span>
						</label>
					</div>
					
					
<!-- ===================================================================================================== -->
				</div>
				<div class="modal-footer">
					<span id="updateerror" style="color: red;"></span>
					<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
					<input type="button" id="updatebtn" class="btn btn-success" value="提交">
					</c:if>
					<input type="button" class="btn btn-secondary" data-dismiss="modal" value="取消">
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" language="javascript">
	window.onload = function() {
		goPage(1, 5);
	};
</script>
</html>