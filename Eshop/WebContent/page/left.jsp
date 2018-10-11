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
	<ul class="am-list admin-sidebar-list" id="collapase-nav-1">
	    <li class="am-panel">
		    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#user-nav'}">
		        <i class="am-icon-users am-margin-left-sm"></i> 商品管理 <i class="am-icon-angle-right am-fr am-margin-right"></i>
		    </a>
		    <ul class="am-list am-collapse admin-sidebar-sub" id="user-nav">
		        <li><a href="${pageContext.request.contextPath }/goods/findAll" target="myIframe"><i class="am-icon-user am-margin-left-sm"></i> 查询商品 </a></li>
		        <li><a href="${pageContext.request.contextPath }/page/add.jsp" target="myIframe"><i class="am-icon-user am-margin-left-sm"></i> 添加商品 </a></li>
		    </ul>
	    </li>

  <li class="am-panel">
    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#company-nav'}">
        <i class="am-icon-table am-margin-left-sm"></i>订单管理 <i class="am-icon-angle-right am-fr am-margin-right"></i>
    </a>
    <ul class="am-list am-collapse admin-sidebar-sub" id="company-nav">
        <li><a href="${pageContext.request.contextPath }/orders/allOrders" target="myIframe"><span class="am-icon-table am-margin-left-sm"></span>查看订单</a></li>
    </ul>
  </li>

  <li class="am-panel">
    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#role-nav'}">
        <i class="am-icon-table am-margin-left-sm"></i> 订单项管理 <i class="am-icon-angle-right am-fr am-margin-right"></i>
    </a>
    <ul class="am-list am-collapse admin-sidebar-sub" id="role-nav">
        <li><a href="${pageContext.request.contextPath }/orderItems/allItems" target="myIframe"><span class="am-icon-table am-margin-left-sm"></span>查看订单详情</a></li>
    </ul>
  </li>
</ul>
<script src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/amazeui.min.js"></script>
</body>
</html>