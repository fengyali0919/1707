<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
</head>
<body>
<div align="center">
	<form action="add" method="post" enctype="multipart/form-data">
		<h2>新增商品页面</h2>
		商品名称:<input type="text" name="gname"><br><br>
		英文名称:<input type="text" name="gename"><br><br>
		商品品牌:<select name="pid">
					<option>==请选择==</option>
			</select><br><br>
		商品种类:<select name="tid">
					<option>==请选择==</option>
			</select><br><br>
		尺寸:<input type="text" name="size"><br><br>
		单价(元):<input type="text" name="price"><br><br>
		数量:<input type="text" name="gsum"><br><br>
		标签:<textarea rows="5" cols="30" name="pic"></textarea><br><br>
		商品图片上传:<input type="file" name="img"><br><br>
				<input type="submit" value="添加"><br><br>
	</form>
</div>
</body>
<script type="text/javascript">
	$.post(
		"<%=path%>/pinlist",
		"",
		function(obj) {
			for (var i = 0; i < obj.length; i++) {
				$("select:eq(0)").append("<option value="+obj[i].pid+">"+obj[i].pname+"</option>");
			}
		},
		"json"
	);
	$.post(
		"<%=path%>/Typelist",
		"",
		function(obj) {
			for (var i = 0; i < obj.length; i++) {
				$("select:eq(1)").append("<option value="+obj[i].tid+">"+obj[i].tname+"</option>");
			}
		},
		"json"
	);
	
</script>
</html>