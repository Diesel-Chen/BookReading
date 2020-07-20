<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
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
        <div class="btou"><a href="login.jsp" style="color: #000;"><span id="denglu">登陆</span></a><a href="register.html"><span id="zhuce" style="border-bottom: 2px solid blue;color: #fff;font-weight: bold;">注册</span></a></div>
        <form action="<%=request.getContextPath() %>/UserServlet?method=userRegister" method="post" class="form2">
        
            <div class="byhm">用户名</div><input type="text" name="username" class="input1">
            
            <div class="bmima">密码</div><input type="password" name="password" class="input2">
            
            <div class="remima">确认密码</div><input type="password" class="input5">
            
            <div class="bdianzi">电子邮箱</div><input type="email" name="email" class="input6">
             
            <input type="submit" value="注 册" class="input7">
        </form>
  	</div>
	</body>
</html>
