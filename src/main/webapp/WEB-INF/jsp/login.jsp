<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${ pageContext.request.contextPath }/admin/login">登录</a>
<form action="${ pageContext.request.contextPath }/home/login" method="post">
	<input type="text" name="username" ><br>
	<input type="password" name="password"><br>
	<input type="submit"> 
</form>

<a href="${ pageContext.request.contextPath }/home/index1"><h2>index1</h2></a>
</body>
</html>