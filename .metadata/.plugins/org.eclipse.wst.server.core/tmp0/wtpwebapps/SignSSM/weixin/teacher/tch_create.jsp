<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/teacher.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/wx.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left user_icon" href="${pageContext.request.contextPath }/teacher/tch_personal" style="font-size: 0.4rem!important;"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">生成二维码</h1>
	</header>
	<div class="mui-content">
		<div class="mui-content-padded">
			<p>请选择上课的班级和课程</p>
			<button id='showCoursePicker' class="mui-btn mui-btn-primary mui-btn-block mui-btn-outlined" type='button'>请选择课程</button>
			<button id='showCroomPicker' class="mui-btn mui-btn-success mui-btn-block mui-btn-outlined" type='button'>请选择班级</button>
		</div>
	</div>
		
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.picker.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.poppicker.js"></script>	
	<script>
		document.getElementById('showCoursePicker').addEventListener('tap',function(event){
			$.get('${pageContext.request.contextPath}/teacher/findTask',function(data){
				if(jQuery.isEmptyObject(data)) {
					mui.confirm('亲爱的${user.nickname }，请先绑定你的老师信息并联系管理员开课，立即前往', '温馨提示', function(e) {
						if (e.index == 1) {
							window.location.href = "${pageContext.request.contextPath}/teacher/findByUserId"
						}
					})
				}else{
					console.log(data)
					var json=[];
					$.each(data,function(indexs,items){
						json.push({
							value:items.couId,
							text:items.couname
						}); 
					});
					var picker = new mui.PopPicker();
					picker.setData(json);
					picker.show(function(SelectedItem){
						var couId=SelectedItem[0].value;
						document.getElementById('showCoursePicker').innerText = "你选择的课程是:" + SelectedItem[0].text;
						$.get('${pageContext.request.contextPath}/teacher/findTask',{"couId":couId},function(data){
							var json=[];
							$.each(data,function(indexs,items){
								json.push({
									value:items.croId,
									text:items.croname
								}); 
							});
							var picker = new mui.PopPicker();
							picker.setData(json);
							picker.show(function(SelectedItem){
								var croId=SelectedItem[0].value;
								document.getElementById('showCroomPicker').innerText = "你选择的班级是:" + SelectedItem[0].text;
								window.location.href="${pageContext.request.contextPath}/code/getCode?couId="+couId+"&croId="+croId;
							});
						})
					});
				} 
				
			})
			
		})
		
	</script>
</body>
</html>