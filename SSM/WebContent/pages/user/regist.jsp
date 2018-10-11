<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>东软睿道会员注册页面</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" >
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/script/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#sub_btn").click(function(){
			var $username=$("input[name='username']").val();
			var $pwd=$("input[name='password']").val();
			var $repwd=$("input[name='repwd']").val();
			var $email=$("input[name='email']").val();
			var $code=$("input[name='code']").val();
			var nameReg=/^[a-zA-Z0-9_-]{3,16}$/;
			var result=nameReg.test($username);
			if(!result){
				$("#errorMsg").html("用户名不符合规则");
				return false;
			}
			var pwdReg=/^[a-z0-9_-]{6,18}$/;
			result=pwdReg.test($pwd);
			if(!result){
				$("#errorMsg").html("密码不符合规则");
				return false;
			}
			if($repwd != $pwd){
				$("#errorMsg").html("两次输入密码不一致");
				return false;
			}
			var emailReg=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			result=emailReg.test($email);
			if(!result){
				$("#errorMsg").html("邮箱不符合规则");
				return false;
			}
			if($code==""){
				$("#errorMsg").html("验证码不符合规则");
				return false;
			}
			//取消默认行为
			//return false;
		})
	})
</script>
</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="${pageContext.request.contextPath}/static/img/logo.gif" >
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎注册</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>注册东软睿道会员</h1>
								<c:if test="${message != '' }">
									<span id="errorMsg" class="errorMsg">${message }</span>
								</c:if>
								<c:if test="${message == '' }">
									<span id="errorMsg" class="errorMsg"></span>
								</c:if>
							</div>
							<h1><a href="${pageContext.request.contextPath}/user/set">qweqwe</a></h1>
							<div class="form">
								<form action="${pageContext.request.contextPath}/user/Regist" method="post">
									<label>用户名称：</label>
									<input class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username"/>
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input class="itxt" type="password" placeholder="确认密码" autocomplete="off" tabindex="1" name="repwd" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input class="itxt" type="text" placeholder="请输入邮箱地址" autocomplete="off" tabindex="1" name="email" />
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" type="text" style="width: 150px;" name="code"/>
									<img alt="" src="${pageContext.request.contextPath}/static/img/code.bmp" style="float: right; margin-right: 40px">									
									<br />
									<br />
									<input type="submit" value="注册" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
			<span>
				东软睿道书城.Copyright &copy;2015
			</span>
		</div>
</body>
</html>