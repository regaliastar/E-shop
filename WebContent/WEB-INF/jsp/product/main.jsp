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
<title>Yiishop-基于PHP商城系统 |B2C商城|Yii商城|强大的yiishop shop b2c商城</title>
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
						<li><i class="fa fa-phone"></i><span>137-9542-3417</span></li>
						<!-- BEGIN LANGS -->
						<li class="langs-block"><a href="javascript:void(0);"
							class="current">关注Yiishop微信 <i class="fa fa-angle-down"></i></a>
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
					<a href="javascript:void(0);" class="cart-info-count">0个商品</a> <a
						href="javascript:void(0);" class="cart-info-value">￥0.00</a>
				</div>
				<i class="fa fa-shopping-cart"></i>
				<!-- BEGIN CART CONTENT -->
				<div class="cart-content-wrapper">
					<div class="cart-content">
						<ul class="scroller" style="height: 250px;">
						</ul>
						<div class="text-right">
							<a href="/cart/default/index.html" class="btn btn-default">查看购物车</a>
							<a href="/order/check/index.html" " class="btn btn-primary">结算</a>
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
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="/">首页</a></li>
				<li><a href="/home/list/cat.html?id=1">特产零食</a></li>
				<li class="active">螺蛳粉</li>
			</ul>
			<div class="row margin-bottom-40">
				<div class="sidebar col-md-3 col-sm-5">

					<div class="sidebar-products clearfix">
						<h2>畅销</h2>

						<div class="item">
							<a href="/product-7-81.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645968374562_m.jpg"
								class="img-responsive" alt="好吃的商品">
							</a>
							<h3>
								<a href="/product-7-81.html" target="_blank">好吃的商品</a>
							</h3>
							<div class="price">￥20.00</div>
						</div>
						<div class="item">
							<a href="/product-4-78.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645834935373_m.jpg"
								class="img-responsive" alt="雪之恋和风大福">
							</a>
							<h3>
								<a href="/product-4-78.html" target="_blank">雪之恋和风大福</a>
							</h3>
							<div class="price">￥1,008.00</div>
						</div>
						<div class="item">
							<a href="/product-9-83.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645972851038_m.jpg"
								class="img-responsive" alt="雪之恋和风大福">
							</a>
							<h3>
								<a href="/product-9-83.html" target="_blank">雪之恋和风大福</a>
							</h3>
							<div class="price">￥9.00</div>
						</div>
						<div class="item">
							<a href="/product-6-80.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645963086748_m.jpg"
								class="img-responsive" alt="雪之恋和风大福 ">
							</a>
							<h3>
								<a href="/product-6-80.html" target="_blank">雪之恋和风大福 </a>
							</h3>
							<div class="price">￥30.00</div>
						</div>
						<div class="item">
							<a href="/product-8-82.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645971269008_m.jpg"
								class="img-responsive" alt="雪之恋和风大福 ">
							</a>
							<h3>
								<a href="/product-8-82.html" target="_blank">雪之恋和风大福 </a>
							</h3>
							<div class="price">￥9.00</div>
						</div>
						<div class="item">
							<a href="/product-5-79.html" target="_blank"> <img
								src="http://www.yiishop.com.cn/images/goods/20160530/14645960158890_m.jpg"
								class="img-responsive" alt="雪之恋和风大福 ">
							</a>
							<h3>
								<a href="/product-5-79.html" target="_blank">雪之恋和风大福 </a>
							</h3>
							<div class="price">￥35.00</div>
						</div>
					</div>
				</div>

				<div class="col-md-9 col-sm-7">
					<div class="product-page">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<input type="hidden" id="product_id" value="69">
								<div class="product-main-image">

									<img
										src="http://www.yiishop.com.cn/images/goods/20160517/14634956908524_m.jpg"
										alt="重庆武隆特产羊角豆干 香菇豆干散装称重 休闲零食 烧烤味500g" class="img-responsive"
										data-BigImgSrc="http://www.yiishop.com.cn/images/goods/20160517/14634956908524_l.jpg">
									<!--  
                                 <img src="${product.getImage() }"
                                 alt="${product.getDescription() }" class="img-responsive"
                                 data-BigImgSrc="${product.getImage() }">
                                 -->
								</div>
								<div class="product-other-images">
									<a href="#" class="album active"> <img
										alt="${product.getDescription() }"
										src="${product.getDescription() }">
									</a> <a href="#" class="album "> <img
										alt="${product.getDescription() }"
										src="${product.getDescription() }">
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
									<button class="btn btn-primary" id="add-cart" type="button"
										onclick="cart(1,69,$('#product-quantity').val());">加入购物车</button>
								</div>
								<a href="${pageContext.request.contextPath }/product/purchase.json?pid=${product.getPid() }" >
									<button class="btn btn-primary" id="purchase" type="button">购买</button>
								</a>
							</div>

							<div class="product-page-content">
								<ul id="myTab" class="nav nav-tabs">
									<li class="active"><a href="#Description"
										data-toggle="tab">产品介绍</a></li>
									<li><a href="#Information" data-toggle="tab">详细信息</a></li>
									<li><a href="#Reviews" data-toggle="tab">商品咨询</a></li>
								</ul>
								<div id="myTabContent" class="tab-content">
									<div class="tab-pane fade in active" id="Description">
										<p>
											<br />
											<br />
											<br />
											<img
												src="http://img30.360buyimg.com/popWaterMark/jfs/t2899/96/785540063/84873/7dd2ea83/5725a287Nee68350c.jpg"
												alt="" id="355fe004b1ef4d58bf18bc53261fcf79
" /><br />
											<map name="Map" id="Map"></map>
										</p>
										<p>
											如果您发现商品信息不准确，<a
												href="http://club.360buy.com/jdvote/skucheck.aspx?skuid=10050618790&cid1=1320&cid2=1583&cid3=1590"
												target="_blank">欢迎纠错</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp;
										</p>
										<p>
											&nbsp;&nbsp; <br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2593/244/744599559/108877/987cef6/57242520N4947b919.jpg"
												style="" data-lazyload="done" alt=""
												id="c1246e496c94473d825d443e91c60a46" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2809/338/759302820/486955/9c9cac8c/57242521Nadace616.jpg"
												style="" data-lazyload="done" alt=""
												id="4b5f461da6a64a02b927edd904590be4" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2824/135/746825649/173990/f1e425ea/57242521Nf1441e96.jpg"
												style="" data-lazyload="done" alt=""
												id="889daa51cc88400d99efbe86a1d541a4" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2674/226/763170197/170991/e5f1ed7/57242523N6244bead.jpg"
												style="" data-lazyload="done" alt=""
												id="fc3803e7c6eb450dbf13dcb625d201c9" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2890/77/726614673/187817/854e933c/57242523N964d1647.jpg"
												style="" data-lazyload="done" alt=""
												id="e349c86d4fea4d659ed8509d63216284" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2896/96/733849843/491004/c98c2f5a/57242525Nfd8439c5.jpg"
												style="" data-lazyload="done" alt=""
												id="7ce86879e7c246ab8acad9988a89f3fb" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2689/294/729011705/635012/7be039f7/57242528N0eae631f.jpg"
												style="" data-lazyload="done" alt=""
												id="e9c3390dc1a84a638848b60796e2f3e5" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2815/291/761342727/409534/6434d465/5724252aN646dae57.jpg"
												style="" data-lazyload="done" alt=""
												id="cf5c17c785124beaa4b9081c4233500b" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2872/77/740604146/266517/a989e28b/5724252cN165616ea.jpg"
												style="" data-lazyload="done" alt=""
												id="ac50323b3a1d47c2a431c075afd81297" /><br />
											<img class=""
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2689/319/745590552/141085/69225876/57242537N4ff703f2.jpg"
												style="" data-lazyload="done" alt=""
												id="de4fdfb98e2046d5a47bbd9b9e0fb4e8" /><br />
										</p>
										<p>
											<br />&nbsp; <br /> &nbsp;&nbsp; <br /> &nbsp;&nbsp; <br />
											&nbsp;&nbsp; <br /> &nbsp;&nbsp; <br /> &nbsp;&nbsp; <br />
											&nbsp;&nbsp; <br /> &nbsp;&nbsp; <br /> &nbsp;&nbsp; <br />
											&nbsp;&nbsp; <br /> &nbsp;&nbsp; <br /> &nbsp;&nbsp; <br />&nbsp;
											<br />&nbsp; <br />&nbsp; <br />&nbsp; <br />&nbsp; <br />&nbsp;
											<br />&nbsp; <br />&nbsp; <br /> <br /> <br />&nbsp; <br />&nbsp;
											<br />&nbsp; <br />&nbsp; <br />&nbsp; <br /> <br />
										</p>
										<p>
											<br />
										</p>
										<p>
											<br />
										</p>
										<p>
											<br />
										</p>
										<p>
											<br />
											<img
												src="http://img30.360buyimg.com/popWareDetail/jfs/t2827/23/720177116/94957/febeb0f6/5722f4beN0b0b71f0.jpg"
												alt="" id="e937328b695946b9877b054dc7061d0b" height="1039"
												width="750" />
										</p>
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
									</div>
									<div class="tab-pane fade " id="Reviews">
										<!-- BEGIN FORM-->
										<form class="reviews-form">
											<h2>我要咨询</h2>
											<div class="form-group">
												<label for="name">姓名 <span class="require">*</span></label>
												<input type="text" class="form-control" id="name">
											</div>
											<div class="form-group">
												<label for="email">邮箱</label> <input type="text"
													class="form-control" id="email">
											</div>
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
					<p>今年以来基于Yii2开发以Yiishop标准化电商软件为基础的电商解决方案，并致力于电商软件的技术创新和平台化运营。</p>
					<p>作为一套正在发展的电商平台技术解决方案，Yiishop的每一次升级都专注于垂直电商平台研发。经过两年多的发展，Yiishop向着被广大用户和开发者广泛认同和采纳目标奋斗。</p>
				</div>
				<!-- END BOTTOM ABOUT BLOCK -->
				<!-- BEGIN BOTTOM INFO BLOCK -->
				<div class="col-md-3 col-sm-6 pre-footer-col">
					<h2>友情链接</h2>
					<ul class="list-unstyled">
						<li><i class="fa fa-angle-right"></i> <a
							href="http://www.yiishop.com.cn" target="_blank">YiiShop</a></li>
						<li><i class="fa fa-angle-right"></i> <a
							href="http://www.yii-china.com" target="_blank">Yii-china</a></li>
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
						微信: chenfh08054<br> QQ: 843958575<br> Email: <a href="#">chenfh08054@163.com</a><br>
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
	<script
		src="/E-shop/static/js/plugins/layerslider.kreaturamedia.jquery.js"></script>
	<script src="/E-shop/static/js/plugins/layer.js"></script>
	<script src="/E-shop/static/js/app.js"></script>
	<script src="/E-shop/static/js/index.js"></script>
	<script src="/E-shop/static/js/init.js"></script>
	<script src="/E-shop/static/js/public.js"></script>
	<script src="/web/themes/web/js/product.js"></script>
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
	$(document).ready(function(){
		document.getElementById('loading').style.display='none';
	});
</script>
</html>
