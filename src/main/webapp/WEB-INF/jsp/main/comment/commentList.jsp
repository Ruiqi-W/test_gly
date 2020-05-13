<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#checkedAll").click(function(){
			if($(this).prop("checked")==true){
				$("input[name='commentIds']").prop("checked",true);
			}else{
				$("input[name='commentIds']").prop("checked",false);
			}
		});
		
	});
	
	function commentsDelete(){
		var chk_value=[];
		$('input[name="commentIds"]:checked').each(function(){
			chk_value.push($(this).val());
		});
		if(chk_value.length==0){
			alert("请选择要删除的数据");
			return;
		}
		var commentIds=chk_value.join(",");
		if(confirm("确认要删除这些评论吗？")){
			$.post("comment?action=delete",{commentIds:commentIds},
				function(result){
					var result=eval('('+result+')');
					if(result.success){
						alert("成功删除"+result.delNums+"条数据");
						window.location.href="${pageContext.request.contextPath}/comment?action=backList";
					}else{
						alert(result.errorMsg);
					}
				}
			);
		}
	}

	function commentDelete(commentId){
		if(confirm("确认要删除这条评论吗？")){
			$.post("comment?action=delete",{commentIds:commentId},
				function(result){
					var result=eval('('+result+')');
					if(result.success){
						alert("删除成功！");
						window.location.href="${pageContext.request.contextPath}/comment?action=backList";
					}else{
						alert(result.errorMsg);
					}
				}
			);
		}
	}
</script>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		
		当前位置：&nbsp;&nbsp;
		主页&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻评论管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻评论维护&nbsp;&nbsp;
	
	</div>
	<div class="search_content" style="vertical-align: middle;padding-right: 20px;">
		<div style="float: left;padding-top: 10px;">
			<button class="btn btn-mini btn-danger" type="button" onclick="commentsDelete()">批量删除</button>
		</div>
		<div style="float: right;">
			<form action="${pageContext.request.contextPath}/comment?action=backList" method="post">
				评论日期：<input type="text" id="s_bCommentDate" name="s_bCommentDate" class="Wdate" onclick="WdatePicker()" style="width: 100px;" value="${s_bCommentDate }"/>
				&nbsp;到&nbsp;<input type="text" id="s_aCommentDate" name="s_aCommentDate" class="Wdate" onclick="WdatePicker()" style="width: 100px;" value="${s_aCommentDate }"/>
				&nbsp;&nbsp;<button class="btn btn-mini btn-primary" type="submit" style="margin-top: -8px;">查询</button>
			</form>
		</div>
	</div>
	<div class="data_content">
		<table class="table table-hover table-bordered">
			<tr>
				<th><input type="checkbox" id="checkedAll"/></th>
				<th>序号</th>
				<th>评论内容</th>
				<th>评论主题</th>
				<th>评论时间</th>
				<th>操作</th>
			</tr>
			
				<tr>
					<td><input type="checkbox" name="commentIds" value="${commentBack.commentId}"/></td>
					<td>${status.index+1 }</td>
					<td><a title="${commentBack.content }">...</a></td>
					<td><a title="${commentBack.newsTitle }" target="_blank" href="news?action=show&newsId=${commentBack.newsId }">...</a></td>
					<td>2012-12-12</td>
					<td><button class="btn btn-mini btn-danger" type="button" onclick="commentDelete(${commentBack.commentId})">删除</button></td>
				</tr>
	
		</table>
	</div>
	
	<div class="pagination pagination-centered">
  		<ul>
  			<li><a href="/News/comment?action=backList&amp;page=1">首页</a></li>
  			<li class="disabled"><a href="#">上一页</a></li><li class="active"><a href="#">1</a></li>
  			<li><a href="/News/comment?action=backList&amp;page=2">2</a></li>
  			<li><a href="/News/comment?action=backList&amp;page=2">下一页</a></li>
  			<li><a href="/News/comment?action=backList&amp;page=2">尾页</a></li>
  		</ul>
  	</div>
</div>
</body>
</html>