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
<title>缺勤列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
<link href="${pageContext.request.contextPath }/css/mui.picker.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/mui.poppicker.css" rel="stylesheet" />
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/sign/findClassesByTeaId"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">周签到列表</h1>
	</header>
	<div class="mui-content" style="padding-top: 50px;">
		<div class="title" style="background: #EFB5EF;color:#fff;">
			<div class="mui-row">
				<div class="mui-col-sm-4 mui-col-xs-4" style="padding-top: 8px;font-size: 18px;"><span>周签到列表</span></div>
				<div  class="mui-col-sm-5 mui-col-xs-5">
					<button id='showWeekPicker' class="mui-btn mui-btn-primary mui-btn-outlined" type='button'>请选择进行查询</button>
				</div>
			</div>
			<ul>
				
			</ul> 
		</div>
		<ul class="mui-table-view">
			<c:forEach items="${haveSignedList }" var="item">
				<li class="mui-table-view-cell">
					<input type="hidden" name="Stuid" value="${item.stuId }"/>
					<div class="mui-row">
						<div class="mui-col-sm-3 mui-col-xs-3"><img src="${item.headimg }" width="45" height="45" style="border-radius:5px;"/></div>
					<div class="mui-col-sm-8 mui-col-xs-8">
						<div class="mui-row">
							<div class="mui-col-sm-2 mui-col-xs-2 stu-card"><span class="fa fa-address-book"></span></div>
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="font-size: 0.45rem;">${item.name }</span></div>
							<div class="mui-col-sm-4 mui-col-xs-4"><button type="button" class="mui-btn mui-btn-primary" style="padding: 2px 6px;">已签到</button></div>
						</div>
						<div class="mui-row" style="padding-top: 5px;">
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="color:#B77777;">学号:${item.sno }</span></div>
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="color:#B77777;">缺勤${weekTotalCount -item.count }次</span></div>
						</div>
					</div>
					</div>
					
				</li>
			</c:forEach>
	   </ul>
	   
	   <ul class="mui-table-view">
			<c:forEach items="${weekNoneList }" var="item">
				<li class="mui-table-view-cell">
					<input type="hidden" name="Stuid" value="${item.stuId }"/>
					<div class="mui-row">
						<div class="mui-col-sm-3 mui-col-xs-3"><img src="${item.headimg }" width="45" height="45" style="border-radius:5px;"/></div>
					<div class="mui-col-sm-8 mui-col-xs-8">
						<div class="mui-row">
							<div class="mui-col-sm-2 mui-col-xs-2 stu-card"><span class="fa fa-address-book"></span></div>
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="font-size: 0.45rem;">${item.name }</span></div>
							<div class="mui-col-sm-4 mui-col-xs-4"><button type="button" class="mui-btn mui-btn-danger" style="padding: 2px 6px;">签到0次</button></div>
						</div>
						<div class="mui-row" style="padding-top: 5px;">
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="color:#B77777;">学号:${item.sno }</span></div>
							<div class="mui-col-sm-6 mui-col-xs-6"><span style="color:#B77777;">缺勤${weekTotalCount }次</span></div>
						</div>
					</div>
					</div>
					
				</li>
			</c:forEach>
	   </ul>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.picker.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.poppicker.js"></script>	
	<script>
		$(function() {
			//普通示例
			var weekPicker = new mui.PopPicker();
			var json=[];
			<c:forEach items="${arr }" var="item" varStatus="arr" begin="1" >
				json.push({
					value:"${arr.index }",
					text:"${item}"
				}); 
			</c:forEach>
			weekPicker.setData(json);
			var showWeekPickerButton = document.getElementById('showWeekPicker');
			showWeekPickerButton.addEventListener('tap', function(event) {
				weekPicker.show(function(items) {
					showWeekPickerButton.innerText = items[0].text;
					window.location.href="${pageContext.request.contextPath }/sign/weekSign?classId="+${classId } + "&n=" + items[0].value;
				});
			});
		});
	</script>
</body>
</html>