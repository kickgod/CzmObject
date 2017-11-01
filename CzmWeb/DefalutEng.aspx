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
                <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">CZM</strong></a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            汉语 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="../Default.aspx" target="blank" >Chinese</a></li>
                            <li><a href="../DefalutEng.aspx"  >English</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Login <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="../UserPage/UserPageLogin.aspx"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                            <li><a href="../UserPage/UserPageRegister.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            User function <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="DefalutEng.aspx">Home Page</a></li>
                            <li><a href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                            <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                            <li><a href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                            <li><a href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                            <li><a href="../UserPage/UserProjectShow.aspx">Display</a></li>
                            <li><a href="#Watchlive">Live Webcast</a></li>
                            <li><a href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                            <li><a href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
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
                            <li><a href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                            <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                            <li><a href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                            <li><a href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                            <li><a href="../UserPage/UserProjectShow.aspx">Display</a></li>
                            <li><a href="#Watchlive">Live Webcast</a></li>
                            <li><a href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                            <li><a href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
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
                            <li><a href="../UserPage/UserPageLogin.aspx"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                            <li><a href="../UserPage/UserPageRegister.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
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
    <!--轮播图部分-->
    <div id="LunBoControl">
        <div id="myCarousel" class="carousel slide"  data-interval=1500  >
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
                    <img  src="../FirstImage/图1.png"  alt="First slide">
                    <div class="carousel-caption" style="color: #000000;"></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/图2.png" alt="Second slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/图3.png" alt="Third slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/图4.png" alt="Third slide">
                    <div class="carousel-caption" style="color: #000000;" ></div>
                </div>
                <div class="item">
                    <img src="../FirstImage/图5.png" alt="Third slide">
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
                                <a href="../UserPage/UserNewProductShow.aspx"><img src='<%#Eval("TypePicture")%>' ></a>                 
                                <figcaption><span class="intro"><a href="../UserPage/UserNewProductShow.aspx" style="color: purple;font-size: 18px; font-weight: 400;">[<%#Eval("typeName_e")%>]</span></a></figcaption>
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
                                <a href=<%#Eval("taobaoUrl")%> ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                                <figcaption>
                                    <p class="introShowWord"><span>[<%#Eval("ProductName_e")%>]</span></p>
                                    <p class="DownGoumai">
                                        <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                        <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server"  CssClass="btn btn-primary btn-danger" NavigateUrl='<%#Eval("taobaoUrl")%>'>Purchase</asp:HyperLink></span>
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
                <div class="LeftBox" style="background-image: url(../FirstImage/diaoyu.png)"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="CenterBox" style="background-image: url(../FirstImage/yihui.png);"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="RightBox" style="background-image: url(../FirstImage/wenwu.png"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
            </div>   
             <br/>
            <div class="LearingMoreVedio">
                <p><a href="javascript:void(0)">WATCH MORE</a></p>
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
                <div class="col-md-4 col-xs-4">
                    <a href="javascrpt:void(0)"><img src="../FirstImage/kuaishou.png"/> </a>                   
                </div>
                <div class="col-md-4 col-xs-4">
                    <a href="javascrpt:void(0)"><img src="../FirstImage/yinke.png"/></a>                 
                </div>
                <div class="col-md-4 col-xs-4 ">
                    <a href="javascrpt:void(0)"><img src="../FirstImage/shangyu.png"/></a>                
                </div>
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
                </ol>   
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="#"><img  src="../FirstImage/1_CompanyName_c.jpg"  alt="First slide"></a>
                        <div class="carousel-caption" style="color: #000000;">
                            <p class="ShowIntorductiOfpROJECT">
                                <span class="ProjectName">[Such as particle flow astrophysical point effect project]</span><br/>
                                <span class="WordOfTheProduct">i believed that you have received a brochure outlining the history and products of our company.</span>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                        <div class="carousel-caption" style="color: #000000;">
                            <p class="ShowIntorductiOfpROJECT">
                                <span class="ProjectName">[Such as particle flow astrophysical point effect project]</span><br/>
                                <span class="WordOfTheProduct">i believed that you have received a brochure outlining the history and products of our company.</span>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                        <div class="carousel-caption" style="color: #000000;">
                            <p class="ShowIntorductiOfpROJECT">
                                <span class="ProjectName">[Such as particle flow astrophysical point effect project]</span><br/>
                                <span class="WordOfTheProduct">i believed that you have received a brochure outlining the history and products of our company.</span>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                        <div class="carousel-caption" style="color: #000000;">
                            <p class="ShowIntorductiOfpROJECT">
                                <span class="ProjectName">[Such as particle flow astrophysical point effect project]</span><br/>
                                <span class="WordOfTheProduct">i believed that you have received a brochure outlining the history and products of our company.</span>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                        <div class="carousel-caption" style="color: #000000;">
                            <p class="ShowIntorductiOfpROJECT">
                                <span class="ProjectName">[Such as particle flow astrophysical point effect project]</span><br/>
                                <span class="WordOfTheProduct">i believed that you have received a brochure outlining the history and products of our company.</span>
                            </p>
                        </div>
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
        <!----> 
    <div class="box" >
        <div class="bcon" id="ScrollTime">
            <h1><b>Investment record</b></h1>
            <!-- 展示列表 -->
            <div class="list_lh">
                <ul>
                    <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>
                    <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>
                    <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>             
                       <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>              
                      <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>              
                      <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>               
                     <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>              
                      <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>              
                      <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>             
                       <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>               
                     <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>
                    <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>
                    <li>
                        <p><a href="#" target="_blank">四川师范大学实验室</a><a href="#" target="_blank" class="btn_lh" >投资了10w元</a><em style="width: 30%">对等离子流项目</em></p>
                        <p><a href="#" target="_blank" class="a_blue">投资时间：</a><span>17:28:05</span></p>
                    </li>
                </ul>
            </div>
        </div>    
    </div>   
    <!--关于我们-->
    <footer>
        <p class="HeadColor" style="color: white; height: 30px; line-height: 30px;text-indent: 20px">About Us</p>
        <div class="TowPart row">
            <div class="Left_Font col-md-8">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="TitleIntroduce" colspan="3" style="height: 16px" align="center">
                            <asp:Label ID="lblIntro" runat="server" Text="[ Introduction ]The company was founded in 2017, is committed to the development of fishery products, various types of products, such as shoes and socks, cultural relics collection, health care! Welcome to communicate with us! Cooperation!！" Width="90%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblAbotUs" runat="server" Text="Company description"></asp:Label> 
                        </td>
                        <td align="center">
                            <asp:Label ID="LBLHEZUO" runat="server" Text="Cooperative investment"></asp:Label>  
                        </td>
                        <td align="center">
                            <asp:Label ID="lblConmnite" runat="server" Text="Exchange space"></asp:Label>
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
                </div>
            </div>
        </div>
    </footer>
    <!--咨询-->
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
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-Today|Sichuan Creator Association New & High-tech Development Co.LTD.|Consumer hotline：18981191139|Enterprise Mail:2212901@qq.com|hotline：18981191139
            <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
        </p>
    </div>
    </form>
</body>
</html>
