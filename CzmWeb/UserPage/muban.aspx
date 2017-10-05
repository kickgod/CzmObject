<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="muban.aspx.cs" Inherits="CzmWeb.UserPage.UserPageRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <link href="../CSS/Demo.css" type="text/css" rel="stylesheet" />
    <script src="../Js/Demo.js" type="text/javascript"></script>
    <title>创造门</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="PhoneHead" id="daohanglanPhone">
        <div class="headerTtile">
            <div class="left">
                <span>创造门</span>
            </div>
            <div class="center">
                <asp:LinkButton  CssClass="cents"  ID="lnkChinese" runat="server" OnClick="lnkChinese_Click">CHE</asp:LinkButton>
                <asp:LinkButton  CssClass="cents" ID="LnkEnglish" runat="server" OnClick="lkbtnEnish_Click">ENG</asp:LinkButton>                    
            </div>
            <div class="right">
                <a href="javascript:ShowHead()"><img  src="../Images/SystemPicture/zhedie.png" width="50px" height="50px"/></a>
            </div>
        </div>
    </header>
    <div class="Head" id="headerCaidan">
        <div class="logo"><i class="Font_Title">创造门</i></div>
        <div class="Nav">
            <ul>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneFirstPage20171001.png"/><a href="../Default.aspx"><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="首页"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneType20171001.png"/><a href="#"><asp:Label ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="产品分类"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneNewProject20171001.png"/><a href="#"><asp:Label ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="新品预告"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneCreate20171001.png"/><a href="#"><asp:Label ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="我要创作"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneInvest20171001.png"/><a href="#"><asp:Label ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="我要投资"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneShoe20171001.png"/><a href="#"><asp:Label ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="项目展示"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneOnlineTwo20171001.png"/><a href="#"><asp:Label ID="lbl_Look_OnlineVedio" runat="server" CssClass="FontColor"  Text="观看直播"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneVedio20171001.png"/><a href="#"><asp:Label ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="视屏专区"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneConection20171001.png"/><a href="#"><asp:Label ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="交流空间"></asp:Label></a></li>
            </ul>
        </div>
        <div class="NavPhone">
            <ul>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLog20171001.png"/><a href="../UserPage/UserPageLogin.aspx"><asp:Label ID="lblUserLog" runat="server"  CssClass="FontColor" Text="用户登录"></asp:Label></a></li>
                <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLogin20171001.png"/><a href="../UserPage/UserPageRegister.aspx"><asp:Label ID="lblUserLogin" runat="server"  CssClass="FontColor" Text="用户注册"></asp:Label></a></li>
            </ul>
        </div>
        <div class="Login_ACE">
            <ul>
                <li>
                    <a href="../UserPage/UserPageLogin.aspx" class="hoverTitle" id="KickOpen" ><img src="../Images/SystemPicture/User_White.png"/></a>
                </li>
                <li>
                    <asp:LinkButton ID="lkbtnChinese" CssClass="transfer" runat="server" OnClick="lkbtnChinese_Click">汉语</asp:LinkButton>
                    <asp:LinkButton ID="lkbtnEnish" CssClass="transfer"  runat="server" OnClick="lkbtnEnish_Click">English</asp:LinkButton>
                </li>
            </ul>
        </div>
    </div>
    <div id="Closeit">

    <div class="JiaoBen">
        <p>
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
            <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ服务</a>Copyright © 2017-至今|四川创造门高新技术开发有限公司版权所有|客户电话：15698259380|企业邮件:chuangzaomen@163.com|热线电话：15826121
        </p>
    </div>
    <div class="zixun">
        <div class="showDiv">
            <p>微信二维码</p>
            <img src="../Images/SystemPicture/timg.jpg"/>
            <p>扫码咨询关注</p>
            <p>惊喜连连更多</p>
        </div>
        <div class="lanmu">
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
            <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
        </div>
       
    </div>
    </div>
    </form>
</body>
</html>
