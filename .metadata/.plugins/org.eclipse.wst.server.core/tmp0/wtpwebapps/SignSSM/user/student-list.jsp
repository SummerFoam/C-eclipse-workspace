<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.css" rel="stylesheet">
<link href="../layui/css/layui.css" rel="stylesheet" >
<link href="../css/manager.css" rel="stylesheet" />
<link href="../css/common.css" rel="stylesheet" />
<title>用户管理</title>
</head>
<body>
	<!-- 顶部 -->
	<jsp:include page="../admin/top.jsp"></jsp:include>
	<div class="wrapper">
		<!-- 左边导航开始 -->
		<jsp:include page="../admin/left.jsp"></jsp:include>
		<!-- 左边导航结束-->
		<!-- 右侧内容开始 -->
		<div class="page-content">
			<div class="content">
				<!-- 右侧框架开始 -->
				<form action="${pageContext.request.contextPath }/user/findByName" method="get" accept-charset="UTF-8">
					<div class="layui-form-pane" style="text-align: center;">
						<div class="layui-form-item" style="display: inline-block;">
							<label class="layui-form-label xbs768">日期范围</label>
							<div class="layui-input-inline xbs768">
		                      <input class="layui-input" placeholder="开始日" id="LAY_demorange_s">
		                    </div>
		                    <div class="layui-input-inline xbs768">
		                      <input class="layui-input" placeholder="截止日" id="LAY_demorange_e">
		                    </div>
		                    <div class="layui-input-inline">
		                      <input type="text" name="nickname" id="nickname" placeholder="请输入昵称" autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-input-inline" style="width:80px">
		                        <button type="submit" class="layui-btn search"><i class="layui-icon">&#xe615;</i></button>
		                    </div>
						</div>
					</div>
				</form>
				<xblock style="height:50px;">
					<span class="x-right"  style="line-height:40px">共有数据：<span id="count">${page.totalCount}</span> 条</span>
				</xblock>
				<form action="${pageContext.request.contextPath }/user/student" method="get">
					<table class="layui-table">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectAll"/></th>
								<th>ID</th>
								<th>openId</th>
								<th>昵称</th>
								<th>头像</th>
								<th>学生姓名</th>
								<th>学号</th>
								<th>加入时间</th>
								<th>修改时间</th>
								<th>类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="content">
							<c:forEach items="${list }" var="item">
								<tr>
									<td><input type="checkbox" value="${item.id}" name="ids"/></td>
									<td>${item.id }</td>
									<td>${item.openid }</td>
									<td>${item.nickname }</td>
									<td><img src="${item.headimg }" width="60" style="border-radius: 100%;"/></td>
									<td>${item.name }</td>
									<td>${item.sno }</td>
									<td>${create_time }</td>
									<td>${update_time }</td>
									<td class="td-status">
										<c:choose>
											<c:when test="${item.type == 0 }">
												<span class="layui-btn layui-btn-normal layui-btn-mini">学生</span>
											</c:when>
											<c:when test="${item.type == 1 }">
												<span class="layui-btn layui-btn-danger layui-btn-mini">教师</span>
											</c:when>
											<c:when test="${item.type == 2 }">
												<span class="layui-btn layui-btn-warm layui-btn-mini">访客</span>
											</c:when>
										</c:choose>
									</td>
									<td class="td-manage">
										<c:choose>
											<c:when test="${item.type == 0 }">
												<a href="javascript:;" onclick="toTeacher(this,${item.id})" title="修改为教师" style="text-decoration:none;">
													<i class="fa fa-users"></i>
												</a>
											</c:when>
											<c:when test="${item.type == 1 }">
												<a href="javascript:;" onclick="toStudent(this,${item.id})" title="修改为学生" style="text-decoration:none;">
													<i class="fa fa-user-plus"></i>
												</a>
											</c:when>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 分页开始 -->
		             <div class="page_nav" style="text-align: center;">
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
				</form>
				<!-- 右侧框架结束 -->
			</div>
		</div>
		<!-- 右侧内容结束 -->
	</div>
	<script src="../layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		//修改为教师
		function toTeacher(obj,id){
			layui.use('layer',function(){
				var layer=layui.layer;
				layer.confirm("确定要修改为教师吗？",function(index){
					$.get('${pageContext.request.contextPath}/user/toTeacher?id='+id,function(data){
						if(data.status == 0){
							layer.msg(data.msg,{icon: 6,time:1000});
	                        window.location.href="${pageContext.request.contextPath}/user/teacher";
						}else{
							layer.msg(data.msg,{icon: 5,time:1000});
						}
					});	
				});
			});
			
		}
		
	</script>
</body>
</html>