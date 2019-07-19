<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
<!--	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />-->
<!--	<link rel="icon" type="image/png" href="../assets/img/favicon.png" />-->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>后台管理</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS -->
    <link href="/stx_project/admin/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS -->
    <link href="/stx_project/admin/css/material-dashboard.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/stx_project/admin/css/demo.css" rel="stylesheet" />
    <!--  Fonts and icons  -->
    <link href="/stx_project/admin/css/font-awesome.min.css" rel="stylesheet">
    <link href="/stx_project/admin/css/2d7207a20f294df196f3a53cae8a0def.css' rel='stylesheet' type='text/css'>
	
</head>

<body>
	<div class="wrapper">
	    <div class="sidebar" data-color="purple" data-image="../assets/img/sidebar-1.jpg">
			<!--
		        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"
		        Tip 2: you can also add an image using data-image tag
		        -->
			<div class="logo">
				<a href="#" class="simple-text">
					网站管理后台
				</a>
			</div>

	    	<div class="sidebar-wrapper">
	            <ul class="nav">
	                <li class="active">
	                    <a href="/stx_project/admin/article.jsp" target="right">
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>文章管理</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="/stx_project/admin/post.jsp"target="right" >
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>发布文章</p>
	                    </a>
	                </li>
	                 <li>
	                    <a href="/stx_project/admin/post.jsp"target="right" >
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>发布活动</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="/stx_project/admin/reservation.jsp" target="right" >
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>预约管理</p>
	                    </a>
	                </li>
	                <li>
	                    <a href="/stx_project/admin/user.jsp" target="right" >
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>用户管理</p>
	                    </a>
	                </li>
					<li>
						<a href="/stx_project/admin/message.jsp" target="right" >
							<i class="material-icons">&nbsp&nbsp&nbsp</i>
							<p>留言管理</p>
						</a>
					</li>
	                <li>
	                    <a href="javascript:void(0)" onclick="updatePwd('修改密码',5)">
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>密码修改</p>
	                    </a>
	                </li>
	                 <li>
	                    <a href="/stx_project/admin/photo.jsp" target="right" >
	                        <i class="material-icons">&nbsp&nbsp&nbsp</i>
	                        <p>相册管理</p>
	                    </a>
	                </li>
	              
	            </ul>
	    	</div>
	    </div>

	    <div class="main-panel">
			<nav class="navbar navbar-transparent navbar-absolute" style="background-color: #fff;">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
									<i class="material-icons">主页</i>
									<p class="hidden-lg hidden-md"></p>
								</a>
								<ul class="dropdown-menu">
									<li><a href="admin/index0.jsp">主页</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									 <i class="material-icons">Admin</i>
									<p class="hidden-lg hidden-md"></p>
								</a>
								<ul class="dropdown-menu">
									<li><a href="/stx_project/login.jsp">退出</a></li>
								</ul>
							</li>
							
						</ul>

					
					</div>
				</div>
			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="row" style="margin-top: -15px;">
						<iframe src="/stx_project/admin/article.jsp" width="100%" height="900" name="right" style="border: none;"></iframe>
					</div>
				</div>
			</div>
		</div>

</body>

	<script src="/stx_project/admin/js/jquery-1.11.3.min.js"></script>
	<script src="/stx_project/admin/js/bootstrap.min.js"></script>
	<!--   Core JS Files   -->
	<script src="/stx_project/admin/js/material.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="/stx_project/admin/js/chartist.min.js"></script>
	<script src="/stx_project/admin/js/material-dashboard.js"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->

	<script type="text/javascript" src="/stx_project/admin/myplugs/js/plugs.js"></script>
	<script type="text/javascript">
		//添加编辑弹出层
		function updatePwd(title, id) {
			$.jq_Panel({
				title: title,
				iframeWidth: 500,
				iframeHeight: 300,
				url: "admin/editPassword.jsp"
			});
		}
	</script>


	<script type="text/javascript">
    	$(document).ready(function(){
			$(".nav li").click(function(){
				$(".nav li").removeClass("active");
				$(this).addClass("active");
			})

			// Javascript method's body can be found in assets/js/demos.js
    	});
	</script>

</html>
