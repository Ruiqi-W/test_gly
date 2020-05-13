<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中惠老年公寓管理系统后台管理</title>
	<link rel="icon" href="/favicon.ico"  type="image/x-icon"/>
	<link href="/style/news.css" rel="stylesheet">
	<link href="/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
	<script src="/bootstrap/js/jQuery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>

	<script src="/js/ckeditor/ckeditor.js"></script>
	<script src="/js/My97DatePicker/WdatePicker.js"></script>
	<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.0/jquery.js"></script>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css" rel="stylesheet">
<%
	String mainPage=(String)request.getAttribute("mainPage");
	if(mainPage==null || mainPage.equals("")){
		mainPage="default.jsp";
	}
%>
</head>
<body>
<div class="container">
<jsp:include page="common/head.jsp"/>
<div class="row-fluid">
	<div class="span3">
		<div class="newsMenu">
			<ul class="nav nav-tabs nav-stacked">
				<li><a href="/main/mainUI.action"><strong>主页</strong></a></li>
				<li><a href=""><strong>老人管理</strong></a></li>
				<li><a href="/newsType/addUI.action">&nbsp;&nbsp;老人信息添加</a></li>
				<li><a href="/newsType/listUI.action">&nbsp;&nbsp;老人信息管理</a></li>
				<li><a href="#"><strong>护工管理</strong></a></li>
				<li><a href="/news/addUI.action">&nbsp;&nbsp;护工信息添加</a></li>
				<li><a href="/news/listUI.action">&nbsp;&nbsp;护工信息管理</a></li>
				<li><a href=""><strong>房屋管理</strong></a></li>
				<li><a href="/comment?action=backList">&nbsp;&nbsp;房屋信息添加</a></li>
				<li><a href="/comment?action=backList">&nbsp;&nbsp;房屋信息管理</a></li>
				<li><a href=""><strong>特别事件管理</strong></a></li>
				<li><a href="/link?action=preSave">&nbsp;&nbsp;特别事件添加</a></li>
				<li><a href="/link?action=backList">&nbsp;&nbsp;特别事件列表</a></li>
			</ul>
		</div>
	</div>
	<div class="span9">
	    <jsp:include page="<%=mainPage%>"></jsp:include>
		<%-- <jsp:include page="newsType/newsTypeList.jsp"></jsp:include> --%> 
	    <%-- <jsp:include page="newsType/newsTypeSave.jsp"></jsp:include> --%>
		<%-- <jsp:include page="news/newsList.jsp"></jsp:include> --%>
		<%-- <jsp:include page="news/newsSave.jsp"></jsp:include> --%>
		<%-- <jsp:include page="comment/commentList.jsp"></jsp:include> --%>
		<%-- <jsp:include page="link/linkList.jsp"></jsp:include> --%>
		<%-- <jsp:include page="link/linkSave.jsp"></jsp:include> --%>
	</div>
</div>
<jsp:include page="common/foot.jsp"/>
</div>
</body>
</html>