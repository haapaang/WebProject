<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="./css/login.css">
<script src="./js/login.js"></script>

<body onload="getParam()">
<div class="container">
    <div class="x">
        <div class="x_login">
            <h1>欢迎来到<span>网上商城</span></h1>
            <p class="heard">开启您的<span>网购</span>之旅</p>
            <img src="./images/touxiang.jpeg" alt="图片被藏起来啦~" class="item_img">
            <p>没有账号？</p>
            <button class="btnRegister" onclick="urlRegister()">注册</button>
        </div>
        <div class="x_register">
            <h1>欢迎来到<span>网上商城</span></h1>
            <p class="heard"><span>保证</span>不会偷看的啦~</p>
            <img src="./images/touxiang2.jpeg" alt="图片被藏起来啦~" class="item_img">
            <p>已有账号</p>
            <button class="btnLogin" onclick="urlLogin()">登录</button>
        </div>
        <div class="y">
            <div class="y_login">
                <form action="UsersServlet" onsubmit="return checkLogin()" name="loginForm">
                    <input type="hidden" name="op" value="login">
                    <ul>
                        <p class="title">LOGIN</p>
                        <li class="item1"><input type="text" id="uid" name="uid" placeholder="请输入账号"></li>
                        <li class="item1"><input type="password" id="pwd" name="pwd" placeholder="请输入密码"></li>
                        <li class="item1"><input class="sbtLogin" type="submit" onclick="check()" value="登录"></li>
                        <li class="item1"><a href="findAccount.jsp">忘记密码？</a></li>
                    </ul>
                </form>
            </div>
            <div class="y_register">
                <form action="UsersServlet" target="iFrame" method="post" onsubmit="return checkRegister()">
                    <input name="op" value="register" type="hidden">
                    <ul>
                        <p class="title">REGISTER</p>
                        <li class="item2"><input type="text" id="item_Account" name="uid" placeholder="请输入账号"
                                                 onblur="checkAccount()"></li>
                        <p id="account_Prompt">由英文字母或数字组成的4-16位字符，以字母开头</p>
                        <li class="item2"><input type="password" id="item_Pwd" name="pwd" placeholder="请输入密码"
                                                 onblur="checkPwd()">
                        </li>
                        <p id="pwd_Prompt">由英文字母数字或符号组成的6-16位字符，至少包含两种</p>
                        <li class="item2"><input type="password" id="item_Rpwd" name="rpwd" placeholder="请确认密码"
                                                 onblur="checkRpwd()"></li>
                        <p id="rpwd_Prompt">请再次输入密码</p>
                        <li class="item2"><input type="text" id="item_Email" name="email" placeholder="请输入邮箱"
                                                 onblur="checkEmail()">
                        </li>
                        <p id="email_Prompt">请输入合法邮箱</p>
                        <li class="item2"><input type="text" id="item_Phone" name="phone" placeholder="请输入注册手机号"
                                                 onblur="checkPhone()"></li>
                        <p id="phone_Prompt">请输入合法的中国大陆地区手机号码</p>
                        <li class="item2"><input class="sbtRegister" type="submit" value="确认" onclick="checkAll()">
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>