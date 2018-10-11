<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			    <label class="layui-form-label">*课程名称</label>
			    <div class="layui-input-inline">
			      <input type="text" name="name" required lay-verify="required" placeholder="请输入课程名" autocomplete="off" class="layui-input name">
			    </div>
		  	</div>
		  	<div class="layui-form-item">
			    <label class="layui-form-label">*课程课时</label>
			    <div class="layui-input-inline">
			      <input type="text" name="courseCount" required lay-verify="required" placeholder="请输入课时" aut.ocomplete="off" class="layui-input courseCount">
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
			var courseCount=$('.courseCount').val();
			if(name == "" || courseCount == ""){
				layui.use('layer',function(){
					var layer=layui.layer;
					layer.msg("课程名或课时不能为空");
				});
			}else{
				$.ajax({
					type:"post",
					url:'${pageContext.request.contextPath }/course/add',
					data:$('#form').serialize(),
					success:function(data){
						if(data.status == 0){
							layui.use('layer',function(){
								var layer=layui.layer;
								layer.msg(data.msg,{time:2000},function(){
									var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
									parent.layer.close(index); //再执行关闭  
									parent.location.reload();//刷新父窗口
								});
							});
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
					}
				})
			}
		});
	</script>
</body>
</html>