<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>期望教育教务系统</title>
<script type="text/javascript" src="${ pageContext.request.contextPath }/assets/js/jquery-3.3.1.js"></script>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="userupdate" tabindex="-1" role="dialog"
		aria-labelledby="modalUpdatePro" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title">
						<i class="la la-plus-circle"></i> 个人详细信息
					</h6>
					<button id="close" type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="user" method="post">
					<div class="modal-body">
<!-- ===================================================================================================== -->
					<input type="hidden" name="uid" value="${ userinfo.uid }">
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">唯一id</label>
						<div class="col-md-9 p-0">
							${ userinfo.uid }
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">姓名</label>
						<div class="col-md-9 p-0">
							<input type="text" name="name" class="form-control input-full" value="${ userinfo.name }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">性别</label>
						
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="sex" value="男">
							<span class="form-radio-sign">男</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="sex" value="女">
							<span class="form-radio-sign">女</span>
						</label>
					</div>
					 <!-- readonly="readonly"设置该输入框不可输入 -->
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">电话</label>
						<div class="col-md-9 p-0">
							<input type="text" name="phone" class="form-control input-full" value="${ userinfo.phone }" readonly="readonly">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">邮箱</label>
						<div class="col-md-9 p-0">
							<input type="email" name="email" class="form-control input-full" value="${ userinfo.email }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">地址</label>
						<div class="col-md-9 p-0">
							<input type="text" name="address" class="form-control input-full" value="${ userinfo.address }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">学校名</label>
						<div class="col-md-9 p-0">
							<input type="text" name="school" class="form-control input-full" value="${ userinfo.phone }">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="state" value="1"/>
							<span class="form-radio-sign">正常</span>
						</label>
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="state" value="0" />
							<span class="form-radio-sign">离司</span>
						</label>
					</div>
<!-- ===================================================================================================== -->
					</div>
					<div class="modal-footer">
						<span id="userupdate" style="color: red;"></span>
						<input type="button" id="updateuser" class="btn btn-success" value="提交">
						<input type="button" class="btn btn-secondary" data-dismiss="modal" value="取消">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	var sex = '${ userinfo.sex }';
	var state = '${ userinfo.state }';
	if (sex == '男') {
		$("input:radio[name=sex][value='男']").attr("checked", true);
	} else {
		$("input:radio[name=sex][value='女']").attr("checked", true);
	}
	if (state == '1') {
		$("input:radio[name=state][value='1']").attr("checked", true);
	} else {
		$("input:radio[name=state][value='0']").attr("checked", true);
	}
});
</script>
</html>