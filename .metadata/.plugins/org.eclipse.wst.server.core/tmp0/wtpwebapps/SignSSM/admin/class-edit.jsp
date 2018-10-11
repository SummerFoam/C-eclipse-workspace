<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<link href="../layui/css/layui.css" rel="stylesheet" >
	<link href="../css/info.css"  rel="stylesheet"/>
	<link href="../css/common.css"  rel="stylesheet"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="pageContent">
		<form class="layui-form" id="form" action="">
			<input type="hidden" name="id" value="${croom.id }"/>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*班级名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="name" value="${croom.name }" required lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
			    </div>
		  	</div>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*班级地点</label>
			    <div class="layui-input-inline">
			      <input type="text" name="address" value="${croom.address }" required lay-verify="required" placeholder="请输入" aut.ocomplete="off" class="layui-input">
			    </div>
		  	</div>
		  	<div class="layui-form-item">
          	   <label class="layui-form-label">选择框</label>
		       <div class="layui-inline">
		        <select name="status" lay-verify="required" >
		          <option value="">请选择班级状态</option>
		          <option value="0" <c:if test="${croom.status ==0 }">selected</c:if>>不可用</option>
		          <option value="1" <c:if test="${croom.status ==1 }">selected</c:if>>可用</option>
		        </select>
		        <div class="layui-unselect layui-form-select">
			        <div class="layui-select-title">
			        <input type="text" placeholder="请选择" value="" readonly="" class="layui-input layui-unselect">
			        <i class="layui-edge"></i>
			        </div>
			        <dl class="layui-anim layui-anim-upbit" style="">
			        <dd lay-value="" class="layui-select-tips">请选择</dd>
			        <dd lay-value="0" class="">可用</dd>
			        <dd lay-value="1" class="">不可用</dd>
			        </dl>
		        </div>
		      </div>
        	</div>
  
		  	<div class="layui-form-item">
			    <div class="layui-input-block">
			      <input class="layui-btn sub_btn" type="button" value="提交" lay-submit lay-filter="formDemo"></input>
			      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			    </div>
		  	</div>
		</form>
	</div>
</body>
<script src="../js/jquery.min.js"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
	layui.use('form', function(){
	  var form = layui.form;
	});
	
	$('.sub_btn').click(function(){
		$.post('${pageContext.request.contextPath }/croom/update',$('#form').serialize(),function(data){
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
					parent.layer.msg(data.msg,{
						  shade:0.5,
						  anim: 6,
						  icon:5,
						  time:2000
					});  
				});
			}
		});
	})
</script>
</html>