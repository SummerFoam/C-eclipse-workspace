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
<style type="text/css">
	*{padding: padding:0;margin: 0;}
	.title{
		width: 400px;
	   height: 278px;
	   margin: 0 auto;
	   padding-top: 130px;
	   text-align: center;
	   font-size: 24px;
	   font-weight: bold;
	   color: #f00;
	   background: url(../../images/random.jpg)no-repeat;
	   background-size: 100%;
	           
		}
		.btns{
		width: 190px;
        height: 30px;
        margin: 0 auto;
		}
		.btns span{
		float: left;
       width: 80px;
       line-height: 27px;
       background: #036;
       border: 1px solid #eee;
       border-radius: 7px;
       margin-right: 10px;
       color: #fff;
       text-align: center;
       font-size: 14px;
       cursor: pointer;
		}
</style>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/teacher/sign.jsp"></a>
		<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
		<h1 class="mui-title">随机抽查</h1>
	</header>
	<div class="mui-content">
		<div id="title" class="title">开始抽查啦！</div>
		<div class="btns">
			<span id="play">开始</span>
			<span id="stop">停止</span>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script language="JavaScript">
		$('#play').click(function(){
			$.get('${pageContext.request.contextPath }/sign/random',function(data){
				var json=[];
				$.each(data,function(indexs,items){
					var html='<input type="hidden" name="id" value="'+items.id+'"/><span>'+items.name+'</span><br/><span>'+items.sno+'</span>';
					json.push(html);
					$('#stop').click(function(){
						stopFun();
						var id=$('input[name="id"]').val();
						//查询签到记录
						window.location.href="${pageContext.request.contextPath }/sign/findSignByRandom?id="+id;
					});
				});
				playFun(json);
			},"json");
		});	
		
	 	timer=null,
	    flag=0;
		function playFun(data){
			var title=document.getElementById('title');
			var play=document.getElementById('play');
			clearInterval(timer); 
			timer=setInterval(function(){
			   var random=Math.floor(Math.random()*data.length);//floor（）向下取整，random（）0-1随机数
			   title.innerHTML=data[random];
			},50);
		    play.style.background='#999';
		}
	
		function stopFun(){
			clearInterval(timer);
			var play=document.getElementById('play');
			play.style.background='#036';
		} 
	</script>
</body>
</html>
