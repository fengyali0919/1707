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
	<form action="updateGoods" method="post" enctype="multipart/form-data">
		<input type="hidden" name="gid" value="${g.gid }">
		名称:<input type="text" name="gname" value="${g.gname }"><br><br>
 		英文名称:<input type="text" name="gename" value="${g.gename }"><br><br>
		商品品牌:<select name="pid" >
			</select><br><br>
		商品种类:<select name="tid">
			</select><br><br>
		尺寸:<input type="text" name="size" value="${g.size }"><br><br>
		单价(元):<input type="text" name="price" value="${g.price }"><br><br>
		数量:<input type="text" name="gsum" value="${g.gsum }"><br><br>
		标签:<textarea rows="5" cols="30" name="pic">${g.pic }</textarea><br><br>
		商品图片上传: 
 		<input type="image" src="img?path=${g.gimg }">
 		<input type="file" name="img"><br><br>
				<input type="submit" value="修改"><br><br>
		
	</form>
</body>
<script type="text/javascript">
	var pid = ${g.pid}
	var tid = ${g.tid}
	$.post(
		"<%=path%>/pinlist",
		"",
		function(obj) {
			for (var i = 0; i < obj.length; i++) {
				var str = ""
				str += "<option value="+obj[i].pid;
				if (obj[i].pid==pid){
					str += " selected='selected' ";
				}
				str += ">"+obj[i].pname+"</option>";
				$("select:eq(0)").append(str);
			}
		},
		"json"
	);
	$.post(
		"<%=path%>/Typelist",
		"",
		function(obj) {
			for (var i = 0; i < obj.length; i++) {
				var str = "";
				str += "<option value="+obj[i].tid;
				if (obj[i].tid==tid){
					str += " selected='selected' ";
				}
				str += " >"+obj[i].tname+"</option>";
				$("select:eq(1)").append(str);
			}
		},
		"json"
	);
	
</script>
</html>