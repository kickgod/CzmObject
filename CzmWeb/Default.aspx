﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<%@ Register Src="~/Common/wuc_ListPager.ascx" TagPrefix="uc1" TagName="wuc_ListPager" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none;}
        .Head{ width: 100%;background-color: RGB(176, 53, 112);height: 60px;}
        .Head .logo{ width: 20%;height: 60px;line-height: 60px;float: left}
        .Head .logo i{ color: RGB(232,105,170);font-weight: bold;font-size: 280%;font-style: italic;line-height: 60px;height: 60px;width: 100%;text-align: center;display: block}
        .Head .Nav{ width: 60%;height: 60px;line-height: 60px;float:left;}
        .Head .Nav ul{ width: 100%;line-height: 60px;height: 60px;list-style: none;}
        .Head .Nav ul li{ width: 80px;text-align: center;float: left;color: grey;}
        .Head .Nav ul li:hover{ color: red;font-size: 1em;cursor: pointer;border-top: 2px solid white;}
        .Head .Nav ul li a{ text-decoration: none;color: grey;}
        .Head .Login_ACE{ width: 20%;line-height: 60px;height: 60px;float: left}
        .FontColor{ color: RGB(255, 255, 255);font-size: 0.9em;}
        .FontColor:hover{color: gainsboro;font-size: 1em;cursor: pointer;}
        .Head .Login_ACE ul{ list-style: none;height: 60px}
        .Head .Login_ACE ul li{ width: 48%;height: 60px;text-align: center;float: left;}
        .Head .Login_ACE ul li .transfer{ width: 49%;text-decoration: none;color: white;float: left}
        .Head .Login_ACE ul li .transfer:hover{ color: gainsboro;border-top: 2px solid white;}
        .Head .Login_ACE ul li a{ width: 100%;height: 60px;display: block}
        .Head .Login_ACE ul li img{ width: 40px;height: 40px;padding:5px;}
        .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
        .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
        .Head .Login_ACE ul li ul li{background-color:gainsboro;width: 100%;color: white;}
        .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
        .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
        .Head .Login_ACE ul li:hover img{ padding-top: 0px;width: 50px;height: 50px;}
        #containter { overflow: hidden; width: 1200px;height: 535px;position: relative;z-index: 1;margin: 0px auto;z-index: 1;}
        #ilist{width: 8400px;height: 535px;position: absolute;z-index: 1;left: 0px;}
        #ilist img{float: left;z-index: 1;}
        #buttons {position: absolute;height: 10px;width: 160px;z-index: 2; bottom: 20px;left: 48%;}
        #buttons span{cursor: pointer;float: left;border: 1px solid #FFFDEF;width: 14px; height: 14px;border-radius: 50%;background: #333333;margin-right: 5px;}
        #buttons .on{background: orangered;}
        .Onlist{background-color: white;}
        .arrow{cursor: pointer;display: none;line-height: 40px;text-align: center;font-size: 36px;font-weight: bold;width: 80px;height: 80px;position: absolute;z-index: 2;top: 180px;background-color: rgba(0,0,0,0.3);}
        .arrow:hover{background-color: rgba(0,0,0,0.7);}
        #containter:hover .arrow{display: block;}
        #prev{left: 20px;z-index: 5;display: block;}
        #next{right: 20px;z-index: 5;display: block;}
       .lunboSection{ width: 100%;height: 535px;background: linear-gradient(darkmagenta, RGB(176, 53, 112));}
       .lunboSection .Font_ont{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(64deg);}
       .lunboSection .Font_tot{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(-152deg);right: 10%;}
       .ProdecutShow{ width: 100%;height: 400px;}
       .ProdecutShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
       .ProdecutShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .ProdecutShow .ProductImg{ width: 1300px;margin: auto;}
        .ProdecutShow .ProductImg  .heheda{position: relative; width: 320px;height: 225px;float: left;margin-right: 5px; }
        .ProdecutShow .ProductImg  .heheda:hover{ transform: scale(1.1, 1.1);-webkie-transform: scale(1.1, 1.1);}
        .ProdecutShow .ProductImg  .heheda:hover img{ box-shadow: 2px 2px 2px 2px slategrey;}
        .ProdecutShow .ProductImg  .heheda img{ position: absolute;top: 0px;left: 10px;z-index: 2;}
        .ProdecutShow .ProductImg  .heheda h2{top: 20px; z-index: 3; position: absolute;width: 25px;height: 120px;background: -webkit-linear-gradient(right,RGB(111,41,104),RGB(111,41,104),RGB(68,7,66));
         background: -o-linear-gradient(right, RGB(176, 53, 112),RGB(82, 18, 87));
         background: linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
         background: -moz-linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
         color: white;font-weight: 400;font-size: 16px;text-align: center;padding-top: 30px;font-family: '楷体','宋体' }
        .Font_Name_English{ color: darkmagenta;font-weight: 900;font-size: 16px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
        .NewProductShow{width: 100%;height: 500px;}
        .NewProductShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .NewProductShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .NewProductShow .ListProduct{ width: 1220px;margin: auto;}
        .NewProductShow .ListProduct .newproductList{ width: 400px;height: 360px; position: relative;float: left;top: 0px;left: 0px; }
        .NewProductShow .ListProduct .newproductList:hover {transform: translate(10px,10px); }
        .NewProductShow .ListProduct .newproductList .UpRectangle{ width: 10%;height: 10%;border-left: 1px solid grey;border-top: 1px solid grey;transition: 3s}
        .NewProductShow .ListProduct .newproductList .Rectangle{ width:80% ;height: 58%;margin: auto;background-color:RGB(228,143,184) }
        .NewProductShow .ListProduct .newproductList .DownRectangle{ width: 10%;height: 10%;position: absolute;bottom: 0px; right: 0px;border-bottom: 1px solid grey;border-right: 1px solid grey;}
        .NewProductShow .ListProduct .newproductList .IntroDuction{ position: absolute;bottom: 10%; height: 20%;width: 100%}
        .NewProductShow .ListProduct .newproductList .IntroDuction input{font-size: 25px;font-family: '楷体';  width: 100px;height: 30px;line-height: 30px; position: absolute;right: 5%;top: 0px;color: white;background-color: RGB(105, 17, 75);border:2px solid RGB(105, 17, 75)  }
        .LearnMoreProduct{ width: 100%;height: 150px}
        .LearnMoreProduct a{display: block;margin-top: 50%;width: 300px;height: 150px;line-height: 150px; margin: auto;font-size: 30px;font-weight: 600;text-align: center;color:RGB(126,0,84) }
        .LearnMoreProduct a:hover{ font-size: 40px;text-shadow: 2px 2px 2px saddlebrown}
        .ProductIntrpDuction{ font-family: '华文楷体', '楷体', '微软雅黑','宋体'; color: RGB(188, 182, 184);font-size: 1em}
        .VedioList{ width: 100%;height: 610px;background-color: RGB(231, 223, 238);box-sizing: border-box}
        .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .VedioList .Vedioshelf { width: 810px;margin: auto;}
        .VedioList .Vedioshelf .LeftBox{background-image: url(FirstImage/diaoyu.png); width: 200px;float: left;height: 200px;background-color:white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .LeftBox img{opacity: 0.75;filter:alpha(opacity=75);  width: 180px;height: 180px;border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .CenterBox{background-image: url(FirstImage/yihui.png);  width: 400px;float: left;height: 400px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
        .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 380px;height: 380px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .RightBox{background-image: url(FirstImage/wenwu.png);  width:200px;float: left; height: 200px;background-color: white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .RightBox img {opacity: 0.75;filter:alpha(opacity=75); width: 180px;height: 180px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
        .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
        .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
        .VedioList .LearingMoreVedio p a{color: purple;} 
        .Watchlive{ width: 100%;height: 500px;}
        .Watchlive .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .Watchlive .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .Watchlive .LiveSelf{ width: 700px;margin: 30px auto}
        .Watchlive .LiveSelf a{ display: block;float: left;margin: 10px;}
        .Watchlive .LiveSelf a img{ width: 200px;height: 200px;border-radius: 50%;}
        .ProjectShow{ width: 100%;}
        .ProjectShow .ProjectTitle{ background-color: RGB(62, 14, 88);text-align: center;line-height: 30px;height: 30px;color: white;font-weight: 600;}
        .InvertMan{ width: 100%;margin: 0 auto;height: 500px;}
        .InvertMan .right{ width: 30%;height: 500px;float: left;background-color: #fffdef}
        .InvertMan .right .ProjectSelf{ margin: auto;width: 420px;height: 500px;overflow: auto;}
        .InvertMan .right .ProjectSelf .VideoShow{position: relative;width: 400px;height: 400px;float: left;} 
        .InvertMan .right .ProjectSelf .VideoShow:hover .OpcityHtml{ width: 400px;background-color: black} 
        .InvertMan .right .ProjectSelf .VideoShow:hover .IntroDucation{ width: 400px;height: 400px}
        .InvertMan .right .ProjectSelf .VideoShow .imgShow img{ width: 100%;height: 400px;}
        .InvertMan .right .ProjectSelf .VideoShow .OpcityHtml{position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;opacity: 0.3;filter: alpha(opacity=30);transition: 1s; -moz-transition: 1s;}
        .InvertMan .right .ProjectSelf .VideoShow .IntroDucation{ position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;overflow: hidden;transition: 1s;-moz-transition: 1s; }
        .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title{color: white;font-weight: bold;}
        .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title p{ border:1px solid black;background-color: purple; margin:auto;margin-bottom: 30px;margin-top: 100px; width: 140px;text-align: center;height: 40px;line-height: 40px;}
        .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations{ color: white;font-size: medium;font-weight: bold}
        .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations p{ width: 400px; }
        .InvertMan .center{ width: 70%;float: left;height: 500px;overflow: auto}
        .InvertMan .center .ShowInvertDw{ width: 100%;height: 40px;line-height: 40px;color: darkblue;text-indent: 10%;}
        .InvertMan .center .ShowInvertDw .spanDw{ color:RGB(229,9,87) ;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体';font-size: 1.2em}
        .InvertMan .center .ShowInvertDw .spanXm{ color: purple;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体'; }
        .InvertMan .center .ShowInvertDw .date{ font-weight: 200;font-size: 0.9em;color: gray}
        footer{ background-color: RGB(10, 18, 43);width: 100%; height: 250px;}
        footer .HeadColor{ height: 40px;width: 100%;background-color: RGB(144,68,117)}
        footer .TowPart{ width: 100%;background-color: white;height: 210px;}
        footer .TowPart .Left_Font{ width: 49%;height: 210px;float: left;border: 1px solid red }
        footer .TowPart .Left_Font table{width: 80%; padding: 7px;margin: auto;border: 1px solid black}
        footer .TowPart .Left_Font table th{ height: 30px;line-height: 30px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
        footer .TowPart .Left_Font table tr{height: 30px;line-height: 30px}
        footer .TowPart .Left_Font table .TitleIntroduce{color:RGB(114,114,114)}
        footer .TowPart .Right_Picture{ width: 49%;height: 210px;float: left}


   </style>
    <script type="text/javascript">
        window.onload = function () {
            var span = document.getElementsByTagName("span");
            var container = document.getElementById('containter');
            var list = document.getElementById("ilist");
            /*获得五个标签*/
            var buttom = document.getElementById('buttons').getElementsByTagName('span');
            var prev = document.getElementById("prev");
            var next = document.getElementById("next");
            var Beijing = document.getElementsByClassName("lunboSection");
            var index = 1;
            var change=1;
            for (var i = 0; i < buttom.length; i++) {
                buttom[i].onclick = function () {
                    /*自定义属性不可以获取用this直接获取*/
                    var nowIndex = Number(this.getAttribute('index'));
                    if (nowIndex == 1) {
                        list.style.left = "0px";
                        index = 1;
                        showButton();
                    }
                    else if (nowIndex == 2) {
                        list.style.left = "-1200px";
                        index = 2;
                        showButton();
                    }
                    else if (nowIndex == 3) {
                        list.style.left = "-2400px";
                        index = 3;
                        showButton();
                    }
                    else if (nowIndex == 4) {
                        list.style.left = "-3600px";
                        index = 4;
                        showButton();
                    }
                    else if (nowIndex == 5) {
                        list.style.left = "-4800px";
                        index = 5;
                        showButton();
                    }
                }
            }
            setInterval(function() {
                    if (index == 5) change = -1;
                    if (index == 1) change = 1;
                    index = index + change;
                    var nowIndex = index;
                    if (nowIndex == 1) {
                        list.style.left = "0px";
                        index = 1;
                        showButton();
                    }
                    else if (nowIndex == 2) {
                        list.style.left = "-1200px";
                        index = 2;
                        showButton();
                    }
                    else if (nowIndex == 3) {
                        list.style.left = "-2400px";
                        index = 3;
                        showButton();
                    }
                    else if (nowIndex == 4) {
                        list.style.left = "-3600px";
                        index = 4;
                        showButton();
                    }
                    else if (nowIndex == 5) {
                        list.style.left = "-4800px";
                        index = 5;
                        showButton();
                    }
                },
                3000);
            function showButton() {
                for (var i = 0; i < buttom.length; i++) {
                    buttom[i].style.backgroundColor = "black";
                }
                buttom[index - 1].style.backgroundColor = "orangered";
            }
            next.onclick = function () {
                if (list.offsetLeft == -4800) {
                    list.style.left = '0px';
                    index = 1;
                } else {
                    list.style.left = (list.offsetLeft - 1200).toString() + 'px';
                    index += 1;


                }
                showButton();
            }
            prev.onclick = function () {
                if (list.offsetLeft == 0) {
                    list.style.left = '-4800px';
                    index = 5;
                } else {
                    list.style.left = (list.offsetLeft + 1200).toString() + 'px';
                    index = index - 1;
                }
                showButton();
            }
            var box = document.getElementById("Scoll");
            setInterval(function() {
                var jiuTop = box.scrollTop;
                var newtop = jiuTop + 1;
                box.scrollTop = newtop;
                if (newtop+box.offsetHeight>= box.scrollHeight) {
                    box.scrollTop = 0;
                }
                },
               10);
            var boxs = document.getElementById("ShowBoxInvertMan");
            setInterval(function () {
                    var jiuTop = boxs.scrollTop;
                    var newtop = jiuTop + 1;
                    boxs.scrollTop = newtop;
                    if (newtop + boxs.offsetHeight >= boxs.scrollHeight) {
                        boxs.scrollTop = 0;
                    }
                },
                10);
        }
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Head">
              <div class="logo"><i class="Font_Title">创造门</i></div>
              <div class="Nav">
                  <ul>
                      <li><a href="https://www.baidu.com/"><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="首页"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="产品分类"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="新品预告"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="我要创作"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="我要投资"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="项目展示"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_Look_OnlineVedio" runat="server" CssClass="FontColor"  Text="观看直播"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="视屏专区"></asp:Label></a></li>
                      <li><a href="#"><asp:Label ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="交流空间"></asp:Label></a></li>
                  </ul>
              </div>
              <div class="Login_ACE">
                  <ul>
                      <li>
                          <a href="../UserPage/LoginPage.aspx" class="hoverTitle" id="KickOpen" ><img src="Images/SystemPicture/User_White.png"/></a>
                      </li>
                      <li>
                          <asp:LinkButton ID="lkbtnChinese" CssClass="transfer" runat="server">汉语</asp:LinkButton>
                          <asp:LinkButton ID="lkbtnEnish" CssClass="transfer"  runat="server" OnClick="lkbtnEnish_Click">English</asp:LinkButton>
                      </li>
                  </ul>
              </div>
          </div>
        <section class="lunboSection">
            <div id="containter">
                <div id="ilist">
                    <img src="../FirstImage/1.jpg" alt="" />
                    <img src="../FirstImage/2.jpg" alt="" />
                    <img src="../FirstImage/3.jpg" alt="" />
                    <img src="../FirstImage/4.jpg" alt="" />
                    <img src="../FirstImage/5.jpg" alt="" />
                </div>
                <div id="buttons">
                    <span index="1" class="on"></span>
                    <span index="2"></span>
                    <span index="3"></span>
                    <span index="4"></span>
                    <span index="5"></span>
                </div>
                <a href="javascript:;" id="prev" class="arrow">
                    <img src="../FirstImage/row.png" width="80px" height="80px"/>
                </a>
                <a href="javascript:;" id="next" class="arrow">
                    <img src="../FirstImage/row2.png"  width="80px" height="80px"/>
                </a>
            </div>
        </section>
        <section class="ProdecutShow">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue dashed; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">产品分类</span><span class="Font_Name_English">PRODUCT CATEGORY</span>
                </span> 
            </div>
            <div class="ProductImg">
                <div class="heheda">
                    <h2>医疗保健</h2>
                    <a><img src="ProductImage/productType1.jpg"  width="300px" height="220px"/></a> 
                </div>
                <div class="heheda">
                    <h2>通钓鱼具</h2>
                    <a><img src="ProductImage/productType2.jpg"  width="300px" height="220px"/></a> 
                </div>
                <div class="heheda">
                    <h2>洗鞋袜</h2>
                    <a><img src="ProductImage/productType3.jpg"  width="300px" height="220px"/></a> 
                </div>
                <div class="heheda">
                    <h2>文物收藏</h2>
                    <a><img src="ProductImage/productType4.jpg"  width="300px" height="220px"/></a> 
                </div>
            </div>
        </section>
        <section class="NewProductShow">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue dashed; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">新品预告</span><span class="Font_Name_English">NEW PRODUCT</span>
                </span> 
            </div>
            <div class="ListProduct">
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                           <span style="color: purple" >【Introduction】</span><asp:Label ID="lblShow" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                            <span style="color: purple" >【Introduction】</span><asp:Label ID="Label1" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                            <span style="color: purple" >【Introduction】</span><asp:Label ID="Label2" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
            </div>
        </section>
        <div class="LearnMoreProduct">
                <a href="#" >GET MORE</a>
        </div>
        <section class="VedioList">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">视频专区</span><span class="Font_Name_English">Video Shelf</span>
                </span> 
            </div>
            <div class="Vedioshelf"> 
                <div class="LeftBox"><a href="javascript:void(0)"><img src="FirstImage/图标8.png"/></a></div>
                <div class="CenterBox"><a href="javascript:void(0)"><img src="FirstImage/图标8.png"/></a></div>
                <div class="RightBox"><a href="javascript:void(0)"><img src="FirstImage/图标8.png"/></a></div>
            </div>   <br/>
            <div class="LearingMoreVedio">
                <p><a href="javascript:void(0)">WATCH MORE</a></p>
            </div>        
        </section>
        <section class="Watchlive">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">观看直播</span><span class="Font_Name_English">Watch Live</span>
                </span> 
            </div>
            <div class="LiveSelf">
                <a href="javascrpt:void(0)"><img src="FirstImage/kuaishou.png"/> </a>
                <a href="javascrpt:void(0)"><img src="FirstImage/yinke.png"/></a>
                <a href="javascrpt:void(0)"><img src="FirstImage/shangyu.png"/></a>
            </div>
        </section>
        <section class="ProjectShow">
            <p class="ProjectTitle">项目展示[PROJECT DISPALY]</p>
        </section>
        <section class="InvertMan">
            <div class="right">
                <div class="ProjectSelf" id="Scoll">
                    <div class="VideoShow">
                        <div class="imgShow"><img src="FirstImage/首页10.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>    
                    <div class="VideoShow">
                        <div class="imgShow"><img src="FirstImage/首页10.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>    
                    <div class="VideoShow">
                        <div class="imgShow"><img src="FirstImage/首页8.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                    <div class="VideoShow">
                        <div class="imgShow"><img src="FirstImage/首页9.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                    <div class="VideoShow">
                        <div class="imgShow"><img src="FirstImage/首页9.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
            <div class="center" id="ShowBoxInvertMan" >
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
                <div class="ShowInvertDw">
                    <span class="spanDw">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。
                </div>
            </div>
        </section>
        <footer>
            <p class="HeadColor"></p>
            <div class="TowPart">
                <div class="Left_Font">
                    <table>
                        <tr>
                            <th align="left" colspan="3">关于我们</th>
                        </tr>
                        <tr>
                            <td class="TitleIntroduce" colspan="3">
                                此公司成立于2017年，致力于渔业产品，各类产品的发展推广,例如洗鞋袜，文物收藏，医疗保健！
                            </td>
                        </tr>
                        <tr>
                            <td>
                                关于我们
                            </td>
                            <td>
                                合作投资
                            </td>
                            <td>
                                交流空间
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="Right_Picture">
                    
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
