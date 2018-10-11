<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" >
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="${pageContext.request.contextPath}/static/img/logo.gif" >
			<span class="wel_word">图书管理系统</span>
			<div>
				<a href="book_manager.html">图书管理</a>
				<a href="order_manager.html">订单管理</a>
				<a href="${pageContext.request.contextPath}/index.html">返回商城</a>
			</div>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>		
			
			<c:forEach items="${page.list }" var="item">
				<tr>
					<td>${item.bookName }</td>
					<td>${item.price }</td>
					<td>${item.author }</td>
					<td>${item.sales }</td>
					<td>${item.stock }</td>
					<td><a href="book_edit.html">修改</a></td>
					<td><a href="#">删除</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="book_edit.html">添加图书</a></td>
			</tr>	
		</table>
	</div>
	
	<div id="bottom">
		<span>
			东软睿道书城.Copyright &copy;2015
		</span>
	</div>
</body>
</html>