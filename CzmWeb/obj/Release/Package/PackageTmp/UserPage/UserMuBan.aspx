<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMuBan.aspx.cs" Inherits="CzmWeb.UserPage.UserPageRegister" %>
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
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        汉语 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Defalut.aspx" target="blank" >Chinese</a></li>
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> log in immediately</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign up now</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx" >Home Page</a></li>
                        <li><a href="#">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="#">Project Applay</a></li>
                        <li><a href="#">Invest</a></li>
                        <li><a href="#">Display</a></li>
                        <li><a href="#">Live Webcast</a></li>
                        <li><a href="#">Video List</a></li>
                        <li><a href="#">Communication</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx">Home Page</a></li>
                        <li><a href="#">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="#">Project Applay</a></li>
                        <li><a href="#">Invest</a></li>
                        <li><a href="#">Display</a></li>
                        <li><a href="#">Live Webcast</a></li>
                        <li><a href="#">Video List</a></li>
                        <li><a href="#">Communication</a></li>
                    </ul>
                </li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> log in immediately</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign up now</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx"  type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx"  type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>

<div class="zixun">
    <div class="showDiv">
        <p style="font-size: 8px">WeChat QR code</p>
        <img src="../Images/SystemPicture/timg.jpg"/>
        <p>Scan code</p>
        <p>More surprises</p>
    </div>
    <div class="lanmu">
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<div class="JiaoBen" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
        <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ service</a>Copyright © 2017-Today|SiChuan ChuangZaoMen High - tech Development Co. Ltd|Consumer hotline：15698259380|Enterprise Mail:chuangzaomen@163.com|hotline：15826121
        <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
    </p>
</div>
</body>
</html>