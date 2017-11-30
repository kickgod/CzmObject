<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductTypeShow.aspx.cs" Inherits="CzmWeb.UserPage.UserProductTypeShow" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <script src="../Js/scroll.js"></script>
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <script type="text/javascript">
        window.onload = function () {
            $('.carousel').carousel();
            $('#identifier').carousel('cycle');
            $('#identifier').carousel({
                interval: 1000
            });
        }
        $(document).ready(function () {
            $('.list_lh li:even').addClass('lieven');
        })
        $(function () {
            $("div.list_lh").myScroll({
                speed: 30,
                rowHeight: 68
            });
        });
    </script>
</head>
<body>
<!--导航部分bootstrap框架-->
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfStart">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" target="_blank" href="../DefalutEng.aspx"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Default.aspx" target="blank" >Chinese</a></li>
                        <li><a href="../DefalutEng.aspx" target="_blank"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLogin.aspx" target="_blank" ><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                        <li><a href="../UserPage/UserPageRegister.aspx" target="_blank" ><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                        <li><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx" target="_blank">Home Page</a></li>
                        <li><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                        <li><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                        <li><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                        <li><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                        <li><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                        <li><a target="_blank"  href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="../DefalutEng.aspx" target="_blank" ><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left">
                <li class="ulloSpan"><a target="_blank" href="../DefalutEng.aspx">Home Page</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="ulloSpan"><a href="../UserPage/UserPageLogin.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserPageRegister.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx" target="_blank" type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
  <style type="text/css">
        .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow-y: auto; }
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y: auto;}
        .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
        .TypeIntroductions strong{font-size: 20px}
        /**电脑**/
        @media only screen and (min-width: 1200px) {
            .thumbnail img{ width: 420px;height: 400px}
            .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y: auto;}
        }
        @media only screen and (min-width: 768px) and (max-width: 1199px) {
            .thumbnail img{ width: 340px;height: 350px}
            .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y: auto;}
        }
        @media only screen and (min-width:440px ) and (max-width: 768px) {
            .thumbnail img{ width: 300px;height: 280px}
            .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 300px;overflow-y: auto;}
        }
        @media only screen and (min-width:0px ) and (max-width: 440px) {
            .thumbnail img{ width: 300px;height: 280px}
            .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 320px;overflow-y: auto;}
        }
    </style>
<div class="page-header">
    <h3><span class="ProductNameType">Product Category</span>
        <small>Category</small>
    </h3>
</div>
<form id="form1" runat="server">
    <div class="container">
        <div class="row" id="TypeShow">
            <asp:Repeater ID="reptm" runat="server"  OnItemCommand="reptm_OnItemCommand">
                <ItemTemplate>
                    <div class="col-sm-6 col-md-6">
                        <div class="thumbnail">
                            <img src=<%#Eval("TypePicture")%> alt="加载中" />
                            <div class="caption">
                                <h3 class="introShowWord introShowWordNew">[Product Category]<%#Eval("typeName_e")%></h3>
                                <p class="TypeIntroductionss">
                                    <asp:Button ID="btnCheck" CssClass="btn btn-default" runat="server" Text="See Details" CommandArgument='<%#Eval("typeID")%>' CommandName="Check" />
                                </p>
                                <p class="TypeIntroductions">
                                    <strong>Introduction:</strong> <%#Eval("TypeDecription_e")%>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</form>
<div class="container">
    <div class="row" id="Div1">
        <asp:Repeater ID="reptmTwoType" runat="server"  OnItemCommand="reptm_OnItemCommand">
            <ItemTemplate>
                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src=<%#Eval("TypePictureTwo")%> alt="Loading" />
                        <div class="caption">
                            <h3 class="introShowWord introShowWordNew">[Product Category]<%#Eval("TypeNameENG")%></h3>
                            <p class="TypeIntroductionss">
                                <a href='<%#Eval("Taobao")%>' class="btn btn-danger"  >立即选购</a>
                            </p>
                            <p class="TypeIntroductions">
                                <strong>Introduction:</strong> <%#Eval("TypeDecription2_e")%>
                            </p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
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
</body>
</html>
