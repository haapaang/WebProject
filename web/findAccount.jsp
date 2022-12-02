<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/30
  Time: 19:59
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
<link rel="stylesheet" href="css/findAccount.css">
<script src="js/findAccount.js"></script>
<body>
<div class="verify">
    <form action="UsersServlet" name="verifyForm" onsubmit="return check()">
        <input type="hidden" value="verify" name="op">
        <label>找回密码</label>
        <div class="main">
            <ul>
                <p>请输入账号</p>
                <li><input id="item_Account" type="text" name="account" placeholder="请输入账号"></li>
                <p>请输入注册手机号</p>
                <li><input id="item_Phone" type="text" name="phone" placeholder="请输入注册手机号"></li>
                <p>请输入姓名</p>
                <li><input id="item_Uname" type="text" name="uname" placeholder="请输入姓名"></li>
                <p>请输入身份证</p>
                <li><input id="item_Uid" type="text" name="uid" placeholder="请输入身份证"></li>
                <li class="btnVerify"><input class="btn" type="submit" name="" value="验&nbsp证" onclick="checkReturn()"/></li>
            </ul>
        </div>
    </form>
</div>
<%--<div class="reset">--%>
<%--    <form action="UsersServlet" name="resetForm" onsubmit="return checkSumbit()">--%>
<%--        <input type="hidden" value="reset" name="op">--%>
<%--        <label>重置密码</label>--%>
<%--        <div class="main">--%>
<%--            <ul>--%>
<%--                <p>请输入密码</p>--%>
<%--                <li class="item"><input type="password" id="item_Pwd" name="" placeholder="请输入密码" onblur="checkPwd()" ></li>--%>
<%--                <p id="pwd_Prompt">由英文字母数字或符号组成的8-16位字符</p>--%>
<%--                <p>请确认密码</p>--%>
<%--                <li class="item"><input type="password" id="item_Rpwd" name="" placeholder="请确认密码" onblur="checkRpwd()" ></li>--%>
<%--                <p id="rpwd_Prompt">请再次输入密码</p>--%>
<%--                <li class="btnReset"><input class="btn" type="submit" name="" value="提&nbsp交"/></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>
</body>
</html>
