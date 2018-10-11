<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../layui/css/layui.css" rel="stylesheet" >
<link href="../css/info.css"  rel="stylesheet"/>
<link href="../css/common.css"  rel="stylesheet"/>
</head>
<body>
	<div class="pageContent">
		<form class="layui-form" id="form" action="">
			<input type="hidden" name="id" value="${classes.id }"/>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*班级名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="name" value="${classes.name }" required lay-verify="required" placeholder="请输入所在班级名" autocomplete="off" class="layui-input name">
			    </div>
		  	</div>
		  	
		  	<div class="layui-form-item">
			    <div class="layui-input-block">
			      <input class="layui-btn submit-btn" type="button" value="提交" lay-submit lay-filter="formDemo"></input>
			      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			    </div>
		  	</div>
		</form>
	</div>
	
	<script src="../js/jquery.min.js"></script>
	<script src="../layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		$('.submit-btn').click(function(){
			var name=$('.name').val();
			if(name == ""){
				layui.use('layer',function(){
					var layer=layui.layer;
					layer.msg("班级名称不能为空");
				});
			}else{
				$.post('${pageContext.request.contextPath }/class/update',$('#form').serialize(),function(data){
					if(data.status == 0){
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
							parent.layer.msg(data.msg,{
								  shade:0.5,
								  anim: 6,
								  icon:5,
								  time:2000
							});  
						});
					}
				});
			} 
				
		});
		
	</script>
</body>
</html>