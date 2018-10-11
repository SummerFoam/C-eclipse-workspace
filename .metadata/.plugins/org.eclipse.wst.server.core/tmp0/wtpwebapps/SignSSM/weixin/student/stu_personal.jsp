<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>个人中心</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!--æ åmui.css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/wx.css">
	</head>
	<body class="mui-android mui-android-6 mui-android-6-0">
		<header class="mui-bar mui-bar-nav">
			<a class="fa fa-user user_icon"></a>
			<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
			<h1 class="mui-title">个人中心</h1>
		</header>
		<div class="mui-content">
			<div class="userImg">
				<div class="mui-row">
				<div class="mui-col-sm-4 mui-col-xs-4">
					<div class="u_img">
						<img src="${user.headimg }" width="60"height="60"/>
					</div>
				</div>
				<div class="mui-col-sm-8 mui-col-xs-8">
					<div class="u_name">
						<div>
						<span class="font-12-size">${user.nickname }</span>
					</div>
					<div>
						<span class="fa fa-address-card-o"></span>
						<c:if test="${user.type == 0 }">
							<span class="font-12-size" style="color: #fc681f;">学生</span>
						</c:if>
						
					</div>
					</div>
				</div>
			</div>
			</div>
			
			<div class="mui-row userInfo comm">
				<div class="mui-col-sm-8 mui-col-xs-8">
					<a href="${pageContext.request.contextPath }/student/findById">
						<div class="u_info">
							<span class="fa fa-address-book-o font-16-size item_icon" style="color: #d98213;"></span>
							<span class="font-14-size">个人信息</span>
						</div>
					</a>
				</div>
				<div class="mui-col-sm-4 mui-col-xs-4">
					<div class="arrow">
						<span class="fa fa-chevron-right mui-pull-right"></span>
					</div>
				</div>
			</div>
			<div class="mui-row comm">
				<div class="mui-col-sm-8 mui-col-xs-8">
					<a href="${pageContext.request.contextPath }/scan">
						<div class="u_info">
							<span class="fa fa fa-list-alt font-16-size item_icon" style="color: #2b91cf;"></span>
							<span id="span" class="font-14-size">扫一扫签到</span>
						</div>
					</a>
				</div>
				<div class="mui-col-sm-4 mui-col-xs-4">
					<div class="arrow">
						<span class="fa fa-chevron-right mui-pull-right"></span>
					</div>
				</div>
			</div>
			<div class="mui-row comm">
				<div class="mui-col-sm-8 mui-col-xs-8">
					<a href="${pageContext.request.contextPath }/student/findAllMySign">
						<div class="u_info">
							<span class="fa fa-file-text font-16-size item_icon" style="color: #19E82B;"></span>
							<span id="span" class="font-14-size">我的签到记录</span>
						</div>
					</a>
				</div>
				<div class="mui-col-sm-4 mui-col-xs-4">
					<div class="arrow">
						<span class="fa fa-chevron-right mui-pull-right"></span>
					</div>
				</div>
			</div>
			
			<div class="mui-row comm">
				<div class="mui-col-sm-8 mui-col-xs-8">
					<a href="${pageContext.request.contextPath }/student/findMyCurrSign">
						<div class="u_info">
							<span class="fa fa-check-square font-16-size item_icon" style="color: #FF604E;"></span>
							<span id="span" class="font-14-size">本节签到记录</span>
						</div>
					</a>
				</div>
				<div class="mui-col-sm-4 mui-col-xs-4">
					<div class="arrow">
						<span class="fa fa-chevron-right mui-pull-right"></span>
					</div>
				</div>
			</div>
		</div>
		
	</body>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jweixin-1.2.0.js"></script>
	<script type="text/javascript">
	//微信初始化
	wx.config({
	    debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
	    appId: 'wxce3a1bc10513119c', // 必填，公众号的唯一标识
	    timestamp:"${ map['timestamp'] }", // 必填，生成签名的时间戳
	    nonceStr: "${ map['nonceStr'] }", // 必填，生成签名的随机串
	    signature:"${ map['signature'] }",// 必填，签名
	    jsApiList: ['scanQRCode'] // 必填，需要使用的JS接口列表,扫一扫
	});
	
	document.getElementById('scan').addEventListener('tap',function(e){
		//调起微信扫一扫接口
		wx.scanQRCode({
			needResult: 0, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，
			scanType: ["qrCode","barCode"], // 可以指定扫二维码还是一维码，默认二者都有
			success: function (res) {
				var result = res.resultStr; // 当needResult 为 1 时，扫码返回的结果time=1527082510&croomId=13&tchId=6&courseId=14&arrangeId=37
				var text="time=1528101859&croomId=15&tchId=6&courseId=44&arrangeId=45";
				window.location.href="${pageContext.request.contextPath }/sign/add?"+text+"&stuId="+${student.id};
				/* $.get('${pageContext.request.contextPath }/sign/add',function(data){
					if(data.status == 0){
						mui.alert('data.msg','扫码签到','确定',function(){
							window.location.href="${pageContext.request.contextPath }/index/personal";
						});
					}else{
						mui.alert('data.msg','扫码签到','确定',function(){
							window.location.href="${pageContext.request.contextPath }/index/personal";
						});
					}
				}); */
			}
		});
	});
</script>
</html>
