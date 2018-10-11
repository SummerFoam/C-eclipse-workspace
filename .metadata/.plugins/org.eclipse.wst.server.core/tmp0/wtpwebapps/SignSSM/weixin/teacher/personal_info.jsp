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
		<link rel="stylesheet" href="../css/mui.min.css">
		<link rel="stylesheet" href="../css/font-awesome.min.css">
		<link href="${pageContext.request.contextPath }/css/mui.picker.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/css/mui.poppicker.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/teacher/tch_personal"></a>
			<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
			<h1 class="mui-title">个人信息</h1>
		</header>
		<div class="mui-content">
			<div class="info_img">
				<div class="bg-shadow">
					<img src="${user.headimg }" width="60" height="60" />
				</div>
			</div>
		    <div class="mui-card">
		        <ul class="mui-table-view">
		            <li class="mui-table-view-cell">昵称 <span class="mui-badge mui-badge-primary">${user.nickname }</span></li>
		            <li class="mui-table-view-cell">性别 
			            <span class="mui-badge mui-badge-success">
							<c:choose>
								<c:when test="${sex == 1 }"><span class="des">男</span></c:when>
								<c:when test="${sex == 2 }"><span class="des">女</span></c:when>
							</c:choose>
						</span>
					</li>
		            <li class="mui-table-view-cell">所在地 <span class="mui-badge">${country }${province }${city }</span></li>
		        	<li class="mui-table-view-cell show-name" id="promptBtn-name">教师姓名
		        		<c:choose>
		        			<c:when test="${teacher.name == '' or teacher.name ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${teacher.name != '' }"><span class="mui-badge mui-badge-primary">${teacher.name }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-age" id="promptBtn-age">年龄
		        		<c:choose>
		        			<c:when test="${teacher.age == '' or teacher.age ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${teacher.age != '' }"><span class="mui-badge mui-badge-primary" id='userResult'>${teacher.age }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-tel" id="promptBtn-tel">电话号码
		        		<c:choose>
		        			<c:when test="${teacher.tel == '' or teacher.tel ==null }"><span class="mui-badge mui-badge-warning" id='userResult'>未设置</span></c:when>
		        			<c:when test="${teacher.tel != '' }"><span class="mui-badge mui-badge-primary">${teacher.tel }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-email" id="promptBtn-email">邮箱
		        		<c:choose>
		        			<c:when test="${teacher.email == '' or teacher.email ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${teacher.email != '' }"><span class="mui-badge mui-badge-primary">${teacher.email }</span></c:when>
		        		</c:choose>
	        		</li>
	        		
	        		<li class="mui-table-view-cell show-email" style="color:red;">
	        			如果还没有安排课程，请联系管理员进行安排!
	        		</li>
		        </ul>
		    </div>
		</div>
		
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.picker.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.poppicker.js"></script>
	<script type="text/javascript">
		//防止右键出现弹窗
		document.oncontextmenu=function(e){
		    //return false;
		    e.preventDefault();
		};
		//设置姓名
		document.getElementById("promptBtn-name").addEventListener('tap', function(e) {
			e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
			var btnArray = ['确定', '取消'];
			mui.prompt('信息完善', '请输入姓名', '我的信息', btnArray, function(e) {
				if (e.index == 0) {
					$.get('${pageContext.request.contextPath}/teacher/insert',{"name":e.value},function(data){
						if(data.status == 0){
						    var html='教师姓名<span class="mui-badge mui-badge-primary">'+data.teacher.name+'</span>';
							$('.show-name').html(html);
						}
					},"json");
				}
			})
		});
		//年龄
		(function($, doc) {
			$.init();
			$.ready(function() {
				//普通示例
				var userPicker = new $.PopPicker();
				userPicker.setData([{value: '20',text: '20'}, {value: '21',text: '21'}, {value: '22',text: '22'},
					{value: '23',text: '23'}, {value: '24',text: '24'},{value: '25',text: '25'},
					{value: '26',text: '26'},{value: '27',text: '28'},{value: '28',text: '28'}
					]);
				var showUserPickerButton = doc.getElementById('promptBtn-age');
				var userResult = doc.getElementById('userResult');
				showUserPickerButton.addEventListener('tap', function(event) {
					userPicker.show(function(items) {
						mui.get('${pageContext.request.contextPath}/teacher/insert',{"age":items[0].text},function(data){
							if(data.status == 0){
								var content='年龄<span class="mui-badge mui-badge-primary">'+data.teacher.age+'</span>';
								console.log(data);
								mui('.show-age')[0].innerHTML=content;
							}
						},'json');
					});
				}, false);
				
			});
		})(mui, document);
		//设置电话号码
		document.getElementById("promptBtn-tel").addEventListener('tap', function(e) {
			e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
			var btnArray = ['确定', '取消'];
			mui.prompt('信息完善', '请输入手机号', '我的信息', btnArray, function(e) {
				if (e.index == 0) {
					$.get('${pageContext.request.contextPath}/teacher/insert',{"tel":e.value},function(data){
						if(data.status == 0){
						    var html='手机号码<span class="mui-badge mui-badge-primary">'+data.teacher.tel+'</span>';
							$('.show-tel').html(html);
						}
					},"json");
				}
			})
		});
		//设置邮箱
		document.getElementById("promptBtn-email").addEventListener('tap', function(e) {
			e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
			var btnArray = ['确定', '取消'];
			mui.prompt('信息完善', '请输入邮箱', '我的信息', btnArray, function(e) {
				if (e.index == 0) {
					$.get('${pageContext.request.contextPath}/teacher/insert',{"email":e.value},function(data){
						if(data.status == 0){
						    var html='邮箱<span class="mui-badge mui-badge-primary">'+data.teacher.email+'</span>';
							$('.show-email').html(html);
						}
					},"json");
				}
			})
		});
	</script>
	</body>
	
</html>
