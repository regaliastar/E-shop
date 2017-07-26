<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>

<%@ page import="edu.scdx.entity.User"%>
<%@ page import="edu.scdx.entity.Product"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<meta charset="utf-8">
<title>E-shop</title>

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
<body>
	<div id="loading"></div>
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline">
						<li><i class="fa fa-phone"></i><span>555-5555-5555</span></li>
						<!-- BEGIN LANGS -->
						<li class="langs-block"><a href="javascript:void(0);"
							class="current">关注微信 <i class="fa fa-angle-down"></i></a>
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
					<a href="javascript:void(0);" class="cart-info-count">${cartProductNum}个商品</a>
					<a href="javascript:void(0);" class="cart-info-value">￥${cartProductPrice}</a>
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
								</a> <span class="cart-content-count">x ${cProduct.getNum()}</span>
									<strong> <a
										href="${pageContext.request.contextPath }/product.json?id=${cProduct.getPid() }">${cProduct.getDescription()}
									</a>
								</strong> <em>￥${cProduct.getSalePrice()}</em> <a class="del-goods"
									href="${pageContext.request.contextPath }/product/deleteCart.json?cid=${cProduct.getCid() }">
										<i class="fa fa-times"></i>
								</a></li>
							</c:forEach>
						</ul>
						<div class="text-right">
							<a href="#" class="btn btn-default">查看购物车</a> <a
								href="${pageContext.request.contextPath }/product/purchaseFromCart.do"
								class="btn btn-primary">结算</a>
						</div>
					</div>
				</div>
				<!-- END CART CONTENT -->

			</div>
			<div class="collapse navbar-collapse mega-menu">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath }/index.do">
							首页 </a></li>
					<li><a href="#"> 积分商城 </a></li>
					<li><a href="#"> 后台展示 </a></li>

					<li><a href="#"> 项目说明 </a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<p>商品展示</p>

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
							href="${pageContext.request.contextPath }/product.json?id=${p1.getPid() }">${p1.getShortDescription() }</a>
					</h3>
					<div class="pi-price">￥ ${p1.getSalePrice() }</div>
					<a
						href="${pageContext.request.contextPath }/product/add2cart.json?pid=${p1.getPid() }"
						class="btn btn-default add2cart" id="${p1.getPid() }">加入购物车</a>
					<div class="sticker sticker-sale"></div>
				</div>
			</li>
		</c:forEach>

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
				<div class="col-md-6 col-sm-6 padding-top-10">2015 © Yii2
					Shop. ALL Rights Reserved.</div>
				<!-- END COPYRIGHT -->
			</div>
		</div>
	</div>

</body>
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