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
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/teacher/findTermSign.jsp"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">签到记录</h1>
	</header>
	<div class="mui-content">
		<div class="mui-card">
			<ul class="mui-table-view">
				<li class="mui-table-view-divider">
	    		    ${tName }老师,今天的签到记录如下:
    		    </li>
			</ul>
		</div>
		<c:forEach items="${list }" var="item">
	    	<div class="mui-card">
	    		 <ul class="mui-table-view">
					<li class="mui-table-view-cell">
						<div class="mui-row">
							<div class="mui-col-sm-4" style="padding-right: 20px;">
								 学生姓名<span class="mui-badge mui-badge-warning">${item.studentName}</span>
							</div>
							<div class="mui-col-sm-4" style="padding-right: 20px;">
								学号<span class="mui-badge mui-badge-warning">${item.sno}</span>
							</div>
							<div class="mui-col-sm-4">
								签到<span class="mui-badge mui-badge-warning">${item.count}</span>次
							</div>
						</div>
					 </li>
					<li class="mui-table-view-cell"> 签到时间<span class="mui-badge mui-badge-warning" style="right: 7rem;">${signtime}</span></li>
		        </ul>
	    	</div>
    	</c:forEach>
	</div>
</body>
</html>