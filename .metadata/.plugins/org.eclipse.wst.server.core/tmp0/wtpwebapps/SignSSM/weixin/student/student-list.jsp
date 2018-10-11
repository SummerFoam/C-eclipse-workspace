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
<title>学生列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">学生列表</h1>
	</header>
	<div class="mui-content">
		<div class="title" style="background: #EFB5EF;padding: 5px;color:#fff;">
			<div class="mui-row">
				<div class="mui-col-sm-3 mui-col-xs-3" style="padding-top: 8px;"><span>学生列表</span></div>
				<div class="mui-col-sm-8 mui-col-xs-8"><button style="color: #fff;border: 1px solid #fff;" type="button" class="mui-btn mui-btn-outlined">共${studentCount}人</button></div>
			</div>
		
			
		</div>
			<ul class="mui-table-view">
				<c:forEach items="${list }" var="item">
					<input type="hidden" name="id" value="${item.stuId }"/>
					<li class="mui-table-view-cell">
						<div class="mui-row">
							<div class="mui-col-sm-3 mui-col-xs-3"><img src="${item.headimg }" width="45" height="45" style="border-radius:5px;"/></div>
						<div class="mui-col-sm-8 mui-col-xs-8">
							<div class="mui-row">
								<div class="mui-col-sm-2 mui-col-xs-2 stu-card"><span class="fa fa-address-book"></span></div>
								<div class="mui-col-sm-8 mui-col-xs-8"><span style="color:#000;">${item.name }</span></div>
							</div>
							<div class="mui-row" style="padding-top: 5px;">
								<div class="mui-col-sm-12 mui-col-xs-12"><span style="color:#CACACA;">学号:${item.sno }</span></div>
							</div>
						</div>
						</div>
						
					</li>
				</c:forEach>
		   </ul>
	</div>
</body>
</html>