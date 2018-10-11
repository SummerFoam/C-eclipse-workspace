<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>扫码签到</title>
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
			<h1 class="mui-title">教学安排</h1>
		</header>
		<div class="mui-content">
		    <div class="mui-card">
		    	<c:forEach items="${list }" var="item">
		    		 <ul class="mui-table-view">
		    		    <li class="mui-table-view-divider">
			    		    ${item.tname }老师,你的教学安排任务如下:
		    		    </li>
						<li class="mui-table-view-cell">班级地点 <span class="mui-badge mui-badge-primary">${item.croname }</span></li>
						<li class="mui-table-view-cell"> 班级名称 <span class="mui-badge mui-badge-success">${item.address}</span></li>
						<li class="mui-table-view-cell"> 课程名称<span class="mui-badge mui-badge-warning">${item.couname}</span></li>
						<li class="mui-table-view-cell"> 课时<span class="mui-badge mui-badge-purple">${item.course_count}</span></li>
						<li class="mui-table-view-cell" style="color:#ccc;">安排时间:${create_time }</li>
			        </ul>
		    	</c:forEach>
		       
		    </div>
		</div>
		
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	</body>
	
</html>