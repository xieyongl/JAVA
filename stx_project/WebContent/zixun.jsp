<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE jsp>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>资讯</title>

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
                <li><a href="index.jsp">首页</a></li>
                <li class="am-active"><a href="zixun.jsp">推文</a></li>
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
                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm" id="login"><span class="am-icon-user"></span> 登录</button>
            </div>
        </div>
    </div>
</header>
<!--banner-->
<div class="banner">
    <div class="am-g am-container padding-none">
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-8 padding-none">
            <div data-am-widget="slider" class="am-slider am-slider-c1" data-am-slider='{"directionNav":false}' >
                <ul class="am-slides">
                    <li>
                        <img src="/stx_project/Temp-images/tuiwenlunbo1.jpg" style="width: 864px;height: 488px">
                        <div class="am-slider-desc">远方 有一个地方 那里种有我们的梦想</div>
                    </li>
                    <li>
                        <img src="/stx_project/Temp-images/tuiwenlunbo2.jpg">
                        <div class="am-slider-desc">某天 也许会相遇 相遇在这个好地方</div>

                    </li>
                    <li>
                        <img src="/stx_project/Temp-images/tuiwenlunbo3.jpg">
                        <div class="am-slider-desc">不要太担心 只因为我相信 终会走过这条遥远的道路</div>

                    </li>
                    <li>
                        <img src="/stx_project/Temp-images/tuiwenlunbo4.jpg">
                        <div class="am-slider-desc">OH PARA PARADISE 是否那么重要 你是否那么地遥远</div>

                    </li>
                </ul>
            </div>

        </div>
        <div class="am-u-sm-0 am-u-md-0 am-u-lg-4 padding-none lrad">
            <ul class="am-avg-sm-1 am-avg-md-2 am-avg-lg-1">
                <li class="ms"><img src="Temp-images/bb2.jpg" class="am-img-responsive"></li>
                <li><img src="Temp-images/bb3.jpg" class="am-img-responsive"></li>
            </ul>
        </div>
    </div>
</div>



<div class="am-g am-container padding-none">
    <div class="am-u-sm-12 am-u-md-12 am-u-lg-8">
        <div data-am-widget="list_news" class="am-list-news am-list-news-default ">
            <div class="am-list-news-bd">
                <ul class="am-list">
                   
                   <!--  
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="http://www.douban.com/online/11624755/">
                                <img src="Temp-images/0002.jpeg" height="150" width="300"/></a>

                        </div>


                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11624755/">静夜诗</a></h3>
                            <div class="am-list-item-text">
                           	床前明月光，疑是地上霜。
                            </div>
                        </div>
                    </li>
                     -->
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019//04/21</i>
                    </div>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="http://www.douban.com/online/11624755/">
                                <img src="Temp-images/2222.jpg" height="150" width="300"/></a>

                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11624755/">拍你所想·如何构图</a></h3>
                            <div class="am-list-item-text">当您拍摄照片时，重要的是您的图像通过一致的想法或主题来关联。
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
                            <a href="http://www.douban.com/online/11624755/">
                                <img src="Temp-images/3333.jpg" height="150" width="300"/></a>

                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11624755/">女神成长记(一)——口红的选取</a></h3>
                            <div class="am-list-item-text">这些浓艳的颜色好看是好看，但是不一定适合每一个人噢，口红色号的选择，还是要根据自己的肤色、年龄、风格来选择啦。</div>
                        </div>

                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019//04/21</i>
                    </div>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="http://www.douban.com/online/11624755/">
                                <img src="Temp-images/3334.jpg" height="150" width="300"/></a>
                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11624755/">论如何化好妆·新手教程</a></h3>
                            <div class="am-list-item-text">每天写文章之前呢，都会先回复大家在留言板上的提问，有的关于护肤、有的关于化妆。
                                很多女生每天早晚都会坚持护肤，而且很认真，但是坚持一段时间之后会发现，皮肤并没有变好，反而还变差了。很有可能是因为你的护肤方法是错的噢，或者是你已经步入了一些护肤误区的坑。</div>
                        </div>

                    </li>
                    <div class="newsico am-fr">
                        <i class="am-icon-clock-o">2019//04/21</i>
                    </div>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left" data-am-scrollspy="{animation:'fade'}">
                        <div class="am-u-sm-5 am-list-thumb">
                            <a href="http://www.douban.com/online/11624755/">
                                <img src="Temp-images/1112.jpg" height="150" width="300"/>
                            </a>

                        </div>

                        <div class=" am-u-sm-7 am-list-main">
                            <h3 class="am-list-item-hd"><a href="http://www.douban.com/online/11624755/">论·拍摄的光线与视角</a></h3>
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
                <ul data-am-widget="pagination" class="am-pagination am-pagination-default">

                    <li class="am-pagination-first">
                        <a href="#" class="am-hide-sm">第一页</a>
                    </li>

                    <li class="am-pagination-prev ">
                        <a href="#" class="">上一页</a>
                    </li>


                    <li>
                        <a href="#" class="am-hide-sm">1</a>
                    </li>
                    <li >
                        <a href="#" class="am-hide-sm">2</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">3</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">4</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">5</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">6</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">7</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">8</a>
                    </li>
                    <li class="am-active">
                        <a href="#">9</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">10</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">11</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">12</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">13</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">14</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">15</a>
                    </li>
                    <li>
                        <a href="#" class="am-hide-sm">16</a>
                    </li>
                    <li class="am-pagination-next ">
                        <a href="#" class="">下一页</a>
                    </li>
                    <li class="am-pagination-last ">
                        <a href="#" class="am-hide-sm">最末页</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="am-u-sm-0 am-u-md-0 am-u-lg-4 am-hide-sm">
        <div class="tag bgtag">
            <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" >
                <h2 class="am-titlebar-title ">
                    热门标签
                </h2>
            </div>
            <ul>
                <li class="active"><a href="http://academy.fengniao.com/" >摄影技巧</a></li>
                <li><a href="https://www.baidu.com/sf/vsearch?pd=video&tn=vsearch&lid=f95b66130004a31a&ie=utf-8&rsv_pq=f95b66130004a31a&wd=%E6%91%84%E5%BD%B1%E5%B8%88&rsv_spt=5&rsv_t=9d080YLUhOmUqZOh2noOMu4pNLVnBDGKN%2Bunmz%2BymfJzy0dPOJXjA2FBOeA&rsv_bp=1&f=8">摄影师</a></li>
                <li><a href="https://baijiahao.baidu.com/s?id=1619290538017588515&wfr=spider&for=pc" target="_blank">妆娘</a></li>
                <li><a href="https://b2b.baidu.com/s?q=%E9%95%9C%E5%A4%B4&from=b2b_straight&srcid=5103" target="_blank">镜头</a></li>
                <li><a href="https://jingyan.baidu.com/article/4f34706e0e23a5e387b56d93.html " target="_blank">口红色号</a></li>
                <li><a href="#">美拍</a></li>
                <li><a href="#">美景</a></li>
                <li><a href="https://baike.baidu.com/item/%E5%A4%8D%E5%8F%A4%E9%A3%8E%E6%A0%BC%E6%9C%8D%E8%A3%85/5436313" target="_blank">复古风</a></li>
                <li><a href="http://image.baidu.com/search/index?tn=baiduimage&ct=201326592&lm=-1&cl=2&ie=gb18030&word=%C2%E4%C8%D5&fr=ala&ala=1&alatpl=adress&pos=0&hs=2&xthttps=000000" target="_blank">落日</a></li>
                <li><a href="https://image.baidu.com/search/index?tn=baiduimage&ct=201326592&lm=-1&cl=2&ie=gb18030&word=%C7%C5&fr=ala&ala=1&alatpl=adress&pos=0&hs=2&xthttps=111111" target="_blank">桥</a></li>
            </ul>
            <div class="am-cf"></div>
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