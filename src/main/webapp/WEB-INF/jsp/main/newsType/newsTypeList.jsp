<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	function newsTypeDelete() {
		var elderIdCard ;
	    $("#lineTable").each(function () {
            for (var i = 1; i < $(this).find("tr").length; i++) {
                elderIdCard = $(this).find("tr").eq(4).find("td").eq(6).html();//获取td内容
            }
        });
        $.ajax({
            url:"newsType/delete.action",
            type:"POST",
            dataType:"json",
            data:{
                elderIdCard:elderIdCard
            },
            success:function (result) {
                if(result.success){
                    alert("删除成功!");
                    window.location.href="/newsType/listUI.action";
                }else{
                    alert(result.errorMsg);
                }
            }
        });
    }
	/*function newsTypeDelete(){
		if(confirm("是否删除该条信息吗")){
		    /!* ajax 删除信息 *!/
            /!*$.ajax({
                url:"newsType/delete.action",
                type:"POST",
                dataType:"json",
                data:{
                    elderIdCard:elderIdCard
                },
                success:function (result) {
                    if(result.success){
                        alert("删除成功!");
                        window.location.href="/newsType/listUI.action";
                    }else{
                        alert(result.errorMsg);
                    }
                }
			});*!/
			$.post("newsType/delete.action",{elderIdCard:elderIdCard},
				function(result){
					//var result=eval('('+result+')');
					if(result.success){
						alert("删除成功!");
						window.location.href="/newsType/listUI.action";
					}else{
						alert(result.errorMsg);
					}
				}
			);
		}
	}*/
</script>
</head>
<body>
<div class="data_list backMain">
	<div class="dataHeader navi">
		${navCode }
	</div>
	<div class="data_content">
		<table id="lineTable" class="table table-hover table-bordered">
			<tr>
				<th>序号</th>
				<%--<th>老人信息</th>--%>
				<th>姓名</th>
				<th>性别</th>
				<th>年龄</th>
				<th>健康状况</th>
				<th>户籍</th>
				<th>身份证号</th>
				<th>联系人</th>
				<th>联系电话</th>
				<th>家庭住址</th>
				<th>床位号</th>
				<th>入住时间</th>
				<th>离开时间</th>
				<th>操作</th>
			</tr>
	<c:forEach items="${list }" var="elder" varStatus="in">
			<tr>
				<td>${in.count }</td>
				<%--<td>${newsType.typeName }</td>--%>
				<td>${elder.elderName}</td>
				<td>${elder.elderGender}</td>
				<td>${elder.elderAge}</td>
				<td>${elder.elderHealthy}</td>
				<td>${elder.elderHouseholdRegister}</td>
				<td>${elder.elderIdCard}</td>
				<td>${elder.elderLinkman}</td>
				<td>${elder.elderLinkphone}</td>
				<td>${elder.elderAddress}</td>
				<td>${elder.elderBedId}</td>
				<td>${elder.elderCheckinDate}</td>
				<td>${elder.elderLeaveDate}</td>
				<td>
				<button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='/newsType/editUI.action?elderIdCard=${elder.elderIdCard }'">修改</button>
				&nbsp;&nbsp;
				<button class="btn btn-mini btn-danger" type="button" onclick="newsTypeDelete()">删除</button>  <%--${elder.elderIdCard --%>
				</td>
			</tr>
	</c:forEach>
		</table>
	</div>
</div>
</body>
</html>