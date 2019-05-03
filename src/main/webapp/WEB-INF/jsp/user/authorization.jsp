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

					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">唯一id</label>
						<div class="col-md-9 p-0">
							${ userinfo.uid }
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">姓名</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="${ userinfo.name }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">性别</label>
						<c:if test="${ userinfo.sex eq '女' }">
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="sex1" value="男"  checked="">
							<span class="form-radio-sign">男</span>
						</label>
						</c:if>
						<c:if test="${ userinfo.sex eq '男' }">
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="sex1" value="女" checked="">
							<span class="form-radio-sign">女</span>
						</label>
						</c:if>
					</div>
					 <!-- readonly="readonly"设置该输入框不可输入 -->
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">电话</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="${ userinfo.phone }" readonly="readonly">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">邮箱</label>
						<div class="col-md-9 p-0">
							<input type="email" class="form-control input-full" value="${ userinfo.email }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">地址</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="${ userinfo.address }">
						</div>
					</div>
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">学校名</label>
						<div class="col-md-9 p-0">
							<input type="text" class="form-control input-full" value="${ userinfo.phone }">
						</div>
					</div>
					
					<div class="form-group form-inline">
						<label for="inlineinput" class="col-md-3 col-form-label">状态</label>
						<c:if test="${ userinfo.state == '1' }">
						<label class="form-radio-label">
							<input class="form-radio-input" type="radio" name="state1" value="1"  checked=""/>
							<span class="form-radio-sign">正常${ userinfo.state }</span>
						</label>
						</c:if>
						<c:if test="${ userinfo.state == '0' }">
						<label class="form-radio-label ml-3">
							<input class="form-radio-input" type="radio" name="state1" value="0" checked=""/>
							<span class="form-radio-sign">离司${ userinfo.state }</span>
						</label>
						</c:if>
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
</html>