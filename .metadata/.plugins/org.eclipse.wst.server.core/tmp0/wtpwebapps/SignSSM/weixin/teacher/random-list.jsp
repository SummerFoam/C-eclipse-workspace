<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>签到记录</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<!--æ åmui.css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/teacher/random.jsp"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">签到记录</h1>
	</header>
	<div class="mui-content">
		<div class="mui-card">
			<ul class="mui-table-view">
				<li class="mui-table-view-divider">
	    		    ${tName }老师,您在30分钟之内可以查看的该学生签到记录如下:
    		    </li>
			</ul>
		</div>
		<form action="" id="form">
			<c:forEach items="${list }" var="item">
				<input type="hidden" name="id" value="${item.id }"/>
		    	<div class="mui-card">
		    		 <ul class="mui-table-view">
						<li class="mui-table-view-cell">
							<div class="mui-row">
								<div class="mui-col-sm-6" style="padding-right: 20px;">
									<input type="hidden" name="uid" value="${item.uid }"/>
									 学生姓名<span class="mui-badge mui-badge-warning">${item.studentName}</span>
								</div>
								<div class="mui-col-sm-6">
									学号<span class="mui-badge mui-badge-warning">${item.sno}</span>
								</div>
							</div>
						 </li>
						<li class="mui-table-view-cell">签到课程<span class="mui-badge mui-badge-primary">${item.couName}</span></li>
						<li class="mui-table-view-cell"> 签到时间<span class="mui-badge mui-badge-primary">${signtime}</span></li>
						<li class="mui-table-view-cell"> 是否旷课<button type="button" class="mui-btn mui-btn-danger absent">旷课</button></li>
			        </ul>
		    	</div>
	    	</c:forEach>
		</form>
    	<button type="button" class="mui-btn mui-btn-success mui-btn-block">随机抽查</button>
	</div>
	<script src="${pageContext.request.contextPath }/js/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$('.absent').click(function(){
			var arrId=$('input[type="hidden"]').val();
			$.get('${pageContext.request.contextPath }/sign/doAbsent',{"id":arrId},function(data){
				console.log(data.msg);
				if(data.status == 0){
					mui.alert(data.msg,"旷课处理","确定",function(){
						$('#form').hide();
						//window.location.href="${pageContext.request.contextPath }/weixin/teacher/random.jsp";
					});
				}
			});
		});
	
		$('.mui-btn-success').click(function(){
			window.location.href="${pageContext.request.contextPath }/weixin/teacher/random.jsp";
		});
	</script>
</body>
</html>