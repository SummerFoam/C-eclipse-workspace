<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
</head>
<body>
<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
<script type="text/javascript">
	mui.alert("今天没有签到记录，请重新选择时间","每日签到","确定",function(){
		window.location.href="${pageContext.request.contextPath }/weixin/teacher/findDaySign.jsp";
	});
</script>
</body>
</html>