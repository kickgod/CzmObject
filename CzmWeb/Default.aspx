<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>创造门</title>
<link rel="icon" href="../Images/SystemPicture/创造力.ico" />
<script src="bootstrap337/js/jquery-3.2.1.min.js"></script>
<script src="../bootstrap337/js/bootstrap.min.js"></script>
<link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
<link href="../Content/FontBindData.css" rel="stylesheet" />
<script src="bootstrap337/js/holder.min.js"></script>
<link href="../bootstrap337/css/style.css" rel="stylesheet" />
<script src="../Js/scroll.js"></script>
<style type="text/css">
    *{ padding: 0px;margin: 0px;}
    .CZMBrandCompany{ font-family: '创造们';font-size: 18px; color: white}
    #ShowPhoneIfStart{ background-color: RGB(176, 53, 112);color: white}
    #ShowPhoneIfStart div ul li a{ color: white;}
    #ShowPhoneIfEnd{ background-color: RGB(176, 53, 112);color: white}
    #ShowPhoneIfEnd div ul li a{ color: white;background-color:RGB(176, 53, 112) }
    #ShowPhoneIfEnd,#ShowPhoneIfStart{ border: 0px;}
    #LunBoControl{ margin-top: -20px;}
    #LunBoControl{ background: linear-gradient(to left,darkmagenta, RGB(176, 53, 112));}
    #LunBoControl2{ margin-top: -20px;}
    #LunBoControl2{ background: linear-gradient(to left,RGB(234,202,223), RGB(176, 53, 112)),RGB(241,222,233);}
    .intro{font-size: 1.2em;font-family: '楷体', '宋体';font-weight: 600;color: purple}
    .ItroDuctionOfCompany{ height: 150px;overflow: hidden;word-break: break-all;font-size: 12px;}
    .JuzhongFont{ width: 100%;text-align: center;line-height: 70px;height: 70px }
    .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
    .Font_Name_English{ color: darkmagenta;font-weight: 400;font-size: 20px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
    #RowProductTypeShow img{ width: 100%;height: 200px;}
    #RowProductTypeShow .col-md-3{margin-bottom: 15px}
    #NewProductShow img{ width: 100%;height: 250px;transition: 0.7s}
    #NewProductShow img:hover{ transform: scale(1.5, 1.5);-webkit-transform: scale(1.5, 1.5);}
    .introShowWord{ font-size: 15px;font-weight: 500;font-family: ProductFontStyle;color: purple;overflow: hidden;width: 100%;height: 25px;}
    .ProductShowDiscr{ width: 100%;height: 100px;overflow:hidden}
    .DownGoumai .MeonyChar{ font-weight: 600;color: RGB(148, 30, 80);font-size: 20px;vertical-align: top;padding-left: 10px;}
    .DownGoumai .Meony{ font-weight: 700;font-size: 25px;color:RGB(148, 30, 80) }
    .DownGoumai .MeonyLastChar{ color: RGB(191,181,181); text-decoration: line-through;font-size: 15px}
    .ProjectName{ color: gainsboro;font-size: 22px;font-weight: 400;background-color: crimson;}
    .WordOfTheProduct{ color: white;font-weight: 400;font-style: italic;text-transform: uppercase;font-size: 15px;background-color: RGB(148, 30, 80) }
    .ShowIntorductiOfpROJECT{ width: 100%;height: 100px;overflow: hidden}
    .Watchlive{ width: 100%;height: 500px;}
    .Watchlive .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
    .Watchlive .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
    .Watchlive .LiveSelf{ width: 700px;margin: 30px auto}
    .Watchlive .LiveSelf a{ display: block;float: left;margin: 10px;}
    .Watchlive .LiveSelf a img{ width: 200px;height: 200px;border-radius: 50%;}
    .Watchlive .LiveSelf a img:hover{border: 2px solid red}
    /**手机样式**/
    @media only screen and (min-width: 1200px) {
        #ShowPhoneIfStart{display: none}  
        #ShowPhoneIfEnd{display: block}    
        #LunBoControl{ width: 100%;}    
        #LunBoControl2{width: 100%}
        .ItroDuctionOfCompany{ height: 100px;overflow: hidden;word-break: break-all;font-size: 12px;}
        #CompanyName{ font-size: 20px;font-family: '楷体', '宋体';font-weight: 400;color: purple;width: 100%;text-align: center }
        #myCarousel{ width: 1200px;margin: auto}    
        #myCarouse2{width: 1000px;margin: auto;height: 400px}
        #LunBoControl2 img{ width: 1000px;height: 400px}  
        .VedioList{ width: 100%;height: 600px;background-color: RGB(231, 223, 238);box-sizing: border-box}
        .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .VedioList .Vedioshelf { width: 810px;margin: auto;padding-top: 50px}
        .VedioList .Vedioshelf .LeftBox{background-image: url(FirstImage/diaoyu.png); width: 200px;float: left;height: 200px;background-color:white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .LeftBox img{opacity: 0.75;filter:alpha(opacity=75);  width: 180px;height: 180px;border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .CenterBox{background-image: url(FirstImage/yihui.png);  width: 400px;float: left;height: 400px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
        .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 380px;height: 380px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .RightBox{background-image: url(FirstImage/wenwu.png);  width:200px;float: left; height: 200px;background-color: white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .RightBox img {opacity: 0.75;filter:alpha(opacity=75); width: 180px;height: 180px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
        .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
        .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
        .VedioList .LearingMoreVedio p a{color: purple;} 
        #Watchlive{ width: 100%;height: 300px;}
        #Watchlive .row{ text-align: center;}
        #Watchlive .row  img{ width: 200px;height: 200px;border-radius: 50%}
        footer{ background-color: RGB(10, 18, 43);width: 100%; height: 300px;}
        footer .HeadColor{ height: 50px;width: 100%;background-color: RGB(144,68,117)}
        footer .TowPart{ width: 100%;background-color: white;height: 250px;}
        footer .TowPart .Left_Font{ width: 69%;height: 250px;float: left; }
        footer .TowPart .Left_Font table{width: 100%; padding: 7px;margin: auto}
        footer .TowPart .Left_Font table th{ height: 40px;line-height: 40px;margin: auto;font-size: 1.2em;font-family: '微软雅黑', '宋体';word-spacing: 2px;}
        footer .TowPart .Left_Font table tr{height: 40px;line-height: 40px;font-size: small}
        footer .TowPart .Left_Font table .TitleIntroduce{ color: RGB(114, 114, 114);font-size: small}
        footer .TowPart .Right_Picture{ width: 30%;height: 250px;float: left}
        footer .TowPart .Right_Picture .PictureOneWechat { background-color: purple;width: 200px;height: 200px;position: relative;top: 10px;right: 100px;}
        .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
        .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
        .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
        .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
        .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
        .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
        .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
        .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} /***1300px以上***/
    }
    @media only screen and (min-width:768px) and (max-width: 1199px) { 
        #ShowPhoneIfStart{display: none}  
        #ShowPhoneIfEnd{display: block}    
        #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }  
        .VedioList{ width: 100%;height: 400px;background-color: RGB(231, 223, 238);box-sizing: border-box}
        .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .VedioList .Vedioshelf { width: 680px;margin: auto;padding-top: 21px}
        .VedioList .Vedioshelf a{display: block}
        .VedioList .Vedioshelf .LeftBox{background-image: url(FirstImage/diaoyu.png); width: 180px;float: left;height: 180px;background-color:white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .LeftBox img{opacity: 0.75;filter:alpha(opacity=75);  width: 150px;height: 150px;border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .CenterBox{background-image: url(FirstImage/yihui.png);  width: 300px;float: left;height: 300px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
        .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 280px;height: 280px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .RightBox{background-image: url(FirstImage/wenwu.png);  width:180px;float: left; height: 180px;background-color: white;border-radius: 50%;border: 1px solid purple; }
        .VedioList .Vedioshelf .RightBox img {opacity: 0.75;filter:alpha(opacity=75); width: 150px;height: 150px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
        .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
        .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
        .VedioList .LearingMoreVedio p a{color: purple;} 
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
        #Watchlive{ width: 100%;height: 250px;}
        #Watchlive .row{ text-align: center;}
        #Watchlive .row  img{ width: 150px;height: 150px;border-radius: 50%}
        .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
        .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
        .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
        .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
        .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
        .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
        .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
        .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
    }
    @media only screen and (min-width: 441px) and (max-width: 767.9px) {
        #ShowPhoneIfStart{display:block}  
        #ShowPhoneIfEnd{display: none}    
        #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }      
        #RowProductTypeShow .col-md-3{ margin-bottom: 15px;margin: auto}    
        #RowProductTypeShow img{ width: 100%;height: 160px;}    
        .VedioList{ width: 100%;height: 400px;background-color: RGB(231, 223, 238);box-sizing: border-box}
        .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .VedioList .Vedioshelf { width: 100%;margin: auto;padding-top: 15px}
        .VedioList .Vedioshelf a{display: block}
        .VedioList .Vedioshelf .LeftBox{display: none}
        .VedioList .Vedioshelf .CenterBox{margin: auto; background-image: url(FirstImage/yihui.png);  width: 300px;height: 300px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
        .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 280px;height: 280px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .RightBox{display: none }
        .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
        .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
        .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
        .VedioList .LearingMoreVedio p a{color: purple;} 
        #Watchlive{ width: 100%;height: 150px;}
        #Watchlive .row{ text-align: center;}
        #Watchlive .row  img{ width: 100px;height: 100px}
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
        .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
        .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
        .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
        .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
        .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
        .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
        .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
        .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
        .ProjectName{ color: gainsboro;font-size: 15px;font-weight: 400;background-color: crimson;}
        .WordOfTheProduct{ color: white;font-weight: 400;font-style: italic;text-transform: uppercase;font-size: 8px;line-height: 10px;background-color: RGB(148, 30, 80) }
        .ShowIntorductiOfpROJECT{ width: 100%;height: 50px;overflow: hidden}
    }
    @media only screen and (min-width: 0px) and (max-width: 440px) {
        #ShowPhoneIfStart{display: block}  
        #ShowPhoneIfEnd{display: none} 
        #CompanyName{ font-size: 14px;font-family: '楷体', '宋体';font-weight: 500;color: purple;width: 100%;text-align: center }
        .Font_Name_English{ color: darkmagenta;font-weight: 400;font-size: 15px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
        #RowProductTypeShow img{ width: 100%;height: 160px;} 
        .intro{font-size: 14px;font-family: '楷体', '宋体';font-weight: 400;color: purple}
        .VedioList{ width: 100%;height: 400px;background-color: RGB(231, 223, 238);box-sizing: border-box}
        .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
        .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
        .VedioList .Vedioshelf { width: 100%;margin: auto;padding-top: 15px}
        .VedioList .Vedioshelf a{display: block}
        .VedioList .Vedioshelf .LeftBox{display: none}
        .VedioList .Vedioshelf .CenterBox{margin: auto; background-image: url(FirstImage/yihui.png);  width: 300px;height: 300px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
        .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 280px;height: 280px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
        .VedioList .Vedioshelf .RightBox{display: none }
        .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
        .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
        .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
        .VedioList .LearingMoreVedio p a{color: purple;} 
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
        #Watchlive{ width: 100%;height: 150px;}
        #Watchlive .row{ text-align: center;}
        #Watchlive .row  img{ width: 100%;height: 80px;border-radius: 50%;}
        .ProjectName{ color: gainsboro;font-size: 12px;font-weight: 400;background-color: crimson;}
        .WordOfTheProduct{ display: none; }
        .ShowIntorductiOfpROJECT{ width: 100%;height: 50px;overflow: hidden}
    }
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
                        <li class="active"><a href="#">主页</a></li>
                        <li><a href="#">产品分类</a></li>
                        <li><a href="#">新品预告</a></li>
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
                        <li class="active"><a href="#">主页</a></li>
                        <li><a href="#">产品分类</a></li>
                        <li><a href="#">新品预告</a></li>
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
                <img  src="../FirstImage/1.jpg"  alt="First slide">
                <div class="carousel-caption" style="color: #000000;">标题 1</div>
            </div>
            <div class="item">
                <img src="../FirstImage/2.jpg" alt="Second slide">
                <div class="carousel-caption" style="color: #000000;" >标题 2</div>
            </div>
            <div class="item">
                <img src="../FirstImage/3.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" >标题 3</div>
            </div>
            <div class="item">
                <img src="../FirstImage/4.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" >标题 4</div>
            </div>
            <div class="item">
                <img src="../FirstImage/5.jpg" alt="Third slide">
                <div class="carousel-caption" style="color: #000000;" >标题 4</div>
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
        <div class="col-md-12"><h2 class="h2" id="CompanyName" >四川创造门高新技术开发有限公司</h2></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p class="ItroDuctionOfCompany">
                <span class="intro">【公司简介】</span>四川创造门高新技术开发有限公司是致力于各种创新产品研发的实体机构，目前已经推出多项专利创新产品，并已获人们广泛认同
                我们还会不断研发更多创新产品推向市场，为人类社会的发展做出贡献！创造改变命运！创造改变未来！我们吸纳各种创新人才成为我们的合作伙伴
                ，为全人类服务，为有创造梦想的人服务，走进创造门，函授创造，拥有创造，参与创造，创造门与你同在！
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
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <figure>
                            <a href="../UserPage/UserNewProductShow.aspx"><img src='<%#Eval("TypePicture")%>' ></a>                 
                            <figcaption><span class="intro"><a href="../UserPage/UserNewProductShow.aspx" style="color: purple; font-size: 18px; font-weight: 400;">[<%#Eval("typeName_c")%>]</span></a></figcaption>
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
                            <a href=<%#Eval("taobaoUrl")%> ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                            <figcaption>
                                <p class="introShowWord"><span style="font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_c")%>]</span></p>
                                <p class="DownGoumai">
                                    <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                    <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server"  CssClass="btn btn-primary btn-danger" NavigateUrl='<%#Eval("taobaoUrl")%>'>购买</asp:HyperLink></span>
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
            <div class="LeftBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
            <div class="CenterBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
            <div class="RightBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
        </div>   
        <br/>
        <div class="LearingMoreVedio">
            <p><a href="javascript:void(0)">观看更多</a></p>
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
        <span class="Font_Name_English">项目展示</span>
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
                <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                <div class="carousel-caption" style="color: #000000;">
                    <p class="ShowIntorductiOfpROJECT">
                        <span class="ProjectName">[等离子流体项目]</span><br/>
                        <span class="WordOfTheProduct">后母戊鼎因鼎腹内壁上铸有“后母戊”三字得名，鼎呈长方形，口长112厘米、口宽79.2厘米，壁厚6厘米，连耳高133厘米，重达832.84公斤。鼎身雷纹为地，四周浮雕刻出盘龙及饕餮纹样，反映了中国青铜铸造的超高工艺和艺术水平。</span>
                    </p>
                </div>
            </div>
            <div class="item">
                <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                <div class="carousel-caption" style="color: #000000;">
                    <p class="ShowIntorductiOfpROJECT">
                        <span class="ProjectName">[等离子流体项目]</span><br/>
                        <span class="WordOfTheProduct">后母戊鼎因鼎腹内壁上铸有“后母戊”三字得名，鼎呈长方形，口长112厘米、口宽79.2厘米，壁厚6厘米，连耳高133厘米，重达832.84公斤。鼎身雷纹为地，四周浮雕刻出盘龙及饕餮纹样，反映了中国青铜铸造的超高工艺和艺术水平。</span>
                    </p>
                </div>
            </div>
            <div class="item">
                <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                <div class="carousel-caption" style="color: #000000;">
                    <p class="ShowIntorductiOfpROJECT">
                        <span class="ProjectName">[等离子流体项目]</span><br/>
                        <span class="WordOfTheProduct">后母戊鼎因鼎腹内壁上铸有“后母戊”三字得名，鼎呈长方形，口长112厘米、口宽79.2厘米，壁厚6厘米，连耳高133厘米，重达832.84公斤。鼎身雷纹为地，四周浮雕刻出盘龙及饕餮纹样，反映了中国青铜铸造的超高工艺和艺术水平。</span>
                    </p>
                </div>
            </div>
            <div class="item">
                <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                <div class="carousel-caption" style="color: #000000;">
                    <p class="ShowIntorductiOfpROJECT">
                        <span class="ProjectName">[等离子流体项目]</span><br/>
                        <span class="WordOfTheProduct">后母戊鼎因鼎腹内壁上铸有“后母戊”三字得名，鼎呈长方形，口长112厘米、口宽79.2厘米，壁厚6厘米，连耳高133厘米，重达832.84公斤。鼎身雷纹为地，四周浮雕刻出盘龙及饕餮纹样，反映了中国青铜铸造的超高工艺和艺术水平。</span>
                    </p>
                </div>
            </div>
            <div class="item">
                <a href="#"><img  src="../FirstImage/1.jpg"  alt="First slide"></a>
                <div class="carousel-caption" style="color: #000000;">
                    <p class="ShowIntorductiOfpROJECT">
                        <span class="ProjectName">[等离子流体项目]</span><br/>
                        <span class="WordOfTheProduct">后母戊鼎因鼎腹内壁上铸有“后母戊”三字得名，鼎呈长方形，口长112厘米、口宽79.2厘米，壁厚6厘米，连耳高133厘米，重达832.84公斤。鼎身雷纹为地，四周浮雕刻出盘龙及饕餮纹样，反映了中国青铜铸造的超高工艺和艺术水平。</span>
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
        <h1><b>投资记录</b></h1>
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
                        <asp:Label ID="lblIntro" runat="server" Text="[ 简介 ]此公司成立于2017年，致力于渔业产品，各类产品的发展推广,例如洗鞋袜，文物收藏，医疗保健！欢迎与我们交流！合作！" Width="90%"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblAbotUs" runat="server" Text="公司简介"></asp:Label> 
                    </td>
                    <td align="center">
                        <asp:Label ID="LBLHEZUO" runat="server" Text="合作投资"></asp:Label>  
                    </td>
                    <td align="center">
                        <asp:Label ID="lblConmnite" runat="server" Text="交流空间"></asp:Label>
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
        <div class="Right_Picture col-md-4">
            <div class="PictureOneWechat">
            </div>
        </div>
    </div>
</footer>
<!--咨询-->
<div class="JiaoBen" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ服务</a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：15698259380|企业邮箱:chuangzaomen@163.com|热线电话：15826121
        <a href="../BackendManage/AdminLogin.aspx">管理员</a>

    </p>
</div>
</form>
