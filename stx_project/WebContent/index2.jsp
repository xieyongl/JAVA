<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.ArrayList,com.xy.entity.Work"%>
	<!DOCTYPE html>
	<html class="no-js">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>享·拍</title>
	
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
	    <link rel="stylesheet" href="assets/css/amazeui.css">
	    <link rel="stylesheet" href="css/public.css">
	
	    <!--[if (gte IE 9)|!(IE)]><!-->
	    <script src="assets/js/jquery.min.js"></script>
	    <!--<![endif]-->
	    <!--[if lte IE 8 ]>
	    <script src="assets/js/jquery.min.js"></script>
	    <script src="assets/js/modernizr.js"></script>
	    <script src="assets/js/amazeui.ie8polyfill.min.js"></script>
	    <![endif]-->
	    <script src="assets/js/amazeui.min.js"></script>
	    <script src="js/public.js"></script>
	    <script>
	        $(function() {
	            var $slider = $('#demo-slider-0');
	            var counter = 0;
	            var getSlide = function() {
	                counter++;
	                return '<li><img src="http://s.amazeui.org/media/i/demos/bing-' +
	                    (Math.floor(Math.random() * 4) + 1) + '.jpg" />' +
	                    '<div class="am-slider-desc">动态插入的 slide ' + counter + '</div></li>';
	            };
	
	            $('.js-demo-slider-btn').on('click', function() {
	                var action = this.getAttribute('data-action');
	                if (action === 'add') {
	                    $slider.flexslider('addSlide', getSlide());
	                } else {
	                    var count = $slider.flexslider('count');
	                    count > 1 && $slider.flexslider('removeSlide', $slider.flexslider('count') - 1);
	                }
	            });
	
	        });
	    </script>
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
	                <li class="am-active"><a href="index.jsp">首页</a></li>
	                <li><a href="zixun.jsp">推文</a></li>
	                <li class="am-dropdown" data-am-dropdown>
	                    <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
	                        专栏 <span class="am-icon-caret-down"></span>
	                    </a>
	                    <ul class="am-dropdown-content">
	                        <li class="am-dropdown-header">专栏</li>
	                        <li><a href="photographer.jsp">1. 摄影</a></li>
	                        <li><a href="zhuangniang.jsp">2. 妆娘</a></li>
	                        <li><a href="location.jsp">3. 场地</a></li>
	                    </ul>
	                </li>
	                <li><a href="events.jsp">活动</a></li>
	                <li><a href="./admin/index.jsp">预约</a></li>
	            </ul>
	
	<!--            <div class="am-topbar-right">-->
	<!--                <button class="am-btn am-btn-default am-topbar-btn am-btn-sm" id="register"><span class="am-icon-pencil"></span>注册</button>-->
	<!--            </div>-->
	
	            <div class="am-topbar-right">
	                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm" id="login"><span class="am-icon-user"></span> 退出登录</button>
	            </div>
	        </div>
	    </div>
	</header>
	<!--banner-->
	<div class="banner">
	    <div class="am-g am-container">
	        <div class="am-u-sm-12 am-u-md-12 am-u-lg-8">
	            <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{"directionNav":false}' >
	                <ul class="am-slides">
	                    <li>
	                  
	                        <a href="events_show.jsp"><img src="/stx_project/Temp-images/lunbo1.jpg"></a>
	                        <div class="am-slider-desc">远方 有一个地方 那里种有我们的梦想</div>
	
	                    </li>
	                    <li>
	                        <a href="events_show.jsp"><img src="/stx_project/Temp-images/lunbo2.jpg"></a>
	                        <div class="am-slider-desc">某天 也许会相遇 相遇在这个好地方</div>
	
	                    </li>
	                    <li>
	                        <a href="events_show.jsp"><img src="/stx_project/Temp-images/lunbo3.jpg"></a>
	                        <div class="am-slider-desc">不要太担心 只因为我相信 终会走过这条遥远的道路</div>
	
	                    </li>
	                    <li>
	                        <a href="events_show.jsp"><img src="/stx_project/Temp-images/lunbo4.jpg"></a>
	                        <div class="am-slider-desc">OH PARA PARADISE 是否那么重要 你是否那么地遥远</div>
	                    </li>
	                </ul>
	            </div>
	        </div>
	        <div class="am-u-sm-0 am-u-md-0 am-u-lg-4 padding-none">
	            <div class="star am-container"><span><img src="images/head.png" style="height: 40px;width: 40px">优选</span></div>
	            <ul class="padding-none am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-2 am-gallery-overlay" data-am-gallery="{ pureview: true }" >
	                <li>
	                    <div class="am-gallery-item">
	                        <a href="news.jsp">
	                            <img src="/stx_project/Temp-images/youxuan1.jpg"  alt="远方 有一个地方 那里种有我们的梦想" style="width: 201px; height: 172px"/>
	                            <h3 class="am-gallery-title">世界上所有的相遇都是久别重逢。</h3>
	                            <div class="am-gallery-desc">2375-09-26</div>
	                        </a> 
	                    </div>
	                </li>
	                <li>
	                    <div class="am-gallery-item">
	                        <a href="news.jsp">
	                            <img src="/stx_project/Temp-images/youxuan2.jpg"  alt="远方 有一个地方 那里种有我们的梦想" style="width: 201px; height: 172px"/>
	                            <h3 class="am-gallery-title">鲜花怒骂少年时，一日看尽长安花。</h3>
	                            <div class="am-gallery-desc">2375-09-26</div>
	                        </a>
	                    </div>
	                </li>
	                <li>
	                    <div class="am-gallery-item">
	                        <a href="news.jsp">
	                            <img src="/stx_project/Temp-images/youxuan3.jpg"  alt="远方 有一个地方 那里种有我们的梦想" style="width: 201px; height: 172px"/>
	                            <h3 class="am-gallery-title">愿岁月可回首，且以深情共白头。</h3>
	                            <div class="am-gallery-desc">2375-09-26</div>
	                        </a>
	                    </div>
	                </li>
	                <li>
	                    <div class="am-gallery-item">
	                        <a href="news.jsp">
	                            <img src="/stx_project/Temp-images/youxuan4.jpg"  alt="远方 有一个地方 那里种有我们的梦想" style="width: 201px; height: 172px"/>
	                            <h3 class="am-gallery-title">海底月是天上月，眼前人是心上人。</h3>
	                            <div class="am-gallery-desc">2375-09-26</div>
	                        </a>
	                    </div>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	<hr>
	<!--news-->
	<div class="am-g am-container newatype">
	    <div class="am-u-sm-12 am-u-md-12 am-u-lg-8 oh">
	        <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="border-bottom: 0px; margin-bottom: -10px">
	            <h2 class="am-titlebar-title ">
	                最新推文
	            </h2>
	            <nav class="am-titlebar-nav">
	                <a href="#more">更多 &raquo;</a>
	            </nav>
	        </div>
	
	        <div data-am-widget="list_news" class="am-list-news am-list-news-default news">
	            <div class="am-list-news-bd">
	                <ul class="am-list">
	                        
						  <% ArrayList<Work> works = (ArrayList<Work>) session.getAttribute("works"); 
	                    	if(works != null && works.size() == 4 && works.get(3).getWork_content() != null){
	                    %>
	                     <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
	                        <div class="am-u-sm-5 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="Temp-images/1111.jpg" style="width: 300px;height: 150px"/></a>
	
	                        </div>
	                      <div class=" am-u-sm-7 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp"><%= works.get(3).getWork_title() %></a></h3>
	                            <div class="am-list-item-text">
	                            <%= works.get(3).getWork_content() %>
	                            </div>
	                        </div>
	                    </li>
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o"><%= works.get(3).getWork_publishtime() %></i>
	                    </div>
	                    <% } %>
	                    
	                    
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o">2019//04/21</i>
	                    </div>
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
	                        <div class="am-u-sm-5 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="Temp-images/2222.jpg" style="width: 300px;height: 150px"/></a>
	
	                        </div>
	
	                        <div class=" am-u-sm-7 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">拍你所想·如何构图</a></h3>
	                            <div class="am-list-item-text">
	                                当您拍摄照片时，重要的是您的图像通过一致的想法或主题来关联。
	                                每张图片都应该有助于传达主题并推动故事向前发展。
	                                如果照片没有添加到故事中，请将其删除。
	                                拍摄照片文章而不是单张图像的一个优点是，你可以讲述更大，更有说服力的故事。
	                                通过拍摄多张图像，您可以从一系列视角覆盖主体，并在较长时间内记录故事。
	                                圣约翰的男孩孤儿院，新南威尔士州古尔本。/></div>
	                        </div>
	
	                    </li>
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o">2019//04/21</i>
	                    </div>
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
	                        <div class="am-u-sm-5 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="Temp-images/3333.jpg" style="width: 300px;height: 150px"/></a>
	
	                        </div>
	
	                        <div class=" am-u-sm-7 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">女神成长记(一)——口红的选取</a></h3>
	                            <div class="am-list-item-text">这些浓艳的颜色好看是好看，但是不一定适合每一个人噢，口红色号的选择，还是要根据自己的肤色、年龄、风格来选择啦。</div>
	                        </div>
	
	                    </li>
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o">2019//04/21</i>
	                    </div>
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
	                        <div class="am-u-sm-5 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="Temp-images/3334.jpg" style="width: 300px;height: 150px"/></a>
	                        </div>
	
	                        <div class=" am-u-sm-7 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">论如何化好妆·新手教程</a></h3>
	                            <div class="am-list-item-text">每天写文章之前呢，都会先回复大家在留言板上的提问，有的关于护肤、有的关于化妆。
	                                很多女生每天早晚都会坚持护肤，而且很认真，但是坚持一段时间之后会发现，皮肤并没有变好，反而还变差了。很有可能是因为你的护肤方法是错的噢，或者是你已经步入了一些护肤误区的坑。</div>
	                        </div>
	
	                    </li>
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o">2019//04/21</i>
	                    </div>
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
	                        <div class="am-u-sm-5 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="Temp-images/1112.jpg" style="width: 300px;height: 150px"/>
	                            </a>
	
	                        </div>
	
	                        <div class=" am-u-sm-7 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">论·拍摄的光线与视角</a></h3>
	                            <div class="am-list-item-text">关于照片文章最令人兴奋的事情之一是它有可能传达远远超过其各部分总和的信息。
	                                虽然系列中的每个图像都可能有一些小故事要讲，但图像可以创造更大，更有意义的东西。
	                                拍摄照片文章可能是一项具有挑战性且极具回报性的练习。它也可以是改善摄影的好方法。
	                                以下是帮助您入门的五个简单步骤。/>
	                            </div>
	                        </div>
	                    </li>
	                    <div class="newsico am-fr">
	                        <i class="am-icon-clock-o">2019//04/21</i>
	                    </div>
	
	                </ul>
	            </div>
	 
	        </div>
	    </div>
	    <div class="am-u-sm-12 am-u-md-12 am-u-lg-4">
	        <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
	            <h2 class="am-titlebar-title ">
	                摄影
	            </h2>
	            <nav class="am-titlebar-nav">
	                <a href="photographer.jsp">更多 &raquo;</a>
	            </nav>
	        </div>
	        <div data-am-widget="list_news" class="am-list-news am-list-news-default right-bg" data-am-scrollspy="{animation:'fade'}">
	                <ul class="am-list"  >
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                        <div class="am-u-sm-4 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1899746801,437244567&fm=26&gp=0.jpg" class="face"/>
	                            </a>
	                        </div>
	
	                        <div class=" am-u-sm-8 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">杨旭</a></h3>
	
	                            <div class="am-list-item-text">享·拍认证知名摄影师</div>
	                        </div>
	                    </li>
	                    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                        <div class="am-u-sm-4 am-list-thumb">
	                            <a href="news.jsp">
	                                <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=766774323,2847978298&fm=26&gp=0.jpg" class="face"/>
	                            </a>
	                        </div>
	
	                        <div class=" am-u-sm-8 am-list-main">
	                            <h3 class="am-list-item-hd"><a href="news.jsp">这里是二号摄影师</a></h3>
	
	                            <div class="am-list-item-text">享·拍认证知名摄影师</div>
	
	                        </div>
	                    </li>
	                    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	                </ul>
	        </div>
	
	        <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
	            <h2 class="am-titlebar-title ">
	                妆娘
	            </h2>
	            <nav class="am-titlebar-nav">
	                <a href="zhuangniang.jsp">更多 &raquo;</a>
	            </nav>
	        </div>
	
	        <div data-am-widget="list_news" class="am-list-news am-list-news-default right-bg" data-am-scrollspy="{animation:'fade'}">
	            <ul class="am-list">
	                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                    <div class="am-u-sm-4 am-list-thumb">
	                        <a href="news.jsp">
	                            <img src="Temp-images/face.jpg" class="face"/>
	                        </a>
	                    </div>
	
	                    <div class=" am-u-sm-8 am-list-main">
	                        <h3 class="am-list-item-hd"><a href="news.jsp">这里是1号妆娘</a></h3>
	
	                        <div class="am-list-item-text">享·拍认证知名妆娘</div>
	                    </div>
	                </li>
	                <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	                <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                    <div class="am-u-sm-4 am-list-thumb">
	                        <a href="news.jsp">
	                            <img src="Temp-images/cxk.jpeg" class="face"/>
	                        </a>
	                    </div>
	
	                    <div class=" am-u-sm-8 am-list-main">
	                        <h3 class="am-list-item-hd"><a href="news.jsp">这里是2号妆娘</a></h3>
	
	                        <div class="am-list-item-text">享·拍认证知名妆娘</div>
	
	                    </div>
	                </li>
	
	            </ul>
	        </div>
	        <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
	            <h2 class="am-titlebar-title ">
	                场地
	            </h2>
	            <nav class="am-titlebar-nav">
	                <a href="location.jsp">更多 &raquo;</a>
	            </nav>
	        </div>
	
	        <div data-am-widget="list_news" class="am-list-news am-list-news-default right-bg" data-am-scrollspy="{animation:'fade'}">
	            <ul class="am-list"  >
	                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                    <div class="am-u-sm-4 am-list-thumb">
	                        <a href="news.jsp">
	                            <img width="100px" height="70px"src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=293820351,4268194170&fm=26&gp=0.jpg" />
	                        </a>
	                    </div>
	
	                    <div class=" am-u-sm-8 am-list-main">
	                        <h3 class="am-list-item-hd"><a href="news.jsp">涞滩古镇</a></h3>
	
	                        <div class="am-list-item-text">涞滩古镇，国家AAAA级旅游景区，位于合川区东北28公里，建镇于宋代，是中国首批历史文化名镇，首批“中国最美的村镇”。</div>
	                    </div>
	                </li>
	                <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
	                    <div class="am-u-sm-4 am-list-thumb">
	                        <a href="news.jsp">
	                            <img width="100px" height="70px" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=854453859,2263794582&fm=26&gp=0.jpg"/>
	                        </a>
	                    </div>
	
	                    <div class=" am-u-sm-8 am-list-main">
	                        <h3 class="am-list-item-hd"><a href="news.jsp">钓鱼城</a></h3>
	
	                        <div class="am-list-item-text">合川钓鱼城，国家AAAA级旅游景区，国家级风景名胜区，国家重点文物保护单位，今重庆十大文化符号之一。</div>
	
	                    </div>
	                </li>
	                <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
	            </ul>
	        </div>
	    </div>
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