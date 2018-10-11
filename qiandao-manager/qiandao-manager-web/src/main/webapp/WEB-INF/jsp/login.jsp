<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/style.css" />
<script src="../js/jquery.min.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="stars"></div>
		<canvas id="myCanvas" width="476" height="686"></canvas>
		<div class="login">
			<div class="login_title">
				<span>账号登录</span>
			</div>
			<div class="login_fields">
				<div class="login_fields__user">
					<div class="icon">
						<img src="../images/user_icon_copy.png" />
					</div>
					<input placeholder="用户名" type="text" class="search-input" name="name">
					<div class="validation" style="opacity: 0; right: 20px;">
						<img src="../images/tick.png" /> 
					</div>
				</div>
				<div class="speed"></div> 
				<div class="login_fields__user">
					<div class="icon">
						<img src="../images/lock_icon_copy.png" />
					</div>
					<input placeholder="密码" type="password" class="search-input" name="password">
					<div class="validation" style="opacity: 0; right: 20px;">
						<img src="../images/tick.png" /> 
					</div>
				</div>
				<div class="speed"></div>
				<div class="login_fields__submit">
					<input type="submit" value="登录" />
				</div>
			</div>	
				<div class="success">
					<h2>认证成功</h2>
					<p>欢迎回来</p>
				</div>
				<div class="disclaimer">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper laoreet placerat. Nullam semper auctor justo, rutrum posuere odio vulputate nec.
					</p>
				</div>
			</div>
			<div class="authent">
					<img src="../images/puff.svg" />
			</div>
		
</body>

	<script src='../js/stopExecutionOnTimeout.js'></script>
	<script src="../js/prefixfree.min.js"></script>
	<script> 
		
		$(".search-input").focus(function(){
			var speed = $(this).parent('.login_fields__user').next();
			speed.animate({
				width:"320px"
			},500);
			
//			$(this).prev().css('opacity',1);
			$(this).prev().animate({
				opacity:"1"
			},200);
		}).blur(function(){
			var speed = $(this).parent('.login_fields__user').next();
			speed.animate({
				width:"0px"
			},500); 
			$(this).prev().animate({
				opacity:"0.5"
			});
		});
		
		$(".search-input").keyup(function(){
			var $search=$(this).val();
			console.log($search);
			if ($search == "") {
				$(this).next().animate({
				right:'20px',
				opacity:'0'
			},200);
			}else{
				$(this).next().animate({
				right:'30px',
				opacity:'1'
			},200);
			}
		});
		 
		 $('input[type="submit"]').click(function(){
		 	$(".login").addClass("test");
		 	setTimeout(function(){
		 		$(".login").addClass("testtwo");
		 	},300);
		 	
		 	setTimeout(function(){
		 		$(".authent").show().animate({right:-320,opacity:1},{
		 			easing: 'easeOutQuint',
		            duration: 600,
		            queue: false
		 		});
		 	},500);
		 	
		 	setTimeout(function(){
		 		$(".authent").show().animate({right:90,opacity:0},{
		 			easing: 'easeOutQuint',
		            duration: 600,
		            queue: false
		 		});
		 		$(".login").removeClass('testtwo');
		 	},1000);
		 	
		 	setTimeout(function(){
		 		$(".login").removeClass('test');
		 		$(".login div").fadeOut();
		 		$(".success").fadeIn();
		 	},1500);
		 	
		});
		
			//星空特效
		var stars = 800;
	    var $stars = $('.stars');
	    var r = 800;
	    for (var i = 0; i < stars; i++) {
	        if (window.CP.shouldStopExecution(1)) {
	            break;
	        }
	        var $star = $('<div/>').addClass('star');
	        $stars.append($star);
	    }
	    window.CP.exitedLoop(1);
	    $('.star').each(function () {
	        var cur = $(this);
	        var s = 0.2 + Math.random() * 1;
	        var curR = r + Math.random() * 300;
	        cur.css({
	            transformOrigin: '0 0 ' + curR + 'px',
	            transform: ' translate3d(0,0,-' + curR + 'px) rotateY(' + Math.random() * 360 + 'deg) rotateX(' + Math.random() * -50 + 'deg) scale(' + s + ',' + s + ')'
	        });
	    });
		
		
	</script>
	
</html>