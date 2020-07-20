<%@page import="vo.Comment"%>
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


	<table id="tab" style="text-align: center">
		<tr >
		   <th width="70">序号</th>
		   <th width="200">书名</th>
		   <th width="110">评论人</th>
		   <th width="330">评论内容</th>
		   <th width="100">日期</th>
		   <th width="50">操作</th>
		</tr>
		<%
			List<Comment> list = (List)request.getAttribute("list");
			for(Comment c : list){
		%>
			<tr height="180">
				<td ><%=c.getCoid() %></td>
			   <td ><%=c.getBname() %></td>
		       <td ><%=c.getUname() %></td>
			   <td ><%=c.getCodesc() %></td>
			   <td ><%=c.getUdate() %></td>
			   <td align="center" ><a href="<%=request.getContextPath() %>/AdminCommentServlet?method=commentDeleteByCoid&coid=<%=c.getCoid() %>"><img src="<%=request.getContextPath() %>/img/delete.gif" border="0" alt="删除"></a></td>    
			</tr>	
		<%
			}
		%>		
	</table>
	<%@ include file="/jsp/pageModel.jsp" %>		
</div>
</div>
</body>
</html>