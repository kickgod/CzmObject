<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserNewProductShow.aspx.cs" Inherits="CzmWeb.UserPage.UserNewProductShow" %>

<%@ Register Src="~/Common/wuc_PagerEng.ascx" TagPrefix="uc1" TagName="wuc_PagerEng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" href="../Img/CZM.png" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script src="../bootstrap337/js/holder.min.js"></script>
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <script src="../Js/scroll.js"></script>
    <title>新品预告</title>
    <style type="text/css">
        *{ padding: 0px;margin: 0px;}
        .ulloSpan a{display: block}
        .ulloSpan:hover { border-bottom: RGB(148, 30, 80) 2px solid;border-top: RGB(148, 30, 80) 2px solid;color: black;font-size: 18px}
        .CZMBrandCompany{ font-family: '创造们';font-size: 18px; color: white}
        #ShowPhoneIfStart{ background-color: RGB(176, 53, 112);color: white}
        #ShowPhoneIfStart div ul li a{ color: white;}
        #ShowPhoneIfEnd{ background-color: RGB(176, 53, 112);color: white}
        #ShowPhoneIfEnd div ul li a{ color: white;background-color: RGB(176, 53, 112);}
        #ShowPhoneIfEnd,#ShowPhoneIfStart{ border: 0px;}
        .intro{font-size: 18px;font-family: '楷体', '宋体';font-weight: 500;color: purple}
        .ItroDuctionOfCompany{ height: 150px;overflow: hidden;word-break: break-all;font-size: 12px;}
        .JuzhongFont{ width: 100%;text-align: center;line-height: 70px;height: 70px }
        .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .Font_Name_English{ color: darkmagenta;font-weight: 400;font-size: 20px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
        #RowProductTypeShow img{ width: 100%;height: 200px;}
        #RowProductTypeShow .col-md-3{margin-bottom: 15px}
        #NewProductShow img{ width: 100%;height: 250px;transition: 0.7s}
        #NewProductShow img:hover{ transform: scale(1.2, 1.2);-webkit-transform: scale(1.2, 1.2);}
        .introShowWord{ font-size: 15px;font-weight: 500;font-family: ProductFontStyle;color: purple;overflow: hidden;width: 100%;height: 25px;}
        .ProductShowDiscr{ width: 100%;height: 100px;overflow:hidden}
        .DownGoumai .MeonyChar{ font-weight: 600;color: RGB(148, 30, 80);font-size: 20px;vertical-align: top;text-indent: 10px}
        .DownGoumai .Meony{ font-weight: 700;font-size: 25px;color:RGB(148, 30, 80) }
        .DownGoumai .MeonyLastChar{ color: RGB(191,181,181); text-decoration: line-through;font-size: 15px}
        .ProjectName{ color: gainsboro;font-size: 22px;font-weight: 400;background-color: crimson;}
        .WordOfTheProduct{ color: white;font-weight: 400;font-style: italic;text-transform: uppercase;font-size: 15px;background-color: RGB(148, 30, 80) }
        .ShowIntorductiOfpROJECT{ width: 100%;height: 100px;overflow: hidden}
        .ProductNameType{ color: white;font-weight: 500;background-color: RGB(174, 105, 130);padding: 5px 20px;word-spacing: 5px;font-size: 16px }
        /**手机样式**/
        /********************************************************************************/
        .btnYes{ width: 50px;height: 25px;background-color: RGB(209, 148, 204);border: none;color: white;font-weight: 500 }
        .btnNo{width: 50px;height: 25px;background-color: inherit;border: none;color: gainsboro}
        .XiaoxiProduct{ height: 50px;line-height: 50px;}
        .FontKeyWord{ font-family: ProductFontStyle;text-transform: capitalize; font-weight: 400;font-size: 14px}
        #NewProductShow figcaption{height: 360px}
        @media only screen and (min-width: 1200px) {
            #ShowPhoneIfStart{display: none}  
            #ShowPhoneIfEnd{display: block} /***1300px以上***/
            footer{ background-color: RGB(10, 18, 43);width: 100%; height: 300px;}
            footer .HeadColor{ height: 10px;width: 100%;background-color: RGB(144,68,117)}
            footer .TowPart{ width: 100%;background-color: white;height: 250px;}
            footer .TowPart .Left_Font{ width: 69%;height: 250px;float: left; }
            footer .TowPart .Left_Font table{width: 100%; padding: 0px;margin: auto}
            footer .TowPart .Left_Font table th{ height: 40px;line-height: 40px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
            footer .TowPart .Left_Font table tr{height: 40px;line-height: 40px;font-size: small}
            footer .TowPart .Left_Font table .TitleIntroduce{ color: RGB(114, 114, 114);font-size: small}
            footer .TowPart .Right_Picture{ width: 30%;height: 250px;float: left}
            footer .TowPart .Right_Picture .PictureOneWechat { background-color: purple;width: 200px;height: 200px;position: relative;top: 10px;right: 100px;}
            .zixun{z-index: 100000; width: 190px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 10px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 155px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} /***1300px以上***/
            .JiaoBen{ position: fixed;bottom: 0px;width: 100%;background-color: white}
        }
        @media only screen and (min-width:768px) and (max-width: 1199px) { 
            #ShowPhoneIfStart{display: none}  
            #ShowPhoneIfEnd{display: block}    
            #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }  
            footer{ background-color: RGB(10, 18, 43);width: 100%; height: 300px;}
            footer .HeadColor{ height: 20px;color: white; width: 100%;background-color: RGB(144,68,117)}
            footer .TowPart{ width: 100%;background-color: white;height: 250px;}
            footer .TowPart .Left_Font{ width: 69%;height: 250px;float: left; }
            footer .TowPart .Left_Font table{width: 100%; padding: 7px;margin: auto}
            footer .TowPart .Left_Font table th{ height: 40px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
            footer .TowPart .Left_Font table tr{height: 40px;font-size: small}
            footer .TowPart .Left_Font table .TitleIntroduce{ color: RGB(114, 114, 114);font-size: small}
            footer .TowPart .Right_Picture{ width: 30%;height: 250px;float: left}
            footer .TowPart .Right_Picture .PictureOneWechat { background-color: purple;width: 200px;height: 200px;position: relative;top: 10px;left: 18px;}
            .zixun{z-index: 100000; width: 190px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 10px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 155px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
            .JiaoBen{ position: fixed;bottom: 0px;width: 100%;background-color: white}
        }
        @media only screen and (min-width: 441px) and (max-width: 767.9px) {
            #ShowPhoneIfStart{display:block}  
            #ShowPhoneIfEnd{display: none}    
            #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }     
            footer{ background-color: RGB(10, 18, 43);width: 100%; height: 300px;}
            footer .HeadColor{ height: 50px;width: 100%;background-color: RGB(144,68,117)}
            footer .TowPart{ width: 100%;background-color: white;height: 250px;}
            footer .TowPart .Left_Font{ width: 69%;height: 250px;float: left; }
            footer .TowPart .Left_Font table{width: 100%; padding: 7px;margin: auto}
            footer .TowPart .Left_Font table th{ height: 40px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
            footer .TowPart .Left_Font table tr{height: 40px;font-size: small}
            footer .TowPart .Left_Font table .TitleIntroduce{ color: RGB(114, 114, 114);font-size: small}
            footer .TowPart .Right_Picture{ width: 30%;height: 250px;float: left}
            footer .TowPart .Right_Picture .PictureOneWechat { background-color: purple;width: 200px;height: 200px;position: relative;top: 10px;left: 18px;}
            .zixun{z-index: 100000; width: 190px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 10px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 155px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} 
            .JiaoBen{ position: fixed;bottom: 0px;width: 100%;background-color: white}
            #NewProductShow img{ width: 100%;height: 300px;transition: 0.5s}
            #NewProductShow img:hover{ transform: scale(1,1);-webkit-transform: scale(1.1, 1.1);}
        }
        @media only screen and (min-width: 0px) and (max-width: 440px) {
            .zixun{display: none}
            #ShowPhoneIfStart{display: block}  
            #ShowPhoneIfEnd{display: none} 
            #NewProductShow img{ width: 100%;height: 300px;transition: 0.7s}
            #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }
            .Font_Name_English{ color: darkmagenta;font-weight: 400;font-size: 15px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
            #RowProductTypeShow img{ width: 100%;height: 250px;} 
            .intro{font-size: 14px;font-family: '楷体', '宋体';font-weight: 400;color: purple}
            .JiaoBen{background-color: white;}
            footer{ background-color: RGB(10, 18, 43);width: 100%; height: 600px;}
            footer .HeadColor{ height: 50px;width: 100%;background-color: RGB(144,68,117)}
            footer .TowPart{ width: 100%;background-color: white;height: 250px;}
            footer .TowPart .Left_Font{ width: 100%;height: 250px;float: left; }
            footer .TowPart .Left_Font table{width: 100%; padding: 7px;margin: auto}
            footer .TowPart .Left_Font table th{ height: 40px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
            footer .TowPart .Left_Font table tr{height: 40px;font-size: small}
            footer .TowPart .Left_Font table .TitleIntroduce{ color: RGB(114, 114, 114);font-size: small}
            footer .TowPart .Right_Picture{ width: 100%;height: 250px;float: left}
            footer .TowPart .Right_Picture .PictureOneWechat { background-color: purple;width: 200px;height: 200px;position: relative;top: 10px;left: 18px;}
            #NewProductShow img{ width: 100%;height: 340px;transition: 0.5s}
            #NewProductShow img:hover{ transform: scale(1,1);-webkit-transform: scale(1.1, 1.1);}
        }
        body{ background-color: RGB(249, 238, 238);}
    </style>
    <script type="text/javascript">
        window.onresize = function () {
            if (window.matchMedia("(min-width:460px) and (max-width:767px)").matches) {
                var Row = document.getElementById("NewProductShow");
                var DivList = Row.getElementsByTagName("figure");
                for (var i = 0; i < DivList.length; i++) {
                    DivList[i].className = "col-md-3 col-sm-6 col-xs-6";
                }
            } else if (window.matchMedia("(min-width:0px) and (max-width:459px)").matches) {
                var Row = document.getElementById("NewProductShow");
                var DivList = Row.getElementsByTagName("figure");
                for (var i = 0; i < DivList.length; i++) {
                    DivList[i].className = "col-md-3 col-sm-6 col-xs-12";
                }
            }
        }
    </script>
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
    <form id="form1" runat="server">
        <div class="container-fluid " style="margin-top: -30px;background-color: white">
                <div class="page-header">
                    <h4><span class="ProductNameType">Product Show</span>
                        <small>Product</small>
                    </h4>
                </div>
        </div>
        <br/>
        <br/>
        <div class="container">
            <div class="row" id="NewProductShow" style="background-color: white">
                <asp:Repeater ID="reptemNewProduct" runat="server">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <figure>
                                <a href=<%#Eval("taobaoUrl")%> ><img src='<%#Eval("ImgPatjh")%>' ></a>              
                                <figcaption>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p style="height:28px;line-height:28px">
                                                <button class="btn<%#(Eval("IsBY").ToString()==null ||Eval("IsBY").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsBY"))?"Yes":"No") %>">Free shipping</button>
                                                <button class="btn<%#(Eval("IsRm").ToString()==null ||Eval("IsRm").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsRm"))?"Yes":"No") %>">HOT</button>
                                                <button class="btn<%#(Eval("IsNew").ToString()==null||Eval("IsNew").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsNew"))?"Yes":"No") %>">NEW</button>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p><span class="introShowWord">[<%#Eval("ProductName_e")%>]</span></p>   
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>
                                                [Keyword]<span class="FontKeyWord"><%#Eval("ProductKeyEng")%></span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="DownGoumai">
                                                <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                                <span><a href=<%#Eval("taobaoUrl")%>  class="btn btn-primary btn-danger">Purchase</a></span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="ProductShowDiscr"> 
                                                <%#Eval("ProductDescription_e")%>
                                            </p>
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>              
            </div>
        </div>
    </form>
    <br /><br /><br /><br /><br /><br />
<!--关于我们-->
    <!--咨询-->
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
