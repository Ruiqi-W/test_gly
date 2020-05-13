<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://6666.com" prefix="d" %>
</head>
<script type="text/javascript">
function newsDelete(newsId){
	if(confirm("确认要删除这条新闻吗？")){
		$.post("news?action=delete",{newsId:newsId},
			function(delFlag){
				var flag=eval('('+delFlag+')');
				if(flag){
					alert("删除成功!");
					window.location.href="${pageContext.request.contextPath}/#";
				}else{
					alert("删除失败");
				}
			}
		);
	}
}
</script>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		
		<!--当前位置：&nbsp;&nbsp;
		主页&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻列表&nbsp;&nbsp;  -->
		${navCode }
	
	</div>
	<div class="search_content" style="vertical-align: middle;">
		<form action="${pageContext.request.contextPath}/news/listUI.action" method="post">
			新闻标题：<input type="text" id="s_title" name="s_title" style="width:180px" value="${param.s_title }"/>&nbsp;&nbsp;
			发布日期：<input type="text" id="s_bPublishDate" name="s_bPublishDate" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH-mm-ss'})" style="width: 100px;" value="${param.s_bPublishDate }"/>
			&nbsp;到&nbsp;<input type="text" id="s_aPublishDate" name="s_aPublishDate" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH-mm-ss'})" style="width: 100px;" value="${param.s_aPublishDate }"/>
			&nbsp;&nbsp;<button class="btn btn-mini btn-primary" type="submit" style="margin-top: -8px;">查询</button>
		</form>
	</div>
	<div class="data_content">
		<table class="table table-hover table-bordered">
			<tr>
				<th>序号</th>
				<th>新闻标题</th>
				<th>新闻类别</th>
				<th>发布时间</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${newss }" var="news" varStatus="in">
				<tr>
					<td>${in.count+(pageInfo.pageNum-1)*pageInfo.pagrSize }</td>
					<td>${news.title }</td>
					<td>${news.typeName }</td>
					<td><d:DateFormat date="${news.publishDate }"/></td>
					<td><button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location.href='#'">修改</button>&nbsp;<button class="btn btn-mini btn-danger" type="button" onclick="newsDelete()">删除</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="pagination pagination-centered">
  		<ul>
  			
  			<li><a href="${pageContext.request.contextPath}/news/listUI.action?currentPage=1&s_title=${param.s_title}&s_bPublishDate=${param.s_bPublishDate}&s_aPublishDate=${param.s_aPublishDate}">首页</a></li>
  			<li ><a href="?currentPage=${pageInfo.pageNum-1 }&s_title=${param.s_title}&s_bPublishDate=${param.s_bPublishDate}&s_aPublishDate=${param.s_aPublishDate}">上一页</a></li>
  			<c:forEach items="${steps}" var="number">
  				<c:choose>
  					<c:when test="${number==pageInfo.pageNum }">
  						<li><span style="color:red;">${number }</span></li>
  					</c:when>
  					<c:otherwise>
  						<li><a href="?currentPage=${number }&s_title=${param.s_title}&s_bPublishDate=${param.s_bPublishDate}&s_aPublishDate=${param.s_aPublishDate}">${number }</a></li>
  					</c:otherwise>
  				</c:choose>	
  			</c:forEach>
  			<li ><a href="?currentPage=${pageInfo.pageNum+1 }&s_title=${param.s_title}&s_bPublishDate=${param.s_bPublishDate}&s_aPublishDate=${param.s_aPublishDate}">下一页</a></li>
  			<li ><a href="?currentPage=${pageInfo.pages }&s_title=${param.s_title}&s_bPublishDate=${param.s_bPublishDate}&s_aPublishDate=${param.s_aPublishDate}">尾页</a></li>
  			<li>当前${pageInfo.pageNum }/${pageInfo.pages }页，总共${pageInfo.total }条记录</li>
  		
  		</ul>
  	</div>
</div>
</body>
</html>