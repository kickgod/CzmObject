﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefalutEng.aspx.cs" Inherits="CzmWeb.Defaults" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>CZM</title>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
      <script type="text/javascript">
                var screen3 = window.matchMedia('(min-width:0px) and (max-width:800px)');
                if (screen3.matches) {
                    /*使得手机端折叠菜单打开pc端折叠菜单*/

                } else {
                    location.href = '../Default_Pc_ENG.aspx';
                }
        </script>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .Loading{width: 100%;height: 100%;position: fixed;top: 0px;left: 0px;background-color: white;z-index: 200;}
        .pic{width: 64px; height: 64px;background-image: url(../Master/BigFengCheng.gif);  /*居中显示方法*/ position: absolute; top: 0px;left: 0px; right: 0px; bottom: 0px; margin: auto;}
    </style>
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../CSS/BootsrapDefaultCHNS.css" rel="stylesheet" />
    <style type="text/css">
        .OnMouseOver{}
        .OnMouseOver:hover{cursor: pointer}
        .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow: hidden }
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow: hidden;}
        .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
        .TypeIntroductions strong{font-size: 15px}
        #ProjectHave figure img{ width: 100%;height: 100%;}
        #reptemNewProductMy figure img{ width: 100%;height: 100%;}
        .TitleIconss{color: purple;font-size: 18px;font-family: ProductFontStyle;}
        .TitleIconsins{color: purple;font-size: 13px;font-family: ProductFontStyle;}
        #PictureProject{ overflow: hidden;}
        /**电脑**/
        @media only screen and (min-width: 1200px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
            #introdutionOFourCompany{ display: block;}
        }
        @media only screen and (min-width: 768px) and (max-width: 1199px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
            #introdutionOFourCompany{display: none;overflow: hidden}
        }
        @media only screen and (min-width:440px ) and (max-width: 768px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
            #introdutionOFourCompany{display: none;overflow: hidden}
        }
        @media only screen and (min-width:0px ) and (max-width: 440px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
            .FirstTimeDivLogo{ display: none;overflow: hidden}
            #introdutionOFourCompany{ display: none;overflow: hidden}
        }
        .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
        .LiveIng{color:coral;font-size:15px;border-bottom: coral 1px solid}
        .ulloSpan a{display: block}
        .ulloSpan:hover { border-bottom: RGB(148, 30, 80) 2px solid;border-top: RGB(148, 30, 80) 2px solid;color: black;font-size: 18px}
        .FirstTimeDivLogo{ background-color: RGB(175, 53, 110); height: 60px;}
        .FirstTimeDivLogo i{opacity: 0.6;filter: opacity(60);letter-spacing:4px;  margin-left: 40px;margin-top: 5px; font-size: 16px;color: white;font-family: '微软雅黑';height: 58px;vertical-align: bottom}
    </style>
</head>
<body>
<div class="FirstTimeDivLogo">
    <a class="navbar-brand" href="#Adminsrator"><i>SiChuan ChuangZaoMen High - tech Development Co. Ltd</i></a>
</div>
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
            <a class="navbar-brand" target="_blank" href="../DefalutEng.aspx"><strong class="CZMBrandCompanyT">CZM</strong></a>
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
                        <li><a target="_blank" href="#Watchlive">Live Webcast</a></li>
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
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left" >
                <li class="ulloSpan"><a target="_blank" href="../DefalutEng.aspx">Home Page</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                <li class="ulloSpan"><a  href="#Watchlive">Live Webcast</a></li>
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
                <a href="../Default.aspx "  target="_blank" type="submit" class="btn btn-default" >CN</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >EN</a>
            </form>
        </div>
    </div>
</nav>
<div id="LunBoControl">
    <div id="myCarousel" class="carousel slide"  data-ride="carousel"   data-interval=4500   >
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" style="background-color: #000000;color: white " data-slide-to="0" class="active">1</li>
            <li data-target="#myCarousel"  style="background-color: #000000;color: white" data-slide-to="1">2</li>
            <li data-target="#myCarousel"  style="background-color: #000000;color: white" data-slide-to="2">3</li>
            <li data-target="#myCarousel"  style="background-color: #000000;color: white"  data-slide-to="3">4</li>
            <li data-target="#myCarousel"  style="background-color: #000000;color: white"  data-slide-to="4">5</li>
        </ol>   
        <div class="carousel-inner">
            <div class="item active">
                <img  src="../FirstImage/Cmp_1.png"  alt="First slide">
                <div class="carousel-caption" style="color: #000000;">
                    <div class="col-md-12"  id="introdutionOFourCompany">
                        <p class="ItroDuctionOfCompany">
                            <span class="intro">【Introduction】</span>SiChuan ChuangZaoMen High - tech Development Co. Ltd is committed to a variety of innovative product development entities, 
                            has launched a number of patented innovative products, and has been widely recognized that we will continue to develop more 
                            innovative products to market, Contribute to the development of society! Create change destiny! Create to change the future! 
                            We absorb all kinds of innovative talents to become our partners, serve all mankind, serve the people who have created dreams, 
                            enter the creation of the door, create correspondence, create, participate in the creation, create the door with you!
                        </p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="../FirstImage/Cmp_2.png"alt="Second slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/Cmp_3.png"alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/Cmp_4.png" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/Cmp_5.png"  alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
        </div>
    </div>
</div>
<br/><br/>
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">产品分类</span><span class="Font_Name_English" style="font-size: 18px">PRODUCT CATEGORY</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <img src="../Images/SystemPicture/yitiao.png"></img>
    </p>
</div>
<br/><br/>
<form id="form1" runat="server">
<div class="container" >
    <div class="container" >
        <div class="row" id="RowProductTypeShow">
            <asp:Repeater ID="reptem" runat="server" OnItemCommand="reptem_OnItemCommand">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <figure>
                            <a href="../UserPage/UserProductTypeShowCHN.aspx" target="_blank" ><img src='<%#Eval("TypePicture")%>'  ></a>      
                             <%#Eval("typeName_e")%>              
                        </figure>
                        <div class="TypeName">
                            <%#Eval("typeName_c")%> 
                        </div>
                        <div style=" height: 25px; opacity: 0.6; filter: opacity(60); color: white; position: absolute; top: 40%;left: 35%">
                            <p style="width: 100px;display: block; color: white; text-align: center;">
                                <asp:Button ID="btnCheck" CssClass="btn btn-default" runat="server" Text="See Details" CommandArgument='<%#Eval("typeID")%>' CommandName="Check" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>              
        </div>
    </div>
</div>
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">新品预告</span><span class="Font_Name_English" style="font-size: 18px">NEW PRODUCT</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <img src="../Images/SystemPicture/yitiao.png"></img>
    </p>
</div>
<br/><br/><br/><br/>
<div class="container">
    <div class="row" id="NewProductShow">
        <asp:Repeater ID="reptemNewProduct" runat="server">
            <ItemTemplate>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure>
                        <a target="_blank" href=<%#Eval("taobaoUrl")%> ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                        <figcaption>
                            <p ><span class="introShowWord">[<%#Eval("ProductName_e")%>]</span></p>
                            <p class="DownGoumai">
                                <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span><span class="MeonyLastChar">¥<%#Eval("price_last")%></span><span><asp:HyperLink ID="hypLinkToTaoBao" runat="server" target="_blank"  CssClass="btn btn-primary btn-danger" NavigateUrl='<%#Eval("taobaoUrl")%>'>Purchase</asp:HyperLink></span>
                            </p>
                            <p class="ProductShowDiscr"> 
                                <%#Eval("ProductDescription_e")%>
                            </p>
                        </figcaption>
                    </figure>
                </div>
            </ItemTemplate>
        </asp:Repeater>               
    </div>
</div>
<br /><br /><br />
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">视频专区</span><span class="Font_Name_English" style="font-size: 18px">Video Shelf</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <img src="../Images/SystemPicture/yitiao.png"></img>
    </p>
</div>
<br/><br/><br/><br/>
<section class="VedioList">
    <div class="Vedioshelf"> 
        <div class="LeftBox" style="background-image: url(../FirstImage/diaoyu.png)"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
        <div class="CenterBox" style="background-image: url(../FirstImage/yihui.png);"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx" ><img src="../FirstImage/图标8.png"/></a></div>
        <div class="RightBox" style="background-image: url(../FirstImage/wenwu.png"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
    </div>   
    <br/>
    <div class="LearingMoreVedio">
        <p><a href="../UserPage/UserVedioShowListCHE.aspx" target="_blank" >WATCH MORE</a></p>
    </div>        
</section>  
<div class="container-fluid" id="DaiTwo">
    <div class="row">
        <div class="col-md-7">
            <section class="container" id="Watchlive" style="margin-top:100px;"> 
                <div class="row">
                    <div class="col-md-12"> 
                        <asp:Repeater ID="ReptmLive" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4 col-xs-4">
                                    <figure>
                                        <asp:HyperLink ID="HypKuaiShow" target="_blank" CssClass="OnMouseOver" runat="server" NavigateUrl='<%#Eval("LiUrl")%>' ><img src='<%#Eval("UrlImg")%>' /></asp:HyperLink>
                                        <figcaption>
                                            <br/>
                                            <asp:HyperLink ID="HypKuaiShow2" target="_blank" CssClass="OnMouseOver"  NavigateUrl='<%#Eval("LiUrl")%>' runat="server">
                                                <span class="LiveIng">
                                                    <asp:Label ID="lblkuaishou" runat="server" Text='<%#Eval("LiTitleEng") %>' ></asp:Label>
                                                </span>
                                            </asp:HyperLink>
                                        </figcaption>
                                    </figure>                
                                </div>                  
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-5">
            <span  style="font-size:60px;font-family:'微软雅黑';color:white;font-weight:400; text-shadow:1px 1px 0px RGB(195,195,189); letter-spacing: 4px;">
                Watch live
            </span>                  
        </div>
    </div>
</div>
<!--项目展示-->
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">项目展示</span><span class="Font_Name_English" style="font-size: 18px">Projrct Show</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <img src="../Images/SystemPicture/yitiao.png"></img>
    </p>
</div>
<br/><br/><br/><br/>
<div style="width: 100%;text-align: center; font-size: 18px; font-family: '微软雅黑'; color: white; background-color: purple; height: 30px; line-height: 30px;">
    Project Picture
</div>
<section class="container-fluid" style="width: 100%">
    <div class="row" id="PictureProject">
        <asp:Repeater ID="reptmProject" runat="server">
            <ItemTemplate>
                <div class="col-md-4">
                    <a target="_blank" href="../UserPage/UserProjectShow.aspx"><img width="100%" src=<%#Eval("ImgPicturPath")%>   alt="First slide"></a>
                </div>                   
            </ItemTemplate>  
        </asp:Repeater>
    </div>
</section>
<br/><br/>
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">项目投资</span><span class="Font_Name_English" style="font-size: 18px">INVESTMENT</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <img src="../Images/SystemPicture/yitiao.png"></img>
    </p>
</div>
<br/><br/>
<div class="container">
    <div class="row" id="ProjectHave">
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_OnItemCommand" >
            <ItemTemplate>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure>
                        <img src='<%#Eval("ImgPicturPath")%>' >          
                        <figcaption>
                            <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                            <p>
                                <details>
                                    <summary>Basic Information</summary>
                                    <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%>RMB<br/>
                                    <a href="javascript:Guquan('<%#Eval("stockRateIntroduction")%>')">Stock Right->Click to view</a><br/>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">Certificate download address</asp:HyperLink>
                                </details>
                            </p>
                            <p class="ProductShowDiscr"> 
                                <span class="TitleIconss">[Introduction]:</span><%#Eval("PciDescription_c")%></p>
                            <p>
                                <asp:Button ID="btncanshu" runat="server"  Visible="False" Text="" CommandArgument='<%#Eval("PciName_c") %>' />
                                <asp:Button ID="btnInvest" CssClass="btn btn-warning" runat="server" Text="Invest in it" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Invest" />
                                <a href="#InvestPFmy" class="btn btn-danger">Cancel</a>
                            </p>
                        </figcaption>
                    </figure>
                </div>
            </ItemTemplate>
        </asp:Repeater>   
    </div>
</div>
<div class="container">
    <div class="box" >
        <div class="bcon" id="ScrollTime">
            <h1><b>Investment records</b></h1>
            <!-- 展示列表 -->
            <div class="list_lh">
                <ul>
                    <asp:Repeater ID="reptmInvset" runat="server">
                        <ItemTemplate>
                            <li>
                                <p><a href="javascript:ale rt('The other party privacy! Unable to view')" target="_blank"><%#Eval("TypeName_c") %> <%#Eval("UserName_e") %> 对</a><a href="#" target="_blank" class="btn_lh" >投资了<%#Eval("Account") %>元</a><em style="width: 30%"><%#Eval("InsertProjectName") %></em></p>
                                <br/><br/><br/><br/>
                                <p><a href="javascript:alert('The other party privacy! Unable to view')" target="_blank" class="a_blue">Investment time：</a><span><%#Eval("InvestTime") %></span></p>
                            </li>                       
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>    
    </div>   
</div>
<!--关于我们-->
<footer style="width: 100%; height: 50px;background-color:RGB(160,53,122) "></footer>
<footer style="width: 100%; height: 25px;background-color:ghostwhite "></footer>
<div class="container-fluid" style="background-color:RGB(241,238,238); ">
    <div class="container-fluid">
        <div class="row" >
            <div class="col-md-6 col-sm-12 " id="Font_Intro_Footer1">
                <br/>
                <br/>
                <h3 class="h3">About us</h3>
                <p style="font-size: 14px" title="Unite wisdom, focus on creating. Create the door is focused on a variety of innovative product development platform. Provide inventor with project development platform and provide investors with high-quality project selection opportunities">
                    Unite wisdom, focus on creating. Create the door is focused on a variety of innovative product development platform. Provide inventor with project development platform....
                </p>
                <table cellpadding="10px" cellspacing="10px" class="TableName" width="100%" >
                    <thead>
                    <tr>
                        <th>关于我们</th><th>合作投资</th><th>交流空间</th>
                    </tr>
                    </thead>
                    <tr>
                        <td  width="33%" height="30px" style="line-height: 30px">
                            <a href="../UserPage/UserConmunicationApaceCHN.aspx" class="a_blue">联系方式</a>
                        </td>
                        <td width="33%"  height="30px" style="line-height: 30px">
                            <a href="../UserPage/UserProjectShowCHN.aspx" class="a_blue" >投资信息</a>
                        </td>
                        <td width="33%"  height="30px" style="line-height: 30px">
                            <asp:Label ID="Label3" runat="server" Text="上传流程"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="33%" height="30px" style="line-height: 30px">
                            <asp:Label ID="Label2" runat="server" Text="投资流程"></asp:Label>
                        </td>
                        <td width="33%" height="30px" style="line-height: 30px">
                            <asp:Label ID="lblFalv" runat="server" Text="投资项目"></asp:Label>
                        </td>
                        <td width="33%" height="30px" style="line-height: 30px">
                            <asp:Label ID="lblshengming" runat="server" Text="投资咨询"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br/><br/>
            </div>
            <div class="col-md-2 col-sm-4" id="Font_Intro_Footer2">
                <p>
                    <img src="../Img/QQ.png" width="40px" height="40px"/>&nbsp;
                    <img src="../Img/微信.png" width="40px" height="40px"/>&nbsp;
                    <img src="../Img/支付宝.png" width="40px" height="40px"/>
                </p>
            </div>
            <div class="col-md-4 col-sm-8" id="Font_Intro_Footer3">
                <br/><br/><br/><br/><br/><br/>
                <figure>
                    <figcaption>Business WeChat</figcaption>
                    <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="150px" height="150px" />
                </figure>
                <figure>
                    <figcaption>Website QR Code</figcaption>
                    <img src="../Img/1510495015.png"  width="150px" height="150px"/>
                </figure>
                      
            </div>
            <!--
            <div class="col-md-3 col-sm-6" id="Font_Intro_Footer3" onmouseout="ChangeDispLaythree()">
                <div class="div_Img_CZM"  onmouseover="ChangeDispLayOne()"  id="CZMIMG" style="z-index: 2;position: absolute; top: 20px; left: 00px; ">
                    <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="200px" height="200px" />
                </div>
                <div class="div_Img_Webnet" id="WebImg" onmouseover="ChangeDispLayTwo()" style="z-index: 1;position: absolute; top: 60px; left: 40px;">
                    <img src="../Img/1510495015.png"  width="200px" height="200px"/>
                </div>
            </div>
            -->
        </div>
    </div>
</div>
<script>
    function ChangeDispLayOne() {
        var gg = document.getElementById("CZMIMG");
        var ggs = document.getElementById("WebImg");
        gg.style.display = "block";
        ggs.style.display = "none";
    }
    function ChangeDispLaythree() {
        var gg = document.getElementById("CZMIMG");
        var ggs = document.getElementById("WebImg");
        gg.style.display = "block";
        ggs.style.display = "block";
    }
    function ChangeDispLayTwo() {
        var gg = document.getElementById("CZMIMG");
        var ggs = document.getElementById("WebImg");
        gg.style.display = "none";
        ggs.style.display = "block";
    }
</script>
<div class="zixun">
    <div class="showDiv">
        
    </div>
    <div class="showDivs">
        <ul class="TiaoLan">
            <li> 
                <a href="../UserPage/UserPageLogin.aspx" target="_blank">Login</a>
            </li>
            <li><a  target="_blank" href="../UserPage/UserConmunicationApace.aspx" >consultation</a></li>
            <li><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
            <li><a target="_blank" href="../UserPage/UserCreateProject.aspx">Create</a></li>
            <li><a href="#">Top</a></li>
        </ul>
    </div>
    <div class="lanmu">
        <a target="_blank" href="../UserPage/UserPageLogin.aspx"><img src="../Images/SystemPicture/用户123.png" title="Login or register"/></a>
        <a target="_blank" href="../UserPage/UserConmunicationApace.aspx"><img src="../Images/SystemPicture/消息.png" title="consultation"/></a>
        <a target="_blank" href="../UserPage/UserCreateProject.aspx"><img src="../Images/SystemPicture/投资.png" title="Invest" /></a>
        <a target="_blank" target="_blank" href="../UserPage/UserInvestProject.aspx" ><img src="../Images/SystemPicture/写作.png" title="Create" /></a>
        <a href="#ShowPhoneIfStart"><img src="../Images/SystemPicture/置顶.png" title="home page" /></a>
    </div>
</div>
<div class="JiaoBens" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
    </p>
</div>
</form>
</body>
<script src="../bootstrap337/js/bootstrap.min.js"></script>
<script src="../bootstrap337/js/holder.min.js"></script>
<script src="../Js/scroll.js"></script>
<script type="text/javascript">
    document.querySelector("#myCarousel").addEventListener("touchstart",
        function (event) {
            //code here
            event.preventDefault();
        },
        false);
    'use strict';
    $(function () {
        // 获取手指在轮播图元素上的一个滑动方向（左右）

        // 获取界面上轮播图容器
        var $carousels = $('.carousel');
        var startX, endX;
        // 在滑动的一定范围内，才切换图片
        var offset = 50;
        // 注册滑动事件
        $carousels.on('touchstart', function (e) {
            // 手指触摸开始时记录一下手指所在的坐标x
            startX = e.originalEvent.touches[0].clientX;

        });
        $carousels.on('touchmove', function (e) {
            // 目的是：记录手指离开屏幕一瞬间的位置 ，用move事件重复赋值
            endX = e.originalEvent.touches[0].clientX;
        });
        $carousels.on('touchend', function (e) {
            //console.log(endX);
            //结束触摸一瞬间记录手指最后所在坐标x的位置 endX
            //比较endX与startX的大小，并获取每次运动的距离，当距离大于一定值时认为是有方向的变化
            var distance = Math.abs(startX - endX);
            if (distance > offset) {
                //说明有方向的变化
                //根据获得的方向 判断是上一张还是下一张出现
                $(this).carousel(startX > endX ? 'next' : 'prev');
            }
        })
    });
</script>
</html>

