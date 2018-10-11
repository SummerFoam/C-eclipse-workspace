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
			 <div class="layui-form-item">
			 	<label class="layui-form-label">班级名称</label>
			    <div class="layui-input-block">
			    	<select name="croomname" lay-verify="required">
			    		<c:forEach items="${croomlist }" var="item">
			    			<option value="${item.id }">${item.name }</option>
			    		</c:forEach>
				        
			      	</select>
			    </div>
			  </div>
			<div class="layui-form-item">
			    <label class="layui-form-label">课程名称</label>
			    <div class="layui-input-block">
			    	<select name="coursename" lay-verify="required">
			    		<c:forEach items="${courselist }" var="item">
			    			<option value="${item.id }">${item.name }</option>
			    		</c:forEach>
			      	</select>
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <label class="layui-form-label">教师姓名</label>
			    <div class="layui-input-block">
			    	<select name="teachername" lay-verify="required">
				    	<c:forEach items="${teacherlist }" var="item">
			    			<option value="${item.id }">${item.name }</option>
			    		</c:forEach>
			      	</select>
			    </div>
			  </div>
			  <div class="layui-form-item">
			    <label class="layui-form-label">所属班级</label>
			    <div class="layui-input-block">
			    	<select name="classname" lay-verify="required">
				    	<c:forEach items="${classList }" var="item">
			    			<option value="${item.id }">${item.name }</option>
			    		</c:forEach>
			      	</select>
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
		layui.use('form', function(){
		  var form = layui.form;
		});
		//添加
		$('.submit-btn').click(function(){
			$.post('${pageContext.request.contextPath }/arrange/insert',$('#form').serialize(),function(data){
				if(data.status == 0){
					layui.use('layer',function(){
						layer.msg(data.msg,{time:2000},function(){
							var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index); //再执行关闭  
							parent.location.reload();//刷新父窗口
						})
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
		});
	</script>
</body>
</html>