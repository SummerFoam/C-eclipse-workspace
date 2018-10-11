<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>签到记录</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.picker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.poppicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/wx.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left user_icon" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp" style="font-size: 0.4rem!important;"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">学期签到记录</h1>
	</header>
	<div class="mui-content">
		<div class="mui-content-padded">
				<button id='showYearPicker' class="mui-btn mui-btn-block" type='button'>请选择学期</button>
		</div>
	</div>
	
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.picker.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.poppicker.js"></script>
	<script>
	(function($, doc) {
		$.init();
		$.ready(function() {
			//普通示例
			var yearPicker = new $.PopPicker();
			var cityData=([{
				value: 2017,
				text: '2017',
				 children: [{
					 //2017-02-01 === 2017-08-01
	                value:'1485878400,1501516800',
	                text: "上半学期"
		        },{
		        	//2017-09-01 === 2018-01-30
		        	 value:'1504195200,1517241600',
		             text: "下半学期"
		        }]
			}, {
				value: 2018,
				text: '2018',
				 children: [{
		                value:'1517414400,1533052800',
		                text: "上半学期"
			        },{
			        	 value:'1535731200,1548777600',
			             text: "下半学期"
			        }]
			}, {
				value: 2019,
				text: '2019',
				 children: [{
		                value:'1548950400,1564588800',
		                text: "上半学期"
			        },{
			        	 value:'1567267200,1580313600',
			             text: "下半学期"
			        }]
			}, {
				value: 2020,
				text: '2020'
			}, {
				value: 2021,
				text: '2021'
			}, {
				value: 2022,
				text: '2022'
			}]);
			//级联示例
			var yearPicker = new $.PopPicker({
				layer: 2
			});
			yearPicker.setData(cityData);
			var showYearPickerButton = doc.getElementById('showYearPicker');
			showYearPickerButton.addEventListener('tap', function(event) {
				yearPicker.show(function(items) {
					var signtime=items[1].value;
					showYearPickerButton.innerText = "你选择的学期是:" + items[0].text + " " + items[1].text;
					window.location.href="${pageContext.request.contextPath}/sign/findTermSign?signtime="+signtime;
				});
			}, false);
			
		});
	})(mui, document);
	</script>
</body>
</html>