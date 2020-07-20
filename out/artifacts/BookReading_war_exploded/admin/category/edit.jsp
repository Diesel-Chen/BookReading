<%@page import="vo.Category"%>
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
	<div id="banner">
		<h1><img src="<%=request.getContextPath() %>/img/1231.png" class="tp"></h1>
	</div>
	<div id="menu">
		欢迎, xxx用户
		 | <a href="">分类管理</a>
		 | <a href="">图书管理</a>
	 	 | <a href="">评论管理</a>
		 | <a href="">退出</a>
	</div>
	<br/>
<div id="main">

	<div class="bit"><center><h2>编辑分类</h2></center></div>
	<center>
		<table id="tab" >
			<form action="<%=request.getContextPath() %>/AdminCategoryServlet?method=categoryUpdateByCid" method="post">
			<%
				Category category = (Category)request.getAttribute("category");
			%>
				<tr style="height:70px;">
			       <td>分类名称</td>
			       <input type="hidden" name="cid" value="<%=category.getCid() %>" />
				   <td ><input type="text" name="cname" value="<%=category.getCname() %>" /></td>
				</tr>		
				<tr>
				  <td colspan="2" style="text-align: center"><input type="submit" value="确定" /></td>
				</tr>	
			</form>
		</table>
	</center>
			
</div>
</div>
</body>
</html>