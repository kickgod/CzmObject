<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefalutEng.aspx.cs" Inherits="CzmWeb.defalut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="pragma" content="no-cache"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <script src="../Js/scroll.js"></script>
    <link href="CSS/BootsrapDefaultENG.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function() {
            $('.list_lh li:even').addClass('lieven');
        });
        $(function () {
            $("div.list_lh").myScroll({
                speed: 30,
                rowHeight: 68
            });
        });
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
            <div class="navbar-header">
                <a class="navbar-brand" href="../DefalutEng.aspx" target="_blank" ><strong class="CZMBrandCompany">CZM</strong></a>
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
                            <li class="active"><a target="_blank" href="../DefalutEng.aspx">Home Page</a></li>
                            <li><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                            <li><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                            <li><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                            <li><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                            <li><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                            <li><a target="_blank" href="#Watchlive">Live Webcast</a></li>
                            <li><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                            <li><a target="_blank" href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
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
                            <li><a href="../UserPage/UserPageLogin.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                            <li><a href="../UserPage/UserPageRegister.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                            <li><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <a href="../Default.aspx" target="_blank" type="submit" class="btn btn-default" >Chinese</a>
                    <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >English</a>
                </form>
            </div>
        </div>
    </nav>
    <!--轮播图部分-->
    <div id="LunBoControl">
        <div id="myCarousel" class="carousel slide" data-ride="carousel"   data-interval=4500  >
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
                    <img  src="../FirstImage/Cmp_1.png"  alt="First slide">
                    <div class="carousel-caption" style="color: #000000;"></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/Cmp_2.png" alt="Second slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/Cmp_3.png" alt="Third slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/Cmp_4.png" alt="Third slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/Cmp_5.png" alt="Third slide">
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
    <div class="container">
        <div class="row">
            <div class="col-md-12"><h2 class="h2" id="CompanyName" >Sichuan Creator Association New & High-tech Development Co.LTD.</h2></div>
        </div>
        <div class="row">
            <div class="col-md-12">
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
    <!--产品分类-->
    <div class="JuzhongFont">
        <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
            <span class="Font_Name_English">PRODUCT CATEGORY</span>
        </span> 
    </div>
    <form id="form1" runat="server">
        <div class="container" >
            <div class="row" id="RowProductTypeShow">
                <asp:Repeater ID="reptem" runat="server">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <figure>
                                <a href="../UserPage/UserNewProductShow.aspx" target="_blank" ><img src='<%#Eval("TypePicture")%>' ></a>                 
                                <figcaption><span class="intro"><a href="../UserPage/UserNewProductShow.aspx" target="_blank" style="color: purple;font-size: 18px; font-weight: 400;">[<%#Eval("typeName_e")%>]</span></a></figcaption>
                            </figure>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>              
            </div>
        </div>
        <!--新品发布-->
        <div class="JuzhongFont">
            <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
                <span class="Font_Name_English">NEW PRODUCT</span>
            </span> 
        </div>
        <div class="container">
            <div class="row" id="NewProductShow">
                <asp:Repeater ID="reptemNewProduct" runat="server">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <figure>
                                <a target="_blank" href=<%#Eval("taobaoUrl")%> ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                                <figcaption>
                                    <p class="introShowWord"><span>[<%#Eval("ProductName_e")%>]</span></p>
                                    <p class="DownGoumai">
                                        <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                        <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server" target="_blank"  CssClass="btn btn-primary btn-danger" NavigateUrl='<%#Eval("taobaoUrl")%>'>Purchase</asp:HyperLink></span>
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
        <!--视频专区-->
        <div class="JuzhongFont">
            <span style="border-bottom: 1px darkblue dashed; padding-bottom: 15px;">
                <span class="Font_Name_English">Video Shelf</span>
            </span> 
        </div>
        <section class="VedioList">
            <div class="Vedioshelf"> 
                <div class="LeftBox" style="background-image: url(../FirstImage/diaoyu.png)"><a target="_blank" href="../UserPage/UserVedioShowList.aspx"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="CenterBox" style="background-image: url(../FirstImage/yihui.png);"><a target="_blank" href="../UserPage/UserVedioShowList.aspx"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="RightBox" style="background-image: url(../FirstImage/wenwu.png"><a target="_blank" href="../UserPage/UserVedioShowList.aspx"><img src="../FirstImage/图标8.png"/></a></div>
            </div>   
             <br/>
            <div class="LearingMoreVedio">
                <p><a href="../UserPage/UserVedioShowList.aspx" target="_blank" >WATCH MORE</a></p>
            </div>        
        </section>  
        <!--观看直播-->
        <div class="JuzhongFont">
            <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                <span class="Font_Name_English">Watch Live</span>
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
    </section>
        <!--项目展示-->
        <div class="JuzhongFont" style="height: 150px" >
            <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                <span class="Font_Name_English">Projrct Show</span>
            </span> 
        </div>
    <div id="LunBoControl2">
        <div id="myCarouse2" class="carousel slide"  data-interval=1500  >
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
                        <img  src="../FirstImage/1_CompanyName_c.jpg"  alt="First slide">
                        <div class="carousel-caption" style="color: #000000;"></div>
                    </div>
                    <asp:Repeater ID="reptmProject" runat="server">
                        <ItemTemplate>
                            <div class="item">
                                <a target="_blank" href="../UserPage/UserProjectShow.aspx"><img class="imgLunbo2shoji" src=<%#Eval("ImgPicturPath")%>  alt="First slide"></a>
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
        <!----> 
    <div class="JuzhongFont" style="height: 150px" >
        <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
            <span class="Font_Name_English">Investment</span>
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
                                    <p><a href="javascript:ale rt('对方隐私！无法查看')" target="_blank"><%#Eval("TypeName_c") %> <%#Eval("UserName_e") %></a><a href="#" target="_blank" class="btn_lh" >投资了<%#Eval("Account") %>元</a><em style="width: 30%"><%#Eval("InsertProjectName") %>项目</em></p>
                                    <p><a href="javascript:alert('对方隐私！无法查看')" target="_blank" class="a_blue">Investment time：</a><span><%#Eval("InvestTime") %></span></p>
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
        <div class="TowPart row">
            <div class="Left_Font col-md-8">
                <table cellpadding="0" cellspacing="0" class="table">
                    <tr>
                        <td class="TitleIntroduce" colspan="3" style="height: 16px" align="center">
                            <asp:Label ID="lblIntro" runat="server" Text="[ Introduction ]The company was founded in 2017, is committed to the development of fishery products, various types of products, such as shoes and socks, cultural relics collection, health care! Welcome to communicate with us! Cooperation!！" Width="90%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <a href="#CompanyIntroduction" >Company description</a>
                        </td>
                        <td align="center">
                            <a href="../UserPage/UserInvestProjectCHN.aspx" target="_blank" >Cooperative investment</a>
                        </td>
                        <td align="center">
                            <a href="../UserPage/UserConmunicationApaceCHN.aspx" target="_blank" >Online consulting</a>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblCompany" runat="server" Text="Company official website"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="lblFalv" runat="server" Text="Legal Notices"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="lblshengming" runat="server" Text="Company statement"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label1" runat="server" Text="Talent situation"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label2" runat="server" Text="Main business"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label3" runat="server" Text="global cooperation"></asp:Label>
                        </td>                      
                    </tr>
                </table>
            </div>
            <div class="Right_Picture col-md-4">
                <div class="PictureOneWechat">
                    <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="100%" height="100%" />
                </div>
            </div>
        </div>
    </footer>
    <!--咨询-->
    <div class="zixun">
        <div class="showDiv">
            <p style="font-size: 8px">WeChat QR code</p>
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
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-Today|Sichuan Creator Association New & High-tech Development Co.LTD.|Consumer hotline：18981191139|Enterprise Mail:2212901@qq.com|hotline：18981191139
            <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
        </p>
    </div>
    </form>
</body>
</html>
