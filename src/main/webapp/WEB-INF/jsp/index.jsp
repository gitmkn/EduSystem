<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<link rel="icon" type="image/x-icon"
	href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
</head>
<body>
	<div class="wrapper">
		<%@ include file="head.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">首页</h4>
					<div class="row">
						<div class="col-md-3">
							<div class="card card-stats card-warning">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-users"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">学生</p>
												<h4 id="student" class="card-title"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-success">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-bar-chart"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">教师</p>
												<h4 id="teacher" class="card-title"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-danger">
								<div class="card-body">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-newspaper-o"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">课程</p>
												<h4 id="course" class="card-title"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-primary">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-check-circle"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">教室</p>
												<h4 id="classroom" class="card-title"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
						<!-- <div class="row">
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">Task</h4>
										<p class="card-category">Complete</p>
									</div>
									<div class="card-body">
										<div id="task-complete" class="chart-circle mt-4 mb-3"></div>
									</div>
									<div class="card-footer">
										<div class="legend"><i class="la la-circle text-primary"></i> Completed</div>
									</div>
								</div>
							</div>
						</div> -->
					<%@ include file="footer.jsp"%>
				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
	$(function(){
		$.get({
			url:baseUrl+"/students/studentcount",
			success:function(data){
				$("#student").html(data);
			}
		});
	});
	$(function(){
		$.get({
			url:baseUrl+"/teacher/teachercount",
			success:function(data){
				$("#teacher").html(data);
			}
		});
	});
	$(function(){
		$.get({
			url:baseUrl+"/course/coursecount",
			success:function(data){
				$("#course").html(data);
			}
		});
	});
	$(function(){
		$.get({
			url:baseUrl+"/classroom/classroomcount",
			success:function(data){
				$("#classroom").html(data);
			}
		});
	});
</script>
</html>