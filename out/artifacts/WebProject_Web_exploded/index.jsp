<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/30
  Time: 15:27
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
<style>
    * {
        margin: 0;
        padding: 0;
        list-style: none;
        text-decoration: none;
    }

    body {
        height: 3000px;
        width: 100%;
        background-color: rgb(245, 245, 245);
    }

    .container {
        height: 3000px;
        width: 1440px;
        margin: auto;
        /* border: 1px solid black; */
    }

    .header {
        width: 100%;
        height: 700px;
        /* margin-top: 50px; */
        margin-bottom: 50px;
        position: relative;
    }

    .headerempty {
        height: 40px;
        width: 100%;
        background-color: rgb(95, 87, 80);
    }

    .headerlogo {
        height: 80px;
        width: 80px;
        margin: auto;
    }

    .header .menu {
        height: 100px;
        line-height: 100px;
        margin: 5px;
        float: left;
        display: flex;
    }

    .header .menulist>li,
    .headerlogo {
        text-align: center;
        line-height: 80px;
        font-size: 16px;
        margin: 10px;
        float: left;
    }

    .header .menulist a {
        color: rgb(40, 40, 40);
    }

    .header .menulist a:hover {
        color: rgb(255, 106, 0);
    }

    .header .menu .menulist .listmenu1,
    .listmenu2,
    .listmenu3,
    .listmenu4,
    .listmenu5,
    .listmenu6 {
        position: absolute;
        width: 1436px;
        height: 270px;
        left: 2px;
        top: 130px;
        z-index: 1;
        display: none;
        background-color: aqua;
    }

    .header .menulistempty {
        position: relative;
        float: left;
        width: 127px;
        padding-right: 15px;
        background-color: black;
    }

    .header .search {
        margin-left: 70px;
        margin-right: 60px;
    }

    .header .menu .search form {
        height: 48px;
        width: 300px;
        margin-top: 25px;
        border: 1px solid gray;
        display: flex;
        border-radius: 2px;
    }

    .header .menu .search .searchbox {
        height: 46px;
        border: 0;
        width: 251px;
        font-size: 16px;
        padding-left: 10px;
        color: rgb(40, 40, 40);
    }

    .header .menu .search .searchbox:focus {
        outline: none;
    }

    .header .menu .search .btnsearch {
        width: 20px;
        height: 20px;
        padding: 14px;
        border-left: 1px solid gray;
        cursor: pointer;
    }

    .header .menu .account>ul>li {
        float: left;
        margin-right: 15px;
        font-size: 14px;
    }

    .header .menu .account a {
        color: rgb(49, 49, 49);
    }

    .header .menu .account a:hover {
        color: rgb(186, 186, 186);
    }

    .header .menu .shopcar {
        margin-left: 45px;
        position: relative;
        height: 50px;
        line-height: 50px;
        margin-top: 25px;
        cursor: pointer;
    }

    .header .menu .shopcar>ul>li {
        float: left;
        margin-right: 5px;
        font-size: 14px;
        height: 50px;
    }

    .header .menu .shopcar .imgcar {
        margin-top: 15px;
        width: 20px;
        height: 20px;
    }

    .header .nb {
        position: absolute;
        top: 130px;
        width: 100%;
        display: flex;
    }

    .header .nb .nav {
        height: 540px;
        width: 260px;
        background-color: rgba(128, 128, 128, 0.5);
        margin-left: 2px;
        color: white;
    }

    .header .nb .nav .navlist {
        padding-top: 30px;
    }

    .header .nb .navlist .navlistmenu1,
    .navlistmenu2,
    .navlistmenu3,
    .navlistmenu4,
    .navlistmenu5,
    .navlistmenu6,
    .navlistmenu7,
    .navlistmenu8 {
        width: 1176px;
        height: 540px;
        left: 262px;
        top: 0px;
        z-index: 1;
        display: none;
        position: absolute;
        background-color: aqua;
    }

    .header .nb .nav li {
        position: relative;
        height: 60px;
        padding-left: 30px;
        font-size: 16px;
    }

    .header .nb .nav li span {
        position: absolute;
        top: 40%;
        line-height: 18px;
    }

    .header .nb .nav li img {
        position: absolute;
        top: 40%;
        left: 80%;
        width: 16px;
        height: 16px;
    }

    .header .nb .nav li:hover {
        background-color: gainsboro;
    }

    .header .nb .banner {
        width: 1176px;
        height: 540px;
        overflow: hidden;
    }

    .header .nb .imglist {
        width: 7056px;
        height: 540pxpx;
    }

    .header .nb .imglist img {
        width: 1176px;
        height: 540px;
    }

    .header .nb .imglist li {
        float: left;
    }

    .header .nb #dots {
        position: absolute;
        bottom: 15px;
        display: flex;
        right: 15px;
    }

    .header .nb #dots li {
        width: 30px;
        height: 10px;
        background: gray;
        text-align: center;
        line-height: 30px;
        margin-left: 5px;
        cursor: pointer;
    }

    .header .nb #dots span {
        display: none;
    }
</style>

<body>
<div class="headerempty"></div>
<div class="container">
    <div class="header">
        <div class="menu">
            <ul class="menulist">
                <img src="./images/logo.jpeg" class="headerlogo" alt="">
                <li><a class="menulistempty"></a></li>
                <li class="list_item1" value="1"><a href="">今日特惠</a></li>
                <li class="list_item2" value="2"><a href="">近期热卖</a></li>
                <li class="list_item3" value="3"><a href="">新品上架</a></li>
                <li class="list_item4" value="4"><a href="">猜您喜欢</a></li>
                <li class="list_item5" value="5"><a href="">足迹</a></li>
                <li class="list_item6" value="6"><a href="">服务中心</a></li>
                <div class="listmenu1"></div>
                <div class="listmenu2"></div>
                <div class="listmenu3"></div>
                <div class="listmenu4"></div>
                <div class="listmenu5"></div>
                <div class="listmenu6"></div>
            </ul>
            <script>
                //获取头部菜单的元素数组
                var emenu = document.querySelector('.menulist');
                var elistmenu = document.querySelectorAll('.menulist>div')
                var elistitem=document.querySelectorAll('.menulist>li');
                // emenu.onmouseover = function(){
                //     if(event.target.value==1){
                //         document.querySelector('.listmenu1').style.display='block';
                //     }else if(event.target.value==2){
                //         document.querySelector('.listmenu2').style.display='block';
                //     }else if(event.target.value==3){
                //         document.querySelector('.listmenu3').style.display='block';
                //     }else if(event.target.value==4){
                //         document.querySelector('.listmenu4').style.display='block';
                //     }else if(event.target.value==5){
                //         document.querySelector('.listmenu5').style.display='block';
                //     }else if(event.target.value==6){
                //         document.querySelector('.listmenu6').style.display='block';
                //     }
                // }
            </script>
            <div class="search">
                <form action="" onsubmit="return false">
                    <input class="searchbox" type="text" name="" id="">
                    <input type="image" class="btnsearch" src="./images/搜索.png" alt="">
                </form>
            </div>
            <div class="account">
                <ul>
                    <li><a href="login.jsp?name=login">登录</a></li>
                    <li><span>|</span></li>
                    <li><a href="login.jsp?name=register">注册</a></li>
                </ul>
            </div>
            <div class="shopcar">
                <ul>
                    <li><img class="imgcar" src="./images/购物车空.png" alt=""></li>
                    <li>购物车</li>
                    <li>(<span>0</span>)</li>
                </ul>
            </div>
        </div>
        <div class="nb">
            <div class="nav">
                <ul class="navlist">
                    <li class="list_item1"><span>女装</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item2"><span>女鞋</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item3"><span>男装</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item4"><span>男鞋</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item5"><span>手机</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item6"><span>家电</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item7"><span>食品</span><img src="./images/切换器右.png" alt=""></li>
                    <li class="list_item8"><span>医药</span><img src="./images/切换器右.png" alt=""></li>
                    <div class="navlistmenu1"></div>
                    <div class="navlistmenu2"></div>
                    <div class="navlistmenu3"></div>
                    <div class="navlistmenu4"></div>
                    <div class="navlistmenu5"></div>
                    <div class="navlistmenu6"></div>
                    <div class="navlistmenu7"></div>
                    <div class="navlistmenu8"></div>
                </ul>
            </div>
            <div class="banner">
                <ul class="imglist" id="imglist">
                    <li><img src="./images/background.jpg" alt=""></li>
                    <li><img src="./images/touxiang.jpeg" alt=""></li>
                    <li><img src="./images/touxiang2.jpeg" alt=""></li>
                    <li><img src="./images/touxiang.jpeg" alt=""></li>
                    <li><img src="./images/touxiang2.jpeg" alt=""></li>
                    <li><img src="./images/background.jpg" alt=""></li>
                </ul>
                <ul id="dots">
                    <li value="1"></li>
                    <li value="2"></li>
                    <li value="3"></li>
                    <li value="4"></li>
                    <li value="5"></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="store">
        <div class="discount"></div>
        <div class="hot"></div>
        <div class="new"></div>
        <div class="guesslike"></div>
    </div>
    <div class="bottom"></div>
</div>
</body>
<script>
    var left = 0;
    var timer;
    var edots = document.getElementById('dots').getElementsByTagName('li');
    var edotslist = document.querySelector('#dots');
    var eimglist = document.querySelector('.imglist')
    run();
    function run() {
        if (left <= -5880) {
            left = 0;
        }
        imglist.style.marginLeft = left + 'px';
        var n = (left % 1176 == 0) ? n = 2500 : n = 10;
        left -= 7;
        timer = setTimeout(run, n);
        var m = Math.floor(-left / 1176);
        dotchange(m);
    }
    function imgchange(n) {
        let lt = -(n * 1176);
        imglist.style.marginLeft = lt + 'px';
        left = lt;
    }
    function dotchange(m) {
        for (let index = 0; index < edots.length; index++) {
            edots[index].style.backgroundColor = '';
        }
        if (m < edots.length) {
            edots[m].style.backgroundColor = 'gainsboro';
        }
    }
    edotslist.onclick = function () {
        var dot = event.target.value - 1;
        imgchange(dot);
        dotchange(dot);
    }
    eimglist.onmouseover = function () {
        if (-(left + 7) % 1176 == 0) {
            clearTimeout(timer);
        }
    }
    eimglist.onmouseout = function () {
        if (-(left + 7) % 1176 == 0) {
            setTimeout(() => {
                clearTimeout(timer);
                run();
            }, 3000);
        }
    }
</script>

</html>