<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script>
	$(function(){
		$("[id^=put]").click(function(){
			var $url=$(this).attr("href");
			$("[name='_method']").val("put");
			//alert(123);
			$("form").attr("action",$url).submit();
			//取消超链接请求
			return false;
		});
		
		$("[id^=delete]").click(function(){
			var $url=$(this).attr("href");
			$("[name='_method']").val("delete");
			//alert(123);
			$("form").attr("action",$url).submit();
			//取消超链接请求
			return false;
		});
		
		$("[id^=add]").click(function(){
			var $url=$(this).attr("href");
			$("[name='_method']").val("post");
			//alert(123);
			$("form").attr("action",$url).submit();
			//取消超链接请求
			return false;
		});
	});
</script>
</head>
<body>
<h1>success page</h1>
${aaa }
${list }
${requestScope.list }
${requestScope.stu }
${stu}
<form action="" method="post">
<!-- post转化为put -->
	<input type="hidden" name="_method" />
</form>
<table width="60%" cellspacing="0px" cellpadding="1px" align="center" border="1">
	<tr>
		<th>ID</th>
		<th>姓名</th>
		<th>年龄</th>
		<th>性别</th>
		<th>修改</th>
		<th>删除</th>
	</tr>
	<c:forEach items="${list }" var="item">
	<tr>
	<td>${item.id }</td>
	<td>${item.username }</td>
	<td>${item.age }</td>
	<td>${item.gender }</td>
	<td><a id="put_${item.id }" href="${pageContext.request.contextPath }/stu/update/${item.id}">修改</a></td>
	<td><a id="delete_${item.id }" href="${pageContext.request.contextPath }/stu/delete/${item.id}">删除</a></td>
	<td><a id="add_${item.id }" href="${pageContext.request.contextPath }/stu/get/${item.id}">查询</a></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" style="text-align:center;">
		<a href="${pageContext.request.contextPath }/stu/post">添加</a>
		</td>
	</tr>
</table>
<!--查找顺序域pageScope/requestScope/sessionScope  -->

</body>
</html>