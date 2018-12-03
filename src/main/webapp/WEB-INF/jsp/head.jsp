<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
content属性值 :
     width:可视区域的宽度，值可为数字或关键词device-width
     height:同width
     intial-scale:页面首次被显示是可视区域的缩放级别，取值1.0则页面按实际尺寸显示，无任何缩放
     maximum-scale=1.0, minimum-scale=1.0;可视区域的缩放级别，
     maximum-scale用户可将页面放大的程序，1.0将禁止用户放大到实际尺寸之上。
     user-scalable:是否可对页面进行缩放，no 禁止缩放
 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/css/ready.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/assets/css/demo.css">
</head>
<body>
	<div class="main-header">
		<div class="logo-header">
			<a href="${ pageContext.request.contextPath }/home/index" class="logo">
			 <!-- 期望教育教务系统 -->
			 <img src="${ pageContext.request.contextPath }/assets/img/logo.jpg" with="100" height="50">
			  </a>
			<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
				data-toggle="collapse" data-target="collapse"
				aria-controls="sidebar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<button class="topbar-toggler more">
				<i class="la la-smile-o"></i>
			</button>
		</div>
		<nav class="navbar navbar-header navbar-expand-lg">
		<div class="container-fluid">
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
			<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
				<%-- <li class="nav-item dropdown hidden-caret"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="la la-envelope"></i>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<li class="nav-item dropdown hidden-caret"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="la la-bell"></i> <span
						class="notification">3</span>
				</a>
					<ul class="dropdown-menu notif-box"
						aria-labelledby="navbarDropdown">
						<li>
							<div class="dropdown-title">You have 4 new notification</div>
						</li>
						<li>
							<div class="notif-center">
								<a href="#">
									<div class="notif-icon notif-primary">
										<i class="la la-user-plus"></i>
									</div>
									<div class="notif-content">
										<span class="block"> New user registered </span> <span
											class="time">5 minutes ago</span>
									</div>
								</a> <a href="#">
									<div class="notif-icon notif-success">
										<i class="la la-comment"></i>
									</div>
									<div class="notif-content">
										<span class="block"> Rahmad commented on Admin </span> <span
											class="time">12 minutes ago</span>
									</div>
								</a> <a href="#">
									<div class="notif-img">
										<img
											src="${ pageContext.request.contextPath }/assets/img/profile2.jpg"
											alt="Img Profile">
									</div>
									<div class="notif-content">
										<span class="block"> Reza send messages to you </span> <span
											class="time">12 minutes ago</span>
									</div>
								</a> <a href="#">
									<div class="notif-icon notif-danger">
										<i class="la la-heart"></i>
									</div>
									<div class="notif-content">
										<span class="block"> Farrah liked Admin </span> <span
											class="time">17 minutes ago</span>
									</div>
								</a>
							</div>
						</li>
						<li><a class="see-all" href="javascript:void(0);"> <strong>See
									all notifications</strong> <i class="la la-angle-right"></i>
						</a></li>
					</ul></li> --%>
				<li class="nav-item dropdown">
					<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"
					aria-expanded="false"> <img
						src="${ pageContext.request.contextPath }/assets/img/profile.jpg"
						alt="user-img" width="36" class="img-circle"><span>Hizrian</span></span>
					</a>
					<ul class="dropdown-menu dropdown-user">
						<li>
							<div class="user-box">
								<div class="u-img">
									<img
										src="${ pageContext.request.contextPath }/assets/img/profile.jpg"
										alt="user">
								</div>
								<div class="u-text">
									<h4>马康宁</h4>
									<p class="text-muted">1055482519@qq.com</p>
									<a href="profile.html"
										class="btn btn-rounded btn-danger btn-sm">查看资料</a>
								</div>
							</div>
						</li>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"><i class="ti-settings"></i>
							我的</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"><i class="fa fa-power-off"></i>
							退出</a>
					</ul><!-- /.dropdown-user -->
				</li>
			</ul>
		</div>
		</nav>
	</div>
	<div class="sidebar">
		<div class="scrollbar-inner sidebar-wrapper">
			<div class="user">
				<div class="photo">
					<img
						src="${ pageContext.request.contextPath }/assets/img/profile.jpg">
				</div>
				<div class="info">
					<a class="" data-toggle="collapse" href="#collapseExample"
						aria-expanded="true"> <span> 马康宁 <span
							class="user-level">超级管理员</span> <span class="caret"></span>
					</span>
					</a>
					<div class="clearfix"></div>

					<div class="collapse in" id="collapseExample" aria-expanded="true"
						style="">
						<ul class="nav">
							<li><a href="#profile">
								<span class="link-collapse">我的资料修改</span>
							</a></li>
							<li><a href="${ pageContext.request.contextPath }/home/personal"> 
								<span class="link-collapse">授权管理</span>
							</a></li>
							
							<li><a href="#settings"> <span class="link-collapse">退出</span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<ul class="nav">
				<li class="nav-item active"><a href="${ pageContext.request.contextPath }/home/index"> <i
						class="la la-dashboard"></i>
						<p>首页</p> <span class="badge badge-count">5</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/student">
					<i class="la la-child"></i>
					<p>学生管理</p> <span class="badge badge-count">14</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/teacher">
					<i class="la la-smile-o"></i>
					<p>教师管理</p> <span class="badge badge-count">50</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/course">
					<i class="la la-th-list"></i>
					<p>课程管理</p> <span class="badge badge-count">6</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/classroom">
					<i class="la la-bank"></i>
					<p>教室管理</p> <span class="badge badge-success">3</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/arrangement">
					<i class="la la-th"></i>
					<p>排课管理</p> <span class="badge badge-danger">25</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/achievements">
					<i class="la la-list-alt"></i>
					<p>成绩管理</p> <span class="badge badge-danger">25</span>
				</a></li>
				<li class="nav-item"><a href="${ pageContext.request.contextPath }/home/charges">
					<i class="la la-calculator"></i>
					<p>收费管理</p>
				</a></li>
			</ul>
		</div>
		
	</div>

</body>
<script src="${ pageContext.request.contextPath }/assets/js/core/jquery.3.2.1.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/core/popper.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/core/bootstrap.min.js"></script>
<script src="assets/js/plugin/chartist/chartist.min.js"></script>
<script src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/ready.min.js"></script>
<script src="${ pageContext.request.contextPath }/assets/js/demo.js"></script>
</html>

