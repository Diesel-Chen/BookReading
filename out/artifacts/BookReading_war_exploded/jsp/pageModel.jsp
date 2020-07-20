<%@page import="vo.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
	<center>
	<div style="margin-top:25px;">
	<%
		Page pageInfo =(Page)request.getAttribute("pageInfo");
	%>
		<%=pageInfo.getCurrentPage() %>/<%=pageInfo.getTotalPage() %>
			&nbsp;&nbsp;&nbsp;&nbsp;
			每个页面显示<%=pageInfo.getPageSize() %>条数据
			&nbsp;&nbsp;&nbsp;&nbsp;
			一共有<%=pageInfo.getTotalRecord() %>条数据
			<%
				if(pageInfo.getCurrentPage()!=1){
			%>	
					<a href="<%=request.getContextPath() %>/<%=pageInfo.getUrl() %>&currentPage=1">首页</a>
					<a href="<%=request.getContextPath() %>/<%=pageInfo.getUrl() %>&currentPage=<%=pageInfo.getCurrentPage()-1%>">上一页</a>
			<%
				}
			%>
			
			<%
				for(int i =1 ;i<=pageInfo.getTotalPage();i++){
					if(pageInfo.getCurrentPage()==i){
			%>	
						<%=i %>
			<%	
					}else{
			%>
						<a href="<%=request.getContextPath() %>/<%=pageInfo.getUrl() %>&currentPage=<%=i%>"><%=i %></a>
			<%
					}
				}
			%>
			<%
				if(pageInfo.getCurrentPage()!=pageInfo.getTotalPage()){
			%>	
					<a href="<%=request.getContextPath() %>/<%=pageInfo.getUrl() %>&currentPage=<%=pageInfo.getCurrentPage()+1%>">下一页</a>
					<a href="<%=request.getContextPath() %>/<%=pageInfo.getUrl() %>&currentPage=<%=pageInfo.getTotalPage()%>">尾页</a>
			<%
				}
			%>
	</div>
</center>
<%-- <center>
	<div style="margin-top:25px;">
	<%
		Page pageInfo =(Page)request.getAttribute("pageInfo");
	%>
		<%=pageInfo.getCurrentPage() %>/<%=pageInfo.getTotalPage() %>
			&nbsp;&nbsp;&nbsp;&nbsp;
			每个页面显示<%=pageInfo.getPageSize() %>条数据
			&nbsp;&nbsp;&nbsp;&nbsp;
			一共有<%=pageInfo.getTotalRecord() %>条数据
			<%
				if(pageInfo.getCurrentPage()!=1){
			%>	
					<a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=1">首页</a>
					<a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=<%=pageInfo.getCurrentPage()-1%>">上一页</a>
			<%
				}
			%>
			
			<%
				for(int i =1 ;i<=pageInfo.getTotalPage();i++){
					if(pageInfo.getCurrentPage()==i){
			%>	
						<%=i %>
			<%	
					}else{
			%>
						<a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=<%=i%>"><%=i %></a>
			<%
					}
				}
			%>
			<%
				if(pageInfo.getCurrentPage()!=pageInfo.getTotalPage()){
			%>	
					<a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=<%=pageInfo.getCurrentPage()+1%>">下一页</a>
					<a href="<%=request.getContextPath() %>/AdminBookServlet?method=findAllBooksByPage&currentPage=<%=pageInfo.getTotalPage()%>">尾页</a>
			<%
				}
			%>
	</div>
</center> --%>