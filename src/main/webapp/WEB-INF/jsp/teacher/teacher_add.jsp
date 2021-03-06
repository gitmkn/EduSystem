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
	<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog"
		aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title">
						<i class="la la-plus-circle"></i> 添加学生
					</h6>
					<button id="close" type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="addform" method="post">
					<div class="modal-body">
<!-- ===================================================================================================== -->
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">姓名</label>
							<div class="col-md-9 p-0">
								<input type="text" class="form-control input-full" name="name"
									placeholder="请输入姓名">
							</div>
						</div>

						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">性别</label>
							<label class="form-radio-label"> <input
								class="form-radio-input" type="radio" name="sex" value="男"
								checked /> <span class="form-radio-sign">男</span>
							</label> <label class="form-radio-label ml-3"> <input
								class="form-radio-input" type="radio" name="sex" value="女" /> <span
								class="form-radio-sign">女</span>
							</label>
						</div>

						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">电话</label>
							<div class="col-md-9 p-0">
								<input type="text" class="form-control input-full" name="phone"
									placeholder="请输入电话">
							</div>
						</div>
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">地址</label>
							<div class="col-md-9 p-0">
								<input type="text" class="form-control input-full" name="address"
									placeholder="请输入地址">
							</div>
						</div>
						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">学校名</label>
							<div class="col-md-9 p-0">
								<input type="text" class="form-control input-full" name="school"
									placeholder="请输入学校名">
							</div>
						</div>

						<div class="form-group form-inline">
							<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
							<label class="form-radio-label"> <input
								class="form-radio-input" type="radio" name="state" value="1"
								checked /> <span class="form-radio-sign">正常</span>
							</label> <label class="form-radio-label ml-3"> <input
								class="form-radio-input" type="radio" name="state" value="0">
								<span class="form-radio-sign">离司</span>
							</label>
						</div>

<!-- ===================================================================================================== -->
					</div>
					<div class="modal-footer">
						<span id="adderror" style="color: red;"></span>
						<input type="button" id="add" class="btn btn-success" value="提交">
						<input type="button" class="btn btn-secondary"
							data-dismiss="modal" value="取消">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>