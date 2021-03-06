<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>

<%@ page import="edu.scdx.entity.User"%>
<%@ page import="edu.scdx.entity.Product"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<!-- Head BEGIN -->
<head>
<meta charset="utf-8">
<title>E-shop</title>
<meta name="keywords"
	content="php,php项目,php开源项目,php开源商城,yii,yii项目,yii开源项目,yii商城系统,yiishop,强大的yiishop shop b2c商城" />
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
<link href="/E-shop/static/css/load.css" rel="stylesheet">
</head>
<!-- Head END -->

<!-- Body BEGIN -->

<body>
	<div id="loading" ></div>
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<li><i class="fa fa-phone"></i><span>17729846087</span></li>
						<!-- BEGIN LANGS -->
						<li class="langs-block"><a href="javascript:void(0);"
							class="current">关注E-shop微信 <i class="fa fa-angle-down"></i></a>
							<div class="langs-block-others-wrapper">
								<div class="langs-block-others">
									<img src="http://www.yiishop.com.cn/web/themes/img/wx.jpg">
								</div>
							</div></li>
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->

				<c:choose>
					<c:when test="${user != null}">
						<ul class="list-unstyled list-inline pull-right">
							<li><a href="javascript:;" onclick="sign();">签到</a></li>
							<li><a href="#">"${user.uname }"</a></li>
							<li><a href="${pageContext.request.contextPath }/logout.do">注销</a></li>
						</ul>

					</c:when>
					<c:otherwise>
						<div class="col-md-6 col-sm-6 additional-nav">
							<ul class="list-unstyled list-inline pull-right">
								<li><a href="${pageContext.request.contextPath }/login.do">登录</a></li>
								<li><a
									href="${pageContext.request.contextPath }/register.do">注册</a></li>
							</ul>
						</div>
					</c:otherwise>
				</c:choose>

				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<div role="navigation" class="navbar header no-margin">
		<div class="container">
			<div class="navbar-header">
				<button data-target=".navbar-collapse" data-toggle="collapse"
					class="navbar-toggle" type="button">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="${pageContext.request.contextPath }/index.do"
					class="navbar-brand"> <img src="/E-shop/static/img/logo.png"
					style="width: 129px; height: 29px;" alt="Metronic Shop UI">
				</a>
			</div>
			<div class="cart-block">
				<div class="cart-info">
					<a href="javascript:void(0);" class="cart-info-count">${cartProductNum}个商品</a> <a
						href="javascript:void(0);" class="cart-info-value">￥${cartProductPrice}</a>
				</div>
				<i class="fa fa-shopping-cart"></i>
				<!-- BEGIN CART CONTENT -->
				<div class="cart-content-wrapper">
					<div class="cart-content">
						<ul class="scroller" style="height: 250px;">
							<c:forEach items="${cartProductList}" var="cProduct">
								<li><a
									href="${pageContext.request.contextPath }/product.json?id=${cProduct.getPid() }">
										<img src="/E-shop/${cProduct.getImage()}"
										alt="cProduct.getDescription()" width="37" height="34">
								</a> <span class="cart-content-count">x 1</span> <strong> <a
										href="${pageContext.request.contextPath }/product.json?id=${cProduct.getPid() }">${cProduct.getDescription()}
									</a>
								</strong> <em>￥${cProduct.getSalePrice()}</em> 
								<a class="del-goods" href="${pageContext.request.contextPath }/product/deleteCart.json?cid=${cProduct.getCid() }"> 
									<i class="fa fa-times"></i>
								</a>
								</li>
							</c:forEach>
						</ul>
						<div class="text-right">
							<a href="#" class="btn btn-default">查看购物车</a>
							<a href="${pageContext.request.contextPath }/product/purchaseFromCart.do"  class="btn btn-primary">结算</a>
						</div>
					</div>
				</div>
				<!-- END CART CONTENT -->
			</div>
			<div class="collapse navbar-collapse mega-menu">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath }/index.do">
							首页 </a></li>
					<li><a href="/sales/point/index.html"> 积分商城 </a></li>
					<li><a href="/backend" target="_blank"> 后台展示 </a></li>

					<li><a href="/cms/default/index.html" target="_blank">
							项目说明 </a></li>
				</ul>
			</div>
		</div>
	</div>


	<div class="main">
		<div class="page-slider">
			<!--LayerSlider begin-->
			<div id="layerslider"
				style="width: 100%; height: 494px; margin: 0 auto;">
				<!--LayerSlider layer-->
				<div class="ls-layer ls-layer1"
					style="slidedirection: right; transition2d: 24, 25, 27, 28;">
					<img src="/E-shop/static/img/banner.jpg" class="ls-bg" alt="特产分会场">
				</div>
			</div>
			<!--LayerSlider end-->
		</div>
		<div class="container">
			<!-- 新品推荐 start -->
			<div class="row margin-bottom-40 margin-top-10">
				<div class="col-md-12 sale-product">

					${user1.getPw()}

					<h2>HOT</h2>
					<div class="bxslider-wrapper">
						<ul class="bxslider" data-slides-phone="1" data-slides-tablet="2"
							data-slides-desktop="5" data-slide-margin="15">
							<c:forEach items="${productList}" var="p1">
								<li>
									<div class="product-item">
										<div class="pi-img-wrapper">
											<img src="/E-shop/${p1.getImage()}" class="img-responsive"
												style="width: 190px; height: 190px;">
											<div>
												<a href="/E-shop/${p1.getImage()}"
													class="btn btn-default fancybox-button">放大</a> <a
													href="${pageContext.request.contextPath }/product.json?id=${p1.getPid() }"
													class="btn btn-default fancybox-fast-view">查看详请</a>
											</div>
										</div>
										<h3>
											<a
												href="${pageContext.request.contextPath }/product.json?id=${p1.getPid() }">${p1.getDescription() }</a>
										</h3>
										<div class="pi-price">￥ ${p1.getPrice() }</div>
										<a
											href="${pageContext.request.contextPath }/product/add2cart.json?pid=${p1.getPid() }"
											class="btn btn-default add2cart" id="${p1.getPid() }">加入购物车</a>
										<div class="sticker sticker-sale"></div>
									</div>
								</li>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>
			<!-- 新品推荐 end -->

			<!-- 分类 && 推荐商品 start -->
			<div class="row margin-bottom-40 ">
				<!-- 分类 start -->
				<div class="sidebar col-md-3 col-sm-4">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix dropdown
            ">
							<a href="javascript:void(0);" class=""> <i
								class="fa fa-angle-right"></i> 男装 <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=9" class="collapsed"> <i
										class="fa fa-circle"></i> T恤 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=8" class="collapsed"> <i
										class="fa fa-circle"></i> 衬衫 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=7" class="collapsed"> <i
										class="fa fa-circle"></i> 裤子 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=6" class="collapsed"> <i
										class="fa fa-circle"></i> 毛衣 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=5" class="collapsed"> <i
										class="fa fa-circle"></i> 开衫 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=4" class="collapsed"> <i
										class="fa fa-circle"></i> 外套 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=3" class="collapsed"> <i
										class="fa fa-circle"></i> 背心 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=2" class="collapsed"> <i
										class="fa fa-circle"></i> 内衣 <i class="fa fa-angle-down"></i>
								</a>
								</li>
							</ul>
						</li>
						<li class="list-group-item clearfix dropdown
            ">
							<a href="javascript:void(0);" class=""> <i
								class="fa fa-angle-right"></i> 女装 <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=37" class="collapsed"> <i
										class="fa fa-circle"></i> T恤<i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=36" class="collapsed"> <i
										class="fa fa-circle"></i> 衬衫 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=38" class="collapsed"> <i
										class="fa fa-circle"></i> 裙·裤 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=39" class="collapsed"> <i
										class="fa fa-circle"></i> 毛衣 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=42" class="collapsed"> <i
										class="fa fa-circle"></i> 开衫 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=41" class="collapsed"> <i
										class="fa fa-circle"></i> 外套 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=40" class="collapsed"> <i
										class="fa fa-circle"></i> 内衣<i class="fa fa-angle-down"></i>
								</a>
								</li>
							</ul>
						</li>
						<li class="list-group-item clearfix dropdown
            ">
							<a href="javascript:void(0);" class=""> <i
								class="fa fa-angle-right"></i> 鞋 <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=20" class="collapsed"> <i
										class="fa fa-circle"></i> 女士鞋 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=12" class="collapsed"> <i
										class="fa fa-circle"></i> 女士休闲鞋<i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=11" class="collapsed"> <i
										class="fa fa-circle"></i> 女士轻便运动鞋 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=13" class="collapsed"> <i
										class="fa fa-circle"></i> 女士靴子 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=14" class="collapsed"> <i
										class="fa fa-circle"></i> 男士鞋 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=15" class="collapsed"> <i
										class="fa fa-circle"></i> 男士休闲鞋 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=25" class="collapsed"> <i
										class="fa fa-circle"></i> 男子轻便运动鞋 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								
								
							</ul>
						</li>
						<li class="list-group-item clearfix dropdown
            ">
							<a href="javascript:void(0);" class=""> <i
								class="fa fa-angle-right"></i> 服装杂饰 <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=50" class="collapsed"> <i
										class="fa fa-circle"></i> 披肩·围巾 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=49" class="collapsed"> <i
										class="fa fa-circle"></i> 帽子 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=48" class="collapsed"> <i
										class="fa fa-circle"></i> 耳罩 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=47" class="collapsed"> <i
										class="fa fa-circle"></i> 钱包 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=46" class="collapsed"> <i
										class="fa fa-circle"></i> 手套 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=45" class="collapsed"> <i
										class="fa fa-circle"></i> 皮带 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=44" class="collapsed"> <i
										class="fa fa-circle"></i> 伞·雨伞 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=44" class="collapsed"> <i
										class="fa fa-circle"></i> 手帕 <i class="fa fa-angle-down"></i>
								</a>
								</li>
							</ul>
						</li>
						<li class="list-group-item clearfix dropdown
            ">
							<a href="javascript:void(0);" class=""> <i
								class="fa fa-angle-right"></i> 幼儿 <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu">
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=34" class="collapsed"> <i
										class="fa fa-circle"></i> 儿童上装 <i class="fa fa-angle-down"></i>
								</a>
								</li>
								<li
									class="list-group-item dropdown clearfix
                            ">
									<a href="/home/list/cat.html?id=33" class="collapsed"> <i
										class="fa fa-circle"></i> 儿童杂货 <i class="fa fa-angle-down"></i>
								</a>
								</li>							
							</ul>
						</li>
					</ul>
				</div>
				<!-- 分类 end -->
				<!-- 推荐商品 start -->
				<div class="col-md-9 col-sm-8">
					<h2>特惠商品</h2>
					<div class="bxslider-wrapper">
						<ul class="bxslider" data-slides-phone="1" data-slides-tablet="2"
							data-slides-desktop="3" data-slide-margin="15">
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-7-81.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-7-81.html">好吃的商品</a>
									</h3>
									<div class="pi-price">￥20.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-4-78.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-4-78.html">雪之恋和风大福</a>
									</h3>
									<div class="pi-price">￥1008.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-9-83.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-9-83.html">雪之恋和风大福</a>
									</h3>
									<div class="pi-price">￥9.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-6-80.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-6-80.html">雪之恋和风大福 </a>
									</h3>
									<div class="pi-price">￥30.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-8-82.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-8-82.html">雪之恋和风大福 </a>
									</h3>
									<div class="pi-price">￥9.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
							<li>
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_m.jpg"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_l.jpg"
												class="btn btn-default fancybox-button">大图</a> <a
												href="/product-5-79.html"
												class="btn btn-default fancybox-fast-view">查看</a>
										</div>
									</div>
									<h3>
										<a href="/product-5-79.html">雪之恋和风大福 </a>
									</h3>
									<div class="pi-price">￥35.000</div>
									<a href="#" class="btn btn-default add2cart">加入购物车</a>
									<div class="sticker sticker-new"></div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- 推荐商品 end -->
			</div>
			<!-- 分类 && 推荐商品 end -->
		</div>
		<!-- 品牌列表 start -->
		<div class="brands">
			<div class="container">
				<div class="row">
					<div class="bxslider-wrapper">
						<ul class="bxslider" data-slides-phone="1" data-slides-tablet="3"
							data-slides-desktop="6" data-slide-margin="15">
							<li><a href=""> <img
									src="/E-shop/static/img/logo/ecco.png"
									alt="ecco" title="ecco">
							</a></li>
							<li><a href=""> <img
									src="/E-shop/static/img/logo/car.png"
									alt="car" title="car">
							</a></li>
							<li><a href=""> <img
									src="/E-shop/static/img/logo/supreme2.png"
									alt="supreme2" title="supreme2">
							</a></li>
							<li><a href=""> <img
									src="/E-shop/static/img/logo/adi.jpg"
									alt="adidas" title="adidas">
							</a></li>
							<li><a href=""> <img
									src="/E-shop/static/img/logo/monkey.jpg"
									alt="monkey" title="monkey">
							</a></li>
							<li><a href=""> <img
									src="/E-shop/static/img/logo/mmm.jpg"
									alt="mmm" title="mmm">
							</a></li>
					
					
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 品牌列表 end -->
		
	</div>

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
	</div>
	<!-- BEGIN PRE-FOOTER -->
	<div class="pre-footer">
		<div class="container">
			<div class="row">
				<!-- BEGIN BOTTOM ABOUT BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>关于我们</h2>
					<p>今年以来基于javaweb开发以E-shop标准化电商软件为基础的电商解决方案，并致力于电商软件的技术创新和平台化运营。</p>
					<p>作为一套正在发展的电商平台技术解决方案，E-shop的每一次升级都专注于垂直电商平台研发。经过两年多的发展，E-shop向着被广大用户和开发者广泛认同和采纳目标奋斗。</p>
				</div>
				<!-- END BOTTOM ABOUT BLOCK -->
				<!-- BEGIN BOTTOM INFO BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>友情链接</h2>
					<ul class="list-unstyled">
						<li><i class="fa fa-angle-right"></i> <a
							href="http://www.baidu.com.cn" target="_blank">百度</a></li>
						<li><i class="fa fa-angle-right"></i> <a
							href="http://www.alipay.com" target="_blank">支付宝</a></li>
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
						微信: Tungtive_<br> QQ: 1183080130<br> Email: <a href="#">1052070500@qq.com</a><br>
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
				<div class="col-md-6 col-sm-6 padding-top-10">2015 ? E
					Shop. ALL Rights Reserved.</div>
				<!-- END COPYRIGHT -->
			</div>
		</div>
	</div>
	<script>
		var web_url = 'http://www.E-shop.com.cn';
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
<script src="/E-shop/static/js/plugins/jquery-1.10.2.min.js"></script>
<script src="/E-shop/static/js/plugins/jquery-migrate-1.2.1.min.js"></script>
<script src="/E-shop/static/js/plugins/bootstrap.min.js"></script>
<script src="/E-shop/static/js/plugins/back-to-top.js"></script>
<script src="/E-shop/static/js/plugins/jquery.slimscroll.min.js"></script>
<script src="/E-shop/static/js/plugins/jquery.fancybox.pack.js"></script>
<script src="/E-shop/static/js/plugins/jquery.bxslider.min.js"></script>
<script src="/E-shop/static/js/plugins/jquery.zoom.min.js"></script>
<script src="/E-shop/static/js/plugins/bootstrap.touchspin.js"></script>
<script src="/E-shop/static/js/plugins/jquery-easing-1.3.js"></script>
<script src="/E-shop/static/js/plugins/jquery-transit-modified.js"></script>
<script src="/E-shop/static/js/plugins/layerslider.transitions.js"></script>
<script
	src="/E-shop/static/js/plugins/layerslider.kreaturamedia.jquery.js"></script>
<script src="/E-shop/static/js/plugins/layer.js"></script>
<script src="/E-shop/static/js/app.js"></script>
<script src="/E-shop/static/js/index.js"></script>
<script src="/E-shop/static/js/init.js"></script>
<script src="/E-shop/static/js/public.js"></script>

<script src="/E-shop/static/js/cart.js"></script>
<script>
	$(document).ready(function(){
		document.getElementById('loading').style.display='none';
	});
</script>
</html>
