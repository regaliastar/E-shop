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

<!-- Body BEGIN -->
<body>
<div id="loading" ></div>
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
						<div style="width: 400px;height:30px;float:left;top:0px;bottom:0px">
								<form class="bs-example bs-example-form" role="form" method="post" action="${pageContext.request.contextPath }/search.json">
									<div class="input-group" style="height:30px">
										<input name="keyword" id="keyword" style="height:29px" type="text" class="form-control" />
										 <span0
											class="input-group-btn" >
											<button style="height:29px" class="btn btn-default" type="submit">搜索</button>
										</span>
									</div>
								</form>
						</div>
						<ul style="margin-top:5px" class="list-unstyled list-inline pull-right">
							<li><a href="javascript:;" onclick="sign();">签到</a></li>
							<li><a href="#">"${user.uname }"</a></li>
							<li><a href="${pageContext.request.contextPath }/logout.do">注销</a></li>
						</ul>

					</c:when>
					<c:otherwise>
						<div class="col-md-6 col-sm-6 additional-nav">
							
							<div style="width: 400px;height:30px;float:left;top:0px;bottom:0px">
								<form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath }/search.json">
									<div class="input-group" style="height:30px">
										<input name="keyword" id="keyword" style="height:29px" type="text" class="form-control" />
										 <span0
											class="input-group-btn" >
											<button style="height:29px" class="btn btn-default" type="submit">搜索</button>
										</span>
									</div>
								</form>
							</div>
						
							<ul style="margin-top:5px" class="list-unstyled list-inline pull-right">
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
								</a> <span class="cart-content-count">x ${cProduct.getNum()}</span> <strong> <a
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
					<li><a href="#"> 积分商城 </a></li>
					<li><a href="#" > 后台展示 </a></li>

					<li><a href="#" >
							项目说明 </a></li>
				</ul>
			</div>
		</div>
	</div>


	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">购物流程</a></li>
				<li class="active">购物确认</li>
			</ul>
			<div class="row margin-bottom-40">
				<div class="col-md-12 col-sm-12">
					<h1>填写核对订单</h1>
					<!-- 收货地址 -->
					<div id="checkout-page"
						class="panel-group checkout-page accordion scrollable">
						<div class="panel panel-default" id="payment-address">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a class="accordion-toggle" href="#payment-address-content"
										data-parent="#checkout-page" data-toggle="collapse"> 收货人信息
									</a>

								</h2>
							</div>
							<div class="panel-collapse collapse in"
								id="payment-address-content" style="height: auto;">
								<div class="panel-body row form-horizontal">
									<div>
										
										<div class="form-group">
											<div class="col-md-5 control-label">
												<label class="">购买人：${user.getUname() }</label>
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-5 control-label">
												<label class="">详细地址：${ca.getAddr()}</label>
											</div>
											<div class="col-md-4 control-label">
												<label class="">邮政编码：${ca.getZip()}</label>
											</div>                   
										</div>
										<div class="form-group">
											<div class="col-md-5 control-label">
												<label class="">收货人姓名：${ca.getSendName()}</label>
											</div>
											<div class="col-md-4 control-label">
												<label class="">收货人电话：${ca.getSendTel()}</label>
											</div>
										</div>
									</div>
									<button class="btn btn-primary collapsed"
										onclick="location.href='${pageContext.request.contextPath }/set_address.do'">
										修改</button>
									<button class="btn btn-primary collapsed"
										onclick="location.href='${pageContext.request.contextPath }/user/choose_address.json'">
										选择其他</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 配送方式 -->
					<div id="checkout-page"
						class="panel-group checkout-page accordion scrollable">
						<div class="panel panel-default" id="payment-address">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a class="accordion-toggle" href="#payment-address-content"
										data-parent="#checkout-page" data-toggle="collapse"> 快递方式
									</a>

								</h2>
							</div>
							<div class="panel-collapse collapse in"
								id="payment-address-content" style="height: auto;">
								<div class="panel-body row form-horizontal">
									<div>
										<div class="form-group">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-9">
												<div class="radio-list">
													<label> <span> <input type="radio" value="1"
															name="dt_id" checked>
													</span> 普通快递
													</label>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 支付方式 -->
					<div id="checkout-page"
						class="panel-group checkout-page accordion scrollable">
						<div class="panel panel-default" id="payment-address">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a class="accordion-toggle" href="#payment-address-content"
										data-parent="#checkout-page" data-toggle="collapse"> 支付方式
									</a>

								</h2>
							</div>
							<div class="panel-collapse collapse in"
								id="payment-address-content" style="height: auto;">
								<div class="panel-body row form-horizontal">
									<div>
										<div class="form-group">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-9">
												<div class="radio-list">
													<label> <span> <input type="radio"
															value="alipay" name="" checked>
													</span> 支付宝支付
													</label>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 商品列表 -->
					<div id="checkout-page"
						class="panel-group checkout-page accordion scrollable">
						<!-- BEGIN CONFIRM -->
						<div class="panel panel-default" id="confirm">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a class="accordion-toggle" href="#confirm-content"
										data-parent="#checkout-page" data-toggle="collapse"> 商品列表
									</a>
								</h2>
							</div>
							<div class="panel-collapse collapse in" id="confirm-content"
								style="height: auto;">
								<div class="panel-body row">
									<div class="col-md-12 clearfix">
										<div class="table-wrapper-responsive">
											<table>
												<tbody>
													<tr>
														<th class="checkout-image">图片</th>
														<th class="checkout-description">详情</th>
														<th class="checkout-model">规格</th>
														<th class="checkout-quantity">数量</th>
														<th class="checkout-price">单价</th>
														<th class="checkout-total">总价</th>
													</tr>
													<c:forEach items="${productList}" var="product">
													<tr>
														<td class="shopping-image"><a href="" target="_blank">
																<img
																src="${pageContext.request.contextPath }/${product.getImage()}"
																alt="${product.getDescription()}" width="37"
																height="34">
														</a></td>
														<td class="checkout-description">
															<h3>
																<a href="" target="_blank">${product.getDescription()}</a>
															</h3>
															<p></p>
														</td>
														<td class="checkout-model"></td>
														<td class="checkout-quantity">${product.getNum()}</td>
														<td class="checkout-price"><strong><span>￥</span>${product.getSalePrice()}</strong>
														</td>
														<td class="checkout-total"><strong><span>￥</span>${product.getTotlePrice()}</strong>
														</td>
													</tr>
													</c:forEach>
													
												</tbody>
											</table>
										</div>
										<div class="checkout-total-block">
											<ul>
												<li><em>商品总计</em> <strong class="price"><span>￥</span>${totalPrice }</strong>
												</li>
												<li><em>物流费</em> <strong class="price"><span>￥</span>0.00</strong>
												</li>
												<li class="shopping-total-price"><em>总价</em> <strong
													class="price"><span>￥</span>${totalPrice }</strong></li>
											</ul>
										</div>
										<div class="clearfix"></div>
										<button id="button-confirm" type="submit"
											class="btn btn-primary pull-right"
											onclick="location.href='${pageContext.request.contextPath }/product/checkout.do?price=${totalPrice }'">提交订单</button>
										<button class="btn btn-default pull-right margin-right-20"
											type="button"
											onclick="location.href='${pageContext.request.contextPath }/index.do'" target="_blank">继续购物</button>
									</div>
								</div>
							</div>
						</div>
						<!-- END CONFIRM -->
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
