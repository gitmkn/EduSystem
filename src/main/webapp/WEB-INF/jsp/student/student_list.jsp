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
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/student.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">学生管理
						<a href="javascript:location.reload();" class="badge badge-success" style="float:right;" title="刷新">
							<i class="la la-rotate-right"></i>
						</a>
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
												<th class="th0 th1 th2" width="40%">地址</th>
												<th class="th1 th2" width="10%">学校名</th>
												<th width="5%">状态</th>
												<th width="20%">操作</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${ userList }" var="user">
										<tr>
												<td>${ user.name }</td>
												<td class="th2">${ user.sex }</td>
												<td class="th2">${ user.phone }</td>
												<td class="th0 th1 th2">${ user.address }</td>
												<td class="th1 th2">${ user.school }</td>
												<td>
												<c:if test="${ user.state == 1 }">正常</c:if>
												<c:if test="${ user.state == 0 }">离司</c:if>
												</td>
												<td>
												<c:if test="${ user.state == 1 }">
													<span class="badge badge-primary">
														<i class="la la-send"></i>
													</span>
												</c:if>
												<c:if test="${ user.state == 0 }">
													<span class="badge badge-primary">
														<i class="la la-check"></i>
													</span>
												</c:if>
													<a class="badge badge-warning"  data-toggle="modal" data-target="#update">
														<i class="la la-pencil-square"></i>
													</a>
													<a href="#" class="badge badge-danger">
														<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									<p class="demo">
										<ul class="pagination pg-primary"  style="float:left;">
											<li class="page-item">
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
											</li>
										</ul>
										<button class="btn btn-primary btn-border btn-round" style="float:right;"   data-toggle="modal" data-target="#modalUpdate">
										添加
										</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="student_add.jsp" %>
					<%@ include file="student_update.jsp" %>
<!-- ================================================================================================ -->				
				</div>
			</div>
			<%-- <%@ include file="../footer.jsp" %> --%>
		</div>
	</div>
</body>
</html>