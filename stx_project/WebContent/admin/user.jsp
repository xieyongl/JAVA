<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ page import = "java.util.ArrayList,com.xy.entity.MyUser"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
		<script src="js/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<script src="../js/bootstrap.min.js"></script>	
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default" data-toggle="modal"  data-target="#addUserModal"><span class="am-icon-plus"></span> 新增</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field">
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">用户名称</th>
									<th class="table-set">注册时间</th>
								</tr>
							</thead>
							<tbody>
						<% ArrayList<MyUser> users = (ArrayList<MyUser>) session.getAttribute("users");
								if(users != null && users.size() > 0){
								for(int i = 0;i<users.size();i++){
						%>	
							<tr>
								<td><input type="checkbox"></td>
								<td><%= users.get(i).getUser_Id() %></td>
								<td><%= users.get(i).getUser_name() %></td>
								<td><%= users.get(i).getuser_registered() %></td>
								<td><a herf="/stx_project/admin/deleteuser">删除</a></td>
							</tr>
						
							
						<% } }%>
						</tbody>
						</table>
						<div class="am-cf">
							共 <%=users.size()%>条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">»</a>
									</li>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>

			</div>
		</div>
		<!-- 模态框示例（Modal） -->
		<form method="post" action="" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
			<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
						</div>
						<div class="modal-body" style="font-size: 15px">
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="user_id" class="col-sm-3 control-label">用户名</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" id="user_name" name="user_id" value=""
											   placeholder="请输入用户名">
									</div>
								</div>

								<div class="form-group">
									<label for="lastname" class="col-sm-3 control-label">手机号码</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="user_phone" value="" id="user_phone"
											   placeholder="请输入手机号码">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-3 control-label">邮箱</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="user_email" value="" id="user_phone"
											   placeholder="请输入邮箱">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-3 control-label">地址</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="address" value="" id="address"
											   placeholder="请输入地址">
									</div>
								</div>

								<div class="form-group">
									<label for="remark" class="col-sm-3 control-label">备注</label>
									<div class="col-sm-9">
                                <textarea  class="form-control"  name="remark" value="{remark}" id="remark"
										   placeholder="备注">

                                </textarea>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
							</button>
							<button type="submit" class="btn btn-primary">
								提交
							</button><span id="tip"> </span>
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal -->
			</div>
		</form>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
			$(function () {
				$(".btnedit").click(function () {
					$.jq_Panel({
						title: "修改",
						iframeWidth: 500,
						iframeHeight: 400,
						url: "editUser.jsp"
					});
				});

			})
		</script>
	</body>

</html>