<%@page import="vo.Comment"%>
<%@page import="java.util.List"%>
<%@page import="vo.Book"%>
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
    <div class="box" style="height: 2300px;">
    	<%@ include file="header.jsp" %>  
        <hr noshade color="#abc" class="hr1">
        <div class="dk" >
        	<%
        		Book b = (Book)request.getAttribute("book");
        	%>
            <div class="xk1"><center><span class="wq">图书基本信息</span></center></div>
            <table class="btable" >
            	<tr >
            		<td colspan="2"><div class="chead"><h2><%=b.getBname() %></h2></div></td>
            	</tr>
				<tr>
					<td style="width: 200px;"><div class="ct_img"><img src="<%=request.getContextPath() %>/<%=b.getBimage() %>"></div></td>
					<td>
						<div class="ct_xinxi">
							<ul>
								<li>作者：<%=b.getBauthor() %></li>
								<li>出版社：<%=b.getBpress() %></li>
								<li>出版时间：<%=b.getBpbtime() %></li>
								<li>页    数：<%=b.getBpage() %></li>
								<li>定    价：<%=b.getBprice() %></li>
							</ul>
			            </div>
					</td>
				</tr>
            	<tr>
            		<td colspan="2"><div class="czyhead"><h3>主要内容</h3></div></td>
            	</tr>
            	<tr>
            		<td colspan="2">
			        	<div class="czynr">
							<p><%=b.getBcontent() %></p>
			            </div>
            		</td>
            	</tr>
            	<tr>
            		<td colspan="2"><div class="czzjjhead"><h3>作者简介</h3></div></td>
            	</tr>
            	<tr>
            		<td colspan="2">
			            <div class="czzjj">
							<p><%=b.getBauthordesc() %></p>
			            </div>
            		</td>
            	</tr>
            	<tr>
            		<td colspan="2"><div class="cdphead"><h3>短评</h3></div></td>
            	</tr>
            	<tr>
            		<td colspan="2">
						<div class="cdp">
							<ul>
							<%
								List<Comment> list = (List)request.getAttribute("list");
								for (Comment comment : list) {
							%>
								<li class="li1">
									<ul>
										<li><%=comment.getUname() %>&nbsp;&nbsp;  <%=comment.getUdate() %></li>
										<li><p><%=comment.getCodesc() %></p></li>
									</ul>
								</li>
							<%
								}
							%>
							</ul>
			            </div>
            		</td>
            	</tr>
            	<tr>
            		<td colspan="2">
            			<a href="<%=request.getContextPath() %>/CommentServlet?method=commentUI&bid=<%=b.getBid() %>"><div class="woyaoshuping"><span>我要书评</span></div></a>
            		</td>
            	</tr>
            </table>
        </div>
    </div>

    
</body>
</html>