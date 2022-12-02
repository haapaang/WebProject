function checkAccount() {
    var account = document.getElementById("item_Account").value;
    var account_Prompt = document.getElementById("account_Prompt");
    var accountReg = /^[a-zA-Z0-9]{5,15}$/;
    if (!accountReg.test(account)) {
        document.querySelector("#account_Prompt").style.color="red";
        account_Prompt.innerHTML = "错误，必须由英文字母或者数字组成的6-16位字符"
        return false;
    } else {
        document.querySelector("#account_Prompt").style.color="gray";
        account_Prompt.innerHTML = "通过";
        return true;
    }
}
function checkPwd(){
    var pwd = document.getElementById("item_Pwd").value;
    var pwd_Prompt = document.getElementById("pwd_Prompt");
    var pwdRed = /^((?=.*[a-z])||(?=.*[A-Z]))[a-zA-Z0-9~!@&%#_*-+.=,><@#$%^&)]{7,15}$/;
    if(!pwdRed.test(pwd)){
        document.querySelector("#pwd_Prompt").style.color="red";
        pwd_Prompt.innerHTML="错误，必须由英文字母数字或符号组成的8-16位字符，至少包含两种"
        return false
    }else{
        document.querySelector("#pwd_Prompt").style.color="gray";
        pwd_Prompt.innerHTML = "通过";
        return true;
    }
}
function checkRpwd(){
    var rpwd = document.getElementById("item_Rpwd").value;
    var rpwd_Prompt = document.getElementById("rpwd_Prompt");
    if(rpwd!=document.getElementById("item_Pwd").value||document.getElementById("item_Pwd").value==""){
        document.querySelector("#rpwd_Prompt").style.color="red";
        rpwd_Prompt.innerHTML="错误，请重新输入"
        return false
    }else{
        document.querySelector("#rpwd_Prompt").style.color="gray";
        rpwd_Prompt.innerHTML="通过"
        return true;
    }
}
function checkPhone(){
    var phone = document.getElementById("item_Phone").value;
    var phone_Prompt = document.getElementById("phone_Prompt");
    var phoneRed = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/
    if(!phoneRed.test(phone)){
        document.querySelector("#phone_Prompt").style.color="red";
        phone_Prompt.innerHTML="错误，请输入正确的手机号码"
        return false
    }else{
        document.querySelector("#phone_Prompt").style.color="gray";
        phone_Prompt.innerHTML="通过"
        return true;
    }
}
function checkUname(){
    var uname = document.getElementById("item_Uname").value;
    var uname_Prompt = document.getElementById("uname_Prompt");
    var unameRed = /^[A-Za-z\u4e00-\u9fa5]{1,31}$/;
    if(!unameRed.test(uname)){
        document.querySelector("#uname_Prompt").style.color="red";
        uname_Prompt.innerHTML="错误，请输入合法姓名"
        return false
    }else{
        document.querySelector("#uname_Prompt").style.color="gray";
        uname_Prompt.innerHTML="通过"
        return true;
    }
}
function checkUid(){
    var uid = document.getElementById("item_Uid").value;
    var uid_Prompt = document.getElementById("uid_Prompt");
    var uidRed = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
    if(!uidRed.test(uid)){
        document.querySelector("#uid_Prompt").style.color="red";
        uid_Prompt.innerHTML="错误，请输入正确的身份证号码"
        return false
    }else{
        document.querySelector("#uid_Prompt").style.color="gray";
        uid_Prompt.innerHTML="通过"
        return true;
    }
}
function checkAll(){
    if(checkAccount()&&checkPwd()&&checkRpwd()&&checkPhone()&&checkUname()&&checkUname()){
        alert("感谢您，注册成功！！！")
        return true;
    }else{
        alert("请填写信息！！！")
        return false;
    }
}
function checkSumbit(){
    if(checkAccount()&&checkPwd()&&checkRpwd()&&checkPhone()&&checkUname()&&checkUname()){
        return true;
    }else{
        return false;
    }
}