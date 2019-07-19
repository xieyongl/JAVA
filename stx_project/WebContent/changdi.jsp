<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>这里是场地</title>

    <!--360 browser -->
    <meta name="renderer" content="webkit">
    <meta name="author" content="wos">
    <!-- Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/i/app.png">
    <!--Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="images/i/app.png">
    <!--Win8 or 10 -->
    <meta name="msapplication-TileImage" content="images/i/app.png">
    <meta name="msapplication-TileColor" content="#e1652f">

    <link rel="icon" type="image/png" href="images/i/favicon.png">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="css/public.css">

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <!--[if lte IE 8 ]>
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src="assets/js/amazeui.ie8polyfill.min.js"></script>
    <![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script src="js/public.js"></script>
</head>
<body>
<header class="am-topbar am-topbar-fixed-top wos-header">
    <div class="am-container">
        <h1 class="am-topbar-brand">
            <a href="#"><img src="images/logo.png" alt=""></a>
        </h1>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-warning am-show-sm-only"
                data-am-collapse="{target: '#collapse-head'}">
            <span class="am-sr-only">导航切换</span>
            <span class="am-icon-bars"></span>
        </button>

        <div class="am-collapse am-topbar-collapse" id="collapse-head">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li><a href="index.html">首页</a></li>
                <li><a href="zixun.html">推文</a></li>
                <li class="am-dropdown" data-am-dropdown>
                    <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                        专栏 <span class="am-icon-caret-down"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li class="am-dropdown-header">专栏</li>
                        <li><a href="photographer.html">1. 摄影</a></li>
                        <li><a href="zhuangniang.html">2. 妆娘</a></li>
                        <li><a href="location.html">3. 场地</a></li>
                    </ul>
                </li>
                <li><a href="events.html">活动</a></li>
                <li><a href="./admin/index.html">预约</a></li>
            </ul>

            <!--            <div class="am-topbar-right">-->
            <!--                <button class="am-btn am-btn-default am-topbar-btn am-btn-sm" id="register"><span class="am-icon-pencil"></span>注册</button>-->
            <!--            </div>-->

            <div class="am-topbar-right">
                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm" id="login"><span class="am-icon-user"></span> 登录</button>
            </div>
        </div>
    </div>
</header>

<div class="category2top">
    <div class="am-g am-container userinfo">
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-5 userinfo_left">
            <div class="am-g">
                <div class="am-u-md-12 am-u-lg-6 userface">
                    <img src="Temp-images/face2.jpg">
                </div>
                <div class="am-u-md-12 am-u-lg-6 userin">
                    <h3>涞滩古镇</h3>
                    <h4>6666666666666</h4>
                    <p>文章<span>9</span></p>
                    <button type="button" class="am-btn am-btn-warning am-hide-lg-only" style="margin: 0 auto; margin-top: 30px">
                        <i class="am-icon-plus"></i>
                        订阅
                    </button>
                </div>
            </div>

        </div>
        <div class="am-u-sm-0 am-u-md-12 am-u-lg-4 am-show-lg-only userinfo_center">
            哈哈啊哈哈哈哈
        </div>
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-3 am-show-lg-only userinfo_right">
            <button type="button" class="am-btn am-btn-warning">
                <i class="am-icon-plus"></i>
                订阅
            </button>
        </div>

    </div>
</div>

<div class="am-g">
    <div class="am-u-sm-0 am-u-md-2 am-u-lg-3">&nbsp;</div>
    <div class="am-u-sm-12 am-u-md-8 am-u-lg-6">
        <div data-am-widget="list_news" class="am-list-news am-list-news-default ">
            <div class="am-list-news-bd">
                <ul class="am-list">
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" style="border-top: 0px">
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="news.html">
                                <img src="Temp-images/b2.jpg" alt="我最喜欢的一张画"/>
                            </a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="news.html">我最喜欢的一张画</a></h3>

                            <div class="am-list-item-text">你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片美我最喜欢的画群296795413进群发画，少说多发图，</div>

                        </div>
                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019/04/21</i>
                        <i class="am-icon-hand-pointer-o">12322</i>
                    </div>

                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" >
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="news.html">
                                <img src="Temp-images/b2.jpg" alt="我最喜欢的一张画"/>
                            </a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="news.html">我最喜欢的一张画</a></h3>

                            <div class="am-list-item-text">你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片美我最喜欢的画群296795413进群发画，少说多发图，</div>

                        </div>
                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019/04/21</i>
                        <i class="am-icon-hand-pointer-o">12322</i>
                    </div>

                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" >
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="news.html">
                                <img src="Temp-images/b2.jpg" alt="我最喜欢的一张画"/>
                            </a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="news.html">我最喜欢的一张画</a></h3>

                            <div class="am-list-item-text">你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片美我最喜欢的画群296795413进群发画，少说多发图，</div>

                        </div>
                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019/04/21</i>
                        <i class="am-icon-hand-pointer-o">12322</i>
                    </div>

                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" >
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="news.html">
                                <img src="Temp-images/b2.jpg" alt="我最喜欢的一张画"/>
                            </a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="news.html">我最喜欢的一张画</a></h3>

                            <div class="am-list-item-text">你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片美我最喜欢的画群296795413进群发画，少说多发图，</div>

                        </div>
                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019/04/21</i>
                        <i class="am-icon-hand-pointer-o">12322</i>
                    </div>

                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" >
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="news.html">
                                <img src="Temp-images/b2.jpg" alt="我最喜欢的一张画"/>
                            </a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="news.html">我最喜欢的一张画</a></h3>

                            <div class="am-list-item-text">你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片美我最喜欢的画群296795413进群发画，少说多发图，</div>

                        </div>
                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019/04/21</i>
                        <i class="am-icon-hand-pointer-o">12322</i>
                    </div>

                </ul>
                <ul data-am-widget="pagination" class="am-pagination am-pagination-default" style="text-align: center">

                    <li class="am-pagination-first ">
                        <a href="#" class="">第一页</a>
                    </li>

                    <li class="am-pagination-prev ">
                        <a href="#" class="">上一页</a>
                    </li>


                    <li class="">
                        <a href="#" class="">1</a>
                    </li>
                    <li >
                        <a href="#">2</a>
                    </li>
                    <li class="">
                        <a href="#" class="">3</a>
                    </li>
                    <li class="">
                        <a href="#" class="">4</a>
                    </li>
                    <li class="">
                        <a href="#" class="">5</a>
                    </li>
                    <li class="">
                        <a href="#" class="">6</a>
                    </li>
                    <li class="">
                        <a href="#" class="">7</a>
                    </li>
                    <li class="">
                        <a href="#" class="">8</a>
                    </li>
                    <li class="am-active">
                        <a href="#">9</a>
                    </li>
                    <li class="">
                        <a href="#" class="">10</a>
                    </li>
                    <li class="">
                        <a href="#" class="">11</a>
                    </li>
                    <li class="">
                        <a href="#" class="">12</a>
                    </li>
                    <li class="">
                        <a href="#" class="">13</a>
                    </li>
                    <li class="">
                        <a href="#" class="">14</a>
                    </li>
                    <li class="">
                        <a href="#" class="">15</a>
                    </li>
                    <li class="">
                        <a href="#" class="">16</a>
                    </li>


                    <li class="am-pagination-next ">
                        <a href="#" class="">下一页</a>
                    </li>

                    <li class="am-pagination-last ">
                        <a href="#" class="">最末页</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="am-u-sm-0 am-u-md-2 am-u-lg-3">&nbsp;</div>
</div>



<div data-am-widget="gotop" class="am-gotop am-gotop-fixed" >
    <a href="#top" title="回到顶部">
        <span class="am-gotop-title">回到顶部</span>
        <i class="am-gotop-icon am-icon-chevron-up"></i>
    </a>
</div>

<footer>
    <div class="content">
        <div class="btnlogo"><img src="images/logo.png"/></div>
        <p>© 2019 享·拍</p><br/>
    </div>
</footer>
<script>
    $(function () {
        $("#login").click(function(){
            window.location.href="login.jsp";
        });
    });
</script>
</body>
</html>