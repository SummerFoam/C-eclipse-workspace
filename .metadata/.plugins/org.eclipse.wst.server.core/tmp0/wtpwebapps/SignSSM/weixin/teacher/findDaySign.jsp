<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>查看月签到</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black"> 
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=yes">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath }/layui/css/layui.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/wx.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left user_icon" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp" style="font-size: 0.4rem!important;"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">日签到记录</h1>
	</header>
	
	<div class="mui-content">
		<div class="mui-content-padded">
			<p>请选择签到的时间</p>
			<input type="text" id="showDate" placeholder="请选择时间" style="text-align: center;font-size: 16px;"/>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/laydate/laydate.js"></script>
	<script type="text/javascript">
	    //日期组件
		laydate.render({
		  elem: '#showDate',
		  done:function(value,date){
			  var endData=date.date+1;
			  if(endData<10){
				  endData="0"+endData;
			  }
			  var signtimeEnd=date.year+"-"+date.month+"-"+endData;
			  window.location.href="${pageContext.request.contextPath }/sign/findDaySign?signtimeBegin="+value+"&signtimeEnd="+signtimeEnd;
		  }
		});
	</script>
	
</body>
</html>