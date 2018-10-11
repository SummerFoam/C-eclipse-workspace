<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/amazeui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/app.css">
</head>
<body>
	<form action="${pageContext.request.contextPath }/goods/update" class="am-form am-form-horizontal" method="get">
		<div class="am-form-group">
			<input type="hidden" name="goodsId" value="${goodsId }"/>
			<label for="doc-ipt-3" class="am-u-sm-2 am-form-label">商品名称</label>
			<div class="am-u-sm-10">
				<input type="text" name="goodsName" value="${goodsName }" id="doc-ipt-3" placeholder="输入名称">
			</div>
		</div>
		<div class="am-form-group">
			<label for="doc-ipt-3" class="am-u-sm-2 am-form-label">商品价格</label>
			<div class="am-u-sm-10">
				<input type="text" name="price" value="${price }" id="doc-ipt-3" placeholder="输入价格">
			</div>
		</div>
		<div class="am-form-group">
			<div class="am-u-sm-10 am-u-sm-offset-2">
				 <button type="submit" class="am-btn am-btn-default">修改</button>
			</div>
		</div>
	</form>
</body>
</html>