<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>扫码签到</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<!--标准mui.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sign.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/teacher/tch_personal"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">功能</h1>
	</header>
	<div class="mui-content">
		<div class="info_img head">
			<div class="bg-shadow">
				<img src="${user.headimg }" width="60" height="60" />
			</div>
			<div class="nickname"><span>${user.nickname }</span></div>
		</div>
	</div>
	<div class="">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/arrange/findClasses">
	               <span class="fa fa-newspaper-o pic_stu"></span>
	               <div class="mui-media-body">班级学生列表</div>
	            </a>
             </li>
             <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/weixin/teacher/findSign.jsp">
	               <span class="fa fa-check-square-o pic_curr"></span>
	               <div class="mui-media-body">本节课程签到</div>
	            </a>
             </li>
             <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/weixin/teacher/findDaySign.jsp">
	               <span class="fa fa-calendar-check-o pin_month"></span>
	               <div class="mui-media-body">每日签到统计</div>
	            </a>
             </li>
              <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/sign/findClassesByTeaId">
	               <span class="fa fa fa-calendar pin_week"></span>
	               <div class="mui-media-body">周签到统计</div>
	            </a>
             </li>
             <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/weixin/teacher/findTermSign.jsp"">
	               <span class="fa fa-caret-square-o-right pic_term"></span>
	               <div class="mui-media-body">学期签到统计</div>
	            </a>
             </li>
             <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/weixin/teacher/random.jsp">
	               <span class="fa fa-random pic_random"></span>
	               <div class="mui-media-body">随机抽查</div>
	            </a>
             </li><li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
	            <a href="${pageContext.request.contextPath }/sign/absent">
	               <span class="fa fa-calendar-times-o pic_absence"></span>
	               <div class="mui-media-body">缺勤统计</div>
	            </a>
             </li>
             
        </ul> 
	</div>
	
	<nav class="mui-bar mui-bar-tab">
		<a class="mui-tab-item" href="${pageContext.request.contextPath }/teacher/tch_personal">
			<span class="mui-icon mui-icon-home"></span>
			<span class="mui-tab-label">首页</span>
		</a>
		<a class="mui-tab-item  mui-active" href="${pageContext.request.contextPath }/teacher/tch_personal">
			<span class="mui-icon fa fa-th-large"></span>
			<span class="mui-tab-label">功能</span>
		</a>
		<a class="mui-tab-item" href="${pageContext.request.contextPath }/teacher/tch_personal">
			<span class="mui-icon mui-icon-undo"></span>
			<span class="mui-tab-label">返回</span>
		</a>
	</nav>
</body>
</html>