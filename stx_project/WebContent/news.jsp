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
    <title></title>

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


<div class="am-g am-container">
    <div class="am-u-sm-12 am-u-md-12 am-u-lg-8">
        <div class="newstitles">
            <h2>拍摄技巧·新手教程</h2>
            <img src="Temp-images/face.jpg" class="face">
            <span>Rosis</span>
            时间：2019/05/01   阅读：0
        </div>
   

        <div class="contents">
            <p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;所有的人之所以踏上摄影之路，几乎都是被单反相机及其附件的魅力所吸引。她完美神奇，使我们如获至宝，珍爱之极。我们通过它观察、取景、测光、测距、调焦，然后一按快门，“咔嗒”一声——瞬间的“艺术”就诞生了！甚至，不管单反相机多么昂贵，我们总是心甘情愿地增加投入。


因此，经常留意各种广告，研究哪家商店出售什么产品，价格如何。我们凝视着照相器材商店的橱窗，宛如一个孩子驻足于玩具商店门前。我们还常常和摄影同伴们比镜头等等，体验着“我的比你的大”那种自我满足的心情。摄影家们常有这样一句话“开始我们不过迷上了单反相机这个尤物，而结果却爱上了摄影这门艺术。”

单反相机拍摄入门技巧步骤：

1、光圈优先


光圈优先大多用在拍人像以及风景时。光圈优先就是手动定义光圈的大小，相机会根据这个光圈值确定快门速度。由于光圈的大小直接影响着景深，因此在平常的拍摄中此模式使用最为广泛。在拍摄人像时，一般采用大光圈长焦距而达到虚化背景获取较浅景深的作用，这样可以突出主体。同时较大的光圈，也能得到较快的快门值，从而提高手持拍摄的稳定。在拍摄风景这一类的照片时，我往往采用较小的光圈，这样景深的范围比较广，可以使远处和近处的景物都清晰，同样这一点在拍摄夜景时也适用。

2、快门优先


快门优先多用于拍摄运动的物体上，例如体育运动、行使中的车辆、瀑布、飞行中的物体、烟花、水滴等等。与光圈优先相反，快门优先是在手动定义快门的情况下通过相机测光而获取光圈值。快门优先多用于拍摄运动的物体上，特别是在体育运动拍摄中最常用。很多朋友在拍摄运动物体时发现，往往拍摄出来的主体是模糊的，这多半就是因为快门的速度不够快。在这种情况下你可以使用快门优先模式，大概确定一个快门值，然后进行拍摄。并且物体的运行一般都是有规律的，那么快门的数值也可以大概估计，例如拍摄行人，快门速度只需要1/125秒就差不多了，而拍摄下落的水滴则需要1/1000秒。

3、人像拍摄


首先，要用到长焦，3――4倍的长焦非常适合拍人像，广角端会使得人像有些变形，不好看，超过4倍甚至更长焦会使得人脸过于扁平，不够生动。

其次，光圈优先，选择大光圈，大光圈可以使得快门变快，减少晃动，并且使得背景尽可能的虚化。最好选择点测光，对人脸点测光，并使用曝光锁定。因为其他测光方式容易受到衣服颜色的影响，使得人脸曝光不正常。

最后，构图。人像最好占到1/3-1/2，并且脸部在上方1/3处（从下看是处）。这样拍出的人像片就会生动，有视觉的冲击力，让人看着好看。

4、微距


拍好微距需要用光、构图讲究技巧。我们要掌握的是怎么把微距拍清楚，不要拍糊呢？注意以下两点就行了。首先，用三角架。手持不稳，放大之后总看到片糊，所以第一条，用三角架。其次，用自拍机。我们发现，即使用架，在按动快门时仍然带入了晃动，最好的办法，启动自拍机。

5、曝光补偿的使用


按动+ -键，就会出现曝光补偿调节条，左右键调整正负补偿及大小，一次1/3级。调整好后再按一次+ -键确定。那么，曝光补偿怎么应用呢？总起来讲，是白加黑减，白的环境下，测光有偏低的状况，需要增加，反之亦然。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;富</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><br/></span></p><p dir="ltr"><strong><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">(二) 现有系统架构给前后端带来的问题以及解决方法</span></strong></p><p dir="ltr" style="text-align: center;"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><img src="http://www.html5dw.com/uploads/image/1458029187124974.png" title="1458029173294743.png" alt="112.png"/></span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;上图是目前大部分系统的架构图，虽然有些系统采用分布式架构，层与层之间使用了远程调用框架，但是本质上都逃不开上面这个架构设计。这张图是一张比较合理的图，在实际开发里最常发生的事情就是控制层（Control）越过服务层（Service）直接处理下面的资源。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; 前后端耦合的问题主要发生在控制层（Control），控制层是前端和服务端交互的边界，但是在开发过程中控制层（Control）和服务层（Service）常常混淆不清，这就是前后端耦合度高的重要原因。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; 因此要前后端解耦，就是要划清控制层的边界，控制层到底该属于前端还是服务端，在MVC模式里控制层作用是调度，控制层不是写业务逻辑的地方，因此将大量业务逻辑写到控制层其实是违背了MVC模式的思想，同时控制层是前端和服务端通讯的桥梁，其实控制层是参入了前端的工作任务，既然控制层要剥离业务操作同时控制层也要参入前端应用的开发，那么将控制层归为前端的一部分是完全合情合理合规的。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;把控制层剥离了业务逻辑处理可能会让人不知道如何开发了，我觉得有这种想法的人是开发时候没有理解透MVC模式思想，编程随意性大养成了坏习惯，这个就需要这些人一点点去适应技术新趋势的发展。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;前后端分离的终极目标应该是前端和服务端是完全独立的项目，前端项目包含上图里的浏览器和控制层，服务端项目包括服务层、DAO层等等，前端项目和服务端项目以高效的远程调用框架做通讯介质，
           </span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;其实不管服务端还是前端宏观流程无非是输入数据à数据处理à输出数据，但是服务端要把心思花在数据处理上，前端要更多关心的是输入输出数据时候的用户体验操作，服务端开发最大的问题就是违背MVC原则，代码编写的随意性，而前端不管出于安全还是性能考虑，最好是尽量少牵涉业务。前端和后端通讯层的独立，会将前后端进行真正的解耦，前面我讲到前后真正问题就是前端和后端技术路线不一致，但是传统Web开发里前后端又要融为一体，这就导致前后端很难做到专业化分工，对于前端应该尽量弱化通讯级别的开发工作，前端通讯编程只要知道调用哪个接口，传什么参数，怎么处理响应信息就行了。这样就能让前端和后端实现真正的专业化。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;做到了这些，就不会发生开发时候前后端边界不清的问题了。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><br/></span></p><p dir="ltr"><strong><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">(三) 前后端分离的一些想法</span></strong></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;本文主题应该是前后端分离，我上面的建议是个彻底方案，要革以前系统的命，对存量系统那该如何处理，答案还是重构代码，想方设法逐步减少已经发现的前后端耦合度高的问题，这个跟我之前的建议就是小重构和大重构的区别，如果有人觉得我上面建议合适，前端组应该马上提供一套这样的框架出来，这样后面的新系统就不会在循环前面的错误了。我觉得搭建这样的框架不会太复杂的。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;我上面的前后端分离的目的就是将前端资源整合为一个整体，理清前后端的边界，这些做完后，前端组里该如何提升自己的能力了？</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;
             这时候要让前端的东西项目化，工程化，前端技术不能再当做开发者的玩具，它也是需要大量的系统架构，开发规范，自动化压缩混淆，自动化发布，
             前端监控和分析，前端优化等等。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;上面这些问题都很重要，也很专业，如果我有机会能参入这样的事情，我还有个特别的建议，具体如下：</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; 在一个企业内部，Web前端的组件，不管这个组件是UI层级，还是javascript开发层级，都脱离不了该企业业务产品的模式，其实看看像网易，新浪这样的门户网站的前端应用组件，它们用于做门户很合适，但是用它来做企业应用软件可能就不是太好使用，因此对于组件要有一个清晰的认识，我觉得可以把组件按业务场景分类，这里我可以举个例子，如果这个企业有给门户使用的组件，而这个组件很适合门户，应该把它归为门户组件，如果某些组件适合做网站后台管理的，那么就列为后台管理组件，如果某些组件能跨多了业务场景则标记为通用组件。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;做分类的原因是为了理清组件的应用边界，这样我们可以有针对性的积累和完善这些组件，有意识的开发相关的组件，最终形成一个针对某个业务组件的组件仓库，这样等新需求过来，Web前端的项目经理或Web前端的技术经理可以通过场景分析该需求需要使用那些现有的技术，
             需求里的那些场景是要进行开发，新场景里有没有新开发的代码能生成新的组件，这就可以做到有计划有次序的积累。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;同时也让Web前端核心人员也能很好的把控项目的质量和进度。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;以上就是我的一些前后端分离的想法，它是一个很宏观的想法，没有太多技术实现细节，如果这个想法如果针对存量系统，的确是一个颠覆性的方案，如果Web前端允许一切重头来做，我个人觉得这还是很好的一个思路。前后端分离是Web前端专业化的万里长征第一步，如果这一步做好，前端就有一套专属自己的优质环境，那时候Web前端就会有更大的余力做更优秀的工作，这就是我的愿景。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><br/></span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;当然我的构想也许并不太正确，如果有大牛看了本人文章还请多多指教。</span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><br/></span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);"><br/></span></p><p dir="ltr"><span style="color: rgb(88, 88, 88); font-family: arial, &#39;microsoft yahei&#39;, 宋体; line-height: 28px; text-align: justify; font-size: 16px; background-color: rgb(255, 255, 255);">作者：乔治</span></p><p dir="ltr" style="text-align: justify; "><font color="#585858" face="arial, microsoft yahei, 宋体"><span style="line-height: 28px; background-color: rgb(255, 255, 255);">本文链接：<a href="https:www.scum.ink" _src="https://www.scum.ink">https://www.scum.ink</a> </span></font></p><p dir="ltr" style="text-align: justify; "><font color="#585858" face="arial, microsoft yahei, 宋体"><br/></font></p><p dir="ltr" style="text-align: justify;"></p>
        </div>
        <!--data-ds-short-name="amazeui" 多说的用户名-->
        <div data-am-widget="duoshuo" class="am-duoshuo am-duoshuo-default" data-ds-short-name="amazeui">
            <div class="ds-thread" >
            </div>
        </div>
    </div>
    <div class="am-u-sm-0 am-u-md-0 am-u-lg-4">
        <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
            <h2 class="am-titlebar-title ">
                作者专栏
            </h2>
            <nav class="am-titlebar-nav">
                <a href="person.html">更多 &raquo;</a>
            </nav>
        </div>

        <div data-am-widget="list_news" class="am-list-news am-list-news-default right-bg">
            <ul class="am-list"  >
                <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
                    <div class="am-u-sm-4 am-list-thumb">
                        <a href="person.html">
                            <img src="Temp-images/face.jpg" class="face"/>
                        </a>
                    </div>

                    <div class=" am-u-sm-8 am-list-main">
                        <h3 class="am-list-item-hd"><a href="person.html">蔡徐坤</a></h3>

                        <div class="am-list-item-text">Bilibili认证知名妆娘</div>
                    </div>
                </li>

            </ul>
        </div>



        <ul class="am-gallery am-avg-sm-1
  am-avg-md-1 am-avg-lg-1 am-gallery-default" data-am-gallery="{ pureview: true }" >
            <li>
                <div class="am-gallery-item">
                    <a href="http://s.amazeui.org/media/i/demos/bing-1.jpg" class="">
                        <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                        <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                        <div class="am-gallery-desc">
                            <div class="am-fr">北京</div>
                            <div class="am-fl">2019/04/21</div>
                        </div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="http://s.amazeui.org/media/i/demos/bing-2.jpg" class="">
                        <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                        <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                        <div class="am-gallery-desc">
                            <div class="am-fr">北京</div>
                            <div class="am-fl">2019/04/21</div>
                        </div>
                    </a>
                </div>
            </li>
            <li>
                <div class="am-gallery-item">
                    <a href="http://s.amazeui.org/media/i/demos/bing-2.jpg" class="">
                        <img src="http://s.amazeui.org/media/i/demos/bing-2.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                        <h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
                        <div class="am-gallery-desc">
                            <div class="am-fr">北京</div>
                            <div class="am-fl">2019/04/21</div>
                        </div>
                    </a>
                </div>
            </li>
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