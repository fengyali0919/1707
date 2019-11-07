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
  <form action="list" method="post">
	<table>
		<tr>
			 <th colspan="12"> 
			 	商品名称:<input type="text" name="gname">
			 			<input type="submit" value="搜索">
			 </th>
			</tr>
		<tr>
			<td>请选择</td>
			<td>序号</td>
			<td>商品名称</td>
			<td>英文名称</td>
			<td>商品品牌</td>
			<td>商品种类</td>
			<td>尺寸</td>
			<td>单价（元）</td>
			<td>数量</td>
			<td>标签</td>
			<td>图片</td>
			<td>操作</td>
			
		</tr>
		<c:forEach items="${list}" var="g">
			<tr>
				<th><input type="checkbox" value="${g.gid}"  class="xh"></th>
				<th>${g.gid}</th>
				<th>${g.gname}</th>
				<th>${g.gename}</th>
				<th>${g.pname}</th>
				<th>${g.tname}</th>
				<th>${g.size}</th>
				<th>${g.price}</th>
				<th>${g.gsum}</th>
				<th>${g.pic}</th>
				<th><input type="image" src="img?path=${g.gimg}" width="70" height="70"></th>
				<th><a href="getById?gid=${g.gid}"><input type="button" value="修改"></a></th>
			</tr>
		</c:forEach>
			<tr>
			 <th colspan="12"> 
			 	<a href="list?pageNum=1">首页</a>
			 	<a href="list?pageNum=${page.pageNum-1<1?page.pageNum:page.pageNum-1 }">上一页</a>
			 	<a href="list?pageNum=${page.pageNum+1>page.pages?page.pageNum:page.pageNum+1 }">下一页</a>
			 	<a href="list?pageNum=${page.pages}">尾页</a>
			 	<br>
			 	当前${page.pages}页/共${page.pageNum}页
			 </th>
			</tr>
			<tr>
			 <th colspan="12"> 
			 	<a href="add.jsp"><input type="button" value="添加"></a>
			 	<input type="button" value="批量删除" onclick="ps()">
			 </th>
			</tr>
	</table>
	</form>
</body>
<script type="text/javascript">
	function ps() {
		var sum="";
		$(".xh:checked").each(function() {
			sum+=","+$(this).val()	
		});
		id=sum.substring(1)
		if(confirm("请确认删除"+id+"条数据")){
			$.post(
					"<%=path%>/deletegoods",
					{id:id},
					function(obj) {
						if(obj>0){
							location="list"
							alert("删除成功~")
						}else{
							location="<%=path%>/list"
							alert("删除失败~")
						}
					},
					"json"
			);
		}
	}
</script>
</html>