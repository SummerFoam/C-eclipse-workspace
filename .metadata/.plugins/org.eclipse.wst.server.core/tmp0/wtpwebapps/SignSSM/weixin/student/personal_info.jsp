<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>扫码签到</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!--æ åmui.css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/mui.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
		<link href="${pageContext.request.contextPath }/css/mui.picker.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/css/mui.poppicker.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personal.css">
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="fa fa-chevron-left info_icon" href="${pageContext.request.contextPath }/weixin/student/stu_personal.jsp"></a>
			<a class="mui-icon mui-icon-info-filled mui-pull-right"></a>
			<h1 class="mui-title">个人信息</h1>
		</header>
		<div class="mui-content">
			<div class="info_img">
				<div class="bg-shadow">
					<img src="${user.headimg }" width="60" height="60" />
				</div>
			</div>
		    <div class="mui-card">
		        <ul class="mui-table-view">
		            <li class="mui-table-view-cell">昵称 <span class="mui-badge mui-badge-primary">${user.nickname }</span></li>
		            <li class="mui-table-view-cell">性别 
			            <span class="mui-badge mui-badge-success">
							<c:choose>
								<c:when test="${sex == 1 }"><span class="des">男</span></c:when>
								<c:when test="${sex == 2 }"><span class="des">女</span></c:when>
							</c:choose>
						</span>
					</li>
		            <li class="mui-table-view-cell">所在地 <span class="mui-badge">${country }${province }${city }</span></li>
		        	<li class="mui-table-view-cell show-classes" id="promptBtn-class">所在班级
	        			<c:choose>
	        				<c:when test="${classes.name == '' or classes.name  == null}"><span id="class_name" class="mui-icon mui-icon-arrowright"></span><span style="float:right;color:#ccc;">去设置</span></c:when>
	        				<c:when test="${classes.name != '' }"><span id="class_name" class="mui-badge mui-badge-primary">${classes.name }</span></c:when>
	        			</c:choose>
	        		</li>
		        	<li class="mui-table-view-cell show-name" id="promptBtn-name">学生姓名
		        		<c:choose>
		        			<c:when test="${student.name == '' or student.name ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${student.name != '' }"><span class="mui-badge mui-badge-primary">${student.name }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-sno" id="promptBtn-sno">学号
		        		<c:choose>
		        			<c:when test="${student.sno == '' or student.sno ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${student.sno != '' }"><span class="mui-badge mui-badge-primary">${student.sno }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-grade" id="promptBtn-grade">年级
		        		<c:choose>
		        			<c:when test="${student.grade == '' or student.grade ==null }"><span class="mui-badge mui-badge-warning" id='userResult'>未设置</span></c:when>
		        			<c:when test="${student.grade != '' }"><span class="mui-badge mui-badge-primary" id='userResult'>${student.grade }</span></c:when>
		        		</c:choose>
	        		</li>
	        		<li class="mui-table-view-cell show-department" id="promptBtn-department">专业
		        		<c:choose>
		        			<c:when test="${student.department == '' or student.department ==null }"><span class="mui-badge mui-badge-warning">未设置</span></c:when>
		        			<c:when test="${student.department != '' }"><span class="mui-badge mui-badge-primary">${student.department }</span></c:when>
		        		</c:choose>
	        		</li>
		        </ul>
		    </div>
		</div>
		
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/flexible.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.picker.js"></script>
	<script src="${pageContext.request.contextPath }/js/mui.poppicker.js"></script>
	<script type="text/javascript">
		//防止右键出现弹窗
		document.oncontextmenu=function(e){
		    //return false;
		    e.preventDefault();
		};
		document.getElementById("promptBtn-name").addEventListener('tap', function(e) {
			var className=document.getElementById('class_name').innerHTML;
			if(className == ""){
				mui.alert("请先填入所在班级！");
			}else{
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['确定', '取消'];
				mui.prompt('信息完善', '请输入姓名', '我的信息', btnArray, function(e) {
					if (e.index == 0) {
						$.get('${pageContext.request.contextPath}/student/insert',{"name":e.value},function(data){
							if(data.status == 0){
							    var html='学生姓名<span class="mui-badge mui-badge-primary">'+data.student.name+'</span>';
								$('.show-name').html(html);
								
							}
						},"json");
					}
				});
			}
		});
		
		document.getElementById("promptBtn-sno").addEventListener('tap',function(e){
			var className=document.getElementById('class_name').innerHTML;
			if(className == ""){
				mui.alert("请先填入所在班级！");
			}else{
				e.detail.gesture.preventDefault();
				var btnArray = ['确定', '取消'];
				mui.prompt('信息完善', '请输入学号', '我的信息', btnArray, function(e) {
					if (e.index == 0) {
						$.get('${pageContext.request.contextPath}/student/insert',{"sno":e.value},function(data){
							if(data.status == 0){
							    var html='学号<span class="mui-badge mui-badge-primary">'+data.student.sno+'</span>';
								$('.show-sno').html(html);
							}
						},"json");
					}
				})
			}
			
		});
		
		/* document.getElementById("promptBtn-grade").addEventListener('tap',function(e){
			e.detail.gesture.preventDefault();
			var btnArray = ['确定', '取消'];
			mui.prompt('信息完善', '请输入年级', '我的信息', btnArray, function(e) {
				if (e.index == 0) {
					$.get('${pageContext.request.contextPath}/student/insert',{"grade":e.value},function(data){
						if(data.status == 0){
						    var html='年级<span class="mui-badge mui-badge-primary">'+data.student.sno+'</span>';
							$('.show-grade').html(html);
						}
					},"json");
				}
			})
		}); */
		
		document.getElementById("promptBtn-department").addEventListener('tap',function(e){
			var className=document.getElementById('class_name').innerHTML;
			if(className == ""){
				mui.alert("请先填入所在班级！");
			}else{
				e.detail.gesture.preventDefault();
				var btnArray = ['确定', '取消'];
				mui.prompt('信息完善', '请输入专业', '我的信息', btnArray, function(e) {
					if (e.index == 0) {
						$.get('${pageContext.request.contextPath}/student/insert',{"department":e.value},function(data){
							if(data.status == 0){
							    var html='专业<span class="mui-badge mui-badge-primary">'+data.student.department+'</span>';
								$('.show-department').html(html);
							}
						},"json");
					}
				});
			}
		}); 
		
		
		(function($, doc) {
			$.init();
			$.ready(function() {
				//普通示例
				var userPicker = new $.PopPicker();
				userPicker.setData([{
					value: '14',
					text: '14级'
				}, {
					value: '15',
					text: '15级'
				}, {
					value: '16',
					text: '16级'
				}, {
					value: '17',
					text: '17级'
				}, {
					value: '18',
					text: '18级'
				}]);
				var showUserPickerButton = doc.getElementById('promptBtn-grade');
				var userResult = doc.getElementById('userResult');
				showUserPickerButton.addEventListener('tap', function(event) {
					var className=document.getElementById('class_name').innerHTML;
					if(className == ""){
						mui.alert("请先填入所在班级！");
					}else{
						userPicker.show(function(items) {
							mui.get('${pageContext.request.contextPath}/student/insert',{"grade":items[0].text},function(data){
								if(data.status == 0){
									var content='年级<span class="mui-badge mui-badge-primary">'+data.student.grade+'</span>';
									console.log(data);
									mui('.show-grade')[0].innerHTML=content;
								}
							},'json');
						});
					}
					
				}, false);
				
			});
		})(mui, document);
		
		//所在班级
		document.getElementById('promptBtn-class').addEventListener('tap',function(event){
			$.get('${pageContext.request.contextPath}/student/findAllClasses',function(data){
				if(jQuery.isEmptyObject(data)) {
					mui.confirm('亲爱的${user.nickname }，请联系管理员添加班级', '温馨提示', function(e) {
						if (e.index == 1) {
							window.location.href = "${pageContext.request.contextPath}/teacher/findByUserId"
						}
					});
				}else{
					var json=[];
					$.each(data,function(indexs,items){
						json.push({
							value:items.id,
							text:items.name
						});
					});
					var picker=new mui.PopPicker();
					picker.setData(json);
					picker.show(function(SelectedItem){
						$.get('${pageContext.request.contextPath}/student/insert',{"classId":SelectedItem[0].value},function(data){
							if(data.status == 0){
								var html='所在班级<span id="class_name" class="mui-badge mui-badge-primary">'+SelectedItem[0].text+'</span>';
								$('.show-classes').html(html);
							}
					});
				 });
			   }
				
			});
		});
	</script>
	</body>
	
</html>
