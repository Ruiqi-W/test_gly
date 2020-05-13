<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<%-- 引入 js --%>
	<script src="/js/newTypeJs/newsTypeSave.js"></script>
	<%-- end --%>
	<script type="text/javascript">
		function checkForm(){
			var newsTypeName=document.getElementById("newsTypeName").value();
			if(newsTypeName==null||newsTypeName==""){
				document.getElementById("error").innerHTML="老人信息不能为空！";
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		
		<!-- 当前位置：&nbsp;&nbsp;
		主页&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻类别管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;
		新闻类别添加&nbsp;&nbsp; -->
		${navCode }
	
	</div>
	<div class="data_content">
		<form action="/newsType/save.action" method="post" onsubmit="return checkForm()">
			<table cellpadding="5">
				<tr>
					<td>
						<label>姓名：</label>
					</td>
					<td>
						<input type="text" id="elderName" name="elderName" value="${elder.elderName }"/>
					</td>
				</tr>
				
				<tr>
				    <td>
				        <label>性别:</label>
				    </td>
				    <td>
				        <input type="radio" name="elderGender" checked="true" value="男"><label for="flat-radio-1" class="">男</label>
				        <input type="radio" name="elderGender"  value="女"><label for="flat-radio-1" class="">女</label>
				    </td>
				</tr>
					<td>
						<label>年龄：</label>
					</td>
					<td>
						<input type="text" id="elderAge" name="elderAge" value="${elder.elderAge }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>健康状况：</label>
					</td>
					<td>
						<input type="text" id="elderHealthy" name="elderHealthy" value="${elder.elderHealthy }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>户籍：</label>
					</td>
					<td>
						<input type="text" id="elderHouseholdRegister" name="elderHouseholdRegister" value="${elder.elderHouseholdRegister }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>身份证号：</label>
					</td>
					<td>
						<input type="text" id="elderIdCard" name="elderIdCard" value="${elder.elderIdCard }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>联系人：</label>
					</td>
					<td>
						<input type="text" id="elderLinkman" name="elderLinkman" value="${elder.elderLinkman }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>联系电话：</label>
					</td>
					<td>
						<input type="text" id="elderLinkphone" name="elderLinkphone" value="${elder.elderLinkphone }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>家庭住址：</label>
					</td>
					<td>
						<input type="text" id="elderAddress" name="elderAddress" value="${elder.elderAddress }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>床位号：</label>
					</td>
					<td>
						<input type="text" id="elderBedId" name="elderBedId" value="${elder.elderBedId }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>入住时间：</label>
					</td>
					<td>
						<input type="text" id="elderCheckinDate" name="elderCheckinDate" value="${elder.elderCheckinDate }"/>
					</td>
				</tr>
				<tr>
					<td>
						<label>离开时间：</label>
					</td>
					<td>
						<input type="text" id="elderLeaveDate" name="elderLeaveDate" value="${elder.elderLeaveDate }"/>
					</td>
				</tr>
				

				<tr>
					<%--<td>
						<input type="hidden" id="newsTypeId" name="newsTypeId" value="${newsType.newsTypeId }"/>
					</td>--%>
					<td>
                        <input type="submit" id="newsTypeSave" class="btn btn-primary" value="保存"/>&nbsp;&nbsp;
						<%--<input type="submit" class="btn btn-primary" value="保存"/>&nbsp;&nbsp;--%>    <%--submit id="newsTypeSave" --%>
						<input type="button" class="btn btn-primary" value="返回" onclick="javascript:history.back()"/>&nbsp;&nbsp;<font id="error" color="red">${error }</font>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
</body>
</html>