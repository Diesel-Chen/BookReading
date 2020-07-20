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
    <div class="box" style="height: 900px;">
		<%@ include file="header.jsp" %>  
        <hr noshade color="#abc" class="hr1">
		<div class="dk">
			<div class="xk1"><center><span class="wq">用户个人信息</span></center></div>
			<center>
			<table class="tab1">
				<form action="<%=request.getContextPath() %>/UserServlet?method=userUpdatePassword" method="post">
					<tr>
						<td colspan="2">欢迎<%=user.getUsername() %>用户</td>
					</tr>
					<tr>
						<td width="100">新密码:</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="提交" /></td>
					</tr>
				</form>
			</table>
			</center>
		</div>
</body>
</html>