<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>网上订餐系统</title>
</head>
<link rel="stylesheet" href="css/login.css">
<script src="./js/login.js"></script>
<body>
<div class="login">
    <form action="UsersServlet" name="loginForm" onsubmit="return checkSubmit()">
        <p class="title">网上订餐系统</p>
        <div class="container">
            <ul>
                <li>
                    账&nbsp号:&nbsp&nbsp<input class="account" type="text" placeholder="请输入账号" name="account">
                </li>
                <li class="pwd">
                    密&nbsp码:&nbsp&nbsp<input class="inputPwd" type="password" placeholder="请输入密码" name="pwd">
                </li>
                <li class="item">
                    <a href="findAccount.jsp" class="reset">忘记密码?</a>
                </li>
            </ul>
            <input type="hidden" name="op" value="login">
            <p><input class="btnlogin" type="submit" value="登&nbsp&nbsp录" onclick="check()"/></p>
            <input class="apply" type="button" value="注&nbsp&nbsp册" onclick='location.href =("register.jsp")'/>
        </div>
    </form>
</div>
</body>
</html>