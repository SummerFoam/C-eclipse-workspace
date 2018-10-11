<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>报表管理</title>
 <meta charset="utf-8"><link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    /* css 代码  */
</style>
<script src="${pageContext.request.contextPath }/js/highcharts.js"></script>
<script src="${pageContext.request.contextPath }/js/exporting.js"></script>
<script src="${pageContext.request.contextPath }/js/highcharts-zh_CN.js"></script>
<script src="${pageContext.request.contextPath }/js/dark-unica.js"></script>
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/font-awesome.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/layui/css/layui.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath }/css/manager.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" />
<style type="text/css">
	.layui-form-select dl{background-color:.layui-form-select dl;}
	.layui-form-select dl dd {
	    cursor: pointer;
	    color: black;
	}
</style>
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
			<form action="${pageContext.request.contextPath }/student/total" method="get" class="layui-form xbs">
				<div class="layui-form-pane" style="text-align: center;">
					<div class="layui-form-item" style="display: inline-block;">
						<label class="layui-form-label xbs768">请选择班级</label>
						<div class="layui-input-inline">
					      <select name="classId" lay-filter="name">
					      	<c:forEach items="${classlist }" var="item">
					      		<option value="${item.id }" <c:if test="${classId == item.id }">selected</c:if>  >${item.name }</option>
					      	</c:forEach>
					      </select>
					    </div>
					</div>
					<div class="layui-form-item"style="display: inline-block;">
						 <div class="layui-input-inline" style="width:80px;height: 43px;">
	                        <button type="submit" class="layui-btn search"><i class="layui-icon">&#xe615;</i></button>
	                   	</div>
					</div>
				</div>
			</form>
			<div id="container" style="min-width:400px;height:400px"></div>
		</div>
	</div>	
	<script src="${pageContext.request.contextPath }/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		layui.use('form', function(){
		  var form = layui.form;
		});
	var chart = Highcharts.chart('container',{
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '月签到记录'
	    },
	    subtitle: {
	        text: '数据来源: SIGN System'
	    },
	    xAxis: {
	        categories: [
	            '一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: '学生人数 (个)'
	        }
	    },
	    tooltip: {
	        // head + 每个 point + footer 拼接成完整的 table
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	        '<td style="padding:0"><b>{point.y:.1f} 人</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    plotOptions: {
	        column: {
	            borderWidth: 0
	        }
	    },
	    //接收后台传过来的数组值
	    series: ${jsonArray}
	});
    </script>
</body>
</html>