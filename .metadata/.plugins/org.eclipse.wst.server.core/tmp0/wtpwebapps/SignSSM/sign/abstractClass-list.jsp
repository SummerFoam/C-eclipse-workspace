<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级列表</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>后台管理</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/layui/css/layui.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath }/css/manager.css?wei=123" rel="stylesheet" />
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- 顶部 -->
	<jsp:include page="../admin/top.jsp"></jsp:include>
	<div class="wrapper">
		<!--左边导航开始-->
		<jsp:include page="../admin/left.jsp"></jsp:include>
		<!--左边导航结束-->
		<!--右侧内容开始-->
		<div class="page-content">
			<div class="content">
				<!--右边框架开始-->
				<form action="${pageContext.request.contextPath }/class/likeName" method="get" class="layui-form xbs">
					<div class="layui-form-pane" style="text-align: center;">
						<div class="layui-form-item" style="display: inline-block;">
							<label class="layui-form-label xbs768">搜索班级</label>
	                    <div class="layui-input-inline">
	                      <input type="text" name="name" id="name" placeholder="请输入班级名" autocomplete="off" class="layui-input">
	                    </div>
	                    <div class="layui-input-inline" style="width:80px">
	                        <button type="submit" class="layui-btn search"><i class="layui-icon">&#xe615;</i></button>
	                    </div>
						</div>
					</div>
				</form>
				<xblock>
					<button class="layui-btn layui-btn-danger" onclick="delAll()">
						<i class="layui-icon"></i>批量删除
					</button>
					<button class="layui-btn" onclick="classes_add()">
						<i class="layui-icon"></i>添加
					</button>
					<span class="x-right"  style="line-height:40px">共有数据：<span id="count">${page.totalCount}</span> 条</span>
				</xblock>
				<form action="${pageContext.request.contextPath }/class/findClassAll" method="get">
					<table class="layui-table">
	                <thead>
	                    <tr> 
	                        <th>
	                            <input type="checkbox" name="selectAll" value="全选">
	                        </th>
	                        <th>ID</th>
	                        <th>班级名称 </th>
	                        <th>加入时间</th>
	                        <th>修改时间</th>
	                        <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody id="content">
	                 <c:forEach items="${list }" var="item">
	                    <tr>
	                        <td>
	                            <input type="checkbox" value="${item.id }" name="ids">
	                        </td>
	                        <td>${item.id }</td>
	                       	<td>${item.name }</td>
	                       	<td>${item.formatcreateTime }</td>
	                       	<td>${item.formatupdateTime }</td>
	                        <td class="td-manage">
	                            <a title="编辑" href="javascript:void(0)" onclick="classes_edit(${item.id})" class="ml-5" style="text-decoration:none">
	                                <i class="layui-icon"></i>
	                            </a>
	                            <a title="删除" href="javascript:void(0);" onclick="classes_del(this,${item.id})" style="text-decoration:none">
	                                <i class="layui-icon"></i>
	                            </a>
	                        </td>
	                    </tr>
	                   </c:forEach>
	                </tbody>
	            </table>
	            <!-- 分页开始 -->
	             <div class="page_nav">
			          <c:choose>
	             		<c:when test="${page.totalPageCount == 1}">
		             		<c:set var="begin" value="${page.pageNow}"></c:set>
				        	<c:set var="end" value="${page.totalPageCount}"></c:set>
		             	</c:when>
		             	<c:when test="${page.totalPageCount == 2}">
		             		<c:set var="begin" value="${page.pageNow}"></c:set>
				        	<c:set var="end" value="${page.totalPageCount}"></c:set>
		             	</c:when>
		             	<c:when test="${page.totalPageCount == 3}">
		             		<c:set var="begin" value="${page.pageNow}"></c:set>
				        	<c:set var="end" value="${page.totalPageCount}"></c:set>
		             	</c:when>
		             	<c:when test="${page.totalPageCount >3}">
		             		<c:set var="begin" value="${page.pageNow}"></c:set>
					        <c:set var="end" value="${page.pageNow+3 }"></c:set>
					        <c:if test="${end >= page.totalPageCount }"><!-- 如果当前页+3大于总页数，当前页为总页数-3；如果当前页为总页数 ，当前页设置成总页数-->
					           <c:set var="begin" value="${page.totalPageCount-3}"></c:set>
					           <c:set var="end" value="${page.totalPageCount}"></c:set>
					        </c:if>
		             	</c:when>
	             	</c:choose>
			        
					<ul class="pagination">
						<c:choose>
			              <c:when test="${page.pageNow != 1 }"><!-- 如果当前页为1，则不显示首页和上一页 -->
			                  <li><a href="?pageNow=1"><span aria-hidden="true">首页</span></a></li> 
			                  <li><a href="?pageNow=${page.pageNow-1 }" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
			              </c:when>
			         	</c:choose>
						<c:forEach begin="${begin }" end="${end }" var="index">
			              <c:choose>
			                  <c:when test="${page.pageNow == index }"><!-- 如果为当前页，则特殊显示 -->
			                  	 <li>
			                  		<a style="background: rgba(0,0,0,0.3);color: #fff;">${index}</a>
			                  	 </li>
			                  </c:when>
			                  <c:otherwise><!-- 否则，普通显示 -->
		                  		  <li>
		                  		  	<a href="?pageNow=${index }">${index }</a>
		                  		  </li>
			                  </c:otherwise>
			              </c:choose>
			          	</c:forEach>
			          <c:choose>
			              <c:when test="${page.pageNow != page.totalPageCount }"><!-- 如果当前页为总的记录数，则不显示末页和下一页 -->
			                  <li>
			                  	<a href="?pageNow=${page.pageNow+1 }" aria-label="Next"><span aria-hidden="true">»</span></a>
			                  </li>
			                  <li>
			                  	<li><a href="?pageNow=${page.totalPageCount }" aria-label="Next"><span aria-hidden="true">末页</span></a></li>
			                  </li>
			              </c:when>
			          </c:choose>
			          <li>
			          	    共${page.totalPageCount }页，${page.totalCount }条记录 到第
			          <div class="layui-input-inline">
			          	<input value="${page.pageNow }" name="pn" id="pn_input" class="layui-input" style="background: rgba(0,0,0,0.25);"/>
			          </div>
			                             页 
			          <button id="pn_btn" type="button" class="layui-btn layui-btn-sm layui-btn-normal">确定</button>
			          </li>
				   </ul>
		          <script type="text/javascript">
		              //为按钮绑定一个单击响应函数
		              $("#pn_btn").click(function() {
		                  //获取到要跳转的页码
		                  var pageNow = $("#pn_input").val();
		                  //通过修改window.location属性跳转到另一个页面
		                  window.location = "?pageNow=" + pageNow;
		              });
		          </script>
			     </div>
     			<!-- 分页结束 -->
				</form>
				<!--右边框架结束-->
			</div>
		</div>
		<!--右侧内容结束-->
	</div>
    <script src="${pageContext.request.contextPath }/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript">
    	$(document).ajaxStart(function(){
    		//加载层
    		layui.use('layer',function(){
    			var layer=layui.layer;
    			var index = layer.load(0, {shade: 0.5}); //0代表加载的风格，支持0-2
    		})
    		
    	}).ajaxStop(function(){
    		layui.use('layer',function(){
        		layer.closeAll('loading');
    		})
    		
    	});
    	
	 	//添加
        function classes_add(){
      	//iframe窗
		layui.use('layer',function(){
			layer.open({
				 type: 2,
	       	      title: '添加班级',
	       	      shadeClose: true,
	       	      shade: false,
	       	      maxmin: true, //开启最大化最小化按钮
	       	      area: ['460px', '330px'],
	       	      content: '${pageContext.request.contextPath }/class/abtraClass-add.jsp'
	        	});
			});
      	}
	 	//删除
		 function classes_del(obj,id){
			 layui.use('layer',function(){
				 var layer=layui.layer;
				 layer.confirm("确认要删除吗？",function(){
					$.get('${pageContext.request.contextPath }/class/delete',{"id":id},function(data){
						if(data.status == 0){
							layer.msg(data.msg,{time:2000},function(){
								//$(obj).parents("tr").remove();
								window.location.reload();
							});
						}else{
							parent.layer.msg(data.msg,{
								  shade:0.5,
								  anim: 6,
								  icon:5,
								  time:2000
							});  
						}
					}); 
				 });
			 });
		 }
	 
	 //修改
	 function classes_edit(id) {
		//iframe窗
			layui.use('layer',function(){
				layer.open({
				 type: 2,
	       	      title: '添加班级',
	       	      shadeClose: true,
	       	      shade: false,
	       	      maxmin: true, //开启最大化最小化按钮
	       	      area: ['460px', '330px'],
	       	      content: '${pageContext.request.contextPath }/class/toupdate?id='+id
	        	});
			});
		}
	 
	//全选
	 $('input[name="selectAll"]').click(function(){
		  if($(this).is(':checked')){
			  $('input[name="ids"]').each(function(){
				  $(this).prop("checked",true);
			  });
		  }else{
			  $('input[name="ids"]').each(function(){
				  $(this).prop("checked",false);
			  });
		  }
	  });
	
	//批量删除
	function delAll(){
		var ids_string = '';
     	$("input[name='ids']:checked").each(function(i){
     		ids_string = ids_string + $(this).val() + ',';
     	});
     	id_string = ids_string.substring(0,ids_string.length-1);
     	console.log(id_string);
     	 layui.use(['layer'], function(){ 
	    	 var layer = layui.layer;
	    	  layer.confirm('确认要删除吗？',function(index){
	                //捉到所有被选中的，发异步进行删除
	               $.get("${pageContext.request.contextPath }/class/deleteByIds",{ids:id_string},function(data){
	                 	if(data.status == 1){
	                 	layer.msg(data.msg, {icon: 1,time:2000});
	                 	window.location.reload();//刷新页面
	                 	}else{
	                 		layer.msg(data.msg, {icon: 1,time:2000});
	                 	}
	                },'json').error(function() {
	                	layui.use('layer',function(){
		                	layer.alert('删除失败,请核对其他是否含有相关信息再进行删除！');
	            		});
	                });
	            });
	    	});
	}
    </script>
</body>

</html>