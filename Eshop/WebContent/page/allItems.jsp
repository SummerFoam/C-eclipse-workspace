<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/amazeui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/app.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css">
</head>
<body>
	<form action="${pageContext.request.contextPath }/orderItems/allItems" method="get">
		<table class="am-table am-table-bordered am-table-striped am-table-hover am-table-centered">
			<thead>
				<tr class="am-primary">
					<th>商品编号</th>
					<th>订单编号</th>
					<th>数量</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="item">
					<tr>
						<td>${item.goodsId }</td>
						<td>${item.orderId }</td>
						<td>${item.count }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	<script src="${pageContext.request.contextPath }/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/amazeui.min.js"></script>
</body>
</html>