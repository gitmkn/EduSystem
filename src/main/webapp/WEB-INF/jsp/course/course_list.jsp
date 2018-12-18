<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
</head>
<body>
	<div class="wrapper">
		<%@ include file="../head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title"> 课程管理
						<span class="badge badge-success"  style="float:right;" title="刷新">
							<!-- <i class="la la-rotate-right"></i> -->
							<form class="navbar-left navbar-form nav-search mr-md-3" action="">
				<div class="input-group">
					<input type="text" placeholder="姓名、课程名..." class="form-control">
					<div class="input-group-append">
						<span class="input-group-text"> <i
							class="la la-search search-icon"></i>
						</span>
					</div>
				</div>
			</form>
						</span>
					</h4>
<!-- ================================================================================================ -->
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<!-- <div class="card-header">
									<div class="card-title">Table Head States
										<span class="badge badge-danger"  style="float:right;">Danger</span>
									</div>
								</div> -->
								<div class="card-body">
									<table class="table table-head-bg-primary change2 mt-4 table-hover">
										<thead>
											<tr>
												<th>姓名</th>
												<th scope="col">性别</th>
												<th scope="col">电话</th>
												<th scope="col">地址</th>
												<th scope="col">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Mark</td>
												<td>Otto</td>
												<td>@mdo</td>
												<td>
													<span class="badge badge-primary">
														<i class="la la-check"></i>
														<i class="la la-send"></i>
													</span>
													<span class="badge badge-warning">
														<i class="la la-pencil-square"></i>
													</span>
													<a href="#" class="badge badge-danger">
													<i class="la la-remove"></i>
													</a>
												</td>
											</tr>
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
										<%@ include file="course_add.jsp" %>
									</p>
								</div>
							</div>
						</div>
					</div>
<!-- ================================================================================================ -->				
				</div>
			</div>
			<%-- <%@ include file="../footer.jsp" %> --%>
		</div>
	</div>
</body>
</html>