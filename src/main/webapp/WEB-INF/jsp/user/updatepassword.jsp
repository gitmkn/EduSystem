<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="passwordUpdate" tabindex="-1" role="dialog"
		aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title">
						<i class="la la-plus-circle"></i> 修改密码
					</h6>
					<button id="close" type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="head" method="post">
					<div class="modal-body">
<!-- ===================================================================================================== -->
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">旧密码</label>
							<div class="col-md-9 p-0">
								<input type="password" class="form-control input-full" name="password1"
									placeholder="请输入旧密码">
							</div>
						</div>
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">新密码</label>
							<div class="col-md-9 p-0">
								<input type="password" class="form-control input-full" name="password2"
									placeholder="请输入新密码">
							</div>
						</div>
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">再次输入</label>
							<div class="col-md-9 p-0">
								<input type="password" class="form-control input-full" name="password3"
									placeholder="请输入再次输入新密码">
							</div>
						</div>
<!-- ===================================================================================================== -->
					</div>
					<div class="modal-footer">
						<span id="passworderror" style="color: red;"></span>
						<input type="button" id="updatepassword" class="btn btn-success" value="提交">
						<input type="button" class="btn btn-secondary" data-dismiss="modal" value="取消">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>