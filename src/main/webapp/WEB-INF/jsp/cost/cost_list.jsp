<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/cost.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/page.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">收费管理
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
												<th width="10%">缴费ID</th>
												<th class="th2" width="15%">学生姓名</th>
												<th class="th2" width="25%">课程名称</th>
												<th class="th0 th1 th2" width="20%">收费时间</th>
												<th class="th1 th2" width="10%">金额</th>
												<th width="10%">状态</th>
											</tr>
										</thead>
										<tbody id="tablepage">
										<c:forEach items="${ costList }" var="cost">
										<tr class="myclass"   data-toggle="modal" data-target="#update">
												<td width="10%">${ cost.coid }</td>
												<td class="th2" width="15%">${ cost.user.name }</td>
												<td class="th2" width="25%">${ cost.course.cname }</td>
												<td class="th0 th1 th2" width="20%"><fmt:formatDate value="${ cost.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
												<td class="th1 th2" width="10%">${ cost.money}</td>
												<td width="10%"><c:if test="${ cost.state == 1 }">已收费</c:if><c:if test="${ cost.state == 0 }">未收费</c:if></td>
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
										<button id="costAdd" class="btn btn-primary btn-border btn-round" style="float:right;"   data-toggle="modal" data-target="#modalUpdate">
										添加
										</button>
									</p>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="cost_add.jsp" %>
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
					<h6 class="modal-title"><i class="la la-plus-circle"></i> 收费详细信息修改 </h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="updateform" method="post">
				<div class="modal-body">
<!-- ===================================================================================================== -->								
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程id</label>
						<div class="col-md-9 p-0">
							<input type="text" name="coid" class="form-control input-full" readonly="readonly">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">学生姓名</label>
						<div class="col-md-9 p-0">
							<input type="text" name="name" class="form-control input-full" readonly="readonly">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程名称</label>
						<div class="col-md-9 p-0">
							<input type="text" name="cname" class="form-control input-full" readonly="readonly">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">金额</label>
						<div class="col-md-9 p-0">
							<input type="text" name="money" class="form-control input-full">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="state" value="1">
							<span class="form-radio-sign">已收费</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="state" value="0">
							<span class="form-radio-sign">未收费</span>
						</label>
					</div>
					
<!-- ===================================================================================================== -->
				</div>
				<div class="modal-footer">
					<span id="updateerror" style="color: red;"></span>
					<input type="button" id="delete" class="btn btn-danger" value="删除">
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
		goPage(1, 10);
	};
</script>
</html>