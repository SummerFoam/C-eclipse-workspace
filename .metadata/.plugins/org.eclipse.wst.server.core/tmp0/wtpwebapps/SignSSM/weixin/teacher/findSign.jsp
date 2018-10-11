<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>签到记录</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<!--æ åmui.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath }/css/mui.picker.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/mui.poppicker.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/teacher/tch_personal"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">签到记录</h1>
	</header>
<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
<script type="text/javascript">
	mui.alert("请您在两小时之内查看","签到记录","确定",function(){
		window.location.href="${pageContext.request.contextPath }/sign/findCurrent";
	});
</script>
</body>
</html>