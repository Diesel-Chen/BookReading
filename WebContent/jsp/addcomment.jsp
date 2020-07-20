<%@page import="vo.Book"%>
<%@page import="vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>阅享</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="box" style="height: 800px;">
    	<%@ include file="header.jsp" %>
        <hr noshade color="#abc" class="hr1">
        <div class="dk" >
        	<center>
        	<%
	        	Book b = (Book)request.getAttribute("book");
        		User user01 =(User)request.getSession().getAttribute("user");
        	%>
	           	<table >
	           		<form action="<%=request.getContextPath() %>/CommentServlet?method=commentAdd" method="post">
		           		<tr style="height: 50px;">
		           			
		           			<%
		           				if(user01.getName()==null){
           					%>
		           					<td colspan="2" style="text-align: center;"><h4>欢迎<%=user01.getUsername() %>用户</h4></td>
		           		</tr>
		           		<tr style="height: 50px;">
		           			<td>评论图书：</td>
		           			<input type="hidden" name="flag" value="1" />
		           			<input type="hidden" name="bid" value="<%=b.getBid() %>" />
		           			<td><input type="text" name="bname" value="<%=b.getBname() %>" disabled="disabled" style="width:335px;"/></td>
		           		</tr>
          					<%
		           				}else{
           					%>
		           					<td colspan="2" style="text-align: center;"><h4>欢迎<%=user01.getName() %>用户</h4></td>
    				    </tr>
		           		<tr style="height: 50px;">
		           			<td>评论图书：</td>
		           			<input type="hidden" name="flag" value="0" />
		           			<input type="hidden" name="bid" value="<%=b.getBid() %>" />
		           			<td><input type="text" name="bname" value="<%=b.getBname() %>"  style="width:335px;"/></td>
		           		</tr>
           					<%
		           				}
		           			%>
		           		<tr>
		           			<td>评论内容：</td>
							<td><textarea cols="50" rows="10" name="codesc"></textarea></td>
		           		</tr>
		           		<tr>
		           			<td colspan="2" style="text-align: center;"><input type="submit"  value="提交" style="width: 70px;height:40px ;"/></td>
		           		</tr>
	           		</form>
	           	</table>   
           	</center>
        </div>
    </div>

    
</body>
</html>