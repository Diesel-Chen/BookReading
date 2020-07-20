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

	<div class="bit"><h2>分类管理</h2><a href="<%=request.getContextPath() %>/admin/category/add.jsp"><button class="anniu">添加分类</button></a></div>

	<table id="tab" style="text-align: center;margin-bottom:30px;">
		<tr>
		   <th width="200">序号</th>
		   <th width="280">分类名称</th>
		   <th width="300">操作</th>
		</tr>
		<%
			List<Category> list = (List)request.getAttribute("list");
			for(int i=0;i<list.size();i++){
		%>
			<tr>
		       <td ><%=i+1 %></td>
			   <td ><%=list.get(i).getCname() %></td>
			   <td align="center" ><a href="<%=request.getContextPath() %>/AdminCategoryServlet?method=findCategoryByCid&cid=<%=list.get(i).getCid() %>" ><img src="<%=request.getContextPath() %>/img/edit.gif" border="0" alt="编辑"></a><a href="<%=request.getContextPath() %>/AdminCategoryServlet?method=categoryDeleteByCid&cid=<%=list.get(i).getCid() %>"><img src="<%=request.getContextPath() %>/img/delete.gif" border="0" alt="删除"></a></td>    
			</tr>	
		<%
			}
		%>
						
	</table>
			
</div>
</div>
</body>
</html>