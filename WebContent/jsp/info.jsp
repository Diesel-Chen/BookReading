<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>阅享</title>
    <script  src="<%=request.getContextPath() %>/js/myfocus-2.0.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="box">
  		<%@ include file="header.jsp" %>  	
  		<hr noshade color="#abc" class="hr1">
  		<h1><%=request.getAttribute("msg") %></h1>
</body>
</html>
</body>
</html>