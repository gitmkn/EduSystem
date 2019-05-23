<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/x-icon"
	href="${ pageContext.request.contextPath }/assets/img/favicon.ico" />
<title>期望教育教务系统</title>
<link href="${ pageContext.request.contextPath }/assets/css/login.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/assets/js/login.js"></script>
</head>
<body>

	<div class="login">
		<div class="message">期望教育后台管理系统登录</div>
		<div id="darkbannerwrap"></div>

		<form method="post">
			<input name="phone" type="text" placeholder="请输入用户名"
				autocomplete="off" required="required"/>
			<hr class="hr15">
			<input name="password" type="password" placeholder="请输入密码"
				autocomplete="off" required="required" value="123456" />
			<hr class="hr15">
			<input name="code" type="text" placeholder="请输入验证码"
				autocomplete="off" required="required" /> <img
				src="${ pageContext.request.contextPath }/login/code" />
			<p id="code">
			<p>
			<hr class="hr15">
			<input value="登录" type="button">
			<hr class="hr20">
			帮助 <a onClick="alert('请联系管理员')">忘记密码</a>
		</form>

	</div>
	<div class="copyright">
		© 2019 by <a href="#" target="_blank">期望教育</a>
	</div>
	<script>
		
	</script>
	<script language="javascript">
		//js中使用项目路径
		var baseUrl = '${pageContext.request.contextPath}';
		//防止页面后退
		history.pushState(null, null, document.URL);
		window.addEventListener('popstate', function() {
			history.pushState(null, null, document.URL);
		});
	</script>
</body>
</html>