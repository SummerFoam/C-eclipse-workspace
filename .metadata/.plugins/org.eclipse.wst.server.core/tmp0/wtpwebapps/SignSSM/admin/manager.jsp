<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>后台管理</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="../layui/css/layui.css">
	<link href="../css/manager.css" rel="stylesheet" />
		
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- 顶部 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!--中部-->
	<div class="wrapper">
	<!--左边导航开始-->
	<jsp:include page="left.jsp"></jsp:include>
	<!--左边导航结束-->
	<blockquote class="layui-elem-quote">
                注意：x-admin 1.1每个页面都可以独立设置一个背景主题，如果每个都设置会比较消耗本地的存储，如果想全部恢复，请重置。
  	</blockquote>
	</div>
	<!--中部结束-->
</body>
</html>