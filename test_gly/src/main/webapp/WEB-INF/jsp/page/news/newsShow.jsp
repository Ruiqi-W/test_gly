<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>###</title>
<link href="${pageContext.request.contextPath}/style/news.css" rel="stylesheet">
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico"  type="image/x-icon"/>
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
		
		<div class="data_list">
			<div class="dataHeader navi">
				当前位置：&nbsp;&nbsp;
				<a href='#'>主页</a>&nbsp;&nbsp;>&nbsp;&nbsp;
				<a href='#'>娱乐新闻</a>&nbsp;&nbsp;>&nbsp;&nbsp;
				<a href='#'>印度一大象囚禁过程中死亡 曾发飙踩死5人</a>
			</div>
			<div>
				<div class="news_title"><h3>印度一大象囚禁过程中死亡 曾发飙踩死5人</h3></div>
				<div class="news_info">
					发布时间：2019年11月17日&nbsp;&nbsp;作者：萨达姆
					&nbsp;&nbsp;新闻类别：[娱乐]&nbsp;&nbsp;阅读次数：21
				</div>
				<div class="news_content">
					当地时间2019年11月17日，印度Guwahati，一头被命名为“本·拉登”的大象在囚禁过程中死亡。 此前，一头被命名为“本·拉登”的大象在逃亡近2周后，在印度东北部的阿萨姆邦被抓捕。
				</div>
			</div>
			<div class="upDownPage">
				<p>上一篇：<a href="#">太惊讶！张一山蜡像揭幕：连脖子上的痣都被复刻</a></p>
				<p>下一篇：没有了</p>
			</div>
		</div>
		
		<div class="data_list comment_list"> 
			<div class="dataHeader">用户评论</div>
			<div class="commentDatas">
				
					<div class="comment">
						<font>127.0.0.1：</font>评论&nbsp;&nbsp;&nbsp;[&nbsp;2012-12-12&nbsp;]
						<font>127.0.0.1：</font>评论&nbsp;&nbsp;&nbsp;[&nbsp;2012-12-12&nbsp;]
					</div>
				
			</div>
		</div>
		
		<div class="publish_list">
			<form action="#" method="post">
				<div>
					<input type="hidden" value="#" id="newsId" name="newsId"/>
					<textarea style="width: 98%" rows="3" id="content" name="content"></textarea>
				</div>
				<div class="publishButton">
					<button class="btn btn-primary" type="submit">发表评论</button>
				</div>
			</form>
		</div>
		
		
	</div>
	<div class="span4">
		<div class="data_list right_news_list">
			<div class="dataHeader">最新新闻</div>
			<div class="datas">
				<ul>
					
					<li><a href="#" title="#">最新知道</a></li>
					<li><a href="#" title="#">最新知道</a></li>
				</ul>
			</div>
		</div>
		<div class="data_list right_news_list">
			<div class="dataHeader">热门新闻</div>
			<div class="datas">
				<ul>
					<li><a href="#" title="#">最热新闻</a></li>
					<li><a href="#" title="#">最热新闻</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../common/foot.jsp"/>
</div>
</body>
</html>