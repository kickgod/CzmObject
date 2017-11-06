<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProjectShowCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserProjectShowCHN" %>
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
        function Guquan(StockName) {
            alert(StockName);
        }
    </script>
    <style type="text/css">
        .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow: hidden }
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow: hidden;}
        .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
        .TypeIntroductions strong{font-size: 15px}
        #ProjectHave figure img{ width: 100%;height: 100%;}
        #reptemNewProductMy figure img{ width: 100%;height: 100%;}
        .TitleIconss{color: purple;font-size: 18px;font-family: ProductFontStyle;}
        .TitleIconsins{color: purple;font-size: 13px;font-family: ProductFontStyle;}
        /**电脑**/
        @media only screen and (min-width: 1200px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width: 768px) and (max-width: 1199px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width:440px ) and (max-width: 768px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width:0px ) and (max-width: 440px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        .SSSS{border-radius: 12.5px;}
        .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
    </style>
</head>
<body>
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
            <a class="navbar-brand" href="../Default.aspx"><strong class="CZMBrandCompany">创造门</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language【语言】 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Default.aspx" target="blank" >中文</a></li>
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../Default.aspx">主页</a></li>
                        <li><a href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                        <li><a href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                        <li><a href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                        <li><a href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                        <li><a href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="../Default.aspx"><strong class="CZMBrandCompany">创造门</strong></a>
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
                        <li><a href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                        <li><a href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                        <li><a href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                        <li><a href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                        <li><a href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
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
                        <li><a href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
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
<form id="form1" runat="server">
    <div class="container">
        <div class="page-header">
            <h3><span class="ProductNameType">项目展示</span>
                <small>Project Search<br/><asp:TextBox ID="txtSearch" placeholder="输入项目名称！" TextMode="Search"  CssClass="SearchTxt" results="S" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" CssClass="btn btn-warning btn-sm " runat="server" Text="Search" OnClick="Button2_Click" />
                </small>
            </h3>
        </div>
        <div class="row" id="ProjectHave">
            <asp:Repeater ID="reptemNewProduct" runat="server" OnItemCommand="reptemNewProduct_OnItemCommand" >
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <figure>
                            <img src='<%#Eval("ImgPicturPath")%>' >          
                            <figcaption>
                                <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                <p>
                                    <details>
                                        <summary>基本信息</summary>
                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%>RMB<br/>
                                        <a href="javascript:Guquan('<%#Eval("stockRateIntroduction")%>')">股权信息->点击查看</a><br/>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载</asp:HyperLink>
                                    </details>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <span class="TitleIconss">项目简介</span><br /><%#Eval("PciDescription_c")%></p>
                                <p>
                                    <asp:Button ID="btncanshu" runat="server"  Visible="False" Text="" CommandArgument='<%#Eval("PciName_c") %>' />
                                    <asp:Button ID="btnInvest" CssClass="btn btn-warning" runat="server" Text="我要投资" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Invest" />
                                    <a href="#InvestPFmy" class="btn btn-danger">取消</a>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>   
        </div>
        <div class="page-header">
            <h3><span class="ProductNameType">我的项目[创作]</span>
                <small>项目</small>
            </h3>
        </div>
        <div class="row" id="reptemNewProductMy">
            <asp:Repeater ID="reptmMy" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <figure>
                            <img src='<%#Eval("ImgPicturPath")%>' >          
                            <figcaption>
                                <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                <p>状态:<%# Eval("PciState").ToString()=="30" ? "通过":(Eval("PciState").ToString()=="-30"? "未通过":"审核中" ) %></p>
                                <p>
                                    <details>
                                        <summary>基本信息</summary>
                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%> RMB<br/>
                                        <a href="javascript:Guquan('<%#Eval("PciName_c")%>')">股权信息->点击查看</a><br/>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载</asp:HyperLink>
                                        <p>所得投资</p>
                                        <asp:Repeater ID="reptem" runat="server">
                                            <ItemTemplate>
                                                <p> <%#Eval("UserName_e") %> 投资了  <%#Eval("Account") %> RMB 给你的项目:<%#Eval("InvestTime") %></p>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </details>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <span class="TitleIconss">[简介]:</span><%#Eval("PciDescription_c")%>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>   
        </div>
        <div class="page-header" id="InvestPFmy">
            <h3><span class="ProductNameType">我的投资</span>
                <small>投资</small>
            </h3>
            <div class="row">
                <table class="table" style="width: 100%">
                    <div class="col-md-12 col-sm-12 col-xs-12" >
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>项目名称</th>
                            <th>金额</th>
                            <th>地区</th>
                            <th>时间</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                    </div>
                    <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_OnItemCommand">
                        <ItemTemplate>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <tr>
                                    <td><%#Container.ItemIndex+1 %></td>
                                    <td><%#Eval("InsertProjectName")%></td>
                                    <td><%#Eval("Account")%></td>
                                    <td><%#Eval("Province")%></td>
                                    <td><%#Eval("InvestTime")%></td>
                                    <td><asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn-primary btn-sm" OnClientClick="javascript:confirm('Are you sure you want to delete your investment application?');" Visible='<%#Eval("PiiState").ToString()=="10"%>'  CommandName="Delete" CommandArgument='<%#Eval("PiiID")%>'/></td>
                                </tr>
                            </div>
                        </ItemTemplate>
                        <HeaderTemplate>
                        </HeaderTemplate>
                    </asp:Repeater>  
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>
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
</html>