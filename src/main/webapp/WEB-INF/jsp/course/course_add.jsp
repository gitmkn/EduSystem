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
					<!-- <div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程id</label>
						<div class="col-md-9 p-0">
							<input type="h" name="cid" class="form-control input-full" value="">
						</div>
					</div> -->
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程名称</label>
						<div class="col-md-9 p-0">
							<input type="text" name="cname" class="form-control input-full">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">课程课时</label>
						<div class="col-md-9 p-0">
							<input type="text" name="chours" class="form-control input-full">
						</div>
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