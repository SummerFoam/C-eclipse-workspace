



//课程模糊查询
		function course_search(){
			var name=$('#name').val();
			$.post('likeName',{name:name},function(data){
				console.log(data);
				var html='';
				var count=0;
				$.each(data,function(indexs,items){
					console.log(items);
					console.log(items.length);
					count=items.length;
					$.each(items,function(index,item){
						console.log(item);
						var status="";
						if(item.status == 1){
							status="可用";
						}else{
							status="不可用";
						}
						html+='<tr>'+
						'<td>'+
						 '<input type="checkbox" value="' + item.id + '" name="ids">' + 
						   '</td>' + 
						   '<td>' + item.id + '</td>' +
						   '<td> ' + item.name + ' </td>' + 
						   '<td> ' + item.courseCount + ' </td>' + 
						   '<td> ' + item.formatcreateTime + ' </td>' + 
						   '<td> ' + item.formatupdateTime + ' </td>' + 
						   '<td class="td-status">' +
					       '<span class="layui-btn layui-btn-normal layui-btn-mini">'+ status + '</span>' + 
						   '</td>' +
					       '<td class="td-manage">' + 
						   '<a style="text-decoration:none" onclick="course_stop(this,'+item.id+')" href="javascript:;" title="停课">' +
					       '<i class="layui-icon"></i>' +
						   '</a>' +
						   '<a title="编辑" href="javascript:void(0)" onclick="course_edit(' + item.id + ')" class="ml-5" style="text-decoration:none">' + 
						   '<i class="layui-icon"></i>' +
						   '</a>' +
					       '<a title="删除" href="javascript:void(0);" onclick="course_del(this,' + item.id + ')" style="text-decoration:none">' +
						   '<i class="layui-icon"></i>' + 
					       '</a>' +
						   '</td>' +
						   '</tr>'+
						   '<div class="page_nav" style="text-align: center;">'+
						   '<c:choose>'+
		             	   '<c:when test="${page.totalPageCount == 1}">'+
			             		'<c:set var="begin" value="${page.pageNow}"></c:set>'+
					        	'<c:set var="end" value="${page.totalPageCount}"></c:set>'+
			             	'</c:when>'+
			             	'<c:when test="${page.totalPageCount == 2}">'+
			             		'<c:set var="begin" value="${page.pageNow}"></c:set>'+
					        	'<c:set var="end" value="${page.totalPageCount}"></c:set>'+
			             	'</c:when>'+
			             	'<c:when test="${page.totalPageCount == 3}">'+
			             		'<c:set var="begin" value="${page.pageNow}"></c:set>'+
					        	'<c:set var="end" value="${page.totalPageCount}"></c:set>'+
			             	'</c:when>'+
			             	'<c:when test="${page.totalPageCount >3}">'+
			             		'<c:set var="begin" value="${page.pageNow}"></c:set>'+
						        '<c:set var="end" value="${page.pageNow+3 }"></c:set>'+
						        '<c:if test="${end >= page.totalPageCount }">'+
						           '<c:set var="begin" value="${page.totalPageCount-3}"></c:set>'+
						           '<c:set var="end" value="${page.totalPageCount}"></c:set>'+
						        '</c:if>'+
			             	'</c:when>'+
		             	'</c:choose>'+
				        
						'<ul class="pagination">'+
							'<c:choose>'+
				              '<c:when test="${page.pageNow != 1 }">'+
				                  '<li><a href="?pageNow=1"><span aria-hidden="true">首页</span></a></li>'+ 
				                  '<li><a href="?pageNow=${page.pageNow-1 }" aria-label="Previous"><span aria-hidden="true">«</span></a></li>'+
				              '</c:when>'+
				         	'</c:choose>'+
							'<c:forEach begin="${begin }" end="${end }" var="index">'+
				              '<c:choose>'+
				                  '<c:when test="${page.pageNow == index }">'+
				                  	 '<li>'+
				                  		'<a style="background: rgba(0,0,0,0.3);color: #fff;">${index}</a>'+
				                  	 '</li>'+
				                  '</c:when>'+
				                  '<c:otherwise>'+
			                  		  '<li>'+
			                  		  	'<a href="?pageNow=${index }">${index }</a>'+
			                  		  '</li>'+
				                  '</c:otherwise>'+
				              '</c:choose>'+
				          	'</c:forEach>'+
				          '<c:choose>'+
				              '<c:when test="${page.pageNow != page.totalPageCount }">'+
				                  '<li>'+
				                  	'<a href="?pageNow=${page.pageNow+1 }" aria-label="Next"><span aria-hidden="true">»</span></a>'+
				                  '</li>'+
				                  '<li>'+
				                  	'<li><a href="?pageNow=${page.totalPageCount }" aria-label="Next"><span aria-hidden="true">末页</span></a></li>'+
				                  '</li>'+
				              '</c:when>'+
				          '</c:choose>'+
				          '<li>'+
				          	    '共${page.totalPageCount }页，${page.totalCount }条记录 到第'+
				          '<div class="layui-input-inline">'+
				          	'<input value="${page.pageNow }" name="pn" id="pn_input" class="layui-input" style="background: rgba(0,0,0,0.25);"/>'+
				          '</div>页 '+
				          '<button id="pn_btn" type="button" class="layui-btn layui-btn-sm layui-btn-normal">确定</button>'+
				          '</li>'+
					   '</ul>'+
					   '<script type="text/javascript">'+
			              '$("#pn_btn").click(function() {'+
			                  //获取到要跳转的页码
			                 ' var pageNow = $("#pn_input").val();'+
			                  //通过修改window.location属性跳转到另一个页面
			                 ' window.location = "?pageNow=" + pageNow;'+
			            '  });'+
			         ' </script>'
					})
				})
				$('#content').html(html);
			});
		}