<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>

</head>
<body>
<a href="${ pageContext.request.contextPath }/home/index1"><h2>index1</h2></a>
<a href="${ pageContext.request.contextPath }/login/index1"><h2>index1</h2></a>
<form id="loginform" method="post">
	<input type="text" name="username"><br><br>
	<input type="password" name="password"><br><br>
	<input type="text" name="code"><span style="color:red;"></span>
	<img src="${ pageContext.request.contextPath }/login/code"><br>
	<input type="submit"> 
</form>
<script type="text/javascript">
	$(function(){
		$("img").click(function(){
			$("img").attr("src","${ pageContext.request.contextPath }/login/code?v="+Math.random());
		});
		$("input[name='code']").blur(function(){
			alert($("input[name='code']").val());

		});
		$("input[type='submit']").click(function(){
			/* alert($('#loginform').serialize()); */
			$.post({
				url:"${ pageContext.request.contextPath }/login/dologin",
				data:$('#loginform').serialize(),
				success:function(){
					alert("12321313");
				}
			});
		});
	});
</script>
</body>
</html>