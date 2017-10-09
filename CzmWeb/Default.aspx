<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<%@ Register Src="~/Common/wuc_ListPager.ascx" TagPrefix="uc1" TagName="wuc_ListPager" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none;}
        /***********************************************1300px以上*************************************************************************/
         @media only screen and (min-width:1300px) {
             .PhoneImg{ width: 30px;height: 30px;padding-top: 10px;display: none}
             .PhoneHead{display:none}
             .Head{ width: 100%;background-color: RGB(176, 53, 112);height: 60px;display: block}
             .Head .logo{ width: 20%;height: 60px;line-height: 60px;float: left}
             .Head .logo i{ color: RGB(232,105,170);font-weight: bold;font-size: 280%;font-style: italic;line-height: 60px;height: 60px;width: 100%;text-align: center;display: block}
             .Head .Nav{ width: 60%;height: 60px;line-height: 60px;float:left;}
             .Head .Nav ul{ width: 100%;line-height: 60px;height: 60px;list-style: none;}
             .Head .Nav ul li{margin-left: 10px;text-align: left;float: left;color: grey;}
             .Head .Nav ul li:hover{ color: red;font-size: 0.6em;cursor: pointer;border-top: 2px solid white;}
             .Head .Nav ul li a{ text-decoration: none;color: grey;}
             .Head .Nav ul li a img{ visibility: hidden;display: none}
             .Head .NavPhone{ display: none;}
             .Head .Login_ACE{ width: 20%;line-height: 60px;height: 60px;float: left}
             .FontColor{ color: RGB(255, 255, 255);font-size: 0.8em;}
             .FontColor:hover{color: gainsboro;font-size: 0.8em;cursor: pointer;}
             .Head .Login_ACE ul{ list-style: none;height: 60px}
             .Head .Login_ACE ul li{ width: 48%;height: 60px;text-align: center;float: left;}
             .Head .Login_ACE ul li .transfer{ width: 49%;text-decoration: none;color: white;float: left}
             .Head .Login_ACE ul li .transfer:hover{ color: gainsboro;border-top: 2px solid white;}
             .Head .Login_ACE ul li a{ width: 100%;height: 60px;display: block}
             .Head .Login_ACE ul li img{ width: 40px;height: 40px;padding-top:5px;}
             .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
             .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
             .Head .Login_ACE ul li ul li{background-color:gainsboro;width: 100%;color: white;}
             .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
             .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
             .Head .Login_ACE ul li:hover img{ padding-top: 0px;width: 50px;height: 50px;}
             #containter { overflow: hidden; width: 1200px;height: 535px;position: relative;z-index: 1;margin: 0px auto;z-index: 1;}
             #ilist{width: 6000px;height: 535px;position: absolute;z-index: 1;left: 0px;}
             #ilist img{float: left;z-index: 1;}
             #buttons {position: absolute;height: 10px;width: 160px;z-index: 2; bottom: 20px;left: 48%;}
             #buttons span{cursor: pointer;float: left;border: 1px solid #FFFDEF;width: 14px; height: 14px;border-radius: 50%;background: #333333;margin-right: 5px;}
             #buttons .on{background: orangered;}
             .Onlist{background-color: white;}
             .arrow{cursor: pointer;display: none;line-height: 40px;text-align: center;font-size: 36px;font-weight: bold;width: 80px;height: 80px;position: absolute;z-index: 2;top: 180px;background-color: rgba(0,0,0,0.3);}
             .arrow:hover{background-color: rgba(0,0,0,0.7);}
             #containter:hover .arrow{display: block;}
             #prev{left: 20px;z-index: 5;display: block;}
             #next{right: 20px;z-index: 5;display: block;}
             .lunboSection{ width: 100%;height: 535px;background: linear-gradient(darkmagenta, RGB(176, 53, 112));}
             .lunboSection .Font_ont{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(64deg);}
             .lunboSection .Font_tot{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(-152deg);right: 10%;}
             .CompanyIntroDuce{ width: 100%;height: 200px}
             .CompanyIntroDuce .CompnyName{ font-family: '华文楷体';height: 80px;line-height: 80px}
             .CompanyIntroDuce p{ width: 60%;margin: 0 auto}
             .CompanyIntroDuce p .Intro{ font-size: 1.2em;font-family: '楷体', '宋体';font-weight: 600;color: purple }
             .ProdecutShow{ width: 100%;height: 400px;}
             .ProdecutShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
             .ProdecutShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
             .ProdecutShow .ProductImg{ width: 1300px;margin: auto;}
             .ProdecutShow .ProductImg  .heheda{position: relative; width: 320px;height: 225px;float: left;margin-right: 5px; }
             .ProdecutShow .ProductImg  .heheda:hover{ transform: scale(1.1, 1.1);-webkie-transform: scale(1.1, 1.1);}
             .ProdecutShow .ProductImg  .heheda:hover img{ box-shadow: 2px 2px 2px 2px slategrey;}
             .ProdecutShow .ProductImg  .heheda img{ position: absolute;top: 0px;left: 10px;z-index: 2;}
             .ProdecutShow .ProductImg  .heheda h2{top: 20px; z-index: 3; position: absolute;width: 25px;height: 120px;background: -webkit-linear-gradient(right,RGB(111,41,104),RGB(111,41,104),RGB(68,7,66));
                 background: -o-linear-gradient(right, RGB(176, 53, 112),RGB(82, 18, 87));
                 background: linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                 background: -moz-linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                 color: white;font-weight: 400;font-size: 16px;text-align: center;padding-top: 30px;font-family: '楷体','宋体' }
             .Font_Name_English{ color: darkmagenta;font-weight: 900;font-size: 16px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
             .NewProductShow{width: 100%;height: 500px;}
             .NewProductShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
             .NewProductShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
             .NewProductShow .ListProduct{ width: 1220px;margin: auto;}
             .NewProductShow .ListProduct .newproductList{ width: 400px;height: 360px; position: relative;float: left;top: 0px;left: 0px; }
             .NewProductShow .ListProduct .newproductList:hover {transform: translate(10px,10px); }
             .NewProductShow .ListProduct .newproductList .UpRectangle{ width: 10%;height: 10%;border-left: 1px solid grey;border-top: 1px solid grey;transition: 3s}
             .NewProductShow .ListProduct .newproductList .Rectangle{ width:80% ;height: 58%;margin: auto;background-color:RGB(228,143,184) }
             .NewProductShow .ListProduct .newproductList .DownRectangle{ width: 10%;height: 10%;position: absolute;bottom: 0px; right: 0px;border-bottom: 1px solid grey;border-right: 1px solid grey;}
             .NewProductShow .ListProduct .newproductList .IntroDuction{ position: absolute;bottom: 10%; height: 20%;width: 100%}
             .NewProductShow .ListProduct .newproductList .IntroDuction input{font-size: 25px;font-family: '楷体';  width: 100px;height: 30px;line-height: 30px; position: absolute;right: 5%;top: 0px;color: white;background-color: RGB(105, 17, 75);border:2px solid RGB(105, 17, 75)  }
             .LearnMoreProduct{ width: 100%;height: 150px}
             .LearnMoreProduct a{display: block;margin-top: 50%;width: 300px;height: 150px;line-height: 150px; margin: auto;font-size: 30px;font-weight: 600;text-align: center;color:RGB(126,0,84) }
             .LearnMoreProduct a:hover{ font-size: 40px;text-shadow: 2px 2px 2px saddlebrown}
             .ProductIntrpDuction{ font-family: '华文楷体', '楷体', '微软雅黑','宋体'; color: RGB(188, 182, 184);font-size: 1em}
             .VedioList{ width: 100%;height: 610px;background-color: RGB(231, 223, 238);box-sizing: border-box}
             .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
             .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
             .VedioList .Vedioshelf { width: 810px;margin: auto;}
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
             .Watchlive{ width: 100%;height: 500px;}
             .Watchlive .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
             .Watchlive .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
             .Watchlive .LiveSelf{ width: 700px;margin: 30px auto}
             .Watchlive .LiveSelf a{ display: block;float: left;margin: 10px;}
             .Watchlive .LiveSelf a img{ width: 200px;height: 200px;border-radius: 50%;}
             .ProjectShow{ width: 100%;}
             .ProjectShow .ProjectTitle{ background-color: RGB(62, 14, 88);text-align: center;line-height: 30px;height: 30px;color: white;font-weight: 600;}
             .InvertMan{ width: 100%;margin: 0 auto;height: 500px;}
             .InvertMan .right{ width: 30%;height: 500px;float: left;background-color: #fffdef}
             .InvertMan .right .ProjectSelf{ margin: auto;width: 420px;height: 500px;overflow: auto;}
             .InvertMan .right .ProjectSelf .VideoShow{position: relative;width: 400px;height: 400px;float: left;} 
             .InvertMan .right .ProjectSelf .VideoShow:hover .OpcityHtml{ width: 400px;background-color: black} 
             .InvertMan .right .ProjectSelf .VideoShow:hover .IntroDucation{ width: 400px;height: 400px}
             .InvertMan .right .ProjectSelf .VideoShow .imgShow img{ width: 100%;height: 400px;}
             .InvertMan .right .ProjectSelf .VideoShow .OpcityHtml{position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;opacity: 0.3;filter: alpha(opacity=30);transition: 1s; -moz-transition: 1s;}
             .InvertMan .right .ProjectSelf .VideoShow .IntroDucation{ position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;overflow: hidden;transition: 1s;-moz-transition: 1s; }
             .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title{color: white;font-weight: bold;}
             .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title p{ border:1px solid black;background-color: purple; margin:auto;margin-bottom: 30px;margin-top: 100px; width: 140px;text-align: center;height: 40px;line-height: 40px;}
             .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations{ color: white;font-size: medium;font-weight: bold}
             .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations p{ width: 400px; }
             .InvertMan .center{ width: 70%;float: left;height: 500px;overflow: auto}
             .InvertMan .center .ShowInvertDw{ width: 100%;height: 40px;line-height: 40px;color: darkblue;text-indent: 10%;}
             .InvertMan .center .ShowInvertDw .750px{ color:RGB(229,9,87) ;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体';font-size: 1.2em}
             .InvertMan .center .ShowInvertDw .spanXm{ color: purple;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体'; }
             .InvertMan .center .ShowInvertDw .date{ font-weight: 200;font-size: 0.9em;color: gray}
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
             .JiaoBen{ width: 100%;height: 50px;line-height: 50px;font-size: small;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);text-align: center;background-color:RGB(10, 18, 43) }
             .JiaoBen a{color: cornflowerblue}
             .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
             .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
             .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
             .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
             .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
             .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
             .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
             .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} /***1300px以上***/
         }
        /***********************************************768~1300px以内*********************************************************************/
         @media only screen and (max-width:1299.9px )and (min-width:768px) {
            .PhoneImg{ width: 30px;height: 30px;padding-top: 10px;display: none}
            .PhoneHead{display:none}
            .Head{ width: 100%;background-color: RGB(176, 53, 112);height: 60px;display: block;visibility:visible}
            .Head .logo{ width: 10%;height: 60px;line-height: 60px;float: left}
            .Head .logo i{ color: RGB(232,105,170);font-weight: bold;font-size: 1.3em;font-style: italic;line-height: 60px;height: 60px;width: 100%;text-align: center;display: block}
            .Head .Nav{ width: 70%;height: 60px;line-height: 60px;float:left;}
            .Head .Nav ul{ width: 100%;line-height: 60px;height: 60px;list-style: none;}
            .Head .Nav ul li{text-align: center;float: left;color: grey;margin-left: 10px}
            .Head .Nav ul li a{ text-decoration: none;color: grey;}
            .Head .NavPhone{ display: none;}
            .Head .Login_ACE{ width: 20%;line-height: 60px;height: 60px;float: left}
            .FontColor{ color: RGB(255, 255, 255);font-size: 5px}
            .FontColor:hover{color: gainsboro;font-size: 5px;cursor: pointer;}
            .Head .Login_ACE ul{ list-style: none;height: 60px;}
            .Head .Login_ACE ul li{ width: 48%;height: 60px;text-align: center;float: left;}
            .Head .Login_ACE ul li .transfer{ width: 48%;text-decoration: none;color: white;float: left;font-size: small}
            .Head .Login_ACE ul li a{ width: 100%;height: 60px;display: block}
            .Head .Login_ACE ul li img{ width: 25px;height: 25px;padding-top: 19px}
            .Head .Login_ACE ul li ul{width: 0%;color: white;border: none;transition: 0.8s;-o-transition: 0.8s; color: white;}
            .Head .Login_ACE ul li ul li a{text-decoration: none; color: white;}
            .Head .Login_ACE ul li ul li{background-color:gainsboro;width: 100%;color: white;}
            .Head .Login_ACE ul li ul li:hover{ color: gainsboro;}
            .Head .Login_ACE ul li ul li .userL:hover{ background-color: darkmagenta;font-weight: 500;}
            .Head .Login_ACE ul li:hover img{ padding-top: 0px;width: 30px;height: 30px;}
            #containter { overflow: hidden; width: 750px;height: 332px;position: relative;z-index: 1;margin: 0px auto;z-index: 1;}
            #ilist{width: 3750px;height: 332px;position: absolute;z-index: 1;left: 0px;}
            #ilist img{float: left;z-index: 1;width: 750px;height: 332px}
            #buttons {position: absolute;height: 10px;width: 160px;z-index: 2; bottom: 20px;left: 48%;}
            #buttons span{cursor: pointer;float: left;border: 1px solid #FFFDEF;width: 14px; height: 14px;border-radius: 50%;background: #333333;margin-right: 5px;}
            #buttons .on{background: orangered;}
            .Onlist{background-color: white;}
            .arrow{cursor: pointer;display: none;line-height: 40px;tesxt-align: center;font-size: 36px;font-weight: bold;width: 50px;height: 50px;position: absolute;z-index: 2;top: 100px;background-color: rgba(0,0,0,0.3);}
            .arrow:hover{background-color: rgba(0,0,0,0.7);}
            .arrow img{ width: 50px;height: 50px}
            #containter:hover .arrow{display: block;}
            #prev{left: 20px;z-index: 5;display: block;}
            #next{right: 20px;z-index: 5;display: block;}
            .lunboSection{ width: 100%;height: 332px;background: linear-gradient(darkmagenta, RGB(176, 53, 112));}
            .lunboSection .Font_ont{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(64deg);}
            .lunboSection .Font_tot{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(-152deg);right: 10%;}  
            .CompanyIntroDuce { height: 150px;margin-top: 20px}
            .CompanyIntroDuce p{ width: 80%;margin: 0 auto}
            .CompanyIntroDuce p .jianjie{font-size: 0.6em}
            .CompanyIntroDuce .CompnyName{font-size: 1em}
            .ProdecutShow{ width: 100%;height: 770px;}
            .ProdecutShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .ProdecutShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .ProdecutShow .ProductImg{ width: 80%;margin: auto;}
            .ProdecutShow .ProductImg  .heheda{margin: 5px;position: relative; width: 45%;height: 280px;float: left;text-align: center}
            .ProdecutShow .ProductImg  .heheda img{ position: absolute;top: 0px;left: 10px;z-index: 2;width: 100%;height: 280px;}
            .ProdecutShow .ProductImg  .heheda h2{top: 20px; z-index: 3; position: absolute;width: 25px;height: 120px;background: -webkit-linear-gradient(right,RGB(111,41,104),RGB(111,41,104),RGB(68,7,66));
                background: -o-linear-gradient(right, RGB(176, 53, 112),RGB(82, 18, 87));
                background: linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                background: -moz-linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                color: white;font-weight: 400;font-size: 16px;text-align: center;padding-top: 30px;font-family: '楷体','宋体' }
            .Font_Name_English{ color: darkmagenta;font-weight: 900;font-size: 16px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
            .NewProductShow{width: 100%;height: 650px;}
            .NewProductShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .NewProductShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .NewProductShow .ListProduct{ width: 100%;margin: auto;}
            .NewProductShow .ListProduct .newproductList{ width: 33%;height: 450px; position: relative;float: left;top: 0px;left: 0px; }
            .NewProductShow .ListProduct .newproductList .UpRectangle{ width: 10%;height: 10%;border-left: 1px solid grey;border-top: 1px solid grey;transition: 3s}
            .NewProductShow .ListProduct .newproductList .Rectangle{ width:80% ;height: 200px;margin: auto;background-color:RGB(228,143,184) }
            .NewProductShow .ListProduct .newproductList .DownRectangle{ width: 10%;height: 10%;position: absolute;bottom: 0px; right: 0px;border-bottom: 1px solid grey;border-right: 1px solid grey;}
            .NewProductShow .ListProduct .newproductList .IntroDuction{ position: absolute;bottom: 10%; height: 20%;width: 100%}
            .NewProductShow .ListProduct .newproductList .IntroDuction input{font-size: 18px;font-family: '楷体';  width: 80px;height: 30px;line-height: 30px; position: absolute;right: 5%;top: 0px;color: white;background-color: RGB(105, 17, 75);border:2px solid RGB(105, 17, 75)  }
            .LearnMoreProduct{ width: 100%;height: 150px}
            .LearnMoreProduct a{display: block;margin-top: 50%;width: 300px;height: 150px;line-height: 150px; margin: auto;font-size: 30px;font-weight: 600;text-align: center;color:RGB(126,0,84) }
            .LearnMoreProduct a:hover{ font-size: 40px;text-shadow: 2px 2px 2px saddlebrown}
            .ProductIntrpDuction{ font-family: '华文楷体', '楷体', '微软雅黑','宋体'; color: RGB(188, 182, 184);font-size: 0.7em}
            .VedioList{ width: 100%;height: 610px;background-color: RGB(231, 223, 238);box-sizing: border-box}
            .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .VedioList .Vedioshelf { width: 680px;margin: auto;}
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
            .Watchlive{ width: 100%;height: 500px;}
            .Watchlive .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .Watchlive .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .Watchlive .LiveSelf{ width: 700px;margin: 30px auto}
            .Watchlive .LiveSelf a{ display: block;float: left;margin: 10px;}
            .Watchlive .LiveSelf a img{ width: 200px;height: 200px;border-radius: 50%;}
            .ProjectShow{ width: 100%;}
            .ProjectShow .ProjectTitle{ background-color: RGB(62, 14, 88);text-align: center;line-height: 30px;height: 30px;color: white;font-weight: 600;}
            .InvertMan{ width: 100%;margin: 0 auto;height: 500px;}
            .InvertMan .right{ width: 50%;height: 500px;float: left;background-color: #fffdef}
            .InvertMan .right .ProjectSelf{ margin: auto;width: 100%;height: 500px;overflow: auto;}
            .InvertMan .right .ProjectSelf .VideoShow{position: relative;width: 400px;height: 400px;float: left;} 
            .InvertMan .right .ProjectSelf .VideoShow:hover .OpcityHtml{ width: 400px;background-color: black} 
            .InvertMan .right .ProjectSelf .VideoShow:hover .IntroDucation{ width: 400px;height: 400px}
            .InvertMan .right .ProjectSelf .VideoShow .imgShow img{ width: 100%;height: 400px;}
            .InvertMan .right .ProjectSelf .VideoShow .OpcityHtml{position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;opacity: 0.3;filter: alpha(opacity=30);transition: 1s; -moz-transition: 1s;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation{ position: absolute;top: 0px;height: 0px;  width: 0px;height: 400px;overflow: hidden;transition: 1s;-moz-transition: 1s; }
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title{color: white;font-weight: bold;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title p{ border:1px solid black;background-color: purple; margin:auto;margin-bottom: 30px;margin-top: 100px; width: 140px;text-align: center;height: 40px;line-height: 40px;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations{ color: white;font-size: medium;font-weight: bold}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations p{ width: 400px; }
            .InvertMan .center{ width: 50%;float: left;height: 500px;overflow: auto}
            .InvertMan .center .ShowInvertDw{font-size: 0.5em; width: 100%;height: 40px;color: darkblue;text-indent: 10%;}
            .InvertMan .center .ShowInvertDw .750px{ color:RGB(229,9,87) ;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体';font-size:0.9em}
            .InvertMan .center .ShowInvertDw .spanXm{ color: purple;font-weight: 500;font-family: '华文楷体', '微软雅黑', '宋体'; }
            .InvertMan .center .ShowInvertDw .date{ font-weight: 200;font-size: 0.3em;color: gray}
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
            .JiaoBen{ width: 100%;height: 90px;font-size: small;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);text-align: center;background-color:RGB(10, 18, 43) }
            .JiaoBen a{color: cornflowerblue}
            .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
        }
         /***********************************************767以下主要适配手机****************************************************************/
         /*实质是宽度400多为中大屏幕手机主要分辨率适配参考iphone6 plus以上*/
         @media only screen and (min-width:0px )and (max-width:767px) {
            *{padding: 0px;margin: 0px;text-decoration: none;}
            .PhoneHead{z-index: 100000000000; position: fixed;top: 0px;left: 0px;display: block;height: 50px;width: 100%;background: linear-gradient(to left, purple, RGB(176, 53, 112));border-bottom:gray 2px solid}
            .PhoneHead .headerTtile{ width: 100%;}
            .PhoneHead .headerTtile .left .transfer{color: white}
            .PhoneHead .headerTtile .left{ width: 20%;float: left;height: 50px;}
            .PhoneHead .headerTtile .left span{text-indent: 15px; display: block;color: RGB(232,105,170);font-weight: bold;font-size: 1em;font-style: italic;line-height:50px;height: 50px;text-align: left;}
            .PhoneHead .headerTtile .center{text-indent: 20px; width: 48%;float: left;}
            .PhoneHead .headerTtile .center .cents{ height: 50px;line-height: 50px;color: white;font-weight: bold}
            .PhoneHead .headerTtile .right{ width: 30%;float: left;height: 50px;position: relative}
            .PhoneHead .headerTtile .right a{display: block; position: absolute;top: 0px;right: 5px}
            .Head{display: none;background-color: white;color: #333333;position: fixed;top: 52px;color: #333333;width: 100%}
            .Head .logo{display: none}
            .Head .Nav ul li{ border-bottom: 1px solid black;height: 45px;line-height: 45px;text-indent: 30px;color: #333333;}
            .Head .NavPhone{ display: block;}
            .Head .NavPhone ul li{ border-bottom: 1px solid black;height: 45px;line-height: 45px;text-indent: 30px;color: #333333}
            .Head .Login_ACE{display: none}
            .PhoneImg{ width: 30px;height: 30px;padding-top: 15px;}
            .FontColor{ color: #333333;font-size: 0.6em;font-weight: bold}
            #containter { overflow: hidden; width: 350px;height: 156px;position: relative;z-index: 1;margin: 0px auto;z-index: 1;}
            #ilist{width: 1750px;height: 156px;position: absolute;z-index: 1;left: 0px;}
            #ilist img{float: left;z-index: 1;width: 350px;height: 156px}
            #buttons {position: absolute;height: 10px;width: 160px;z-index: 2; bottom: 20px;left: 48%;}
            #buttons span{cursor: pointer;float: left;border: 1px solid #FFFDEF;width: 6px; height: 6px;border-radius: 50%;background: #333333;margin-right: 2px;}
            #buttons .on{background: orangered;}
            .Onlist{background-color: white;}
            .arrow{cursor: pointer;display: none;line-height: 30px;text-align: center;font-size: 36px;font-weight: bold;width: 30px;height: 30px;position: absolute;z-index: 2;top: 80px;background-color: rgba(0,0,0,0.3);}
            .arrow:hover{background-color: rgba(0,0,0,0.7);}
            .arrow img{ width: 30px;height: 30px}
            #containter:hover .arrow{display: block;}
            #prev{left: 20px;z-index: 5;display: block;}
            #next{right: 20px;z-index: 5;display: block;}
            .lunboSection{position: relative ;top: 51px; width: 100%;height: 156px;background: linear-gradient(darkmagenta, RGB(176, 53, 112));}
            .lunboSection .Font_ont{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(64deg);}
            .lunboSection .Font_tot{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(-152deg);right: 10%;}  
            .CompanyIntroDuce { height: 370px;margin-top: 60px;}
            .CompanyIntroDuce p{ width: 80%;margin: 0 auto}
            .CompanyIntroDuce p .Intro{color: purple;font-weight: 400}
            .CompanyIntroDuce p .jianjie{ font-size: 0.6em;}
            .CompanyIntroDuce .CompnyName{ font-size: 1.2em;font-family: '华文楷体','楷体','微软雅黑'}
            .ProdecutShow{ width: 100%;height: 1200px;}
            .ProdecutShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .ProdecutShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .ProdecutShow .ProductImg{ width: 80%;margin: auto;}
            .ProdecutShow .ProductImg  .heheda{margin: 5px;position: relative; width: 100%;height: 280px;float: left;text-align: center}
            .ProdecutShow .ProductImg  .heheda img{ position: absolute;top: 0px;left: 10px;z-index: 2;width: 100%;height: 280px;}
            .ProdecutShow .ProductImg  .heheda h2{top: 20px; z-index: 3; position: absolute;width: 25px;height: 120px;background: -webkit-linear-gradient(right,RGB(111,41,104),RGB(111,41,104),RGB(68,7,66));
                background: -o-linear-gradient(right, RGB(176, 53, 112),RGB(82, 18, 87));
                background: linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                background: -moz-linear-gradient(right, RGB(176, 53, 112), RGB(82, 18, 87));
                color: white;font-weight: 400;font-size: 16px;text-align: center;padding-top: 30px;font-family: '楷体','宋体' }
            .Font_Name_English{ color: darkmagenta;font-weight: 900;font-size: 16px; text-align: center;padding-left: 10px;letter-spacing: 1px;word-spacing: 3px; }
            .NewProductShow{z-index: 10; width: 100%;height: 1500px;margin-top: 170px}
            .NewProductShow .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .NewProductShow .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .NewProductShow .ListProduct{ width: 100%;margin: auto;}
            .NewProductShow .ListProduct .newproductList{ width: 100%;height: 450px; position: relative;float: left;top: 0px;left: 0px; }
            .NewProductShow .ListProduct .newproductList .UpRectangle{ width: 10%;height: 10%;border-left: 1px solid grey;border-top: 1px solid grey;transition: 3s}
            .NewProductShow .ListProduct .newproductList .Rectangle{ width:80% ;height: 200px;margin: auto;background-color:RGB(228,143,184) }
            .NewProductShow .ListProduct .newproductList .DownRectangle{ width: 10%;height: 10%;position: absolute;bottom: 0px; right: 0px;border-bottom: 1px solid grey;border-right: 1px solid grey;}
            .NewProductShow .ListProduct .newproductList .IntroDuction{ position: absolute;bottom: 10%; height: 20%;width: 100%}
            .NewProductShow .ListProduct .newproductList .IntroDuction input{font-size: 18px;font-family: '楷体';  width: 80px;height: 30px;line-height: 30px; position: absolute;right: 5%;top: 0px;color: white;background-color: RGB(105, 17, 75);border:2px solid RGB(105, 17, 75)  }
            .LearnMoreProduct{ width: 100%;height: 150px}
            .LearnMoreProduct a{display: block;margin-top: 50%;width: 300px;height: 150px;line-height: 150px; margin: auto;font-size: 30px;font-weight: 600;text-align: center;color:RGB(126,0,84) }
            .ProductIntrpDuction{ font-family: '华文楷体', '楷体', '微软雅黑','宋体'; color: RGB(188, 182, 184);font-size: 0.7em}
            .VedioList{ width: 100%;height: 550px;background-color: RGB(231, 223, 238);box-sizing: border-box}
            .VedioList .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .VedioList .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .VedioList .Vedioshelf { width: 100%;margin: auto;}
            .VedioList .Vedioshelf a{display: block}
            .VedioList .Vedioshelf .LeftBox{display: none}
            .VedioList .Vedioshelf .CenterBox{margin: auto; background-image: url(FirstImage/yihui.png);  width: 300px;height: 300px;background-color:white;border-radius: 50%;border: 1px solid purple;  }
            .VedioList .Vedioshelf .CenterBox img {opacity: 0.75;filter:alpha(opacity=75); width: 280px;height: 280px; border-radius: 50%;border: 1px solid plum;margin: 10px;}
            .VedioList .Vedioshelf .RightBox{display: none }
            .VedioList .Vedioshelf::after{ content: "";display: block;clear: both}
            .VedioList .LearingMoreVedio{ width: 100%;height: 30px;position: relative;}
            .VedioList .LearingMoreVedio p{font-size: 1.2em; text-align: center;position: absolute;right: 20%;  width: 150px;height: 30px;line-height: 30px; border: solid 1px grey;font-weight: 600; background-color: white;}
            .VedioList .LearingMoreVedio p a{color: purple;} 
            .Watchlive{ width: 100%;height: 350px;}
            .Watchlive .JuzhongFont{ width: 100%;text-align: center;line-height: 150px;height: 150px }
            .Watchlive .JuzhongFont .productFont{ font-size: 1.5em;font-weight: 600;}
            .Watchlive .LiveSelf{ width: 700px;margin: 30px auto}
            .Watchlive .LiveSelf a{ display: block;float: left;margin-left: 20px}
            .Watchlive .LiveSelf a img{ width: 110px;height: 110px;border-radius: 50%;}
            .ProjectShow{ width: 100%;}
            .ProjectShow .ProjectTitle{ background-color: RGB(62, 14, 88);text-align: center;line-height: 30px;height: 30px;color: white;font-weight: 600;}
            .InvertMan{ width: 100%;margin: 0 auto;height: 560px;}
            .InvertMan .right{ width: 100%;height: 400px;float: left;background-color: #fffdef}
            .InvertMan .right .ProjectSelf{ margin: auto;width: 100%;height: 400px;overflow: auto;}
            .InvertMan .right .ProjectSelf .VideoShow{position: relative;width: 400px;height: 400px;float: left;} 
            .InvertMan .right .ProjectSelf .VideoShow .imgShow img{ width: 100%;height: 400px;}
            .InvertMan .right .ProjectSelf .VideoShow .OpcityHtml{background-color: black;position: absolute;top: 0px;height: 0px; width: 400px;height: 400px;opacity: 0.3;filter: alpha(opacity=30);transition: 1s; -moz-transition: 1s;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation{ position: absolute;top: 0px;height: 0px;  width: 400px;height: 400px;overflow: hidden;transition: 1s;-moz-transition: 1s; }
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title{color: white;font-weight: bold;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Title p{ border:1px solid black;background-color: purple; margin:auto;margin-bottom: 30px;margin-top: 100px; width: 140px;text-align: center;height: 40px;line-height: 40px;}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations{ color: white;font-size: medium;font-weight: bold}
            .InvertMan .right .ProjectSelf .VideoShow .IntroDucation .Informations p{ width: 400px; }
            .InvertMan .center{ width: 100%;float: left;height: 150px;overflow: auto}
            .InvertMan .center .ShowInvertDw{font-size: 0.5em; width: 100%;height: 40px;color: darkblue;text-indent: 10%;}
            .InvertMan .center .ShowInvertDw .750px{ color:RGB(229,9,87) ;font-weight: 600;font-family: '华文楷体', '微软雅黑', '宋体';font-size:0.9em}
            .InvertMan .center .ShowInvertDw .spanXm{ color: purple;font-weight: 500;font-family: '华文楷体', '微软雅黑', '宋体'; }
            .InvertMan .center .ShowInvertDw .date{ font-weight: 200;font-size: 0.3em;color: gray}
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
            .JiaoBen{ width: 100%;height: 90px;font-size: small;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);text-align: center;background-color:RGB(10, 18, 43) }
            .JiaoBen a{color: cornflowerblue}
            .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
        }
        .English {font-size: smaller;font-family: '华文楷体', '微软雅黑', '宋体';}
    </style>
    <script type="text/javascript">
        window.onload = function () {
            /**匹配屏幕查询**/
            /*轮播图的大小*/
            var widthLunbo;
            var wWidth = document.documentElement.clientWidth;
            var screen1 = window.matchMedia('(min-width:1300px)');
            var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
            var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
            if (screen1.matches) {
                widthLunbo = 1200;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen2.matches) {
                widthLunbo = 750;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            }else if (screen3.matches) {
                widthLunbo = 350;
                document.getElementById('headerCaidan').style.display = 'none';
                document.getElementById('daohanglanPhone').style.display = 'block';
                document.getElementById('daohanglanPhone').style.visibility = true;
                var list = document.getElementById('ilist');
            }
            /*监视页面窗口大小变化*/
            window.onresize = function () {
                var wWidth = document.documentElement.clientWidth;
                var screen1 = window.matchMedia('(min-width:1300px)');
                var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
                var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
                if (screen1.matches) {
                    widthLunbo = 1200;
                    document.getElementById('headerCaidan').style.display = 'block';
                    document.getElementById('headerCaidan').style.height = '60px';
                    document.getElementById('daohanglanPhone').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.visibility = false;
                } else if (screen2.matches) {
                    widthLunbo = 750;
                    document.getElementById('headerCaidan').style.display = 'block';
                    document.getElementById('headerCaidan').style.height = '60px';
                    document.getElementById('daohanglanPhone').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.visibility = false;
                } else if (screen3.matches) {
                    widthLunbo = wWidth;
                    document.getElementById('headerCaidan').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.display = 'block';
                    document.getElementById('daohanglanPhone').style.visibility = true;
                }
            }
            var span = document.getElementsByTagName("span");
            var container = document.getElementById('containter');
            var list = document.getElementById("ilist");
            /*获得五个标签*/
            var buttom = document.getElementById('buttons').getElementsByTagName('span');
            var prev = document.getElementById("prev");
            var next = document.getElementById("next");
            var index = 1;
            var change=1;
            for (var i = 0; i < buttom.length; i++) {
                buttom[i].onclick = function () {
                    /*自定义属性不可以获取用this直接获取*/
                    var nowIndex = Number(this.getAttribute('index'));
                    if (nowIndex == 1) {
                        list.style.left = "0px";
                        index = 1;
                        showButton();
                    }
                    else if (nowIndex == 2) {
                        list.style.left = "-" + widthLunbo + "px";
                        index = 2;
                        showButton();
                    }
                    else if (nowIndex == 3) {
                        list.style.left = "-" + widthLunbo*2 + "px";
                        index = 3;
                        showButton();
                    }
                    else if (nowIndex == 4) {
                        list.style.left = "-"+widthLunbo*3+"px";
                        index = 4;
                        showButton();
                    }
                    else if (nowIndex == 5) {
                        list.style.left = "-" + widthLunbo *4+ "px";
                        index = 5;
                        showButton();
                    }
                }
            }
            setInterval(function() {
                    if (index == 5) change = -1;
                    if (index == 1) change = 1;
                    index = index + change;
                    var nowIndex = index;
                    if (nowIndex == 1) {
                        list.style.left = "0px";
                        index = 1;
                        showButton();
                    }
                    else if (nowIndex == 2) {
                        list.style.left = "-" + widthLunbo + "px";
                        index = 2;
                        showButton();
                    }
                    else if (nowIndex == 3) {
                        list.style.left = "-" + widthLunbo * 2 + "px";
                        index = 3;
                        showButton();
                    }
                    else if (nowIndex == 4) {
                        list.style.left = "-" + widthLunbo * 3 + "px";
                        index = 4;
                        showButton();
                    }
                    else if (nowIndex == 5) {
                        list.style.left = "-" + widthLunbo * 4 + "px";
                        index = 5;
                        showButton();
                    }
                },
                3000);
            function showButton() {
                for (var i = 0; i < buttom.length; i++) {
                    buttom[i].style.backgroundColor = "black";
                }
                buttom[index - 1].style.backgroundColor = "orangered";
            }
            next.onclick = function () {
                if (list.offsetLeft == -widthLunbo*4) {
                    list.style.left = '0px';
                    index = 1;
                } else {
                    list.style.left = (list.offsetLeft - widthLunbo).toString() + 'px';
                    index += 1;
                }
                showButton();
            }
            prev.onclick = function () {
                if (list.offsetLeft == 0) {
                    list.style.left = '-' + widthLunbo *4+ 'px';
                    index = 5;
                } else {
                    list.style.left = (list.offsetLeft + widthLunbo).toString() + 'px';
                    index = index - 1;
                }
                showButton();
            }
            var box = document.getElementById("Scoll");
            setInterval(function() {
                    var jiuTop = box.scrollTop;
                    var newtop = jiuTop + 1;
                    box.scrollTop = newtop;
                    if (newtop+box.offsetHeight>= box.scrollHeight) {
                        box.scrollTop = 0;
                    }
                },
                10);
            var boxs = document.getElementById("ShowBoxInvertMan");
            setInterval(function () {
                    var jiuTop = boxs.scrollTop;
                    var newtop = jiuTop + 1;
                    boxs.scrollTop = newtop;
                    if (newtop + boxs.offsetHeight >= boxs.scrollHeight) {
                        boxs.scrollTop = 0;
                    }
                },
                10);

        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            var screen3 = window.matchMedia('(min-width:0px) and (max-width:767px)');
            function ShowHead() {
                var caidan = document.getElementById('headerCaidan'); /*PC端导航栏*/
                var zhidie = document.getElementById('daohanglanPhone');/*手机导航栏折叠菜单*/
                var oHeight = document.documentElement.clientHeight;/*得到页面可视区域高度*/
                if (screen3.matches) {
                    /*使得手机端折叠菜单打开pc端折叠菜单*/
                    if (caidan.style.display == 'block') {
                        document.getElementById('Closeit').style.display = 'block';
                        caidan.style.display = 'none';
                    } else {
                        document.getElementById('Closeit').style.display = 'none';
                        caidan.style.display = 'block';
                        caidan.style.height = oHeight+'px';
                    }
                } else {
                    /*nonthing*/
                }
            }
            /*
            if (screen3) {
                var caidan = document.getElementById('headerCaidan');
                var zhidie = document.getElementById('imfzhijie');
                if (caidan.style.display == 'block') {
                    caidan.style.display = 'none';
                } else {
                    var daohang = document.getElementById('daohanglanPhone');
                    var oHeight = daohang.offsetHeight;
                    console.log('danhanglan' + oHeight);
                    var wHeight = document.documentElement.clientHeight;
                    caidan.style.display = "block";
                    caidan.style.top = oHeight + 'px';
                    caidan.style.height = (wHeight - oHeight) + 'px';
                }
            } else {
                console.log('2');
                caidan.style.display == 'block';
            }
        }*/
        </script>
        <header class="PhoneHead" id="daohanglanPhone">
            <div class="headerTtile">
                <div class="left">
                    <span>创造门</span>
                </div>
                <div class="center">
                    <asp:LinkButton  CssClass="cents"  ID="lnkChinese" runat="server" OnClick="lnkChinese_Click">CHE</asp:LinkButton>
                    <asp:LinkButton  CssClass="cents" ID="LnkEnglish" runat="server" OnClick="lkbtnEnish_Click">ENG</asp:LinkButton>                    
                </div>
                <div class="right">
                    <a href="javascript:ShowHead()"><img  src="Images/SystemPicture/zhedie.png" width="50px" height="50px"/></a>
                </div>
            </div>
        </header>
        <div class="Head" id="headerCaidan">
              <div class="logo"><i class="Font_Title">创造门</i></div>
              <div class="Nav">
                  <ul>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneFirstPage20171001.png"/><a href="https://www.baidu.com/"><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="首页"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneType20171001.png"/><a href="#"><asp:Label                           ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="产品分类"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneNewProject20171001.png"/><a href="#"><asp:Label                     ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="新品预告"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneCreate20171001.png"/><a href="#"><asp:Label                         ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="我要创作"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneInvest20171001.png"/><a href="#"><asp:Label                         ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="我要投资"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneShoe20171001.png"/><a href="#"><asp:Label                           ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="项目展示"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneOnlineTwo20171001.png"/><a href="#"><asp:Label                      ID="lbl_Look_OnlineVedio" runat="server" CssClass="FontColor"  Text="观看直播"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneVedio20171001.png"/><a href="#"><asp:Label                          ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="视屏专区"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneConection20171001.png"/><a href="#"><asp:Label                      ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="交流空间"></asp:Label></a></li>
                  </ul>
              </div>
              <div class="NavPhone">
                  <ul>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneLog20171001.png"/><a href="../UserPage/UserPageLogin.aspx"><asp:Label ID="lblUserLog" runat="server"  CssClass="FontColor" Text="用户登录"></asp:Label></a></li>
                      <li><img class="PhoneImg" src="Images/SystemPicture/NavPhoneLogin20171001.png"/><a href="../UserPage/UserPageRegister.aspx"><asp:Label ID="lblUserLogin" runat="server"  CssClass="FontColor" Text="用户注册"></asp:Label></a></li>
                  </ul>
              </div>
              <div class="Login_ACE">
                  <ul>
                      <li>
                          <a href="../UserPage/UserPageLogin.aspx" class="hoverTitle" id="KickOpen" ><img src="Images/SystemPicture/User_White.png"/></a>
                      </li>
                      <li>
                          <asp:LinkButton ID="lkbtnChinese" CssClass="transfer" runat="server" OnClick="lkbtnChinese_Click">汉语</asp:LinkButton>
                          <asp:LinkButton ID="lkbtnEnish" CssClass="transfer"  runat="server" OnClick="lkbtnEnish_Click">English</asp:LinkButton>
                      </li>
                  </ul>
              </div>
          </div>
        <div id="Closeit">
        <section class="lunboSection">
            <div id="containter">
                <div id="ilist">
                    <img src="../FirstImage/1.jpg" alt="" />
                    <img src="../FirstImage/2.jpg" alt="" />
                    <img src="../FirstImage/3.jpg" alt="" />
                    <img src="../FirstImage/4.jpg" alt="" />
                    <img src="../FirstImage/5.jpg" alt="" />
                </div>
                <div id="buttons">
                    <span index="1" class="on"></span>
                    <span index="2"></span>
                    <span index="3"></span>
                    <span index="4"></span>
                    <span index="5"></span>
                </div>
                <a href="javascript:;" id="prev" class="arrow">
                    <img src="../FirstImage/row.png" width="80px" height="80px"  />
                </a>
                <a href="javascript:;" id="next" class="arrow">
                    <img src="../FirstImage/row2.png"  width="80px" height="80px" />
                </a>
            </div>
        </section>
        <section class="CompanyIntroDuce">
            <h2 align="center" class="CompnyName"><asp:Label ID="lblCompanyName" runat="server" Text="四川创造门高新技术开发有限公司"></asp:Label></h2>
            <p>
               <span class="Intro">【公司简介(Introduction)】</span>
                <asp:Label CssClass="jianjie" ID="lblCompanyIntr" runat="server" Text="四川创造门高新技术开发有限公司是致力于各种创新产品研发的实体机构，目前已经推出多项专利创新产品，并已获人们广泛认同
                我们还会不断研发更多创新产品推向市场，为人类社会的发展做出贡献！创造改变命运！创造改变未来！我们吸纳各种创新人才成为我们的合作伙伴
                ，为全人类服务，为有创造梦想的人服务，走进创造门，函授创造，拥有创造，参与创造，创造门与你同在！"></asp:Label>
            </p>
        </section>
        <section class="ProdecutShow">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue dashed; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">产品分类</span><span class="Font_Name_English">PRODUCT CATEGORY</span>
                </span> 
            </div>
            <div class="ProductImg">
                <div class="heheda">
                    <h2>医疗保健</h2>
                    <a><img src="../ProductImage/productType1.jpg"  width="300px" height="220px"/></a> 
                    <asp:Label ID="lblYIniao" runat="server" Text="Medical Insurance" Visible="False"></asp:Label>
                </div>
                <div class="heheda">
                    <h2>通钓鱼具</h2>
                    <a><img src="../ProductImage/productType2.jpg"  width="300px" height="220px"/></a> 
                    <asp:Label ID="lbldiaoyu" runat="server" Text="Fishing Tackle" Visible="False"></asp:Label>
                </div>
                <div class="heheda">
                    <h2>洗鞋袜</h2>
                    <a><img src="../ProductImage/productType3.jpg"  width="300px" height="220px"/></a> 
                    <asp:Label ID="lblxiwa" runat="server" Text="Wash the socks" Visible="False"></asp:Label>
                </div>
                <div class="heheda">
                    <h2>文物收藏</h2>
                    <figure>
                        <a><img src="../ProductImage/productType4.jpg"  width="300px" height="220px"/></a>                         
                        <figcaption><asp:Label ID="lblwenwu" runat="server" Visible="False" Text="Cultural relics collection"></asp:Label></figcaption>
                    </figure>
                </div>
            </div>
        </section>
        <section class="NewProductShow">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue dashed; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">新品预告</span><span class="Font_Name_English">NEW PRODUCT</span>
                </span> 
            </div>
            <div class="ListProduct">
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                           <span style="color: purple" >【Introduction】</span><asp:Label ID="lblShow" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                            <span style="color: purple" >【Introduction】</span><asp:Label ID="Label1" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
                <div class="newproductList">
                    <div class="UpRectangle"></div>
                    <div class="Rectangle"></div>
                    <div class="IntroDuction">
                        <p style="text-indent: 10%">
                            <span style="font-size: 25px;color:RGB(135,0,60) ">¥</span><span style="color: RGB(135, 0, 60);font-weight: 600;font-size: 30px">39.6</span>
                            <input type="button" value="新品"/>
                        </p>
                        <p>
                            <span style="color: purple" >【Introduction】</span><asp:Label ID="Label2" CssClass="ProductIntrpDuction" runat="server" Text="人民币（缩写：RMB；货币代码是：CNY；货币符号：¥）是中华人民共和国的法定货币"></asp:Label>
                        </p>
                    </div>
                    <div class="DownRectangle"></div>
                </div>
            </div>
        </section>
        <div class="LearnMoreProduct">
                <a href="#" >GET MORE</a>
        </div>
        <section class="VedioList">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">视频专区</span><span class="Font_Name_English">Video Shelf</span>
                </span> 
            </div>
            <div class="Vedioshelf"> 
                <div class="LeftBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="CenterBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
                <div class="RightBox"><a href="javascript:void(0)"><img src="../FirstImage/图标8.png"/></a></div>
            </div>   <br/>
            <div class="LearingMoreVedio">
                <p><a href="javascript:void(0)">WATCH MORE</a></p>
            </div>        
        </section>
        <section class="Watchlive">
            <div class="JuzhongFont">
                <span style="border-bottom: 2px darkblue solid; padding-bottom: 15px;">
                    <span class="productFont Font_Nav_Pc">观看直播</span><span class="Font_Name_English">Watch Live</span>
                </span> 
            </div>
            <div class="LiveSelf">
                <a href="javascrpt:void(0)"><img src="../FirstImage/kuaishou.png"/> </a>
                <a href="javascrpt:void(0)"><img src="../FirstImage/yinke.png"/></a>
                <a href="javascrpt:void(0)"><img src="../FirstImage/shangyu.png"/></a>
            </div>
        </section>
        <section class="ProjectShow">
            <p class="ProjectTitle">项目展示[PROJECT DISPALY]</p>
        </section>
        <section class="InvertMan">
            <div class="right">
                <div class="ProjectSelf" id="Scoll">
                    <div class="VideoShow">
                        <div class="imgShow"><img src="../FirstImage/首页10.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>    
                    <div class="VideoShow">
                        <div class="imgShow"><img src="../FirstImage/首页10.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>    
                    <div class="VideoShow">
                        <div class="imgShow"><img src="../FirstImage/首页8.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                    <div class="VideoShow">
                        <div class="imgShow"><img src="../FirstImage/首页9.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                    <div class="VideoShow">
                        <div class="imgShow"><img src="../FirstImage/首页9.jpg"/></div>
                        <div class="OpcityHtml"></div>
                        <div class="IntroDucation">
                            <div class="Title"><p>等离子泊车项目</p></div>
                            <div class="Informations">
                                <p>
                                    【简介(Introduction)】
                                    谷歌僵尸地图是指谷歌地图推出一项新功能，该地图专为面临自然灾害时提供一些必要的帮助信息。
                                    地图列出全球主要城市的加油站、杂货铺甚至枪械店.  
                                </p>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
            <div class="center" id="ShowBoxInvertMan" >
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>
                <div class="ShowInvertDw">
                    <p><span class="750px">四川关元科技有限公司</span>投资了 <span class="spanXm">等离子流项目</span> <span class="date"><time>2016-8-9</time></span>。</p>
                </div>

            </div>
        </section>
        <footer>
            <p class="HeadColor"></p>
            <div class="TowPart">
                <div class="Left_Font">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <th align="left" colspan="3">
                                <asp:Label ID="lblAubotUss" runat="server" Text="关于我们"></asp:Label></th>
                        </tr>
                        <tr>
                            <td class="TitleIntroduce" colspan="3" style="height: 16px">
                                <asp:Label ID="lblIntro" runat="server" Text="此公司成立于2017年，致力于渔业产品，各类产品的发展推广,例如洗鞋袜，文物收藏，医疗保健！欢迎与我们交流！合作！" Width="90%"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblAbotUs" runat="server" Text="关于我们"></asp:Label> 
                            </td>
                            <td>
                                <asp:Label ID="LBLHEZUO" runat="server" Text="合作投资"></asp:Label>  
                            </td>
                            <td>
                                <asp:Label ID="lblConmnite" runat="server" Text="交流空间"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCompany" runat="server" Text="公司官网"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblFalv" runat="server" Text="法律声明"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblshengming" runat="server" Text="公司声明"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="Right_Picture">
                    <div class="PictureOneWechat">
                    </div>
                </div>
            </div>
        </footer>
        <div class="JiaoBen">
            <p>
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
            <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ服务</a>Copyright © 2017-至今|四川创造门高新技术开发有限公司版权所有|客户电话：15698259380|企业邮件:chuangzaomen@163.com|热线电话：15826121
            <a href="../BackendManage/AdminLogin.aspx">管理员</a>

            </p>
        </div>
        <div class="zixun">
            <div class="showDiv">
                <p>微信二维码</p>
                <img src="Images/SystemPicture/timg.jpg"/>
                <p>扫码咨询关注</p>
                <p>惊喜连连更多</p>
            </div>
            <div class="lanmu">
                <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
                <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
                <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
                <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
                <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
            </div>
       
        </div>
        </div>
    </form>
</body>
</html>
