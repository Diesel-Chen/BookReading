<%@page import="vo.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   	<div id="banner">
		<a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/img/1231.png" class="tp"></a>
		<center><h2>阅享后台管理系统</h2></center>
	</div>
    <div id="menu">
	  	<%
		Admin admin = (Admin)request.getSession().getAttribute("admin");
		%>
		欢迎, <%=admin.getAusername() %>管理员
		 | <a href="<%=request.getContextPath() %>/AdminCategoryServlet?method=findAllCats">分类管理</a>
		 | <a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=1">图书管理</a>
		 | <a href="<%=request.getContextPath() %>/AdminCommentServlet?method=findAllCommentsByPage&currentPage=1">评论管理</a>
		 | <a href="<%=request.getContextPath() %>/AdminServlet?method=adminDelete">退出</a>
	</div>
	<br/>


	