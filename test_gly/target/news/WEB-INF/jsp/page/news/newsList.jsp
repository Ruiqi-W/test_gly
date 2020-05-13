<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>###</title>
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico"  type="image/x-icon"/>
<link href="${pageContext.request.contextPath}/style/news.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
<jsp:include page="../common/head.jsp"/>

<div class="row-fluid">
	<div class="span8">
		
		<!-- 当前位置的新闻列表 -->
		<div class="data_list">
			<div class="dataHeader navi">
				当前位置：&nbsp;&nbsp;
				<a href='#'>主页</a>&nbsp;&nbsp;>&nbsp;&nbsp;
				<a href='#'>政治新闻</a>
			</div>
			<div class="datas news_type_list">
				<ul>		
					<li><span>[2014-03-13]</span>&nbsp;<a href="#">政治新闻2</a></li>
					<li><span>[2014-03-13]</span>&nbsp;<a href="#">政治新闻2</a></li>
					<li><span>[2014-03-13]</span>&nbsp;<a href="#">政治新闻2</a></li>
				</ul>
			</div>
			<div>
				<ul class='pager'>
					<li class='disabled'><a href='#'>上一页</a></li>
					<li ><a href='#'>下一页</a></li>
				</ul>
			</div>
		</div>
		
		
	</div>
	<div class="span4">
		<div class="data_list right_news_list">
			<div class="dataHeader">最新新闻</div>
			<div class="datas">
				<ul>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
					<li><a href="#" title="#">南开大学校长曹雪涛被曝论文造假</a></li>
				</ul>
			</div>
		</div>
		<div class="data_list right_news_list">
			<div class="dataHeader">热门新闻</div>
			<div class="datas">
				<ul>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
					<li><a href="#" title="#">颁奖典礼上 智利女歌手赤裸上身支持示威者</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../common/foot.jsp"/>
</div>
</body>
</html>