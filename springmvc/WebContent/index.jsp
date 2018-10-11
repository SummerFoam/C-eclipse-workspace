<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<!-- ${pageContext.request.contextPath }当前路径 -->
<a href="${pageContext.request.contextPath }/user/Hel">请求contronller控制器</a>
<form action="${pageContext.request.contextPath }/user/Hello" method="post">
<input type="submit" value="提交"/>
</form>
<form action="${pageContext.request.contextPath }/user/params" method="post">
<input type="text" name="username" />
<input type="password" name="pwd" /> 
<input type="submit" value="提交">
</form>

 <form action="${pageContext.request.contextPath }/user/testput" method="post">
<input type="hidden" name="_method" value="put"/>
<input type="submit" value="提交">
</form>

 <form action="${pageContext.request.contextPath }/user/hello/afa/testAnt" method="post">
<input type="submit" value="testAnt"/>
</form>
<form action="${pageContext.request.contextPath }/user/testPathVariable/12">
<input type="submit" value="testPath">
</form>

<form action="${pageContext.request.contextPath }/user/getPageValue" name="user" method="post">
	用户名:<input type="text" name="name"/><br>
	密码:<input type="password" name="pwd"/>
	<input type="submit" value="提交">
</form>
<h2>解决乱码</h2>
<form action="${pageContext.request.contextPath }/stu/getMassage" method="post">
	用户名:<input type="text" name="username">/<br>
	<input type="submit" value="提交">
</form>
<h2>页面传值到controller</h2>
<form action="${pageContext.request.contextPath }/stu/testPojo" method="post">
	用户名:<input type="text" name="name"/><br>
	年龄:<input type="text" name="age"/><br>
	性别:<input type="radio" name="gender" value="true"/>男
		<input type="radio" name="gender" value="false"/>女
	省份:<input type="text" name="address.province" /><br>
	城市:<input type="text" name="address.city" /><br>
	爱好:<input type="checkbox" name="hobby" value="足球"/>足球
		<input type="checkbox" name="hobby" value="蓝球"/>蓝球
		<input type="checkbox" name="hobby" value="排球"/>排球
	角色:<input type="text" name="list[0].roleName"/>
		<input type="text" name="list[1].roleName"/>
		<input type="text" name="list[2].roleName"/>
		
	<input type="submit" value="提交">
</form>
<hr>
<form action="${pageContext.request.contextPath }/stu/testWebUtils" method="post">
	用户名:<input type="text" name="search_name"/><br>
	年龄:<input type="text" name="search_age"/><br>
	性别:<input type="radio" name="search_gender" value="true"/>男
		<input type="radio" name="search_gender" value="false"/>女
	学校:<input type="text" name="school"/>
	<input type="submit" value="提交">
</form>


</body>
</html>