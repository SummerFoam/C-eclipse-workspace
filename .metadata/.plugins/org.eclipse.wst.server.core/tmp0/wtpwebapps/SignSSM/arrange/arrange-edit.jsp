<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<link href="../layui/css/layui.css" rel="stylesheet" >
<link href="../css/info.css"  rel="stylesheet"/>
<link href="../css/common.css" rel="stylesheet" />
</head>
<body>
	<div class="pageContent">
		<form class="layui-form" id="form" action="">
			<c:forEach items="${list }" var="item">
			<input type="hidden" name="id" value="${item.id }"/>
			
			<input type="hidden" name="couId" value="${item.couId }"/>
			<input type="hidden" name="tId" value="${item.tId }"/> 
			<div class="layui-form-item">
			    <label class="layui-form-label">*班级名称</label>
			    <div class="layui-input-inline">
			      <input type="hidden" name="croId" value="${item.croId }"/>
			      <input type="text" name="croName" value="${item.croName }" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
			    </div>
		  	</div>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*课程名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="couName" value="${item.couName }" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
			    </div>
		  	</div>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*教师名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="tName" value="${item.tName}" required lay-verify="required" placeholder="请输入" aut.ocomplete="off" class="layui-input">
			    </div>
		  	</div>
		  	
		  	<div class="layui-form-item">
			    <div class="layui-input-block">
			      <input class="layui-btn sub_btn" type="button" value="提交" lay-submit lay-filter="formDemo"></input>
			      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			    </div>
		  	</div>
		  	</c:forEach>
		</form>
	</div>
	
	<script src="../js/jquery.min.js"></script>
	<script src="../layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		//解决下拉列表
		layui.use('form', function(){
		  var form = layui.form;
		});
		$('.sub_btn').click(function(){
			$.post('${pageContext.request.contextPath }/arrange/update',$('#form').serialize(),function(data){
				if(data.status == 0){
					console.log(data);
					layui.use('layer',function(){
						var layer=layui.layer;
						layer.msg(data.msg,{
							   time: 1000 //2秒关闭（如果不配置，默认是3秒）
							}, function(){
							var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index); //再执行关闭  
							parent.location.reload();//刷新父窗口
						});  
					})
				}else{
					layui.use('layer',function(){
						var layer=layui.layer;
						//为父窗口加
						parent.layer.msg(data.msg,{
							  shade:0.5,
							  anim: 6,
							  icon:5,
							  time:2000
						});
					});
				}
			});
		});
	</script>
</body>
</html>