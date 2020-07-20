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

	<div class="bit"><center><h2>添加分类</h2></center></div>

	<center>
		<table id="tab" >
			<form action="<%=request.getContextPath() %>/AdminCategoryServlet?method=categoryAdd" method="post">
				<tr style="height:70px;">
			       <td>分类名称</td>
				   <td ><input type="text" name="cname" /></td>
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