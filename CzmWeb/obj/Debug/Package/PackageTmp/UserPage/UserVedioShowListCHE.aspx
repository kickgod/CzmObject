﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserVedioShowListCHE.aspx.cs" Inherits="CzmWeb.UserPage.UserVedioShowListCHE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link rel="icon" href="../Img/CZM.png" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <style type="text/css">
        .ulloSpan a{display: block}
        .ulloSpan:hover { border-bottom: white 2px solid;border-top: white 2px solid;color: black;font-size: 18px}
         .ProductNameType{color: white;font-weight: 500;background-color: RGB(174, 105, 130);padding: 5px 20px;word-spacing: 5px;font-size: 16px}
    </style>
    <link rel="stylesheet" href="../CSS/navXiaoxiannv.css" type="text/css" />
</head>
<body>
<!--导航部分bootstrap框架-->
 <div class="row row_15" id="PhoneDaohang">
			<ul class="nav_bar_Headers">
				<li class="navbar-title"><a target="_blank" href="../Default.aspx" class="text-left" >四川创造门高新技术开发有限公司</a></li>
				<li class="navbar-open"><a href="javascript:Opennavbar()">网站导航</a></li>
			</ul>
		</div>
		<div  id="XDXC" style="display: none;">
			<div class="dropdown" >
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    <small>Language【语言】</small>
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="Menu1">
				      <li><a href="../Default.aspx" target="blank" >中文</a></li>
				      <li><a href="../DefalutEng.aspx" target="blank" >English</a></li>
				  </ul>
				</div>
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    <small>用户入口</small> 
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" id="Menu2">
				      <li><a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
				      <li><a target="_blank" href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
				      <li><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
				  </ul>
				</div>
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				      <small>用户功能</small> 
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu3" id="Menu3">
				      <li class="active"><a target="_blank" href="../Default.aspx">主页</a></li>
				      <li><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
				      <li><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
				      <li><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
				      <li><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
				      <li><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
				      <li><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
				      <li><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
			 	 </ul>
			</div>
		</div>	
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left" >
                <li class="ulloSpan"><a target="_blank" href="../Default.aspx">主页</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="ulloSpan"><a href="../UserPage/UserPageLoginCHN.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserPageRegisterCHN.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx "  target="_blank" type="submit" class="btn btn-default" >CN</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >EN</a>
            </form>
        </div>
    </div>
</nav>
<br /><br />
<!--视频-->
<div class="container-fluid " style="margin-top: -30px;background-color: white">
    <div class="page-header">
        <h4 class="h4"><span class="ProductNameType">视频列表</span>
            <small>视频</small>
        </h4>
    </div>
</div>
<div class="container">
    <div class="row rowVdeio">
        <asp:Repeater ID="reptm" runat="server" OnItemCommand="reptm_OnItemCommand">
            <ItemTemplate>
                <div class="col-md-4  col-sm-6  " style="margin-top: 15px">
                    <div style="width: 100%">
                        <video poster='<%#Eval("videoPoster")%>' preload="meta" controls="controls" style="width: 100%;" >
                            <source type="video/mp4" src=<%#Eval("VidioPath")%> >
                            <source type="video/webm" src=<%#Eval("VidioPath")%> >
                            <source type="video/ogg" src=<%#Eval("VidioPath")%> >
                            Your browser does not support HTML5 video.
                        </video>
                    </div>
                    <div class="IntroDuction"><span class="introShowWord">[标题]：<%#Eval("VideoName_c")%></span></div>         
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
        <p>微信二维码</p>
        <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
        <p>扫码咨询关注</p>
        <p>惊喜连连更多</p>
    </div>
    <div class="lanmu">
        <a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
        <a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
        <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="JiaoBen" Id="Adminsrator" style="position: fixed;bottom: 0px" >
    <p style="text-align: center;padding-top: 5px">
        <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx" style="color: black">管理员</a>
    </p>
</div>
</body>
<script type="text/javascript">
    function Opennavbar() {
        var Invest = document.getElementById("XDXC");
        if (Invest.style.display == "block") {
            Invest.style.display = "none";
        } else {
            Invest.style.display = "block";
        }
    }
</script>
</html>

