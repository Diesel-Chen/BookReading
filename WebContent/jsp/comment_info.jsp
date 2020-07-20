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
            <div class="tishikuang">
				<span>写评论前请先进行登陆</span>
				<a href="<%=request.getContextPath() %>/jsp/login.jsp">前往登陆</a>
            </div>         
        </div>
    </div>

</body>
</html>