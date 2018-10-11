<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Code</title>
<link href="${pageContext.request.contextPath }/css/drag.css?v=12as" rel="stylesheet" type="text/css"/>
<link href="../layui/css/layui.css" rel="stylesheet" >
<style>
* {margin:0;padding:0;}
.iconImg {position: absolute;    
		-webkit-box-shadow: 0 0 15px #0CC;
    	-moz-box-shadow: 0 0 15px #0CC;
    	box-shadow: 0 0 15px #0CC;
    	left:0;
    	border: 1px solid white;
    	top: 62px;
    	display: none;}
</style>
</head>
<body>
	<%-- <%
	//获取登录界面的name和password，通过${pageContext.request.contextPath}/admin/index.jsp?name='+name+'&password='+password
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	%> --%>
	<form action="${pageContext.request.contextPath}/user/login" id="form" autocomplete="off">
	<input type="hidden" name="name" value="${name }"/>
	<input type="hidden" name="password" value="${password }"/>
		<div id="Code" class="code" style="position: relative;">
			<div>
				<img class="bigImg" src="${pageContext.request.contextPath }${bigImg }" />
				<img class="iconImg" src="${pageContext.request.contextPath }${smallImg }"/>
			</div>
			<div id="drag">
				<div class="drag_bg"></div>
				<div class="drag_text" onselectstart="return false;" unselectable="on">拖动图片验证登陆</div>
				<div class="handler handler_bg"></div>
			</div>
		</div>
	</form>


<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js?v=1231"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<script>
 /*    $('#drag').drag(); */

 	var iconImg = $("#Code .iconImg");
    var handler = $('#drag .handler');
    var drag_bg = $('#drag .drag_bg');
    var drag = $("#drag");
    var drag_text = $("#drag .drag_text");
    var x = 0;
    var isMove = false;
    //鼠标按下时候的x轴的位置
   handler.mousedown(function(e){
	   iconImg.show();
	   isMove = true;
	   x = e.pageX - parseInt(handler.css('left'), 10);
    });
    var maxWidth = drag.width() - handler.width();  //能滑动的最大间距
    drag.mousemove(function(e){
    	var _x = e.pageX - x;
        if(isMove){
        	iconImg.css({'left': _x});
            if(_x > 0 && _x <= maxWidth){
                handler.css({'left': _x});
                drag_bg.css({'width': _x});
            }else if(_x > maxWidth){  //鼠标指针移动距离达到最大时清空事件
              //  dragOk();
            }
        }
    }).mouseup(function(e){
    	 isMove = false;
         var _x = e.pageX - x;
         console.log(_x)
          /*for(var i=1; 4>=i; i++){
        	  iconImg.animate({left:_x-(40-10*i)},50);
        	  iconImg.animate({left:_x+2*(40-10*i)},50,function(){
        		  iconImg.css({'left':-1});
             });
         } */
        /*  handler.css({'left': maxWidth});
         drag_bg.css({'width': maxWidth});
         iconImg.removeClass('xy_img_bord'); */
     	$.ajax({
			type:"get",
			dataType:"json",
			//返回属性的值：$(selector).attr(attribute)
			url:$("#form").attr("action"), 
			//serialize() 方法通过序列化表单值，创建 URL 编码文本字符串。
			data:$('#form').serialize(),
			success:function(data){
				console.log(data);
				if(data.status ==0){
					//alert(data.msg);
					//parent.location.href="${pageContext.request.contextPath}/admin/manager.jsp";
				}else if(data.status == 1){
					layui.use('layer',function(){
						layer.msg(data.msg, {
							icon: 2,
							time: 1500,
							shift:6,
							shade:0.3,
						});
					});
					
				}
				
			}
		});
     	//滑块位置不对，重置left为0
     	//dragOk();
/*       iconImg.css({'left': 0});
         handler.css({'left': 0});
         drag_bg.css({'width': 0}); */
    });
    
    
    
    //清空事件
    function dragOk(){
        handler.removeClass('handler_bg').addClass('handler_ok_bg');
        drag_text.text('验证通过');
        drag.css({'color': '#fff'});
        handler.unbind('mousedown');
        $(document).unbind('mousemove');
        $(document).unbind('mouseup');
    }
    
</script>
</body>
</html>