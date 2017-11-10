<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPageRegister.aspx.cs" Inherits="CzmWeb.UserPage.UserPageRegister2" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" href="../Images/SystemPicture/创造力.ico" />
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../CSS/TraditionalFontStyle.css" type="text/css"  rel="stylesheet" />
<link href="../Content/FontBindData.css" type="text/css"  rel="stylesheet" />
<style type="text/css">
    *{ padding: 0px;margin: 0px;text-decoration: none;}
    .JiaoBen{ width: 100%;font-size: smaller;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;text-align: center;background-color:RGB(176,53,112) }
    .JiaoBen a{color: gainsboro}
    .txtStyle{ width: 100%;height: 30px;}
    .Register  .btnLoginNowTime{font-family: '华文楷体', '楷体', '微软雅黑', '宋体';height: 30px;
        width: 90px;background-color: RGB(196, 22, 222);border: RGB(176, 53, 112);color: white;font-weight: 300;letter-spacing: 3px;font-size: large;margin-left: 10px;margin-left: 100px;transform: skew(-25deg, 0deg); -ms-transform: skew(-25deg, 0deg);-webkit-transform: skew(-25deg, 0deg);}
    .Register{ width: 100%;margin: auto; height: 1200px;}
    .Register .MainRegister {margin-top: 10px; width: 80%; height: 1000px;margin: auto}
    .Register .MainRegister .FistHange{text-indent: 20px; width: 100%;height: 60px;line-height: 80px;border-bottom: 1px solid gainsboro;}
    .Register .MainRegister .FistHange span{ font-size: 1.1em;font-weight: 600;color: RGB(89, 2, 86);font-family: '华文楷体', '微软雅黑', '宋体';border-bottom: solid 2px purple;padding-bottom: 8px;}
    /***********************************************1300px以上*************************************************************************/
    @media only screen and (min-width:1300px) {
        .PhoneImg{ width: 30px;height: 30px;padding-top: 10px;display: none}
        .PhoneHead{display:none}
        .Head{ width: 100%;background-color: RGB(176, 53, 112);height: 60px;display: block}
        .Head .logo{ width: 20%;height: 60px;line-height: 60px;float: left}
        .Head .logo i{ color: RGB(232,105,170);font-weight: bold;font-size: 280%;font-style: italic;line-height: 60px;height: 60px;width: 100%;text-align: center;display: block}
        .Head .Nav{ width: 60%;height: 60px;line-height: 60px;float:left;}
        .Head .Nav ul{ width: 100%;line-height: 60px;height: 60px;list-style: none;}
        .Head .Nav ul li{margin-left: 10px;text-align: left;float: left;color: grey;}
        .Head .Nav ul li:hover{ color: red;font-size: 0.6em;cursor: pointer;border-top: 2px solid white;}
        .Head .Nav ul li a{ text-decoration: none;color: grey;}
        .Head .Nav ul li a img{ visibility: hidden;display: none}
        .Head .NavPhone{ display: none;}
        .Head .Login_ACE{ width: 20%;line-height: 60px;height: 60px;float: left}
        .FontColor{ color: RGB(255, 255, 255);font-size: 0.8em;}
        .FontColor:hover{color: gainsboro;font-size: 0.8em;cursor: pointer;}
        .Head .Login_ACE ul{ list-style: none;height: 60px}
        .Head .Login_ACE ul li{ width: 48%;height: 60px;text-align: center;float: left;}
        .Head .Login_ACE ul li .transfer{ width: 49%;text-decoration: none;color: white;float: left}
        .Head .Login_ACE ul li .transfer:hover{ color: gainsboro;border-top: 2px solid white;}
        .Head .Login_ACE ul li a{ width: 100%;height: 60px;display: block}
        .Head .Login_ACE ul li img{ width: 40px;height: 40px;padding-top:5px;}
        .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
        .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
        .Head .Login_ACE ul li ul li{background-color:gainsboro;width: 100%;color: white;}
        .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
        .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
        .Head .Login_ACE ul li:hover img{ padding-top: 0px;width: 50px;height: 50px;}
        .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
        .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
        .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
        .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
        .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
        .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
        .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
        .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} /***1300px以上***/
        .TFS_FormFont{width: 200px;color: RGB(242,22,151);font-weight: 600;font-size: medium;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';}
        .biaozhu{ font-size: smaller;color: RGB(196, 22, 222);padding-left: 40px}        
    }
    /***********************************************768~1300px以内*********************************************************************/
    @media only screen and (max-width:1299.9px )and (min-width:768px) {
        .PhoneImg{ width: 30px;height: 30px;padding-top: 10px;display: none}
        .PhoneHead{display:none}
        .Head{ width: 100%;background-color: RGB(176, 53, 112);height: 60px;display: block;visibility:visible}
        .Head .logo{ width: 10%;height: 60px;line-height: 60px;float: left}
        .Head .logo i{ color: RGB(232,105,170);font-weight: bold;font-size: 1.3em;font-style: italic;line-height: 60px;height: 60px;width: 100%;text-align: center;display: block}
        .Head .Nav{ width: 70%;height: 60px;line-height: 60px;float:left;}
        .Head .Nav ul{ width: 100%;line-height: 60px;height: 60px;list-style: none;}
        .Head .Nav ul li{text-align: center;float: left;color: grey;margin-left: 10px}
        .Head .Nav ul li a{ text-decoration: none;color: grey;}
        .Head .NavPhone{ display: none;}
        .Head .Login_ACE{ width: 20%;line-height: 60px;height: 60px;float: left}
        .FontColor{ color: RGB(255, 255, 255);font-size: 5px}
        .FontColor:hover{color: gainsboro;font-size: 5px;cursor: pointer;}
        .Head .Login_ACE ul{ list-style: none;height: 60px;}
        .Head .Login_ACE ul li{ width: 48%;height: 60px;text-align: center;float: left;}
        .Head .Login_ACE ul li .transfer{ width: 48%;text-decoration: none;color: white;float: left;font-size: small}
        .Head .Login_ACE ul li a{ width: 100%;height: 60px;display: block}
        .Head .Login_ACE ul li img{ width: 25px;height: 25px;padding-top: 19px}
        .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
        .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
        .Head .Login_ACE ul li ul li{background-color:gainsboro;width: 100%;color: white;}
        .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
        .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
        .Head .Login_ACE ul li:hover img{ padding-top: 0px;width: 30px;height: 30px;}
        .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
        .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
        .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
        .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
        .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
        .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
        .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
        .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
        .TFS_FormFont{ color: RGB(242,22,151);font-weight: 600;font-size: medium;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';}
        .biaozhu{ font-size: smaller;color: RGB(196, 22, 222);padding-left: 40px;display: none}
    }
    /***********************************************767以下主要适配手机****************************************************************/
    /*实质是宽度400多为中大屏幕手机主要分辨率适配参考iphone6 plus以上*/
    @media only screen and (min-width:0px )and (max-width:767px) {
        *{padding: 0px;margin: 0px;text-decoration: none;}
        .PhoneHead{z-index: 100000000000; position: fixed;top: 0px;left: 0px;display: block;height: 50px;width: 100%;background: linear-gradient(to left, purple, RGB(176, 53, 112));border-bottom:gray 2px solid}
        .PhoneHead .headerTtile{ width: 100%;}
        .PhoneHead .headerTtile .left .transfer{color: white}
        .PhoneHead .headerTtile .left{ width: 20%;float: left;height: 50px;}
        .PhoneHead .headerTtile .left span{text-indent: 15px; display: block;color: RGB(232,105,170);font-weight: bold;font-size: 1em;font-style: italic;line-height:50px;height: 50px;text-align: left;}
        .PhoneHead .headerTtile .center{text-indent: 20px; width: 48%;float: left;}
        .PhoneHead .headerTtile .center .cents{ height: 50px;line-height: 50px;color: white;font-weight: bold}
        .PhoneHead .headerTtile .right{ width: 30%;float: left;height: 50px;position: relative}
        .PhoneHead .headerTtile .right a{display: block; position: absolute;top: 0px;right: 5px}
        .Head{display: none;background-color: white;color: #333333;position: fixed;top: 52px;color: #333333;width: 100%}
        .Head .logo{display: none}
        .Head .Nav ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
        .Head .NavPhone{ display: block;}
        .Head .NavPhone ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
        .Head .Login_ACE{display: none}
        .PhoneImg{ width: 30px;height: 30px;padding-top: 15px;}
        .FontColor{ color: #333333;font-size: 0.6em;font-weight: bold}
        .zixun{display: none}
        .TFS_FormFont{ color: RGB(242,22,151);font-weight: 600;font-size: medium;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';}
        .biaozhu{ font-size: smaller;color: RGB(196, 22, 222);padding-left: 40px;display: none}
        .JiaoBen{ margin-top: 50px ;width: 100%;font-size: smaller;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;background-color:RGB(176,53,112) }
        .JiaoBen a{color: gainsboro}
        .Register{position: relative;top: 52px; width: 100%;}
    }
    @media only screen and (max-width: 320px) {
        .Register .MainRegister .Sheck{ text-indent: 5px;}
        .JiaoBen{margin-bottom: 0px; width: 100%;height: 80px;font-size: 0.5em;font-family:'华文楷体','楷体', '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;background-color:RGB(176,53,112) }
        .JiaoBen a{color: gainsboro}
    }
    .btn_from{ background-color: RGB(196, 22, 222);color: white;width: 80px;height: 25px;border: none;border-radius: 12.5px }
</style>
<script type="text/javascript">
    window.onload = function () {
        /**匹配屏幕查询**/
        /*轮播图的大小*/

        var widthLunbo;
        var wWidth = document.documentElement.clientWidth;
        var screen1 = window.matchMedia('(min-width:1300px)');
        var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
        var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
        if (screen1.matches) {
            widthLunbo = 1200;
            document.getElementById('headerCaidan').style.display = 'block';
            document.getElementById('headerCaidan').style.height = '60px';
            document.getElementById('daohanglanPhone').style.display = 'none';
            document.getElementById('daohanglanPhone').style.visibility = false;
        } else if (screen2.matches) {
            widthLunbo = 750;
            document.getElementById('headerCaidan').style.display = 'block';
            document.getElementById('headerCaidan').style.height = '60px';
            document.getElementById('daohanglanPhone').style.display = 'none';
            document.getElementById('daohanglanPhone').style.visibility = false;
        } else if (screen3.matches) {
            widthLunbo = 350;
            document.getElementById('headerCaidan').style.display = 'none';
            document.getElementById('daohanglanPhone').style.display = 'block';
            document.getElementById('daohanglanPhone').style.visibility = true;
            var list = document.getElementById('ilist');
        }
        /*监视页面窗口大小变化*/
        window.onresize = function () {
            var wWidth = document.documentElement.clientWidth;
            var screen1 = window.matchMedia('(min-width:1300px)');
            var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
            var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
            if (screen1.matches) {
                widthLunbo = 1200;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen2.matches) {
                widthLunbo = 750;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen3.matches) {
                widthLunbo = wWidth;
                document.getElementById('headerCaidan').style.display = 'none';
                document.getElementById('daohanglanPhone').style.display = 'block';
                document.getElementById('daohanglanPhone').style.visibility = true;
            }
        }
    }
</script>
<title>创造门</title>
</head>
<body>
<form id="form1" runat="server">
<script type="text/javascript">
    var screen3 = window.matchMedia('(min-width:0px) and (max-width:767px)');
    function ShowHead() {
        var caidan = document.getElementById('headerCaidan'); /*PC端导航栏*/
        var zhidie = document.getElementById('daohanglanPhone');/*手机导航栏折叠菜单*/
        var oHeight = document.documentElement.clientHeight;/*得到页面可视区域高度*/
        if (screen3.matches) {
            /*使得手机端折叠菜单打开pc端折叠菜单*/
            if (caidan.style.display == 'block') {
                document.getElementById('Closeit').style.display = 'block';
                caidan.style.display = 'none';
            } else {
                document.getElementById('Closeit').style.display = 'none';
                caidan.style.display = 'block';
                caidan.style.height = oHeight + 'px';
            }
        } else {
            /*nonthing*/
        }
    }
</script>
<header class="PhoneHead" id="daohanglanPhone">
    <div class="headerTtile">
        <div class="left">
            <a href="../DefalutEng.aspx"><span>CZM</span></a>
        </div>
        <div class="center">
            <a href="../UserPage/UserPageRegisterCHN.aspx" class ="cents" >CHE</a>
            <a href="#" class="cents" >ENG</a>                      
        </div>
        <div class="right">
            <a href="javascript:ShowHead()"><img  src="../Images/SystemPicture/zhedie.png" width="50px" height="50px"/></a>
        </div>
    </div>
</header>
<div class="Head" id="headerCaidan">
    <div class="logo"><a href="../DefalutEng.aspx"><i class="Font_Title">CZM</i></a></div>
    <div class="Nav">
        <ul>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneFirstPage20171001.png"/><a href="../DefalutEng.aspx"><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="Home"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneType20171001.png"/><a href="../UserPage/UserProductTypeShow.aspx"><asp:Label ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="Product Catagory"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneNewProject20171001.png"/><a href="../UserPage/UserNewProductShow.aspx"><asp:Label ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="New"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneCreate20171001.png"/><a href="../UserPage/UserCreateProject.aspx"><asp:Label ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="Project Applay"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneInvest20171001.png"/><a href="../UserPage/UserInvestProject.aspx"><asp:Label ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="Invest"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneShoe20171001.png"/><a href="../UserPage/UserProjectShow.aspx"><asp:Label ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="Display"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneVedio20171001.png"/><a href="../UserPage/UserVedioShowList.aspx"><asp:Label ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="Video"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneConection20171001.png"/><a href="../UserPage/UserConmunicationApace.aspx"><asp:Label ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="Communication"></asp:Label></a></li>
        </ul>
    </div>
    <div class="NavPhone">
        <ul>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLog20171001.png"/><a href="../UserPage/UserPageLogin.aspx"><asp:Label ID="lblUserLog" runat="server"  CssClass="FontColor" Text="User login"></asp:Label></a></li>
            <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLogin20171001.png"/><a href="UserPageRegisterCHN.aspx"><asp:Label ID="lblUserLogin" runat="server"  CssClass="FontColor" Text="User registration"></asp:Label></a></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <div class="Login_ACE">
        <ul>
            <li>
                <a href="../UserPage/UserPageLogin.aspx" class="hoverTitle" id="KickOpen" ><img src="../Images/SystemPicture/User_White.png"/></a>
            </li>
            <li>
                <a href="../UserPage/UserPageRegisterCHN.aspx" class ="transfer" >汉语</a>
                <a href="#" class="transfer" >English</a>   
            </li>
        </ul>
    </div>
</div>
<div id="Closeit">
    <script type="text/javascript">
        function sendCodes() {
            var phoneNumber = document.getElementById('<%=txtUserPhone.ClientID%>');
            if (phoneNumber.value == "" || phoneNumber.value == null) {
                alert("请填写你的手机号！");
                return false;
            } else {
                return true;
            }
        }
        function CheckNull() {
            var userName = document.getElementById('<%=txtUserName.ClientID%>');
            var realName = document.getElementById('<%= txtUserRealName.ClientID%>');
            var emai = document.getElementById('<%= txtPwd.ClientID%>');
            var phoneNumber = document.getElementById('<%=txtUserPhone.ClientID%>');
            var verificatioN = document.getElementById('<%= txtCode.ClientID%>');
            var passwordC = document.getElementById('<%= txtPasswordOne.ClientID%>');
            var passstwo = document.getElementById('<%= txtPasswordTwo.ClientID%>');
            if (userName.value == "" || userName.value == null) {
                alert("plese enter your Wechat");
                return false;
            }
            if (realName.value == "" || realName.value == null) {
                alert(" plese enter your real Name");
                return false;
            }
            if (emai.value == "" || emai.value == null) {
                alert("plese enter your Email");
                return false;
            }
            if (phoneNumber.value == "" || phoneNumber.value == null) {
                alert("Please enter a mobile phone number");
                return false;
            }
            if (verificatioN.value == "" || verificatioN.value == null) {
                alert("Please enter the verification code");
                return false;
            }
            if (passwordC.value == "" || passwordC.value == null) {
                alert("Please fill in your password");
                return false;
            }
            if (passstwo.value == "" || passstwo.value == null) {
                alert("Please fill in your password again");
                return false;
            }
            if (passstwo.value.toString() != passwordC.value.toString()) {
                alert("different passwords");
                return false;
            }
            return true;
        }
    </script>
    <div class="Register">
        <div class="MainRegister">
            <p class="FistHange">
                <span><asp:Label ID="Label2" runat="server" Text="User login"></asp:Label></span><asp:Label ID="lblyzm" runat="server" Text="" Visible="false"></asp:Label>
            </p>
            <br/>
            <!--微信-->
            <p>
                <asp:Label ID="lblUserName_C" CssClass="TFS_FormFont" runat="server" Text="Wechat:"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtUserName" CssClass="txtStyle"  runat="server"  placeholder="Input User Wechat！"></asp:TextBox>
            </p>
            <!--真实姓名-->
            <br/>
            <p>
                <asp:Label ID="lblUserPwd_C" CssClass="TFS_FormFont" runat="server" Text="Real Name:" Visible="True"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtUserRealName" CssClass="txtStyle"  runat="server"  placeholder="Input Your Real Name！"></asp:TextBox>
            </p>
            <!--性别-->
            <br/>
            <p>
                <asp:Label ID="lblSex_C"  CssClass="TFS_FormFont" runat="server" Text="Sex:" Visible="True"></asp:Label>
            </p>
            <p >
                <asp:DropDownList ID="DropDownList1"  CssClass="txtStyle" runat="server">
                    <asp:ListItem value="1">男（male）</asp:ListItem>
                    <asp:ListItem value="0">女（female）</asp:ListItem>
                </asp:DropDownList>
            </p>
            <!--邮箱-->
            <br/>
            <p>
                <asp:Label ID="lblPwd_C" CssClass="TFS_FormFont"  runat="server" Text="Your mail:" Visible="True"></asp:Label>
                <br/>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Email"  CssClass="txtStyle" placeholder="E-mail Address"></asp:TextBox>
            </p>
            <!--电话-->
            <br/>
            <p>
                <asp:Label ID="lblUserPhone_C"  CssClass="TFS_FormFont"  runat="server" Text="Phone Number:" Visible="True"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtUserPhone"   runat="server"  CssClass="txtStyle" placeholder="Phone Number"></asp:TextBox>
            </p>
            <!--验证码-->
            <br/>
            <p>
                <asp:Label ID="Code_C"  runat="server"  CssClass="TFS_FormFont"  Text="Code:" Visible="True" ></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="txtCode"   runat="server" CssClass="txtStyle"  placeholder="Code"></asp:TextBox>
                <asp:Button ID="btnSendCode" runat="server"  CssClass="btn_from"  Text="Send" OnClientClick="return  sendCodes()"  OnClick="btnSendCode_Click"/>
            </p>
            <!--密码-->
            <br/>
            <p>
                <asp:Label ID="LblPwdW_C"  runat="server"  CssClass="TFS_FormFont"  Text="Password:" Visible="True"></asp:Label>               
            </p>
            <p>
                <asp:TextBox ID="txtPasswordOne"  CssClass="txtStyle"  runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            </p>
            <!--密码-->
            <br/>
            <p>
                <asp:Label ID="lblPwds_C"    CssClass="TFS_FormFont" runat="server" Text="Password:" Visible="True"></asp:Label>               
            </p>
            <p >
                <asp:TextBox ID="txtPasswordTwo" CssClass="txtStyle"  runat="server" TextMode="Password"  placeholder="Input Password Again"></asp:TextBox>
            </p>
            <!--提交-->
            <br/>
            <p>
                <asp:Button ID="btnLoginNowTime" CssClass="btnLoginNowTime" runat="server" Text="login" OnClientClick="return CheckNull();" OnClick="btnLoginNowTime_Click" />
                <span class="biaozhu">
                    <asp:Label ID="lblResult" runat="server" Text="" Visible="False"></asp:Label>
                </span>
            </p>
        </div>
    </div>
    <div class="zixun">
        <div class="showDiv">
            <p style="font-size: 6px">WeChat QR code</p>
            <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
            <p>Scan code</p>
            <p>More surprises</p>
        </div>
        <div class="lanmu">
            <a target="_blank" href="../UserPage/UserPageLogin.aspx"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
            <a target="_blank" href="../UserPage/UserConmunicationApace.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
            <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="Ali Server" /></a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ Server" /></a>
            <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="Home" /></a>
        </div>
    </div>
    <div class="JiaoBen" Id="Adminsrator">
        <p style="text-align: center;padding-top: 5px">
            <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-Today|Sichuan Creator Association New & High-tech Development Co.LTD.|Consumer hotline：18981191139|Enterprise Mail:2212901@qq.com|hotline：18981191139
            <a target="_blank" href="../BackendManage/AdminLogin.aspx">Administrator</a>
        </p>
    </div>
</div>
</form>
</body>
</html>

