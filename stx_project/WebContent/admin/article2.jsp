<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList,com.xy.entity.Work"%>    
<!doctype html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">文章管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default" id="tocreate"><span class="am-icon-plus"></span> 新增</button>
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
									<th class="table-user_name">发布者</th>
									<th class="table-title">文章名称</th>
									<th class="table-set">发布时间</th>
								</tr>
							</thead>
				<tbody>
				<% ArrayList<Work> works = (ArrayList<Work>) session.getAttribute("works");
								if(works != null && works.size() > 0 && works.get(works.size()-1).getWork_content() != null && !"".equals(works.get(works.size()-1).getWork_content().trim()) ){
						%>	
							<tr>
								<td><input type="checkbox"></td>
								<td><%= works.get(3).getWork_id() %></td>
								<td><a><%= works.get(3).getUser_name() %></a></td>
								<td><%= works.get(3).getWork_publishtime() %></td>
								<td><%= works.get(3).getWork_title() %></td>
								<td><a herf="/stx_project/admin/deleteuser">删除</a></td>
							</tr>
						
							
						<%  }%>
							
				<%--			
							<tr id="1">
									<td><input type="checkbox"></td>
									<td>1</td>
									<td>
										<a href="https://baijiahao.baidu.com/s?id=1582907651311074512&wfr=spider&for=pc">静夜思</a>
									</td>
									<td>2019年5月4日 20:49:07</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="deleteUserById('#1')"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
							
								<tr>
									<td><input type="checkbox"></td>
									<td>2</td>
									<td>
										<a href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=%E5%A6%82%E4%BD%95%E6%88%90%E4%B8%BA%E4%B8%80%E5%90%8D%E4%BC%98%E7%A7%80%E7%9A%84%E6%91%84%E5%BD%B1%E5%B8%88&oq=%25E6%259C%2589%25E9%2581%2593%2520%25E7%25BF%25BB%25E8%25AF%2591&rsv_pq=a771fade000102ec&rsv_t=9ab0QYk0%2BFpv%2FhctR4qVOjoplKtmMvdrY7CHpth4hs%2Ft%2Filf3rfOHVCcH9Q&rqlang=cn&rsv_enter=1&inputT=6401&rsv_sug3=50&rsv_sug1=18&rsv_sug7=100&rsv_sug2=0&rsv_sug4=6401">摄影技巧·新手教程</a>
									</td>
									<td>2019年5月3日 12:28:00</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>

								<tr>
									<td><input type="checkbox"></td>
									<td>3</td>
									<td>
										<a href="https://baijiahao.baidu.com/s?id=1582907651311074512&wfr=spider&for=pc">拍你所想·如何构图</a>
									</td>
									<td>2019年5月1日 7:20:07</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								
								<tr>
									<td><input type="checkbox"></td>
									<td>4</td>
									<td>
										<a href="https://jingyan.baidu.com/article/7e4409530f1fd92fc0e2ef31.html">女神成长记（一）——口红的选取</a>
									</td>
									<td>2019年5月2日 17:45:00</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								
								<tr>
									<td><input type="checkbox"></td>
									<td>5</td>
									<td>
										<a href="https://jingyan.baidu.com/article/7e4409530f1fd92fc0e2ef31.html">论如何化好妆·新手教程</a>
									</td>
									<td>2019年5月1日 17:45:00</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								
								<tr>
									<td><input type="checkbox"></td>
									<td>6</td>
									<td>
										<a href="https://jingyan.baidu.com/article/7e4409530f1fd92fc0e2ef31.html">论·拍摄的光线与技巧</a>
									</td>
									<td>2019年5月1日 17:45:00</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"  class="btnedit am-btn am-btn-default am-btn-xs am-text-secondary"> <span class="am-icon-pencil-square-o"></span> 编辑</button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								
								--%>

							</tbody>
						</table>
						<div class="am-cf">
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
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
			$( function(){
				$(".btnedit").click(function() {

							$.jq_Panel({
								title: "修改链接",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editLink.jsp"
							});
						});
				$(function () {
					$("#tocreate").click(function(){
						window.location.href="post.jsp";
					});
				});

			})
			function deleteUserById(id) { 
  				deleteUser(id); 
		}
		</script>

	</body>

</html>