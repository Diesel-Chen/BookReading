<%@page import="vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="vo.Category"%>
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
    <div class="box" style="height: 1500px;">
    	<%@ include file="header.jsp" %>  
        <hr noshade color="#abc" class="hr1">
        <div class="dk">
        <% 
        	Category c = (Category)request.getAttribute("c");	
        	
        %>
            <div class="xk1"><center><span class="wq"><%=c.getCname() %></span></center></div>
		<%
			List<Book> list2 = (List)request.getAttribute("booksbycid");
			for (Book book : list2) {
		%>
			<div class="xk2">
                <img src="<%=request.getContextPath() %><%=book.getBimage() %>" class="zt">
                    <div class="zzc">
                        <a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>"></a>
                    </div>
                
                <div class="cfys"><%=book.getBauthor() %></div>
            </div>
		<%
			}
		%>
            
        </div>
    </div>

    
</body>
</html>