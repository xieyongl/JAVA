<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
			<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>
	<body>
		
		<div class="am-cf admin-main">
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-g">
						<form class="am-form am-form-horizontal" action="/stx_project/resetpassword" method="post" style="padding-top: 30px;">
							<input value="504" name="roleId" type="hidden" >
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" placeholder="请输入用户名" value="" name="user_name" type="text">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									旧密码
								</label>
								<div class="am-u-sm-9">
									<input id="rolePhone" required="" placeholder="请输入当前密码" value="" name="pass_word" type="text">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									新密码
								</label>
								<div class="am-u-sm-9">
									<input id="rolePhone" required="" placeholder="请输入新密码" value="" name="newpass_word" type="text">
								</div>
							</div>
							
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" value="提交" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
