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
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
</head>
<body>

<button id="scan" class="mui-btn mui-btn-primary mui-btn-block mui-btn-outlined">点击</button>
<div>${ map['name'] }
  <span>${ map['url'] } </span>
	 <span>${ map['timestamp'] } </span>
	  <span>${ map['nonceStr'] } </span>
	  <span>${ map['signature'] } </span>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jweixin-1.2.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/mui.min.js"></script>

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
	
	document.getElementById('scan').addEventListener('tap',function(event){
		//调起微信扫一扫接口
		wx.scanQRCode({
			needResult: 0, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，
			scanType: ["qrCode","barCode"], // 可以指定扫二维码还是一维码，默认二者都有
			success: function (res) {
				var result = res.resultStr; // 当needResult 为 1 时，扫码返回的结果
			}
		});
	})
</script>
</body>
</html>