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
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/wx.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/teacher.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-user user_icon"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">个人中心</h1>
	</header>
	<div class="mui-content">
		<div class="bg">
			<img src="${pageContext.request.contextPath }/images/st1.jpg" class="bg-img"/>
			<div class="head-info">
				<div class="pd-bto"><img src="${user.headimg }" class="head-img" width="60" height="60" /></div>
				<div class="pd-bto">${user.nickname }</div>
				<div class="pd-bto">
					<span class="fa fa-address-card-o"></span>
					<c:if test="${user.type == 1 }">
						<span class="font-12-size" style="color: #fc681f;">教师</span>
					</c:if>
				</div>
			</div>
		</div>
		<div class="mui-card">
	        <ul class="mui-table-view">
	         <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="${pageContext.request.contextPath }/teacher/findByUserId">
	                	<span class="fa fa-address-book-o" style="color:#ff8d29"></span>
	                    <span class="mui-badge mui-badge-danger">去设置</span>
	                   	<span style="padding-left: .5rem;">个人信息</span>
	                </a>
	            </li>
	        </ul>
	    </div>
	    <div class="mui-card">
	    	 <ul class="mui-table-view">
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="${pageContext.request.contextPath }/teacher/findCourseAndCroom">
	                	<span class="fa fa-calendar-plus-o" style="color:#40c1df"></span>
	                    <span class="mui-badge mui-badge-primary">查看</span>
	                   	<span style="padding-left: .5rem;">教学安排</span>
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="${pageContext.request.contextPath }/weixin/teacher/tch_create.jsp">
	                	<span class="fa fa-fax" style="color:#22EA8F"></span>
	                    <span class="mui-badge mui-badge-danger">生成二维码</span>
	                   	<span style="padding-left: .5rem;">扫码签到</span>
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="${pageContext.request.contextPath }/weixin/teacher/findSign.jsp">
	                	<span class="fa fa-check-square-o" style="color:#40c1df"></span>
	                    <span class="mui-badge mui-badge-primary">查看</span>
	                   	<span style="padding-left: .5rem;">本节课程签到</span>
	                </a>
	            </li>
	        </ul>
	    </div>
	</div>
	<nav class="mui-bar mui-bar-tab">
		<a class="mui-tab-item mui-active" href="${pageContext.request.contextPath }/teacher/tch_personal">
			<span class="mui-icon mui-icon-home"></span>
			<span class="mui-tab-label">首页</span>
		</a>
		<a class="mui-tab-item" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp">
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