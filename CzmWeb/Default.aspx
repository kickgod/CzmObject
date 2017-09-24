<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<%@ Register Src="~/Common/wuc_ListPager.ascx" TagPrefix="uc1" TagName="wuc_ListPager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px}
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
        .Head .Login_ACE ul li img{ width: 40px;height: 40px;padding: 10px;}
        .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
        .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
        .Head .Login_ACE ul li ul li{background-color:RGB(176, 53, 112);width: 100%;}
        .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
        .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
        .Head .Login_ACE ul li:hover ul{ width: 100%;border: 1px solid white}
    </style>
    <script type="text/javascript">
        window.onload =function() {
            var Show = document.getElementById("KickOpen");
            var erjis = document.getElementsByClassName("erji");
            Show.mouseleave=function() {
                erjis.style.display = none;
            }
            Show.mouseover=function() {
                erjis.style.display = block;
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
                          <a href="#" class="hoverTitle" id="KickOpen" ><img src="Images/SystemPicture/User_White.png"/></a>
                           <ul>
                               <li><asp:HyperLink ID="HyperLink1" CssClass="userL" runat="server" NavigateUrl="~/UserPage/LoginPage.aspx">用户登陆</asp:HyperLink></li>
                               <li><asp:HyperLink ID="HyperLink2" runat="server"  CssClass="userL" NavigateUrl="~/UserPage/LoginPage.aspx">用户注册</asp:HyperLink></li>
                          </ul>
                      </li>
                      <li>
                          <asp:LinkButton ID="lkbtnChinese" CssClass="transfer" runat="server">汉语</asp:LinkButton>
                          <asp:LinkButton ID="lkbtnEnish" CssClass="transfer"  runat="server">English</asp:LinkButton>
                      </li>
                  </ul>
              </div>
          </div>
          <div class="LunBo">
              
          </div>
    </form>
</body>
</html>
