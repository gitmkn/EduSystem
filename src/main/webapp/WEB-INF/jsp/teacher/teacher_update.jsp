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
	<div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title"><i class="la la-plus-circle"></i> 教师详细信息修改 </h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
<!-- ===================================================================================================== -->								
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">唯一id</label>
						<div class="col-md-9 p-0">
							123
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">姓名</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="马康宁">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">性别</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="sex" value="男"  checked="">
							<span class="form-radio-sign">男</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="sex" value="女">
							<span class="form-radio-sign">女</span>
						</label>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">电话</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="13470016983">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">地址</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="元宝区辽东学院">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">学校名</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="辽东学院">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="status" value="1"  checked="">
							<span class="form-radio-sign">正常</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="status" value="0">
							<span class="form-radio-sign">离司</span>
						</label>
					</div>
					
					
<!-- ===================================================================================================== -->
				</div>
				<div class="modal-footer">
				<input type="submit" class="btn btn-success" data-dismiss="modal" value="修改">
					<input type="button" class="btn btn-secondary" data-dismiss="modal" value="取消">
				</div>
			</div>
		</div>
	</div>
</body>
</html>