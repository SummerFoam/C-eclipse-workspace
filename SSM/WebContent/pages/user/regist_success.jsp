<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>东软睿道会员注册页面</title>
<link type="text/css" rel="stylesheet" href="../../static/css/style.css" >
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body>
		<div id="header">
				<img class="logo_img" alt="" src="${pageContext.request.contextPath}/static/img/logo.gif" >
				<span class="wel_word"></span>
				<div>
					<span>欢迎<span class="um_span">孙悟空</span>光临东软睿道书城</span>
					<a href="${pageContext.request.contextPath}/order/order.html">我的订单</a>
					<a href="${pageContext.request.contextPath}/index.html">注销</a>&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/index.html">返回</a>
				</div>
		</div>
		
		<div id="main">
		
			<h1>注册成功! <a href="${pageContext.request.contextPath}/index.html">转到主页</a></h1>
	
		</div>
		
		<div id="bottom">
			<span>
				东软睿道书城.Copyright &copy;2015
			</span>
		</div>
</body>
</html>