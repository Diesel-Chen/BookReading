<%@page import="vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<link href="<%=request.getContextPath() %>/css/style2.css" type="text/css" rel="stylesheet"> 	
</head>
<body>
<div id="container">	
	<%@ include file="../header.jsp" %>	
<div id="main">

	<div class="bit"><h2>添加图书</h2></div>

	<table id="tab" >
		<form action="<%=request.getContextPath() %>/AdminBookServlet?method=bookAdd" method="post" enctype="multipart/form-data"> 
			<tr>
				<td width="150">书名：</td>
				<td width="200"><input type="text" name="bname" /></td>
				<td width="150">是否是热门：</td>
				<td >
					<select name="is_hot">
						<option value="1">是</option>
						<option value="0">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>作者：</td>
				<td><input type="text" name="bauthor" /></td>
				<td>出版社：</td>
				<td><input type="text" name="bpress" /></td>
			</tr>
			<tr>
				<td>出版时间：</td>
				<td><input type="date" name="bpbtime" /></td>
				<td>页数：</td>
				<td><input type="text" name="bpage" /></td>
			</tr>
			<tr>
				<td>价格：</td>
				<td><input type="text" name="bprice" /></td>
				<td>图书图片：</td>
				<td><input type="file" name="upload" /></td>
			</tr>
			<tr>
				<td>所属分类：</td>
				<td colspan="3">
					<select name="cid">
					<%
						List<Category> list = (List)request.getAttribute("list");
						for(Category c:list){
					%>
							<option value="<%=c.getCid() %>"><%=c.getCname() %></option>
					<%
						}
					%>					
					</select>
				</td>
			</tr>
			<tr>
				<td>内容简介：</td>
				<td colspan="3">
					<textarea name="bcontent" rows="9" cols="80"></textarea>
				</td>
			</tr>
			<tr>
				<td>作者简介：</td>
				<td colspan="3">
					<textarea name="bauthordesc" rows="9" cols="80"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value="确定" class="dlbtt" />
					<input type="reset" value="重置" class="dlbtt" />
				</td>
			</tr>
		</form>
	</table>
			
</div>
</div>
</body>
</html>