<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>活动</title>

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
                <li class="am-active"><a href="events.jsp">活动</a></li>
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
<div class="am-container" style=" margin-left: 300px">
    <img src="http://img3.imgtn.bdimg.com/it/u=2572667184,2107186159&fm=26&gp=0.jpg" class="am-img-responsive" alt=""/>
</div>
<div class="star am-container mcenter"><span><img src="images/head.png" style="height: 40px;width: 40px">即将开始</span></div>
<div class="am-container events">
    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1 am-avg-md-2 am-avg-lg-2 am-gallery-bordered" data-am-gallery="{  }" >
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong1.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <div class="efe">cosplay主题活动</div>
                    <p>时当春光融融，眼尽草木菁菁。清明节至，日丽风清，松柏凝翠，春潮涌动。今天，我们怀着无比崇敬的心情，来到约定的场地</p>
                    <div class="am-gallery-desc fee">
                        <div class="am-fl">重庆</div>
                        <div class="am-fr">2019//04/21</div>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong2.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <div class="efe">路拍·活动专场</div>
                    <p>跨越，分秒之内，或许颠覆一个世界。勇恒，在每一个人的路上.一棋，一天下，胜势在握。更在意从心所欲的姿态自然的大地与天空之间，企及颠峰的心性……</p>
                    <div class="am-gallery-desc fee">
                        <div class="am-fl">重庆</div>
                        <div class="am-fr">2019//04/21</div>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img style="witdh:400px;height:250" src="/stx_project/Temp-images/huodong3.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <div class="efe">cosplay活动专场</div>
                    <p>跨越，分秒之内，或许颠覆一个世界。勇恒，在每一个人的路上.一棋，一天下，胜势在握。更在意从心所欲的姿态自然的大地与天空之间，企及颠峰的心性无所不至。奇迹-从来只在我们手中。</p>
                    <div class="am-gallery-desc fee">
                        <div class="am-fl">合川</div>
                        <div class="am-fr">2019//04/21</div>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img style="witdh:400px;height:250" src="/stx_project/Temp-images/huodong4.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <div class="efe">cosplay活动专场</div>
                    <p>跨越，分秒之内，或许颠覆一个世界。勇恒，在每一个人的路上.一棋，一天下，胜势在握。更在意从心所欲的姿态自然的大地与天空之间，企及颠峰的心性无所不至。奇迹-从来只在我们手中。</p>
                    <div class="am-gallery-desc fee">
                        <div class="am-fl">北碚</div>
                        <div class="am-fr">2019//04/21</div>
                    </div>
                </a>
            </div>
        </li>
    </ul>
    <div class="am-fr"></div>
    <button type="button" class="am-btn am-btn-default am-btn-block" style="margin: 20px 0">更多活动</button>
</div>
<div class="star am-container mcenter"><span><img src="images/head.png" style="height: 40px;width: 40px">往期活动</span></div>
<div class="am-container">
    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-3 am-gallery-default" data-am-gallery="{ pureview: true }" >
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu1.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-primary">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu2.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-default">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu3.jpg"  alt="不要太担心 只因为我相信"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-default">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu4.jpg"  alt="终会走过这条遥远的道路"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-default">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu5.jpg"  alt="不要太担心 只因为我相信"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-default">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodonghuigu6.jpg"  alt="终会走过这条遥远的道路"/>
                    <div class="events-btn">
                        <button type="button" class="am-btn am-btn-default">活动回顾</button>
                    </div>
                </a>
            </div>
        </li>
    </ul>
    <div class="am-fr"></div>
    <button type="button" class="am-btn am-btn-default am-btn-block" style="margin: 20px 0">更多活动</button>
</div>
<div class="star am-container mcenter"><span><img src="images/head.png" style="height: 40px;width: 40px">媒体报道</span></div>
<div class="am-container">
    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-gallery-bordered" data-am-gallery="{  }" >
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong5.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong6.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong7.jpg"  alt="不要太担心 只因为我相信"/>
                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong8.jpg"  alt="终会走过这条遥远的道路"/>
                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong9.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                    <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong10.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                    <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong11.jpg"  alt="不要太担心 只因为我相信"/>
                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong12.jpg"  alt="终会走过这条遥远的道路"/>
                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong13.jpg"  alt="不要太担心 只因为我相信"/>
                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong14.jpg"  alt="终会走过这条遥远的道路"/>
                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong15.jpg"  alt="不要太担心 只因为我相信"/>
                    <h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
        <li>
            <div class="am-gallery-item">
                <a href="events_show.jsp" class="">
                    <img src="/stx_project/Temp-images/huodong16.jpg"  alt="终会走过这条遥远的道路"/>
                    <h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
                    <div class="am-gallery-desc">2375-09-26</div>
                </a>
            </div>
        </li>
    </ul>

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