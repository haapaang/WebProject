<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/30
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="css/register.css">
<script src="js/register.js"></script>
<body>
<div class="container">
    <form action="UsersServlet" name="registerForm" onsubmit="return checkSumbit()">
        <span>账号注册</span>
        <div class="main">
            <ul>
                <p>请输入账号</p>
                <li><input type="text" id="item_Account" name="account" placeholder="请输入账号" onblur="checkAccount()"></li>
                <p id="account_Prompt">由英文字母或数字组成的4-16位字符，以字母开头</p>
                <p>请输入密码</p>
                <li><input type="password" id="item_Pwd" name="pwd" placeholder="请输入密码" onblur="checkPwd()" ></li>
                <p id="pwd_Prompt">由英文字母数字或符号组成的6-16位字符，至少包含两种</p>
                <p>请确认密码</p>
                <li><input type="password" id="item_Rpwd" name="rpwd" placeholder="请确认密码" onblur="checkRpwd()" ></li>
                <p id="rpwd_Prompt">请再次输入密码</p>
                <p>请输入注册手机号</p>
                <li><input type="text" id="item_Phone" name="phone" placeholder="请输入注册手机号" onblur="checkPhone()"></li>
                <p id="phone_Prompt">请输入合法的中国大陆地区手机号码</p>
                <p>请输入姓名</p>
                <li><input type="text" id="item_Uname" name="uname" placeholder="请输入姓名" onblur="checkUname()"></li>
                <p id="uname_Prompt">请输入合法姓名</p>
                <p>请输入身份证</p>
                <li><input type="text" id="item_Uid" name="uid" placeholder="请输入身份证" onblur="checkUid()"></li>
                <p id="uid_Prompt">请输入合法身份证号码</p>
                <input type="hidden" name="op" value="register">
                <li class="item_btn"><input class="btn" type="submit" name="" value="注&nbsp册" onclick="checkAll()"/></li>
            </ul>
        </div>
    </form>
</div>
</body>
</html>