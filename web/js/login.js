let flag;
function check() {
    flag=true;
    if (document.loginForm.account.value==""){
        alert("请输入账号");
        document.loginForm.account.focus();
        flag=false;
    }
    if(flag!=false){
        if (document.loginForm.pwd.value==""){
            alert("请输入密码");
            document.loginForm.pwd.focus();
            flag=false;
        }
    }
}
function checkSubmit(){
    if(flag===false){
        return false;
    }
}