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
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/teacher.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/page.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">教师管理
						<span class="badge badge-success"  style="float:right;" title="刷新">
							<!-- <i class="la la-rotate-right"></i> -->
							<select>
								<option>123</option>
								<option>123</option>
								<option>123</option>
							</select>
						</span>
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
												<th width="10%">姓名</th>
												<th class="th2" width="5%">性别</th>
												<th class="th2" width="10%">电话</th>
												<th class="th0 th1 th2" width="20%">邮箱</th>
												<th class="th0 th1 th2" width="40%">地址</th>
												<th class="th1 th2" width="10%">学校名</th>
												<th width="5%">状态</th>
												<!-- <th width="20%">操作</th> -->
											</tr>
										</thead>
										<tbody id="tablepage">
										<c:forEach items="${ userList }" var="user1">
										<tr class="myclass"   data-toggle="modal" data-target="#update">
												<td style="display:none;">${ user1.uid }</td>
												<td>${ user1.name }</td>
												<td class="th2">${ user1.sex }</td>
												<td class="th2">${ user1.phone }</td>
												<td class="th0 th1 th2">${ user1.email }</td>
												<td class="th0 th1 th2">${ user1.address }</td>
												<td class="th1 th2">${ user1.school }</td>
												<td><c:if test="${ user1.state == 1 }">正常</c:if><c:if test="${ user1.state == 0 }">离司</c:if></td>
												<%-- <td>
												<c:if test="${ user1.state == 1 }">
													<span class="badge badge-primary">
														<i class="la la-send"></i>
													</span>
												</c:if>
												<c:if test="${ user1.state == 0 }">
													<span class="badge badge-primary">
														<i class="la la-check"></i>
													</span>
												</c:if>
													<a class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</a>
													<a href="#" class="badge badge-danger">
														<i class="la la-remove"></i>
													</a>
												</td> --%>
											</tr>
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
										<button class="btn btn-primary btn-border btn-round" style="float:right;"   data-toggle="modal" data-target="#modalUpdate">
										添加
										</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="teacher_add.jsp" %>
<!-- ================================================================================================ -->	
				</div>
			</div>
			<%-- <%@ include file="../footer.jsp" %> --%>
		</div>
	</div>
	
	
	
<!-- ================================================================================================ -->		
	
	
	<!-- 教师信息修改 -->
	<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title"><i class="la la-plus-circle"></i> 教师详细信息修改 </h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="updateform" method="post">
				<div class="modal-body">
<!-- ===================================================================================================== -->								
					<input type="hidden" name="uid" value="">
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">姓名</label>
						<div class="col-md-9 p-0">
							<input type="text" name="name" class="form-control input-full" value="">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">性别</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="sex" value="男">
							<span class="form-radio-sign">男</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="sex" value="女">
							<span class="form-radio-sign">女</span>
						</label>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">电话</label>
						<div class="col-md-9 p-0">
							<input type="text" name="phone" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">邮箱</label>
						<div class="col-md-9 p-0">
							<input type="text" name="email" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">地址</label>
						<div class="col-md-9 p-0">
							<input type="text" name="address" class="form-control input-full" value="元宝区辽东学院">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">学校名</label>
						<div class="col-md-9 p-0">
							<input type="text" name="school" class="form-control input-full" value="">
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
							<span class="form-radio-sign">离司</span>
						</label>
					</div>
					
					
<!-- ===================================================================================================== -->
				</div>
				<div class="modal-footer">
					<span id="updateerror" style="color: red;"></span>
					<input type="button" id="updatebtn" class="btn btn-success" value="提交">
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