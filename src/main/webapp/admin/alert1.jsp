<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
</head>
<body>
	<div class="wrapper">
		<%@ include file="head.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">首页</h4>
					<div class="row">
						<div class="nav-item update-pro">
							<button  data-toggle="modal" data-target="#modalUpdate">
								<i class="la la-hand-pointer-o"></i>
								<p>Update To Pro</p>
							</button>
						</div>
						<%@ include file="alert.jsp" %>
					</div>
				</div>
			</div>
			<%@ include file="footer.jsp" %>
		</div>
	</div>
</body>
</html>