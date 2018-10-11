<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
   		String  url =request.getServletPath().substring(1,request.getServletPath().lastIndexOf("/"));  
     	System.out.println("web  URL  路径:"+url);
	%> 
	<!--左边导航开始-->
		<div class="left-nav">
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			    <div class="panel panel-default">
				    <div class="panel-heading tab" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				      	<h4 class="panel-title">
				      		<span class="fa fa-tags"></span>
					        <a class="collapsed" role="button" >
					         	 班级管理
					        </a>
					        <span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
				      	</h4>
				    </div>
				  
				    <div id="collapseTwo" class="panel-collapse collapse <%if (url.equals("admin")){%>in<%} %>" role="tabpanel" aria-labelledby="headingTwo">
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/croom/show">班级地点列表</a>
				      	</div>
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/croom/stop">班级停用列表</a>
				      	</div>
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/croom/start">班级启用列表</a>
				      	</div>
				    </div>
			  </div>
			 
			   <div class="panel panel-default">
				    <div class="panel-heading tab" role="tab" id="headingThree" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				      	<h4 class="panel-title">
				      		<span class="fa fa-columns"></span>
					        <a class="collapsed" role="button" >
					         	 课程管理
					        </a>
					        <span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
				      	</h4>
				    </div>
				    <div id="collapseThree" class="panel-collapse collapse <%if (url.equals("course")){%>in<%} %>" role="tabpanel" aria-labelledby="headingThree">
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/course/show">课程列表</a>
				      	</div>
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/course/stop">课程停用列表</a>
				      	</div>
				      	<div class="panel-body">
				      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
				        	<a href="${pageContext.request.contextPath }/course/start">课程启用列表</a>
				      	</div>
				    </div>
			  </div>
			  
			  <div class="panel panel-default">
			  	<div class="panel-heading tab" role="tab" id="headingFour" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
			  		<h4 class="panel-title">
			  			<span class="fa fa-user-circle-o"></span>
			  			<a class="collapsed" role="button" >用户管理</a>
			  			<span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
			  		</h4>
			  	</div>
			  	<div id="collapseFour" class="panel-collapse collapse <% if(url.equals("user")){%>in<%}%>" role="tabpanel" aria-labelledby="headingFour">
			  		<div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/user/student">学生列表</a>
				    </div>
				    <div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/user/teacher">教师列表</a>
				    </div>
				    <div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/user/visitor">访客列表</a>
				    </div>
			  	</div>
			  </div>
			  
			  <div class="panel panel-default">
			  	<div class="panel-heading tab" role="tab" id="headingFive" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
			  		<h4 class="panel-title">
			  			<span class="fa fa-calendar"></span>
			  			<a class="collapsed" role="button" >教学安排</a>
			  			<span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
			  		</h4>
			  	</div>
			  	<div id="collapseFive" class="panel-collapse collapse <% if(url.equals("arrange")){%>in<%}%>" role="tabpanel" aria-labelledby="headingFive">
			  		<div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/arrange/findAll">安排教学任务</a>
				    </div>
			  	</div>
			  </div>
			  
			   <div class="panel panel-default">
			  	<div class="panel-heading tab" role="tab" id="headingSix" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
			  		<h4 class="panel-title">
			  			<span class="fa fa-edit"></span>
			  			<a class="collapsed" role="button" >签到管理</a>
			  			<span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
			  		</h4>
			  	</div>
			  	<div id="collapseSix" class="panel-collapse collapse <% if(url.equals("sign")){%>in<%}%>" role="tabpanel" aria-labelledby="headingSix">
			  		<div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/class/findClassAll">分配所在班级</a>
				    </div>
			  		<div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/sign/findAll">查看签到记录</a>
				    </div>
			  	</div>
			  </div>
			  
			   <div class="panel panel-default">
			  	<div class="panel-heading tab" role="tab" id="headingSeven" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
			  		<h4 class="panel-title">
			  			<span class="fa fa-bar-chart"></span>
			  			<a class="collapsed" role="button" >报表管理</a>
			  			<span class="glyphicon glyphicon-chevron-left icon" style="float: right;font-size: 10px;"></span>
			  		</h4>
			  	</div>
			  	<div id="collapseSeven" class="panel-collapse collapse <% if(url.equals("chart")){%>in<%}%>" role="tabpanel" aria-labelledby="headingSeven">
			  		<div class="panel-body">
			      		<span class="glyphicon glyphicon-chevron-right" style="padding-left: 25px;font-size: 13px;"></span>
			        	<a href="${pageContext.request.contextPath }/student/total?classId=1">月签到报表</a>
				    </div>
			  	</div>
			  </div>
			</div>
			  
		</div>
	<script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script>
		//箭头方向0向左
		var arr=new Array();
		for (var i=0;i<$('.tab').length;i++) {
			arr[i]=0;
		}
		var flag=0;
		$('.tab').each(function(i){
			$(this).click(function(){
				console.log($(this).children().eq(0))
				if(arr[i] == 0){
					
					$(this).children().eq(0).children().last().removeClass('glyphicon glyphicon-chevron-left').addClass('glyphicon glyphicon-chevron-down');
					arr[i]=1;
				}else{
					$(this).children().eq(0).children().last().removeClass('glyphicon glyphicon-chevron-down').addClass('glyphicon glyphicon-chevron-left');
					arr[i]=0;
				}
			})
		})
	</script>