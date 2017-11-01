<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserVedioShowListCHE.aspx.cs" Inherits="CzmWeb.UserPage.UserVedioShowListCHE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <style type="text/css">
        .ProductNameType{color: white;font-weight: 500;background-color: RGB(174, 105, 130);padding: 5px 20px;word-spacing: 5px;font-size: 16px}
    </style>
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
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">创造门</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language【语言】 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Defalut.aspx" target="blank" >中文</a></li>
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../Default.aspx">主页</a></li>
                        <li><a href="#">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="#">我要创作</a></li>
                        <li><a href="#">我要投资</a></li>
                        <li><a href="#">我要创造</a></li>
                        <li><a href="#">观看直播</a></li>
                        <li><a href="#">视频专区</a></li>
                        <li><a href="#">交流空间</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">创造门</strong></a>
        </div>
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../Default.aspx">主页</a></li>
                        <li><a href="#">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="#">我要创作</a></li>
                        <li><a href="#">我要投资</a></li>
                        <li><a href="#">我要创造</a></li>
                        <li><a href="#">观看直播</a></li>
                        <li><a href="#">视频专区</a></li>
                        <li><a href="#">交流空间</a></li>
                    </ul>
                </li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx"  type="submit" class="btn btn-default" >汉语</a>
                <a href="../DefalutEng.aspx"  type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
<!--视频-->
<div class="container-fluid " style="margin-top: -30px;background-color: white">
    <div class="page-header">
        <h4 class="h4"><span class="ProductNameType">Video list</span>
            <small>Video</small>
        </h4>
    </div>
</div>
<div class="container">
    <div class="row rowVdeio">
        <asp:Repeater ID="reptm" runat="server" OnItemCommand="reptm_OnItemCommand">
            <ItemTemplate>
                <div class="col-md-4" style="margin-top: 15px">
                    <div style="width: 100%">
                        <video poster="../VedioList/2017102413124848.jpg" preload="auto" controls="controls" style="width: 100%;" >
                            <source type="video/mp4" src=<%#Eval("VidioPath")%> >
                            <source type="video/webm" src=<%#Eval("VidioPath")%> >
                            <source type="video/ogg" src=<%#Eval("VidioPath")%> >
                        </video>
                    </div>
                    <div class="IntroDuction"><span class="introShowWord">[Title]：<%#Eval("VideoName_c")%></span></div>         
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<form id="form1" runat="server">
    <div class="container" style="text-align: center">
        <br/>
        <br/>
        <asp:LinkButton ID="LkBtnGetAll" CssClass="btn btn-primary" runat="server" OnClick="LkBtnGetAll_Click">更多</asp:LinkButton>
    </div>
</form>
    <br/><br/>
<br/><br/>
   <div class="zixun">
    <div class="showDiv">
        <p style="font-size: 8px">微信二维码</p>
        <img src="../Images/SystemPicture/timg.jpg"/>
        <p>扫描关注</p>
        <p>更多惊喜</p>
    </div>
    <div class="lanmu">
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<div class="JiaoBen" Id="Adminsrator" style="position: absolute; bottom: 0px;">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ服务</a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：15698259380|企业邮箱:chuangzaomen@163.com|热线电话：15826121
        <a href="../BackendManage/AdminLogin.aspx">管理员</a>
    </p>
</div>
</body>
</html>

