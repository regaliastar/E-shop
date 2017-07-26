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
<style>
.wrapper {
	width: 300px;
	margin: 10px auto;
	font: 14px/1.5 arial;
}
/*tab*/
#star {
	overflow: hidden;
}

#star li {
	float: left;
	width: 20px;
	height: 20px;
	margin: 2px;
	display: inline;
	color: #999;
	font: bold 18px arial;
	cursor: pointer
}

#star .act {
	color: #c00
}

#star_word {
	width: 80px;
	height: 30px;
	line-height: 30px;
	border: 1px solid #ccc;
	margin: 10px;
	text-align: center;
	display: none
}
</style>
<!-- Body BEGIN -->
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
			<!-- BEGIN CART  -->
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
			<!-- END CART -->

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

	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="${pageContext.request.contextPath }/index.do">首页</a></li>
				<li><a href="#">服饰</a></li>
				<li class="active">男式</li>
			</ul>
			<div class="row margin-bottom-40">
				<div class="sidebar col-md-3 col-sm-5">

					<div class="sidebar-products clearfix">
						<h2>畅销</h2>

						<c:forEach items="${commendList}" var="p1">
							<div class="item">
								<a
									href="${pageContext.request.contextPath }/product.json?id=${p1.getPid() }"
									target="_blank"> <img src="/E-shop/${p1.getImage()}"
									class="img-responsive" alt="好吃的商品">
								</a>
								<h3>
									<a
										href="${pageContext.request.contextPath }/product.json?id=${p1.getPid() }"
										target="_blank">${p1.getPname()}</a>
								</h3>
								<div class="price">￥${p1.getSalePrice()}</div>
							</div>
						</c:forEach>

					</div>
				</div>

				<div class="col-md-9 col-sm-7">
					<div class="product-page">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<input type="hidden" id="product_id" value="69">
								<div class="product-main-image">

									<img style="height: 300px" src="${product.getImage() }" alt=""
										class="img-responsive" data-BigImgSrc="${product.getImage() }"></img>
									<!--  
                                 <img src="${product.getImage() }"
                                 alt="${product.getDescription() }" class="img-responsive"
                                 data-BigImgSrc="${product.getImage() }">
                                 -->
								</div>
								<div class="product-other-images">
									<a href="#" class="album active"> <img alt=""
										src="${product.getImage() }">
									</a> <a href="#" class="album "> <img alt=""
										src="${product.getImage() }">
									</a>
								</div>
							</div>

							<div class="col-md-6 col-sm-6">
								<h1>${product.getPname() }</h1>
								<input type="hidden" value="69" id="product-id">
								<div class="price-availability-block clearfix">
									<div class="price">
										<strong><span>￥</span>${product.getSalePrice() }</strong> <em>￥<span>${product.getPrice() }</span></em>
									</div>
									<div class="availability">
										库存: <strong>有货</strong>
									</div>
								</div>
								<div class="description">
									<p>${product.getDescription() }</p>
								</div>
								<div class="product-page-cart">
									<div class="product-quantity">
										<input id="product-quantity" type="text" value="1" readonly
											class="form-control input-sm">
									</div>
									<!--  
									<button class="btn btn-primary" id="add-cart" type="button"
										onclick="cart(1,69,$('#product-quantity').val());">加入购物车</button>
									-->
									<a
										href="${pageContext.request.contextPath }/product/add2cart.json?pid=${product.getPid() }"
										class="btn btn-default add2cart" id="${product.getPid() }">加入购物车</a>
									<a class="purchase"
										href="${pageContext.request.contextPath }/product/purchase.json?pid=${product.getPid() }">
										<button class="btn btn-primary" id="purchase" type="button">购买</button>
									</a>
								</div>
								<div class="wrapper">
									用户评价 <span id="result"></span>
									<ul id="star">
										<li>★</li>
										<li>★</li>
										<li>★</li>
										<li>★</li>
										<li>★</li>
									</ul>
									<div id="star_word">一般</div>
								</div>
							</div>


							<div class="product-page-content">
								<ul id="myTab" class="nav nav-tabs">
									<li class="active"><a href="#Description"
										data-toggle="tab">产品介绍</a></li>
									<li><a href="#Information" data-toggle="tab">详细信息</a></li>
									<li><a href="#Reviews" data-toggle="tab">商品评论</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div class="tab-pane fade in active" id="Description">
										
										<p>
											如果您发现商品信息不准确，<a
												href="http://club.360buy.com/jdvote/skucheck.aspx?skuid=10050618790&cid1=1320&cid2=1583&cid3=1590"
												target="_blank">欢迎纠错</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp;
										</p>
										<p>
											&nbsp;&nbsp; <br /> 
											<div class="parent-img">
												<img class="c-img img1"
												src=""
												style="" data-lazyload="done" alt=""
												id="c1246e496c94473d825d443e91c60a46" /><br /> 
												<img
												class="c-img img2"
												src=""
												style="" data-lazyload="done" alt=""
												id="4b5f461da6a64a02b927edd904590be4" /><br /> 
												<img
												class="c-img img3"
												src=""
												style="" data-lazyload="done" alt=""
												id="889daa51cc88400d99efbe86a1d541a4" /><br /> 
												<img
												class="c-img img4"
												src=""
												style="" data-lazyload="done" alt=""
												id="fc3803e7c6eb450dbf13dcb625d201c9" /><br /> 
												<img
												class="c-img img5"
												src=""
												style="" data-lazyload="done" alt=""
												id="e349c86d4fea4d659ed8509d63216284" /><br /> 
											</div>
												
										</p>
									
										<p>
											<br /> 
										</p>
										<img
												src="/E-shop/static/img/zysx.jpg"
												alt="" id="e937328b695946b9877b054dc7061d0b" height="200px"
												width="500px" />
										<p>
											<br />
										</p>
									</div>
									<div class="tab-pane fade" id="Information">
										<table class="datasheet">
											<tr>
												<th colspan="2">详情参数表</th>
											</tr>

											<tr>
												<td class="datasheet-features-type">单位</td>
												<td>g</td>
											</tr>
											<tr>
												<td class="datasheet-features-type">重量</td>
												<td>500.000</td>
											</tr>
										</table>
										<img
												src="/E-shop/static/img/zysx.jpg"
												alt="" id="e937328b695946b9877b054dc7061d0b" height="200px"
												width="500px" />
									</div>
									<div class="tab-pane fade " id="Reviews">
										<!-- BEGIN FORM-->
										<form class="reviews-form">
											<h2>我要评论</h2>
											
											<div class="form-group">
												<label for="review">内容 <span class="require">*</span></label>
												<textarea class="form-control" rows="8" id="review"></textarea>
											</div>
											<div class="padding-top-20">
												<button type="button" class="btn btn-primary"
													id="reviews-send">发送</button>
											</div>
										</form>
										<!-- END FORM-->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
				<div class="col-md-6 col-sm-6 padding-top-10">2015 © Yii2
					Shop. ALL Rights Reserved.</div>
				<!-- END COPYRIGHT -->
			</div>
		</div>
	</div>
	<script>
		var web_url = 'http://www.yiishop.com.cn';
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
	<script src="/E-shop/static/js/plugins/layerslider.kreaturamedia.jquery.js"></script>
	<script src="/E-shop/static/js/plugins/layer.js"></script>
	<script src="/E-shop/static/js/app.js"></script>
	<script src="/E-shop/static/js/index.js"></script>
	<script src="/E-shop/static/js/init.js"></script>
	<script src="/E-shop/static/js/public.js"></script>
	<script src="/E-shop/static/js/main.js"></script>
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
<script>
	$(document).ready(function() {
		document.getElementById('loading').style.display = 'none';
	});
</script>
<script>
	(function() {
		$(".product-quantity").on(
				'click',
				function() {
					var v = $('#product-quantity').val();
					var h = $(".add2cart").attr('href');
					var arr = h.split('?');
					h = arr[1];
					var ah = h.split('&');
					ah[1] = v;
					$(".add2cart").attr(
							"href",
							"/E-shop/product/add2cart.json?" + ah[0] + '&num='
									+ ah[1]);
					$(".purchase").attr(
							"href",
							"/E-shop/product/purchase.json?" + ah[0] + '&num='
									+ ah[1]);
				})
	})();
</script>
<script>
	window.onload = function() {
		var star = document.getElementById("star");
		var star_li = star.getElementsByTagName("li");
		var star_word = document.getElementById("star_word");
		var result = document.getElementById("result");
		var i = 0;
		var j = 0;
		var len = star_li.length;
		var word = [ '很差', '差', '一般', "好", "很好" ]
		for (i = 0; i < len; i++) {
			star_li[i].index = i;
			star_li[i].onmouseover = function() {
				star_word.style.display = "block";
				star_word.innerHTML = word[this.index];
				for (i = 0; i <= this.index; i++) {
					star_li[i].className = "act";
				}
			}
			star_li[i].onmouseout = function() {
				star_word.style.display = "none";
				for (i = 0; i < len; i++) {
					star_li[i].className = "";
				}
			}
			star_li[i].onclick = function() {
				result.innerHTML = (this.index + 1) + "分";
			}
		}
	}
</script>
</html>
