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
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/course.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/page.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">课程管理
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
												<th width="10%">课程ID</th>
												<th class="th1 th2" width="30%">课程名称</th>
												<th class="th0 th1 th2" width="20%">课程课时</th>
												<th class="th1 th2" width="30%">课时时费用/每课时</th>
											</tr>
										</thead>
										<tbody id="tablepage">
										<c:forEach items="${ courselist }" var="course">
										<tr class="myclass"   data-toggle="modal" data-target="#update">
												<td>${ course.cid }</td>
												<td>${ course.cname }</td>
												<td>${ course.chours }</td>
												<td>${ course.cmoney }</td>
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
					<%@ include file="course_add.jsp" %>
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
					<h6 class="modal-title"><i class="la la-plus-circle"></i> 课程详细信息修改 </h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="updateform" method="post"  enctype="multipart/form-data">
				<div class="modal-body">
<!-- ===================================================================================================== -->								
					<input type="hidden" name="uid" value="${ userinfo.uid }">
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程id</label>
						<div class="col-md-9 p-0">
							<input type="text" name="cid" class="form-control input-full" readonly="readonly">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程名称</label>
						<div class="col-md-9 p-0">
							<input type="text" name="cname" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程课时</label>
						<div class="col-md-9 p-0">
							<input type="text" name="chours" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课时费用</label>
						<div class="col-md-9 p-0">
							<input type="text" name="cmoney" class="form-control input-full">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">备课文件</label>
						<div class="col-md-9 p-0">
							<input id="FileUpload" type="file" name="file" class="form-control input-full">
						</div>
					</div>
					
<!-- ===================================================================================================== -->
				</div>
				<div class="modal-footer">
					<span id="updateerror" style="color: red;"></span>
					<input type="button" id="upload" class="btn btn-info" value="备课上传">
					<input type="button" id="select" class="btn btn-info" value="查看备课">
					<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
					<input type="button" id="updatebtn" class="btn btn-success" value="修改">
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
		goPage(1, 10);
	};
</script>
</html>