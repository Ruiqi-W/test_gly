<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中惠老年公寓管理系统后台登录</title>
  <%----%>
  <%
    String contextPath = request.getContextPath();// /myweb
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
  %>
  <%----%>
<link rel="icon" href="<%= basePath%>/favicon.ico"  type="image/x-icon"/>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="<%= basePath%>/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="<%= basePath%>/resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="<%= basePath%>/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="<%= basePath%>/resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="<%= basePath%>/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="<%= basePath%>/resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>

  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.0/jquery.js"></script>
  <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css" rel="stylesheet">
</head>
<script type="text/javascript">
	function checkForm(){
		var userName=document.getElementById("userName").value;
		var password=document.getElementById("password").value;
		if(userName==null||userName==""){
			document.getElementById("error").innerHTML="用户名不能为空！";
			return false;
		}
		if(password==null||password==""){
			document.getElementById("error").innerHTML="密码不能为空！";
			return false;
		}
		return true;
	}
	

</script>
<body id="login">
<div style="width:100px;height:100px;background: red;"><%= basePath%></div>
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
  	<h2>管理员登录</h2>
   </div>
  <!-- End #logn-top -->
  <div id="login-content">
    <form action="${pageContext.request.contextPath}/main/loginSubmit.action" method="post" onsubmit="return checkForm()">
      <p>
        <label>用户名：</label>
        <input class="text-input" type="text" id="userName" name="userName" value=""/>
      </p>
      <div class="clear"></div>
      <p>
        <label>密码：</label>
        <input class="text-input" type="password" id="password" name="userPwd" value=""/>
      </p>
      <div class="clear"></div>
       <font id="error" color="red">${error }</font>   <input class="button" type="submit" value="登录" />
    </form>
  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>
