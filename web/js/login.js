var flag=false;
function urlRegister() {
    document.querySelector(".x_login").style.display = "none";
    document.querySelector(".x_register").style.display = "block";
    document.querySelector(".y").style.float = "right";
    document.querySelector(".y").style.margin = "0 50px 0 0";
    document.querySelector(".y_login").style.display = "none";
    document.querySelector(".y_register").style.display = "block";
}
function urlLogin() {
    document.querySelector(".x_register").style.display = "none";
    document.querySelector(".x_login").style.display = "block";
    document.querySelector(".y").style.float = "left";
    document.querySelector(".y").style.margin = "0 0 0 50px";
    document.querySelector(".y_register").style.display = "none";
    document.querySelector(".y_login").style.display = "block";
}
function check() {
    // alert("1")
    flag=true;
    if (document.querySelector("#uid").value==""){
        alert("请输入账号");
        document.querySelector("#uid").focus();
        flag=false;
    }
    if(flag!=false){
        if (document.querySelector("#pwd").value==""){
            alert("请输入密码");
            document.querySelector("#pwd").focus();
            flag=false;
        }
    }
}
function checkAccount() {
    var account = document.getElementById("item_Account").value;
    var account_Prompt = document.getElementById("account_Prompt");
    var accountReg = /^[a-zA-Z0-9]{5,16}$/;
    if (!accountReg.test(account)) {
        document.querySelector("#account_Prompt").style.color = "red";
        account_Prompt.innerHTML = "错误，必须由英文字母或者数字组成的5-16位字符"
        return false;
    } else {
        document.querySelector("#account_Prompt").style.color = "gray";
        account_Prompt.innerHTML = "通过";
        return true;
    }
}
function checkPwd() {
    var pwd = document.getElementById("item_Pwd").value;
    var pwd_Prompt = document.getElementById("pwd_Prompt");
    var pwdRed = /^((?=.*[a-z])||(?=.*[A-Z]))[a-zA-Z0-9~!@&%#_*-+.=,><@#$%^&)]{6,16}$/;
    if (!pwdRed.test(pwd)) {
        document.querySelector("#pwd_Prompt").style.color = "red";
        pwd_Prompt.innerHTML = "错误，必须由英文字母数字或符号组成的6-16位字符"
        return false
    } else {
        document.querySelector("#pwd_Prompt").style.color = "gray";
        pwd_Prompt.innerHTML = "通过";
        return true;
    }
}
function checkRpwd() {
    var rpwd = document.getElementById("item_Rpwd").value;
    var rpwd_Prompt = document.getElementById("rpwd_Prompt");
    if (rpwd != document.getElementById("item_Pwd").value || document.getElementById("item_Pwd").value == "") {
        document.querySelector("#rpwd_Prompt").style.color = "red";
        rpwd_Prompt.innerHTML = "错误，请重新输入"
        return false
    } else {
        document.querySelector("#rpwd_Prompt").style.color = "gray";
        rpwd_Prompt.innerHTML = "通过"
        return true;
    }
}
function checkEmail() {
    var email = document.getElementById("item_Email").value;
    var email_Prompt = document.getElementById("email_Prompt");
    var emailRed = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
    if (!emailRed.test(email)) {
        document.querySelector("#email_Prompt").style.color = "red";
        email_Prompt.innerHTML = "错误，请输入正确的邮箱"
        return false
    } else {
        document.querySelector("#email_Prompt").style.color = "gray";
        email_Prompt.innerHTML = "通过"
        return true;
    }
}
function checkPhone() {
    var phone = document.getElementById("item_Phone").value;
    var phone_Prompt = document.getElementById("phone_Prompt");
    var phoneRed = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/
    if (!phoneRed.test(phone)) {
        document.querySelector("#phone_Prompt").style.color = "red";
        phone_Prompt.innerHTML = "错误，请输入正确的手机号码"
        return false
    } else {
        document.querySelector("#phone_Prompt").style.color = "gray";
        phone_Prompt.innerHTML = "通过"
        return true;
    }
}
function checkAll() {
    if(checkAccount()&&checkPwd()&&checkRpwd()&&checkPhone()&&checkEmail()){
        alert("注册成功！！！")
        flag=true;
    }else{
        alert("请填写信息！！！")
        flag=false;
    }
}
function checkLogin(){
    if(flag){
        return true;
    }else {
        return false;
    }
}
function checkRegister(){
    if(flag){
        return true;
    }else {
        return false;
    }
}
var getParam = function () {
    if ((window.location.href) != undefined) {
        var url = window.location.href;
        var result = url.split('=')[1];
        if (result == 'register') {
            document.querySelector(".x_login").style.display = "none";
            document.querySelector(".x_register").style.display = "block";
            document.querySelector(".y").style.float = "right";
            document.querySelector(".y").style.margin = "0 50px 0 0";
            document.querySelector(".y_login").style.display = "none";
            document.querySelector(".y_register").style.display = "block";
        }
    }
}