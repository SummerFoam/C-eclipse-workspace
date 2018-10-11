<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE>
<html>
<head>
	<title>Insert title here</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/code.css">

</head>
<body class="mui-android mui-android-6 mui-android-6-0" style="padding-left:20px;padding-right:20px;">
	<header class="mui-bar mui-bar-nav">
	<a class="fa fa-arrow-left arrow" href="${pageContext.request.contextPath}/teacher/findTask"></a>
		<h1 class="mui-title">二维码卡片</h1>
		<a id="info" class="mui-icon mui-icon-info-filled mui-pull-right" style="color: #999;"></a>
	</header>
	<div class="mui-content" id="cont">
		<div class="mui-row top_pd">
			<div class="mui-col-sm-2 mui-col-xs-2 pd">
				<img src="${headimg }" style="width:50px;height: 50px;"/>
			</div>
			<div class="mui-col-sm-10 mui-col-xs-10 pd">${tname }老师</div>
		</div>
		<div id="code" style="text-align: center;">
			<img id="icon" src="${headimg }" style="position:absolute;width: 30px;height: 30px;"/>
		</div>
	</div>
	<nav class="mui-bar mui-bar-tab">

		<a class="mui-tab-item" href="#tabbar-with-map">
			<span class="fa fa-caret-left"></span>
		</a>
		<a class="mui-tab-item" href="#tabbar-with-contact">
			<span class="fa fa-circle-o"></span>
		</a>
		<a class="mui-tab-item" href="#tabbar-with-map">
			<span class="fa fa-square-o"></span>
		</a>
	</nav>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.qrcode.min.js" type="text/javascript"></script>
	<script>
		var url="${text}"; 
		console.log(url);
		//根据设计图中的canvas画布的占比进行设置
	 	var clientWidth=$(window).width();
	 	console.log(clientWidth);
	 	var canvasWidth=Math.floor(clientWidth*100/600)*4;
		$("#code").qrcode({
			render:'canvas',
			width:canvasWidth,
			height:canvasWidth,
			text:url
			/* text:"https://www.baidu.com" */
		});
		//获取屏幕的高度
		var clientHeight=$(window).height();
		console.log(clientHeight);
		var imgWidth=$("#icon").width();
		console.log(imgWidth);
		var contHeight=$('#cont').height();
		console.log(contHeight);
		var iconMargin=(canvasWidth-imgWidth)/2;
		var codeMargin=(clientHeight-contHeight)/2;
		$('#icon').css('margin',iconMargin);
		$("#cont").css('margin-top',codeMargin);
	</script>
</body>
</html>