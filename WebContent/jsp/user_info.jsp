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
			<form action="<%=request.getContextPath() %>/UserServlet?method=userUpdate"  method="post">
			<table class="tab1">
					<tr>
						<td colspan="2">欢迎<%=user.getUsername() %>用户</td>
					</tr>
					<tr>
						<td width="100">已绑定邮箱:</td>
						<td><span><%=user.getEmail() %></span></td>
					</tr>
					<tr>
						<td width="100">手机号:</td>
						<td><input type="text" name="phone" value="<%=user.getPhone() %>" /></td>
					</tr>
					<tr>
						<td>昵称:</td>
						<td><input type="text" name="name" value="<%=user.getName()%>" /></td>
					</tr>
					<tr>
						<td>出生日期:</td>
						<td><input type="date" name="birthday" value="<%=user.getBirthday()%>" /></td>
					</tr>
					<tr>
						<td>性别</td>
						<td>
							<select name="sex">
								<option value="男" checked="checked">男</option>
								<option value="女" checked="checked">女</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="提交" style="width: 60px; height: 30px;"/></td>
					</tr>
			</table>
			</form>
			</center>
		</div>

    
</body>
</html>