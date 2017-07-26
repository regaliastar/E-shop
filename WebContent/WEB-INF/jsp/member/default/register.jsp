<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="edu.scdx.entity.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
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
						<li><i class="fa fa-phone"></i><span>137-9542-3417</span></li>
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
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath }/index.do" class="navbar-brand">
                <img src="/E-shop/static/img/logo.png" style="width:129px; height: 29px;" alt="Metronic Shop UI">
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
                    <a href="${pageContext.request.contextPath }/index.do">
                        首页
                    </a>
                </li>
                <li>
                    <a href="#">
                        积分商城
                    </a>
                </li>
                <li>
                    <a href="#" >
                        后台展示
                    </a>
                </li>

                <li>
                    <a href="#" >
                        项目说明
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

    <div class="main">
    <div class="container">
    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath }/index.do">首页</a></li>
        <li><a href="#">会员中心</a></li>
        <li class="active">注册</li>
    </ul>
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
        <!-- BEGIN SIDEBAR -->
        <div class="sidebar col-md-2">
    <ul class="list-group margin-bottom-25 sidebar-menu">
                <li class="list-group-item clearfix
            active        "><a href="#">
            <i class="fa fa-angle-right"></i>登录/注册</a>
        </li>
                <li class="list-group-item clearfix
         ">
            <a href="#"><i class="fa fa-angle-right"></i>我的帐号</a>
        </li>
        <li class="list-group-item clearfix
        ">
            <a href="#"><i class="fa fa-angle-right"></i> 收货地址</a></li>
        <li class="list-group-item clearfix
        ">
            <a href="#">
                <i class="fa fa-angle-right"></i> 我的订单</a></li>
        <li class="list-group-item clearfix
        ">
            <a href="#">
                <i class="fa fa-angle-right"></i> 我的积分</a></li>
        <li class="list-group-item clearfix
        ">
            <a href="#">
                <i class="fa fa-angle-right"></i> 我的签到</a></li>
        <li class="list-group-item clearfix ">
            <a href="#"><i class="fa fa-angle-right"></i> 重置密码</a></li>
    </ul>
</div>        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->
        <div class="col-md-9 col-sm-9">
            <h1>新用户注册</h1>
            <div class="content-form-page">
                <div class="row">
                    <div class="col-md-7 col-sm-7">
                        <form class="form-horizontal form-register" method="post" action="${pageContext.request.contextPath }/user/register.json">
                            <fieldset>
                                <legend>个人信息</legend>
                                <div class="form-group">
                                    <label for="email" class="col-lg-4 control-label">用户名 <span class="require">*</span></label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" value="" id="uname" name="uname">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="col-lg-4 control-label">密码 <span class="require">*</span></label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" value="" id="pw" name="pw">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm-password" class="col-lg-4 control-label">确认密码 <span class="require">*</span></label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" value="" id="cp" name="cp">
                                    </div>
                                    <p class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20" style="color:red">${wrongMsg }</p>
                                </div>
                                
                            </fieldset>
                            
                            <fieldset>
                              
                                <div class="checkbox form-group">
                                    <label>
                                        <div class="col-lg-4 col-sm-4"></div>
                                        <div class="col-lg-8 col-sm-8">
                                            <a>用户协议</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" id="licence" value="1">我已看过并接受
                                        </div>
                                    </label>
                                </div>
                            </fieldset>
                            <div class="row">
                                <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                    <input type="hidden" class="request-csrf" name="_csrf" value="ZW1kZWJhR3k2Dwg0FCIKQFY6UCMWMXA.PBVcLBYFMw80IQwQBwxyCQ==" />
                                    <button id="register" type="submit" class="btn btn-primary member-reg">立即注册</button>
                                    <button type="button" class="btn btn-default">重置</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4 col-sm-4 pull-right">
                        <div class="form-info">
                            <h2><em>提示</em> 信息</h2>
                            <p>本网站禁止制作、复制、发布、传播等具有反动、色情、暴力、淫秽等内容的信息，一经发现，立即删除。若您因此触犯法律，我们对此不承担任何法律责任。 </p>

                            <button type="button" class="btn btn-default">更多详情</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
</div>    </div>

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
            <div class="col-md-6 col-sm-6 padding-top-10">
                2015 © Yii2 Shop. ALL Rights Reserved.
            </div>
            <!-- END COPYRIGHT -->
        </div>
    </div>
</div>    <script>
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

<script src="/E-shop/static/js/register.js"></script>
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
