<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="<%=request.getContextPath() %>/css/style2.css" type="text/css" rel="stylesheet"> 	
	</head>
	<body>
		<div id="container" style="height:700px">
			<form action="<%=request.getContextPath() %>/AdminServlet?method=adminLogin" method="post">
				<table  class="dltable">
					<tr>
						<td colspan="2"><h2>阅享后台管理系统登录界面</h2></td>
					</tr>
					<tr>
						<td colspan="2"><font color="red">${msg }</font></td>
					</tr>
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="登录" class="dlbtt"/></td>
					</tr>
					
				</table>
			</form>
		</div>
	</body>
</html>