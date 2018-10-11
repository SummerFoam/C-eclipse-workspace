<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn").click(function(){
		
			var url="${pageContext.request.contextPath }/stu/testJson";
			var data={name:"join",time:"2pm"};
			function callBack(data1){
				for(var i=0;i<data1.length;i++){
					alert(data1[i].id+":"+data1[i].username)
				}
			}
			$.post(url,data,callBack,"json");
		});
	});
	
</script>
</head>
<body>
<h2>ajax请求json</h2>
<button id="btn">点我</button>
</body>
</html>