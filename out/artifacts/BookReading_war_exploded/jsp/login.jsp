<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.0.js"></script>
    <script>
        $(function(){
            $(".input3").click(function(){
                if(this.checked){
                    $(".bjz").css("color","#fff");
                }else{
                    $(".bjz").css("color","#999");
                }
            })
        })
    </script>
</head>
<body>
    <div class="bbox">
        <img src="<%=request.getContextPath() %>/img/login.jpg">
        <div class="bzzc"></div>
        <div class="btou" >
        	<a href="login.jsp"><span id="denglu" style="border-bottom: 2px solid blue;color: #fff;font-weight: bold;">登陆</span></a>
        	<a href="register.jsp" style="color: #000;"><span id="zhuce">注册</span></a>
        	<a href="<%=request.getContextPath() %>/admin/index.jsp" style="color: #fff; font-weight: bold;">管理员登陆入口</a>
        </div>
        <form action="<%=request.getContextPath() %>/UserServlet?method=userLogin" method="post" class="form1">
            <div class="byhm">用户名</div><input type="text" name="username" class="input1">
            <div class="bmima">密码</div><input type="password" name="password" class="input2">
            <input type="checkbox" class="input3"><div class="bjz">自动登录</div>
            <input type="submit" value="登 陆" class="input4">
        </form>
    </div>
</body>
</html>