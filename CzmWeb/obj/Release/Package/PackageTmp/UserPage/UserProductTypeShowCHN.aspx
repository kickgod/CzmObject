﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductTypeShowCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserProductTypeShowCHN" EnableEventValidation="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <link rel="icon" href="../Img/CZM.png" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <script src="../Js/scroll.js"></script>
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <link rel="stylesheet" href="../CSS/navXiaoxiannv.css" type="text/css" />
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
				      <li><a target="_blank" href="#Watchlive">观看直播</a></li>
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
<style type="text/css">
    .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow: hidden }
    .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y : auto;}
    .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
    .TypeIntroductions strong{font-size: 20px}
    .TypeIntroductionss{font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;overflow-y : auto;}
    /**电脑**/
    @media only screen and (min-width: 1200px) {
        .thumbnail img{ width: 420px;height: 400px}
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y : auto;}
    }
    @media only screen and (min-width: 768px) and (max-width: 1199px) {
        .thumbnail img{ width: 340px;height: 350px}
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y : auto;}
    }
    @media only screen and (min-width:440px ) and (max-width: 768px) {
        .thumbnail img{ width: 300px;height: 280px}
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow-y : auto;}
    }
    @media only screen and (min-width:0px ) and (max-width: 440px) {
        .thumbnail img{ width: 300px;height: 280px}
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 320px;overflow-y : auto;}
    }
</style>
<div class="page-header">
    <h3 style="padding-left: 20px"> <span class="ProductNameType">业务产品</span>
        <small>产品</small>
    </h3>
</div>
<form id="form1" runat="server">
    <div class="container">
        <div class="row" id="TypeShow">
            <asp:Repeater ID="reptm" runat="server" OnItemCommand="reptm_OnItemCommand">
                <ItemTemplate>
                    <div class="col-sm-6 col-md-6">
                        <div class="thumbnail">
                            <img src=<%#Eval("TypePicture")%> alt="加载中" />
                            <div class="caption">
                                <h3 class="introShowWord introShowWordNew">[产品类别]<%#Eval("typeName_c")%></h3>
                                <p class="TypeIntroductionss">
                                    <asp:Button ID="btnCheck" CssClass="btn btn-default" runat="server" Text="查看详情" CommandArgument='<%#Eval("typeID")%>' CommandName="Check" />
                                </p>
                                <p class="TypeIntroductions">
                                    <strong>简介：</strong> <%#Eval("TypeDecription_c")%>
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
        <asp:Repeater ID="reptmTwoType" runat="server" >
            <ItemTemplate>
                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src=<%#Eval("TypePictureTwo")%> alt="加载中" />
                        <div class="caption">
                            <h3 class="introShowWord introShowWordNew">[产品类别]<%#Eval("TypeNameCHM")%></h3>
                            <p class="TypeIntroductionss">
                                <a href='<%#Eval("Taobao")%>' class="btn btn-danger"  >立即选购</a>
                            </p>
                            <p class="TypeIntroductions">
                                <strong>简介：</strong> <%#Eval("TypeDecription2_c")%>
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
        <p>微信二维码</p>
        <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
        <p>扫码咨询关注</p>
        <p>惊喜连连更多</p>
    </div>
    <div class="lanmu">
        <a href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
        <a href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<div class="JiaoBen" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
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