<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<footer class="footer" style="margin-top:30px">
		<div class="container-fluid">
			<nav class="pull-left">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/students/student"> 学生信息 </a></li>
				<c:if test="${ userinfo.type == 2 || userinfo.type == 3 }">
				<li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/teacher/teacher"> 教师信息 </a></li>
				</c:if>
				<li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/course/course"> 课程信息 </a></li>
				<li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/classroom/classroom"> 教室信息 </a></li>
			</ul>
			</nav>
			<div class="copyright ml-auto">
			<ul class="nav">
				<li class="nav-item"><lable class="nav-link" href="文件说明.txt"> 2019 &copy;</lable></li>
				<li class="nav-item"><a class="nav-link" href="">期望教育教务系统 V1.0</a></li>
			</ul>
				<!-- 2018 &copy; 期望教育教务系统   
				<a href="#" title="期望教育教务系统" target="_blank">期望教育教务系统</a> -->
			</div>
		</div>
	</footer>
</body>
</html>