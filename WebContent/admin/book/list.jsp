<%@page import="vo.Book"%>
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

	<div class="bit"><h2>图书管理</h2><a href="<%=request.getContextPath() %>/AdminCategoryServlet?method=findAllCatsInAdd"><button class="anniu">添加图书</button></a></div>

	<table id="tab" class="ttab" >
		<tr>
		   <th width="80">序号</th>
		   <th width="150">图书图片</th>
		   <th width="200">书名</th>
		   <th width="100">作者</th>
		   <th width="100">是否是热门书</th>
		   <th width="150">操作</th>
		</tr>
		<%
			List<Book> list = (List)request.getAttribute("list");
			for(int i=0 ;i<list.size();i++){
		%>
				<tr>
			       <td ><%=list.get(i).getBid() %></td>
				   <td ><img src="<%=request.getContextPath() %>/<%=list.get(i).getBimage() %>" class="hotp"></td>
				   <td ><%=list.get(i).getBname() %></td>
				   <td><%=list.get(i).getBauthor() %></td>
				   
				   <%
				   		if(list.get(i).getIs_hot()==1){
		   		 	%>
		   		 		<td>是</td>
		   		 	<%
				   		}else{
		   			%>
		   				<td>不是</td>
		   			<%
				   		}
				   %>
				   
				   <td align="center" ><a href="<%=request.getContextPath() %>/AdminBookServlet?method=findBooksByBid&bid=<%=list.get(i).getBid() %>" ><img src="<%=request.getContextPath() %>/img/edit.gif" border="0" alt="编辑"></a><a href="<%=request.getContextPath() %>/AdminBookServlet?method=bookDeleteByBid&bid=<%=list.get(i).getBid() %>"><img src="<%=request.getContextPath() %>/img/delete.gif" border="0" alt="删除"></a></td>    
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