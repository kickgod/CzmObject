<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<%@ Register Src="~/Common/wuc_ListPager.ascx" TagPrefix="uc1" TagName="wuc_ListPager" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none;
        }
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
        .NewProductShow{width: 100%;}
        .NewProductShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .NewProductShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .NewProductShow .ListProduct{ width: 1220px;margin: auto;}
        .NewProductShow .ListProduct .newproductList{ width: 400px;height: 360px; position: relative;float: left;
            top: 0px;
            left: 0px;
        }
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
        .VedioList{ width: 100%;height: 400px;}
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
            
        </section>
    </form>
</body>
</html>
