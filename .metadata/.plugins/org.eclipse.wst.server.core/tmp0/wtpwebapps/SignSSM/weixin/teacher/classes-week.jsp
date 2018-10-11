<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>班级列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">班级列表</h1>
	</header>
	<div class="mui-content">
		<div class="title" style="background: #3FEC6D;padding: 5px;color: #fff;">请选择班级查询</div>
			<ul class="mui-table-view">
				<c:forEach items="${list }" var="item">
					<input type="hidden" name="id" value="${item.id }"/>
					<li class="mui-table-view-cell">
						<a class="mui-navigate-right" href="${pageContext.request.contextPath }/sign/weekSign?classId=${item.id }">${item.name }</a>
					</li>
				</c:forEach>
		   </ul>
	</div>
</body>
</html>