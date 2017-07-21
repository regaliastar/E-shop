<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>

<html>
<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>E-shop</title>
    <meta name="keywords" content="php,php项目,php开源项目,php开源商城,yii,yii项目,yii开源项目,yii商城系统,yiishop,强大的yiishop shop b2c商城" />
    <meta name="description" content="yiishop专注于电子商务应用开发，为中小企业提供全面的电子商务解决方案" />
    <meta name="baidu-site-verification" content="JYxbG17mX1" />
    
<link href="/E-shop/static/css/font_1.css" rel="stylesheet">
<link href="/E-shop/static/css/font_2.css" rel="stylesheet">
<link href="/E-shop/static/css/font_3.css" rel="stylesheet">

<link href="/E-shop/static/css/font-awesome.min.css" rel="stylesheet">

<link href="/E-shop/static/css/bootstrap.css" rel="stylesheet">

<link href="/E-shop/static/css/uniform.default.css" rel="stylesheet">

<link href="/E-shop/static/css/jquery.fancybox.css" rel="stylesheet">
<link href="/E-shop/static/css/jquery.bxslider.css" rel="stylesheet">

<link href="/E-shop/static/css/layerslider.css" rel="stylesheet">
<link href="/E-shop/static/css/style-metronic.css" rel="stylesheet">
<link href="/E-shop/static/css/style.css" rel="stylesheet">
<link href="/E-shop/static/css/style-responsive.css" rel="stylesheet">
<link href="/E-shop/static/css/custom.css" rel="stylesheet">
<link href="/E-shop/static/css/public.css" rel="stylesheet">
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body>
   <div class="pre-header">
    <div class="container">
        <div class="row">
            <!-- BEGIN TOP BAR LEFT PART -->
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <li><i class="fa fa-phone"></i><span>137-9542-3417</span></li>
                    <!-- BEGIN LANGS -->
                    <li class="langs-block">
                        <a href="javascript:void(0);" class="current">关注Yiishop微信 <i class="fa fa-angle-down"></i></a>
                        <div class="langs-block-others-wrapper">
                            <div class="langs-block-others">
                                <img src="http://www.yiishop.com.cn/web/themes/img/wx.jpg">
                            </div>
                        </div>
                    </li>
                    <!-- END LANGS -->
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                                        <li><a href="javascript:;" onclick="sign();">签到</a></li>
                    <li><a href="/E-shop/member/default/login.jsp">登录</a></li>
                    <li><a href="/E-shop/member/default/register.jsp">注册</a></li>
                                    </ul>
            </div>
            <!-- END TOP BAR MENU -->
        </div>
    </div>
</div>    
<div role="navigation" class="navbar header no-margin">
    <div class="container">
        <div class="navbar-header">
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/E-shop/index.jsp" class="navbar-brand">
                <img src="http://www.yiishop.com.cn/web/themes/img/logo.jpg" style="width:129px; height: 29px;" alt="Metronic Shop UI">
            </a>
        </div>
        <div class="cart-block">
            <div class="cart-info">
    <a href="javascript:void(0);" class="cart-info-count">0个商品</a>
    <a href="javascript:void(0);" class="cart-info-value">￥0.00</a>
</div>
<i class="fa fa-shopping-cart"></i>
<!-- BEGIN CART CONTENT -->
<div class="cart-content-wrapper">
    <div class="cart-content">
        <ul class="scroller" style="height: 250px;">
                    </ul>
        <div class="text-right">
            <a href="/cart/default/index.html" class="btn btn-default">查看购物车</a>
            <a href="/order/check/index.html"" class="btn btn-primary">结算</a>
        </div>
    </div>
</div>
<!-- END CART CONTENT -->        </div>
        <div class="collapse navbar-collapse mega-men
        u">
            <ul class="nav navbar-nav">
                <li>
                    <a href="/E-shop/index.jsp">
                        首页
                    </a>
                </li>
                <li>
                    <a href="/sales/point/index.html">
                        积分商城
                    </a>
                </li>
                <li>
                    <a href="/backend" target="_blank">
                        后台展示
                    </a>
                </li>

                <li>
                    <a href="/cms/default/index.html" target="_blank">
                        项目说明
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

    <div class="main">
    <div class="page-slider">
    <!--LayerSlider begin-->
    <div id="layerslider" style="width: 100%; height: 494px; margin: 0 auto;">
        <!--LayerSlider layer-->
        <div class="ls-layer ls-layer1" style="slidedirection: right; transition2d: 24,25,27,28; ">
            <img src="http://www.yiishop.com.cn/images/advertisement/20160516/14633924409969.jpeg" class="ls-bg" alt="特产分会场">
        </div>
    </div>
    <!--LayerSlider end-->
</div>    <div class="container">
        <!-- 新品推荐 start -->
        <div class="row margin-bottom-40 margin-top-10">
    <div class="col-md-12 sale-product">
        <h2>最新上架</h2>
        <div class="bxslider-wrapper">
            <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="5" data-slide-margin="15">
                                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160517/14634956908524_m.jpg"
                                     class="img-responsive" alt="重庆武隆特产羊角豆干 香菇豆干散装称重 休闲零食 烧烤味500g" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160517/14634956908524.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-1-69.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-1-69.html">重庆武隆特产羊角豆干 香菇豆干散装称重 休闲零食 烧烤味500g</a></h3>
                            <div class="pi-price">￥0.01</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(1,69,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160518/14635493671777_m.jpg"
                                     class="img-responsive" alt="北京稻香村糕点礼盒 北京特产 饼干蛋糕 休闲零食 (十八种口味)" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160518/14635493671777.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-2-73.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-2-73.html">北京稻香村糕点礼盒 北京特产 饼干蛋糕 休闲零食 (十八种口味)</a></h3>
                            <div class="pi-price">￥148.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(2,73,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160523/14639879014736_m.jpg"
                                     class="img-responsive" alt="陕西洛川红富士优质苹果 果径75mm 12枚 2.25kg" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160523/14639879014736.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-3-77.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-3-77.html">陕西洛川红富士优质苹果 果径75mm 12枚 2.25kg</a></h3>
                            <div class="pi-price">￥35.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(3,77,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_m.jpg"
                                     class="img-responsive" alt="洋河【两件5折】蓝色经典 绵柔型白酒 整箱 42度邃之蓝500ml*6/箱 白酒" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645834935373.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-4-85.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-4-85.html">洋河【两件5折】蓝色经典 绵柔型白酒 整箱 42度邃之蓝500ml*6/箱 白酒</a></h3>
                            <div class="pi-price">￥1,008.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(4,85,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_m.jpg"
                                     class="img-responsive" alt="新鲜糖水黄桃罐头 425克×6罐 鲜嫩多汁 清凉可口 出口韩文水果对开罐头 休闲零食 " style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645960158890.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-5-79.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-5-79.html">新鲜糖水黄桃罐头 425克×6罐 鲜嫩多汁 清凉可口 出口韩文水果对开罐头 休闲零食 </a></h3>
                            <div class="pi-price">￥35.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(5,79,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_m.jpg"
                                     class="img-responsive" alt="牧场乳酪 奶条400g 内蒙古奶酪奶片奶干 牛奶条长虹酸奶条 休闲零食大礼包 自营馆零食 原味" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645963086748.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-6-80.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-6-80.html">牧场乳酪 奶条400g 内蒙古奶酪奶片奶干 牛奶条长虹酸奶条 休闲零食大礼包 自营馆零食 原味</a></h3>
                            <div class="pi-price">￥30.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(6,80,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_m.jpg"
                                     class="img-responsive" alt="金堂馆 休闲零食小吃麻花2斤装 约280小袋混合装 陈吉旺福" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645968374562.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-7-81.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-7-81.html">金堂馆 休闲零食小吃麻花2斤装 约280小袋混合装 陈吉旺福</a></h3>
                            <div class="pi-price">￥20.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(7,81,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_m.jpg"
                                     class="img-responsive" alt="上海特产 冠生园大白兔奶糖 巨白兔糖形礼罐 六一礼物休闲糖果零食 200g 原味" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645971269008.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-8-82.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-8-82.html">上海特产 冠生园大白兔奶糖 巨白兔糖形礼罐 六一礼物休闲糖果零食 200g 原味</a></h3>
                            <div class="pi-price">￥9.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(8,82,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_m.jpg"
                                     class="img-responsive" alt="上海特产 功德林真空素粽系列 单只装160g/只 真空香菇粽" style="width: 190px; height: 190px;">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645972851038.jpg"
                                       class="btn btn-default fancybox-button">放大</a>
                                    <a href="/product-9-83.html" class="btn btn-default fancybox-fast-view">查看详请</a>
                                </div>
                            </div>
                            <h3><a href="/product-9-83.html">上海特产 功德林真空素粽系列 单只装160g/只 真空香菇粽</a></h3>
                            <div class="pi-price">￥9.00</div>
                            <a href="javascript:;" class="btn btn-default add2cart"
                               onclick="cart(9,83,1);">加入购物车</a>
                            <div class="sticker sticker-sale"></div>
                        </div>
                    </li>
                                            </ul>
        </div>
    </div>
</div>        <!-- 新品推荐 end -->

        <!-- 分类 && 推荐商品 start -->
        <div class="row margin-bottom-40 ">
            <!-- 分类 start -->
            <div class="sidebar col-md-3 col-sm-4">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                                        <li class="list-group-item clearfix dropdown
            ">
                    <a href="/home/list/cat.html?id=1" class="">
                        <i class="fa fa-angle-right"></i>
                        特产零食                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" >
                                                                                    <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=9" class="collapsed">
                                        <i class="fa fa-circle"></i> 螺蛳粉                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=8" class="collapsed">
                                        <i class="fa fa-circle"></i> 无糖食品                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=7" class="collapsed">
                                        <i class="fa fa-circle"></i> 蜜饯果干                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=6" class="collapsed">
                                        <i class="fa fa-circle"></i> 肉干肉脯                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=5" class="collapsed">
                                        <i class="fa fa-circle"></i> 糖果/甜点                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=4" class="collapsed">
                                        <i class="fa fa-circle"></i> 饼干蛋糕                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=3" class="collapsed">
                                        <i class="fa fa-circle"></i> 休闲零食                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=2" class="collapsed">
                                        <i class="fa fa-circle"></i> 坚果炒货                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                                        </ul>
                </li>
                                                <li class="list-group-item clearfix dropdown
            ">
                    <a href="/home/list/cat.html?id=35" class="">
                        <i class="fa fa-angle-right"></i>
                        粮油调味                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" >
                                                                                    <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=37" class="collapsed">
                                        <i class="fa fa-circle"></i> 食用油                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=36" class="collapsed">
                                        <i class="fa fa-circle"></i> 米面杂粮                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=38" class="collapsed">
                                        <i class="fa fa-circle"></i> 调味品                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=39" class="collapsed">
                                        <i class="fa fa-circle"></i> 方便食品                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=42" class="collapsed">
                                        <i class="fa fa-circle"></i> 火麻油                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=41" class="collapsed">
                                        <i class="fa fa-circle"></i> 有机食品                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=40" class="collapsed">
                                        <i class="fa fa-circle"></i> 南北干货                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                                        </ul>
                </li>
                                                <li class="list-group-item clearfix dropdown
            ">
                    <a href="/home/list/cat.html?id=10" class="">
                        <i class="fa fa-angle-right"></i>
                        茗茶冲调                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" >
                                                                                    <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=20" class="collapsed">
                                        <i class="fa fa-circle"></i> 龙井                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=12" class="collapsed">
                                        <i class="fa fa-circle"></i> 咖啡                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=11" class="collapsed">
                                        <i class="fa fa-circle"></i> 奶茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=13" class="collapsed">
                                        <i class="fa fa-circle"></i> 铁观音                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=14" class="collapsed">
                                        <i class="fa fa-circle"></i> 普洱                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=15" class="collapsed">
                                        <i class="fa fa-circle"></i> 红茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=25" class="collapsed">
                                        <i class="fa fa-circle"></i> 花草茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=24" class="collapsed">
                                        <i class="fa fa-circle"></i> 养生茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=23" class="collapsed">
                                        <i class="fa fa-circle"></i> 乌龙茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=22" class="collapsed">
                                        <i class="fa fa-circle"></i> 黑茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=21" class="collapsed">
                                        <i class="fa fa-circle"></i> 白茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=19" class="collapsed">
                                        <i class="fa fa-circle"></i> 蜂蜜/柚子茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=18" class="collapsed">
                                        <i class="fa fa-circle"></i> 冲饮谷物                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=17" class="collapsed">
                                        <i class="fa fa-circle"></i> 成人奶粉                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=16" class="collapsed">
                                        <i class="fa fa-circle"></i> 绿茶                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                                        </ul>
                </li>
                                                <li class="list-group-item clearfix dropdown
            ">
                    <a href="/home/list/cat.html?id=43" class="">
                        <i class="fa fa-angle-right"></i>
                        果蔬生菜                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" >
                                                                                    <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=50" class="collapsed">
                                        <i class="fa fa-circle"></i> 牛羊肉                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=49" class="collapsed">
                                        <i class="fa fa-circle"></i> 牛排                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=48" class="collapsed">
                                        <i class="fa fa-circle"></i> 腊肠/腊肉                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=47" class="collapsed">
                                        <i class="fa fa-circle"></i> 熟食                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=46" class="collapsed">
                                        <i class="fa fa-circle"></i> 蔬菜                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=45" class="collapsed">
                                        <i class="fa fa-circle"></i> 海鲜水产                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=44" class="collapsed">
                                        <i class="fa fa-circle"></i> 水果                                         <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                                        </ul>
                </li>
                                                <li class="list-group-item clearfix dropdown
            ">
                    <a href="/home/list/cat.html?id=26" class="">
                        <i class="fa fa-angle-right"></i>
                        酒水饮料                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu" >
                                                                                    <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=34" class="collapsed">
                                        <i class="fa fa-circle"></i> 饮用水                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=33" class="collapsed">
                                        <i class="fa fa-circle"></i> 收藏酒/陈年老酒                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=32" class="collapsed">
                                        <i class="fa fa-circle"></i> 饮料/果汁                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=31" class="collapsed">
                                        <i class="fa fa-circle"></i> 黄酒/养生酒                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=30" class="collapsed">
                                        <i class="fa fa-circle"></i> 啤酒                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=29" class="collapsed">
                                        <i class="fa fa-circle"></i> 牛奶乳品                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=28" class="collapsed">
                                        <i class="fa fa-circle"></i> 葡萄酒                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                            <li class="list-group-item dropdown clearfix
                            ">
                                    <a href="/home/list/cat.html?id=27" class="collapsed">
                                        <i class="fa fa-circle"></i> 白酒                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                </li>
                                                                        </ul>
                </li>
                        </ul>            </div>
            <!-- 分类 end -->
            <!-- 推荐商品 start -->
            <div class="col-md-9 col-sm-8">
    <h2>特惠商品</h2>
    <div class="bxslider-wrapper">
        <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="3" data-slide-margin="15">
                                                <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-7-81.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-7-81.html">好吃的商品</a></h3>
                            <div class="pi-price">￥20.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-4-78.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-4-78.html">雪之恋和风大福</a></h3>
                            <div class="pi-price">￥1008.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-9-83.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-9-83.html">雪之恋和风大福</a></h3>
                            <div class="pi-price">￥9.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-6-80.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-6-80.html">雪之恋和风大福 </a></h3>
                            <div class="pi-price">￥30.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-8-82.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-8-82.html">雪之恋和风大福 </a></h3>
                            <div class="pi-price">￥9.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    <li>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_m.jpg" class="img-responsive" alt="Berry Lace Dress">
                                <div>
                                    <a href="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_l.jpg" class="btn btn-default fancybox-button">大图</a>
                                    <a href="/product-5-79.html" class="btn btn-default fancybox-fast-view">查看</a>
                                </div>
                            </div>
                            <h3><a href="/product-5-79.html">雪之恋和风大福 </a></h3>
                            <div class="pi-price">￥35.000</div>
                            <a href="#" class="btn btn-default add2cart">加入购物车</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </li>
                                    </ul>
    </div>
</div>            <!-- 推荐商品 end -->
        </div>
        <!-- 分类 && 推荐商品 end -->
    </div>
<!-- 品牌列表 start -->
<div class="brands">
    <div class="container">
        <div class="row">
            <div class="bxslider-wrapper">
                <ul class="bxslider" data-slides-phone="1" data-slides-tablet="3" data-slides-desktop="6" data-slide-margin="15">
                                                                        <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/brand/20160518/14635490782828.jpeg"
                                         alt="老北京馆" title="老北京馆">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/brand/20160517/14634953947305.jpeg"
                                         alt="寻味武隆" title="寻味武隆">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160523/14639808581264.jpeg"
                                         alt="洛川苹果" title="洛川苹果">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645833994265.png"
                                         alt="洋河酒" title="洋河酒">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645958369631.jpeg"
                                         alt="徐州馆" title="徐州馆">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645962493854.jpeg"
                                         alt="绿牧食品" title="绿牧食品">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645965927107.jpeg"
                                         alt="金堂" title="金堂">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645969574127.jpeg"
                                         alt="上海馆" title="上海馆">
                                </a>
                            </li>
                                                    <li>
                                <a href="">
                                    <img src="http://www.yiishop.com.cn/images/common/20160530/14645974141446.jpeg"
                                         alt="安溪馆" title="安溪馆">
                                </a>
                            </li>
                                                            </ul>
            </div>
        </div>
    </div>
</div><!-- 品牌列表 end -->    </div>

    <div class="steps3 steps3red">
    <div class="container">
        <div class="row">
            <div class="col-md-4 steps3-col">
                <i class="fa fa-truck"></i>
                <div>
                    <h2>免费物流</h2>
                    <em>所购商品由商家包邮</em>
                </div>
                <span>&nbsp;</span>
            </div>
            <div class="col-md-4 steps3-col">
                <i class="fa fa-gift"></i>
                <div>
                    <h2>幸运礼物</h2>
                    <em>每天有3个客户会收到赠品</em>
                </div>
                <span>&nbsp;</span>
            </div>
            <div class="col-md-4 steps3-col">
                <i class="fa fa-phone"></i>
                <div>
                    <h2>400 000 000</h2>
                    <em>7*24小时客户随时咨询</em>
                </div>
            </div>
        </div>
    </div>
</div>    <!-- BEGIN PRE-FOOTER -->
<div class="pre-footer">
    <div class="container">
        <div class="row">
            <!-- BEGIN BOTTOM ABOUT BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>关于我们</h2>
                <p>今年以来基于Yii2开发以Yiishop标准化电商软件为基础的电商解决方案，并致力于电商软件的技术创新和平台化运营。</p>
                <p>作为一套正在发展的电商平台技术解决方案，Yiishop的每一次升级都专注于垂直电商平台研发。经过两年多的发展，Yiishop向着被广大用户和开发者广泛认同和采纳目标奋斗。</p>
            </div>
            <!-- END BOTTOM ABOUT BLOCK -->
            <!-- BEGIN BOTTOM INFO BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>友情链接</h2>
                <ul class="list-unstyled">
                    <li><i class="fa fa-angle-right"></i> <a href="http://www.yiishop.com.cn" target="_blank">YiiShop</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="http://www.yii-china.com" target="_blank">Yii-china</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>产品服务</h2>
                <ul class="list-unstyled">
                    <li><i class="fa fa-angle-right"></i> <a href="#">产品特点</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">解决方案</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">产品报价</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">功能列表</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">系统更新</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">常见问题</a></li>
                </ul>
            </div>
            <!-- END INFO BLOCK -->
            <!-- BEGIN TWITTER BLOCK -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>增值服务</h2>
                <ul class="list-unstyled">
                    <li><i class="fa fa-angle-right"></i> <a href="#">免费升级</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">ICP备案</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">SEO优化</a></li>
                    <li><i class="fa fa-angle-right"></i> <a href="#">短信营销</a></li>
                </ul>
            </div>
            <!-- END TWITTER BLOCK -->
            <!-- BEGIN BOTTOM CONTACTS -->
            <div class="col-md-3 col-sm-6 pre-footer-col">
                <h2>联系我们</h2>
                <address class="margin-bottom-40">
                    微信: chenfh08054<br>
                    QQ: 843958575<br>
                    Email: <a href="#">chenfh08054@163.com</a><br>
                </address>
            </div>
            <!-- END BOTTOM CONTACTS -->
        </div>
    </div>
</div>
<!-- END PRE-FOOTER -->
    <div class="footer">
    <div class="container">
        <div class="row">
            <!-- BEGIN COPYRIGHT -->
            <div class="col-md-6 col-sm-6 padding-top-10">
                2015 © Yii2 Shop. ALL Rights Reserved.
            </div>
            <!-- END COPYRIGHT -->
        </div>
    </div>
</div> 
   <script>
        var web_url = 'http://www.yiishop.com.cn';
    </script>
</body>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?098d458bde2c1fa90f92a3b2fd046e74";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
 <script src="http://www.yiishop.com.cn/web/themes/plugins/jquery-1.10.2.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/jquery-migrate-1.2.1.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/back-to-top.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/jQuery-slimScroll/jquery.slimscroll.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/bxslider/jquery.bxslider.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/zoom/jquery.zoom.min.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/bootstrap-touchspin/bootstrap.touchspin.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/layerslider/jQuery/jquery-easing-1.3.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/layerslider/jQuery/jquery-transit-modified.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/layerslider/js/layerslider.transitions.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/plugins/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/web/plugins/layer/layer.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/scripts/app.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/scripts/index.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/scripts/init.js"></script>
<script src="http://www.yiishop.com.cn/web/themes/web/js/public.js"></script>
</html>
