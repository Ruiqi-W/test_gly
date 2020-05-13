<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkChange(){
		if(document.getElementById("isImage").checked){
			$("#hdtp").show();
		}else{
			$("#hdtp").hide();
		}
	}
	
	function checkForm(){
		var title=document.getElementById("title").value;
		var author=document.getElementById("author").value;
		var typeId=document.getElementById("typeId").value;
		var content=CKEDITOR.instances.content.getData();
		if(title==null||title==""){
			document.getElementById("error").innerHTML="新闻标题不能为空！";
			return false;
		}
		if(author==null||author==""){
			document.getElementById("error").innerHTML="作者不能为空！";
			return false;
		}
		if(typeId==null||typeId==""){
			document.getElementById("error").innerHTML="请选择新闻类别！";
			return false;
		}
		if(content==null||content==""){
			document.getElementById("error").innerHTML="新闻内容不能为空！";
			return false;
		}
		return true;
	}
</script>
	<%--<script src="/js/news/newsSave.js"></script>--%>
</head>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		${navCode }
	</div>
	<div class="data_content">
		<form action="${pageContext.request.contextPath}/news/save.action" method="post" onsubmit="return checkForm()">
			<table cellpadding="5" width="100%">
				<tr>
					<td width="80px">
						<label>姓名：</label>
					</td>
					<td>
						<input type="text" id="nurseName" name="nurseName" class="input-xxlarge" value="${nurse.nurseName }"/>
					</td>
				</tr>
				<tr>
				    <td>
				        <label>性别:</label>
				    </td>
				    <td>
				        <input type="radio" name="nurseGender" checked="true" value="男"><label for="flat-radio-1" class="">男</label>
				        <input type="radio" name="nurseGender"  value="女"><label for="flat-radio-1" class="">女</label>
				    </td>
				</tr>
				<tr>
					<td>
						<label>年龄：</label>
					</td>
					<td>
						<input type="text" id="nurseAge" name="nurseAge" value="${nurse.nurseAge }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>户籍：</label>
					</td>
					<td>
						<input type="text" id="nurseHouseholdRegister" name="nurseHouseholdRegister" value="${nurse.nurseHouseholdRegister }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>身份证号：</label>
					</td>
					<td>
						<input type="text" id="nurseIdCard" name="nurseIdWord" value="${nurse.nurseIdWord }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>电话号码：</label>
					</td>
					<td>
						<input type="text" id="nurseLinkPhone" name="nurseLinkPhone" value="${nurse.nurseLinkPhone }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>住址：</label>
					</td>
					<td>
						<input type="text" id="nurseAddress" name="nurseAddress" value="${nurse.nurseAddress }"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<input type="hidden" id="newsId" name="newsId" value=""/>&nbsp;
					</td>
					<td>
						<input type="button" id="nurseSave" class="btn btn-primary" value="保存"/>&nbsp;&nbsp;
						<input type="button" class="btn btn-primary" value="返回" onclick="javascript:history.back()"/>&nbsp;&nbsp;<font id="error" color="red"></font>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
</body>
<script>
if('${news.isImage}'==1){
	$("#hdtp").show();	
}
function upload(){
	$("#upload").upload({
		/* 上传路径  */
		 action: '${pageContext.request.contextPath }/news/upload.action',  
		 name:'upload',
	     onComplete:function(data){
	    	if(data!=null && data!=""){
	    		$("#upload-img").attr("src",data);
	    		$("#upload-img").css("display","inline-block");
	    		$("input[name='imgUrl']").val(data);
	    	} else {
	    		alert("上传失败");
	    	}
	     }
	});
}
</script>
</html>
