<%--
  404错误页面
  User: mkn
  Date: 2018/11/26
--%>
<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8"
	language="java"%>
<html>
<head>
	<title>404</title>
	<link href="${ pageContext.request.contextPath }/assets/css/404.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #f1f4f8;">

	<div class="st">
		<img src="${ pageContext.request.contextPath }/assets/img/404_03.png">
	</div>
	<div class="fh">
		<a href="${ pageContext.request.contextPath }/home/index.action">
			<img src="${ pageContext.request.contextPath }/assets/img/404_06.png">
		</a>
	</div>
	<div class="fh">
		<b id="num">5</b>秒后跳转到首页
	</div>

	<!--脚本开始-->
	<script>
		function countDown(secs) {
			if (--secs > 0) {
				document.getElementById("num").innerText = secs;
				setTimeout(function() {
					countDown(secs)
				}, 1000);
			} else {
				window.location.href = '${ pageContext.request.contextPath }/home/index.action';
			}
		}
		countDown(5);
	</script>
	<!--脚本结束-->
</body>
</html>
