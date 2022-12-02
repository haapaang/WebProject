function check(){
    var account=document.getElementById("item_Account").value;
    var phone=document.getElementById("item_Phone").value;
    var uname=document.getElementById("item_Uname").value;
    var uname=document.getElementById("item_Uid").value;
    if(account==""||phone==""||uname==""||phone==""){
        alert("请您完善信息")
        return false;
    }else{
        return true;
    }
}

function checkPwd(){
    var pwd = document.getElementById("item_Pwd").value;
    var pwd_Prompt = document.getElementById("pwd_Prompt");
    var pwdRed = /^((?=.*[a-z])||(?=.*[A-Z]))[a-zA-Z0-9~!@&%#_*-+.=,><@#$%^&)]{7,15}$/;
    if(!pwdRed.test(pwd)){
        document.querySelector("#pwd_Prompt").style.color="red";
        pwd_Prompt.innerHTML="错误，必须由英文字母数字或符号组成的8-16位字符"
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
function checkReturn(){
    alert(flag)
    // setTimeout(() => {
    //     if(flag){
    //         document.querySelector(".verify").style.display="none";
    //         document.querySelector(".reset").style.display="block";
    //     }
    // }, 500
    // );
}
function checkSumbit(){
    if(checkPwd()&&checkRpwd()){
        return true;
    }else{
        return false;
    }
}