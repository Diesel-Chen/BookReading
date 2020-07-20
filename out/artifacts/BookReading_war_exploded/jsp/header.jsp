<%@page import="vo.Category"%>
<%@page import="java.util.List"%>
<%@page import="vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="header">
	<div class="header_div"><a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/img/1231.png" class="tp"></a></div>
	<div class="header_div">
	<%
		User user = (User)request.getSession().getAttribute("user");
		if(null!=user){
	%>
		<%
			if(user.getName()==null){
		%>
				<span>欢迎&nbsp;&nbsp;<%=user.getUsername() %>&nbsp;&nbsp;用户</span>
		<%
			}else{
		%>
				<span>欢迎&nbsp;&nbsp;<%=user.getName() %>&nbsp;&nbsp;用户</span>
		<%
			}
		%>		  
		<span><a href="<%=request.getContextPath() %>/jsp/udpassword.jsp">修改密码</a></span>
		<span><a href="<%=request.getContextPath() %>/jsp/user_info.jsp">个人中心</a></span>
		<span><a href="<%=request.getContextPath() %>/UserServlet?method=userDelete">退出</a></span>
	<%
		}else{
	%>
		<span><a href="<%=request.getContextPath() %>/jsp/login.jsp">登录</a></span>
		<span><a href="<%=request.getContextPath() %>/jsp/register.jsp">注册</a></span>
	<%
		}
	%>
		
	</div>
</div>
<div class="nav">
	<ul id="category">
		<li><a href="<%=request.getContextPath() %>/index.jsp">首页</a></li>
		<%
			List<Category> list10 = (List) request.getSession().getAttribute("category");
			for(Category category :list10){
		%>
				<li><a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByCid&cid=<%=category.getCid()%>"><%=category.getCname() %></a></li>
		<%
			}
		%>
	</ul>
</div>
