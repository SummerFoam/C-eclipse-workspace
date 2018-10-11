<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/class/getClassInfo?id=1">一对一</a>
	<a href="${pageContext.request.contextPath }/oneTomany/getClasses?cid=1">多对一</a>
	<a href="${pageContext.request.contextPath }/manyToone/getStudents?sid=1">一对多</a>
	<a href="${pageContext.request.contextPath }/manyTomany/getUsers?uid=1">多对多</a>
</body>
</html>