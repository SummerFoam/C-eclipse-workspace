<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.iframe{
		border:1px solid #ccc;
	}
</style>
</head> 
<body>
	<iframe id="iframe" width="100%" height="53px" src="head.jsp" frameborder="0"  scrolling="no"></iframe>
	<iframe width="200px" height="600px"  src="left.jsp" frameborder="0"  class="iframe"></iframe>
	<iframe name="myIframe" height="600px" width="85%" frameborder="0"></iframe>
</body>
</html>