<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
        <title>创造门</title>
        <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
        <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
        <link href="../bootstrap337/css/style.css" rel="stylesheet" />
        <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
        <style type="text/css">
            .Loading{width: 100%;height: 100%;position: fixed;top: 0px;left: 0px;background-color: white;z-index: 200;}
            .pic{width: 64px; height: 64px;background-image: url(../Master/BigFengCheng.gif);  /*居中显示方法*/ position: absolute; top: 0px;left: 0px; right: 0px; bottom: 0px; margin: auto;}
        </style>
        <script type="text/javascript">
            if (window.matchMedia("(min-width:480px) and (max-width:767px)").matches) {
                var Row = document.getElementById("NewProductShow");
                var RowType = document.getElementById("RowProductTypeShow");
                var RowProjext = document.getElementById("ProjectHave");
                var DivList = RowType.getElementsByTagName("div");
                for (var i = 0; i < DivList.length; i++) {
                    DivList[i].className = "col-md-3 col-sm-6 col-xs-6";
                }
                var DivTypeList = Row.getElementsByTagName("div");
                for (var i = 0; i < DivTypeList.length; i++) {
                    DivTypeList[i].className = "col-md-3 col-sm-6 col-xs-6";
                }
                var DivProjectList = RowProjext.getElementsByTagName("div");
                for (var i = 0; i < DivProjectList.length; i++) {
                    DivProjectList[i].className = "col-md-3 col-sm-6 col-xs-6";
                }
            } else if (window.matchMedia("(min-width:0px) and (max-width:479px)").matches) {
                var Row = document.getElementById("NewProductShow");
                var RowType = document.getElementById("RowProductTypeShow");
                var RowProjext = document.getElementById("ProjectHave");
                var DivList = Row.getElementsByTagName("div");
                for (var i = 0; i < DivList.length; i++) {
                    DivList[i].className = "col-md-3 col-sm-6 col-xs-12";
                }
                var DivTypeList = RowType.getElementsByTagName("div");
                for (var i = 0; i < DivTypeList.length; i++) {
                    DivTypeList[i].className = "col-md-3 col-sm-6 col-xs-12";
                }
                var DivProjectList = RowProjext.getElementsByTagName("div");
                for (var i = 0; i < DivProjectList.length; i++) {
                    DivProjectList[i].className = "col-md-3 col-sm-6 col-xs-12";
                }
            }
            function Guquan(StockName) {
                alert(StockName);
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
            window.onresize = function () {
                if (window.matchMedia("(min-width:480px) and (max-width:767px)").matches) {
                    var Row = document.getElementById("NewProductShow");
                    var RowType = document.getElementById("RowProductTypeShow");
                    var RowProjext = document.getElementById("ProjectHave");
                    var DivList = RowType.getElementsByTagName("div");
                    for (var i = 0; i < DivList.length; i++) {
                        DivList[i].className = "col-md-3 col-sm-6 col-xs-6";
                    }
                    var DivTypeList = Row.getElementsByTagName("div");
                    for (var i = 0; i < DivTypeList.length; i++) {
                        DivTypeList[i].className = "col-md-3 col-sm-6 col-xs-6";
                    }
                    var DivProjectList = RowProjext.getElementsByTagName("div");
                    for (var i = 0; i < DivProjectList.length; i++) {
                        DivProjectList[i].className = "col-md-3 col-sm-6 col-xs-6";
                    }
                } else if (window.matchMedia("(min-width:0px) and (max-width:479px)").matches) {
                    var Row = document.getElementById("NewProductShow");
                    var RowType = document.getElementById("RowProductTypeShow");
                    var RowProjext = document.getElementById("ProjectHave");
                    var DivList = Row.getElementsByTagName("div");
                    for (var i = 0; i < DivList.length; i++) {
                        DivList[i].className = "col-md-3 col-sm-6 col-xs-12";
                    }
                    var DivTypeList = RowType.getElementsByTagName("div");
                    for (var i = 0; i < DivTypeList.length; i++) {
                        DivTypeList[i].className = "col-md-3 col-sm-6 col-xs-12";
                    }
                    var DivProjectList = RowProjext.getElementsByTagName("div");
                    for (var i = 0; i < DivProjectList.length; i++) {
                        DivProjectList[i].className = "col-md-3 col-sm-6 col-xs-12";
                    }
                }
            }
        </script>
        <link href="../Content/FontBindData.css" rel="stylesheet" />
        <link href="../CSS/BootsrapDefaultCHN.css" rel="stylesheet" />
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
            .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
            .LiveIng{color:coral;font-size:15px;border-bottom: coral 1px solid}
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
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">创造门</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language【语言】 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Default.aspx" target="blank" >中文</a></li>
                        <li><a href="../DefalutEng.aspx" target="blank" >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a target="_blank" href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                        <li><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
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
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" target="_blank" href="#Adminsrator"><strong class="CZMBrandCompany">创造门</strong></a>
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
                </li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLoginCHN.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="../UserPage/UserPageRegisterCHN.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                        <li><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx "  target="_blank" type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
<!--轮播图部分-->
<div id="LunBoControl">
    <div id="myCarousel" class="carousel slide"  data-ride="carousel"   data-interval=4500   >
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" style="background-color: #000000;" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;" data-slide-to="1"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;" data-slide-to="2"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;"  data-slide-to="3"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;"  data-slide-to="4"></li>
        </ol>   
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img  src="../FirstImage/1_CompanyName_c.jpg"  alt="First slide">
                <div class="carousel-caption" style="color: #000000;"></div>
            </div>
            <div class="item">
                <img src="../FirstImage/2_CompanyIntro_c.jpg" alt="Second slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/3_CompanyTitle_c.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/4_CompanyFocus_c.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/5_CompanyFeture_c.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel" 
           data-slide="prev">&lsaquo;
        </a>
        <a class="carousel-control right" href="#myCarousel" 
           data-slide="next">&rsaquo;
        </a>
    </div>
</div>
<!--公司介绍-->
<div class="container" id="CompanyIntroduction">
    <div class="row">
        <div class="col-md-12"><h2 class="h2" id="CompanyName" >四川创造门高新技术开发有限公司</h2></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p class="ItroDuctionOfCompany">
                <span class="intro">【公司简介】</span>四川创造门高新技术开发有限公司是致力于各种创新产品研发的实体机构，目前已经推出多项专利创新产品，并已获人们广泛认同
                我们还会不断研发更多创新产品推向市场，为人类社会的发展做出贡献！创造改变命运！创造改变未来！我们吸纳各种创新人才成为我们的合作伙伴
                ，为全人类服务，为有创造梦想的人服务，走进创造门，感受创造，拥有创造，参与创造，创造门与你同在！
            </p>
        </div>
    </div>
</div>
<!--产品分类-->
<div class="JuzhongFont">
    <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
        <span class="Font_Name_English">产品分类</span>
    </span> 
</div>
<form id="form1" runat="server">
    <div class="container" >
        <div class="row" id="RowProductTypeShow">
            <asp:Repeater ID="reptem" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <figure>
                            <a href="../UserPage/UserProductTypeShowCHN.aspx" target="_blank" ><img src='<%#Eval("TypePicture")%>'  ></a>                 
                            <figcaption><span class="intro"><a href="../UserPage/UserProductTypeShowCHN.aspx" style="color: purple; font-size: 18px; font-weight: 400;">[<%#Eval("typeName_c")%>]</span></a></figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>              
        </div>
    </div>
    <!--新品发布-->
    <div class="JuzhongFont">
        <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
            <span class="Font_Name_English">新品预告</span>
        </span> 
    </div>
    <div class="container">
        <div class="row" id="NewProductShow">
            <asp:Repeater ID="reptemNewProduct" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <figure>
                            <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                            <figcaption>
                                <p class="introShowWord"><span style="font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_c")%>]</span></p>
                                <p class="DownGoumai">
                                    <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                    <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server"  CssClass="btn btn-primary btn-danger" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>购买</asp:HyperLink></span>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <%#Eval("ProductDescription_c")%>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>              
        </div>
    </div>
<br /><br /><br />
<!--视频专区-->
    <div class="JuzhongFont">
        <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
            <span class="Font_Name_English">视频专区</span>
        </span> 
    </div>
    <section class="VedioList">
        <div class="Vedioshelf"> 
            <div class="LeftBox" style="background-image: url(../FirstImage/diaoyu.png)"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
            <div class="CenterBox" style="background-image: url(../FirstImage/yihui.png);"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx" ><img src="../FirstImage/图标8.png"/></a></div>
            <div class="RightBox" style="background-image: url(../FirstImage/wenwu.png"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
        </div>   
        <br/>
        <div class="LearingMoreVedio">
            <p><a href="../UserPage/UserVedioShowListCHE.aspx" target="_blank" >观看更多</a></p>
        </div>        
    </section>  
<!--观看直播-->
    <div class="JuzhongFont">
        <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
            <span class="Font_Name_English">观看直播</span>
        </span> 
    </div>
<section class="container" id="Watchlive"> 
    <div class="row">
        <asp:Repeater ID="ReptmLive" runat="server">
            <ItemTemplate>
                <div class="col-md-4 col-xs-4">
                    <figure>
                        <asp:HyperLink ID="HypKuaiShow" target="_blank" CssClass="OnMouseOver" runat="server" NavigateUrl='<%#Eval("LiUrl")%>' ><img src='<%#Eval("UrlImg")%>' /></asp:HyperLink>
                        <figcaption>
                            <br/>
                            <asp:HyperLink ID="HypKuaiShow2" CssClass="OnMouseOver" target="_blank"  NavigateUrl='<%#Eval("LiUrl")%>' runat="server">
                                <span class="LiveIng">
                                    <asp:Label ID="lblkuaishou" runat="server" Text='<%#Eval("LiTitle") %>' ></asp:Label>
                                </span>
                            </asp:HyperLink>
                        </figcaption>
                    </figure>                
                </div>                  
            </ItemTemplate>
        </asp:Repeater>
    </div>
</section>
<!--项目展示-->
<div class="JuzhongFont" style="height: 150px" >
    <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
        <span class="Font_Name_English">项目展示</span>
    </span> 
</div>
<div id="LunBoControl2">
    <div id="myCarouse2" class="carousel slide"   data-ride="carousel"   data-interval=4500  >
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarouse2" style="background-color: #000000;" data-slide-to="0" class="active"></li>
            <li data-target="#myCarouse2"  style="background-color: #000000;" data-slide-to="1"></li>
            <li data-target="#myCarouse2"  style="background-color: #000000;" data-slide-to="2"></li>
            <li data-target="#myCarouse2"  style="background-color: #000000;"  data-slide-to="3"></li>
            <li data-target="#myCarouse2"  style="background-color: #000000;"  data-slide-to="4"></li>
            <li data-target="#myCarouse2"  style="background-color: #000000;"  data-slide-to="5"></li>
        </ol>   
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../FirstImage/1_CompanyName_c.jpg"  alt="First slide">
                    <div class="carousel-caption" style="color: #000000;"></div>
                </div>
                <asp:Repeater ID="reptmProject" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <a target="_blank" href="../UserPage/UserProjectShowCHN.aspx"><img class="imgLunbo2shoji" src=<%#Eval("ImgPicturPath")%>  alt="First slide"></a>
                            <div class="carousel-caption" style="color: #000000;">
                                <p class="ShowIntorductiOfpROJECT">
                                    <span class="ProjectName">[项目：<%#Eval("PciName_c")%>]</span><br/>
                                    <span class="WordOfTheProduct"><%#Eval("PciDescription_c") %></span>
                                </p>
                            </div>
                        </div>                   
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarouse2" 
           data-slide="prev">&lsaquo;
        </a>
        <a class="carousel-control right" href="#myCarouse2" 
           data-slide="next">&rsaquo;
        </a>
    </div>
</div>   
<div class="JuzhongFont" style="height: 150px" >
    <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
        <span class="Font_Name_English">项目投资</span>
    </span> 
</div>
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
                                        <summary>基本信息</summary>
                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%>RMB<br/>
                                        <a href="javascript:Guquan('<%#Eval("stockRateIntroduction")%>')">股权信息->点击查看</a><br/>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载</asp:HyperLink>
                                    </details>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <span class="TitleIconss">[简介]:</span><%#Eval("PciDescription_c")%></p>
                                <p>
                                    <asp:Button ID="btncanshu" runat="server"  Visible="False" Text="" CommandArgument='<%#Eval("PciName_c") %>' />
                                    <asp:Button ID="btnInvest" CssClass="btn btn-warning" runat="server" Text="我要投资" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Invest" />
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
                <h1><b>投资记录</b></h1>
                <!-- 展示列表 -->
                <div class="list_lh">
                    <ul>
                        <asp:Repeater ID="reptmInvset" runat="server">
                            <ItemTemplate>
                                <li>
                                    <p><a href="javascript:alert('对方隐私！无法查看')" target="_blank"><%#Eval("TypeName_c") %> <%#Eval("UserName_e") %></a><a href="#" target="_blank" class="btn_lh" >投资了<%#Eval("Account") %>元</a><em style="width: 30%"><%#Eval("InsertProjectName") %>项目</em></p>
                                    <p><a href="javascript:alert('对方隐私！无法查看')" target="_blank" class="a_blue">投资时间：</a><span><%#Eval("InvestTime") %></span></p>
                                </li>                       
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>    
        </div>   
    </div>
<!--关于我们-->
<footer>
    <p class="HeadColor" style="color: white; height: 30px; line-height: 30px;text-indent: 20px">About Us</p>
    <div class="TowPart">
        <div class="Left_Font">
            <table cellpadding="0" cellspacing="0">
                <tr>
                    <td class="TitleIntroduce" colspan="3" style="height: 16px;text-indent:15px" align="left" >
                        <asp:Label ID="lblIntro" runat="server" Text="[ 简介 ]此公司成立于2017年，致力于渔业产品，各类产品的发展推广,例如洗鞋袜，文物收藏，医疗保健！欢迎与我们交流！合作！" Width="90%"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <a href="#CompanyIntroduction" class="a_blue">公司简介</a>
                    </td>
                    <td align="center">
                        <a href="../UserPage/UserInvestProjectCHN.aspx" class="a_blue" >合作投资</a>
                    </td>
                    <td align="center">
                        <a href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblCompany" runat="server" Text="公司官网"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblFalv" runat="server" Text="法律说明"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblshengming" runat="server" Text="公司声明"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="Label1" runat="server" Text="企业人才"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="Label2" runat="server" Text="核心业务"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="Label3" runat="server" Text="国际合作"></asp:Label>
                    </td>                      
                </tr>
            </table>
        </div>
        <div class="Right_Picture">
            <div class="PictureOneWechat">
                <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="100%" height="100%"/>
            </div>
        </div>
    </div>
</footer>
<!--咨询-->
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
<div class="JiaoBens" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx">管理员</a>
    </p>
</div>
</form>
 </body>
<script src="../bootstrap337/js/bootstrap.min.js"></script>
<script src="../bootstrap337/js/holder.min.js"></script>
<script src="../Js/scroll.js"></script>
</html>
