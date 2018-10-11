<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <title>Hello Amaze UI</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="icon" type="image/png" href="assets/i/favicon.png">

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  <meta name="msapplication-TileColor" content="#0e90d2">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/amazeui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/app.css">
</head>
<body>
	<header class="am-topbar am-topbar-inverse">
		<h1 class="am-topbar-brand">
		    <a href="#">订单管理系统</a>
		</h1>

  		<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

		<div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
		    <ul class="am-nav am-nav-pills am-topbar-nav">
		      <li class="am-active"><a href="#">首页</a></li>
		      <li><a href="#">项目</a></li>
		    </ul>
		
		    <form class="am-topbar-form am-topbar-left am-form-inline" role="search">
		      <div class="am-form-group">
		        <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
		      </div>
		    </form>
		
		   
		
		    <div class="am-topbar-right">
		      <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
		    </div>
		</div>
</header>
<script src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/amazeui.min.js"></script>
</body>
</html>