<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList,com.xy.entity.Order"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">我的订单</strong>
            <small></small>
        </div>
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
                        <th class="table-title">用户</th>
                        <th class="table-title">摄影师</th>
                        <th class="table-title">化妆师</th>
                        <th class="table-set">预约时间</th>
                    </tr>
                    </thead>
                 
                 
                    <tbody>
                    
                    <% ArrayList<Order> orders = (ArrayList<Order>) session.getAttribute("orders"); 
                   	 if(orders != null && orders.size()>0){
                   		 for(int i = 0;i < orders.size();i++){
                    %>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><%= orders.get(i).getList_id() %></td>
                        <td>
                            <a href="#"><%= orders.get(i).getUser_name() %></a>
                        </td>
                        <td>
                            <a href="#"><%= orders.get(i).getPhotographer_name() %></a>
                        </td>
                        <td>
                            <a href="#"><%= orders.get(i).getMakeuper_name() %></a>
                        </td>
                        <td><%= orders.get(i).getR_date() %></td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button"
                                            class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                            class="am-icon-pencil-square-o"></span> 编辑
                                    </button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span
                                            class="am-icon-trash-o"></span> 删除
                                    </button>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <% } } %>
                  
                  <%-- 
					<tr>
                        <td><input type="checkbox"></td>
                        <td>3</td>
                        <td>
                            <a href="#">移通一哥</a>
                        </td>
                        <td>2019.05.29</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button"
                                            class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                            class="am-icon-pencil-square-o"></span> 编辑
                                    </button>
                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span
                                            class="am-icon-trash-o"></span> 删除
                                    </button>
                                </div>
                            </div>
                        </td>
                    </tr>
						--%>
						
                    </tbody>
                </table>
                <div class="am-cf">
             共<%=orders.size()%>条记录
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
<form method="post" action="${pageContext.request.contextPath }/AddOrderServlet" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </div>
                <div class="modal-body" style="font-size: 15px">
                    <form class="form-horizontal" role="form" >
                        <div class="form-group">
                            <label for="user_id" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="user_name" name="user_name" value=""
                                       placeholder="请输入用户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-sm-3 control-label">手机号码</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="phone_number" value="" id="user_phone"
                                       placeholder="请输入手机号码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user-name" class="col-sm-3 control-label">
                                摄影师
                            </label>
                            <div class="am-u-sm-9">
                                <select class="form-control" name="photographer_name">
                                    <option>蔡徐坤</option>
                                    <option>吕楠</option>
                                    <option>吴亦凡</option>
                                    <option>梅豪</option>
                                    <option>唐余林</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" >
                            <label for="user-name" class="col-sm-3 control-label">
                                妆娘
                            </label>
                            <div class="am-u-sm-9">
                                <select class="form-control" name="makeuper_name">
                                    <option>无</option>
                                    <option>小红帽</option>
                                    <option>王彬彬</option>
                                    <option>范冰冰</option>
                                    <option>李冰冰</option>
                                </select>
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="lastname" class="col-sm-3 control-label">是否出影集</label>
                            <div class="col-sm-9">
                                <div class="checkbox">
        							<label>
          							<input type="checkbox">是
        							</label>
      							</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-sm-3 control-label">预约时间</label>
                           <div class="col-sm-9">
                               <input type="text" class="form-control" name="r_date" value="" id="rev_time">
                         </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-sm-3 control-label">地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="r_address" value="" id="address"
                                       placeholder="请输入地址">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="remark" class="col-sm-3 control-label">备注</label>
                            <div class="col-sm-9">
                                <textarea  class="form-control"  name="r_content" value="{remark}" id="remark"
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
                iframeHeight: 300,
                url: "editLink.jsp"
            });
        });

    })
</script>

</body>

</html>
