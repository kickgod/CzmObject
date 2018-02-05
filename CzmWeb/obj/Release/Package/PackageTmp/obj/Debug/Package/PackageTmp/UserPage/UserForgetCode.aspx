<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserForgetCode.aspx.cs" Inherits="CzmWeb.UserPage.UserForgetCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/FontBindData.css" type="text/css"  rel="stylesheet" />
<link rel="icon" href="../Img/CZM.png" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none;}
        .JiaoBen{ width: 100%;height: 80px;font-size: smaller;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;text-align: center;background-color:RGB(176,53,112) }
        .JiaoBen a{color: gainsboro}
       
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
            .JiaoBen{ width: 100%;height: 50px;line-height: 50px;font-size: smaller;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;text-align: center;background-color:RGB(176,53,112) }
            .JiaoBen a{color: gainsboro}
            .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white} /***1300px以上***/
            .ForgetPassword{ width: 100%;background-color: RGB(245,234,240);height:1200px}
            .ForgetPassword .UpRectangles{ height: 150px;width: 100%}
            .ForgetPassword .ChangePwd{ width: 60%;height: 800px;background-color: inherit;margin: auto;}
            .ForgetPassword .ChangePwd p{ width: 100%;height: 50px;line-height: 50px}
            .ForgetPassword .ChangePwd .UserID{ margin-left: 30%;}
            .ForgetPassword .ChangePwd .UserID img{ width: 40px;height: 40px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .UserID .txtPhoneNumber{margin-left: 10px; height: 40px;width: 300px;}
            .ForgetPassword .ChangePwd .SendCode{margin-left: 30%;}
            .ForgetPassword .ChangePwd .SendCode img{ width: 40px;height: 40px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .SendCode .txtPhoneNumber{margin-left: 10px; height: 40px;width: 200px;}
            .ForgetPassword .ChangePwd .titles{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
            /*重复可利用Button 全局*/
            .BtnSendCode{ width: 100px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .Btn_Submit{margin-left: 50px; width: 310px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
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
            .zixun{z-index: 100000; width: 170px;height: 220px;font-size: 1em;font-family: '微软雅黑', '宋体';word-spacing: 2px;color: RGB(114, 114, 114);position: fixed;right: 0px;top: 35%;}
            .zixun .showDiv{opacity: 0.8;filter: alpha(opacity=80);width: 135px;height: 220px;background-color: white;float: left}
            .zixun .showDiv p{opacity: 0.8;filter: alpha(opacity=80); text-indent: 15px;letter-spacing: 2px;font-size: small}
            .zixun .showDiv .fontci{opacity: 0.8;filter: alpha(opacity=80); height: 30px;line-height: 30px;color: white;font-family:'华文楷体', '微软雅黑', '宋体';font-weight: bold }
            .zixun .showDiv img{opacity: 0.8;filter: alpha(opacity=80); width: 105px;height: 105px;background-color: white;padding: 15px}
            .zixun .lanmu{ width: 32px;height: 220px;background-color: purple;color: white;float: right}
            .zixun .lanmu a img{ width: 30px;height: 30px;margin:5px auto}
            .zixun .lanmu a img:hover{ transform: translate(2px, 2px);-webkit-transform: translate(2px, 2px);background-color: white}
            .ForgetPassword{ width: 100%;background-color: RGB(245,234,240);height:1200px}
            .ForgetPassword .UpRectangles{ height: 150px;width: 100%}
            .ForgetPassword .ChangePwd{ width: 60%;height: 800px;background-color: inherit;margin: auto;}
            .ForgetPassword .ChangePwd p{ width: 100%;height: 50px;line-height: 50px}
            .ForgetPassword .ChangePwd .UserID{ margin-left: 20%;}
            .ForgetPassword .ChangePwd .UserID img{ width: 40px;height: 40px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .UserID .txtPhoneNumber{margin-left: 10px; height: 40px;width: 300px;}
            .ForgetPassword .ChangePwd .SendCode{margin-left: 20%;}
            .ForgetPassword .ChangePwd .SendCode img{ width: 40px;height: 40px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .SendCode .txtPhoneNumber{margin-left: 10px; height: 40px;width: 200px;}
            .ForgetPassword .ChangePwd .titles{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
            /*重复可利用Button 全局*/
            .BtnSendCode{ width: 100px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .Btn_Submit{margin-left: 50px; width: 310px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
        }
        /***********************************************767以下主要适配手机****************************************************************/
        /*实质是宽度400多为中大屏幕手机主要分辨率适配参考iphone6 plus以上*/
        @media only screen and (min-width:450px )and (max-width:767px) {
            *{padding: 0px;margin: 0px;text-decoration: none;}
            .PhoneHead{z-index: 100000000000; position: fixed;top: 0px;left: 0px;display: block;height: 50px;width: 100%;background: linear-gradient(to left, purple, RGB(176, 53, 112));border-bottom:gray 2px solid}
            .PhoneHead .headerTtile{ width: 100%;}
            .PhoneHead .headerTtile .left .transfer{color: white}
            .PhoneHead .headerTtile .left{ width: 230px;float: left;height: 50px;}
            .PhoneHead .headerTtile .left span{text-indent: 15px; display: block;color:white;font-weight: bold;font-size: 14px;line-height:50px;height: 50px;text-align: left;}
            .PhoneHead .headerTtile .center{text-indent: 20px; width: 48%;float: left;}

            .PhoneHead .headerTtile .right{ width: 30%;float: left;height: 50px;position: relative}
            .PhoneHead .headerTtile .right a{display: block; position: absolute;top: 0px;right: 5px;color: gold;line-height: 50px;}
            .Head{display: none;background-color: white;color: #333333;position: fixed;top: 52px;color: #333333;width: 100%}
            .Head .logo{display: none}
            .Head .Nav ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
            .Head .NavPhone{ display: block;}
            .Head .NavPhone ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
            .Head .Login_ACE{display: none}
            .PhoneImg{ width: 30px;height: 30px;padding-top: 15px;}
            .FontColor{ color: #333333;font-size: 0.6em;font-weight: bold}
            .zixun{display: none}
            .ForgetPassword{ width: 100%;background-color: RGB(245,234,240);height:800px}
            .ForgetPassword .UpRectangles{ height: 150px;width: 100%}
            .ForgetPassword .ChangePwd{ width: 100%;height: 600px;background-color: inherit;margin: auto;}
            .ForgetPassword .ChangePwd p{ width: 100%;height: 50px;line-height: 50px}
            .ForgetPassword .ChangePwd .UserID{ margin-left: 18%;}
            .ForgetPassword .ChangePwd .UserID img{ width: 30px;height: 30px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .UserID .txtPhoneNumber{margin-left: 10px; height: 40px;width: 300px;}
            .ForgetPassword .ChangePwd .SendCode{margin-left: 18%;}
            .ForgetPassword .ChangePwd .SendCode img{ width: 30px;height: 30px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .SendCode .txtPhoneNumber{margin-left: 10px; height: 40px;width: 200px;}
            .ForgetPassword .ChangePwd .titles{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
            /*重复可利用Button 全局*/
            .BtnSendCode{ width: 100px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .Btn_Submit{margin-left: 38px; width: 310px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}           
        }
        @media only screen and (min-width:330px )and (max-width:449px) {
            *{padding: 0px;margin: 0px;text-decoration: none;}
            .PhoneHead{z-index: 100000000000; position: fixed;top: 0px;left: 0px;display: block;height: 50px;width: 100%;background: linear-gradient(to left, purple, RGB(176, 53, 112));border-bottom:gray 2px solid}
            .PhoneHead .headerTtile{ width: 100%;}
            .PhoneHead .headerTtile .left .transfer{color: white}
            .PhoneHead .headerTtile .left{ width: 230px;float: left;height: 50px;}
            .PhoneHead .headerTtile .left span{text-indent: 15px; display: block;color:white;font-weight: bold;font-size: 14px;line-height:50px;height: 50px;text-align: left;}
            .PhoneHead .headerTtile .center{text-indent: 20px; width: 48%;float: left;}
            .PhoneHead .headerTtile .right{ width: 30%;float: left;height: 50px;position: relative}
            .PhoneHead .headerTtile .right a{display: block; position: absolute;top: 0px;right: 5px;color: gold;line-height: 50px;}
            .Head{display: none;background-color: white;color: #333333;position: fixed;top: 52px;color: #333333;width: 100%}
            .Head .logo{display: none}
            .Head .Nav ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
            .Head .NavPhone{ display: block;}
            .Head .NavPhone ul li{ border-bottom: 1px solid black;height: 50px;line-height: 50px;text-indent: 30px;color: #333333}
            .Head .Login_ACE{display: none}
            .PhoneImg{ width: 30px;height: 30px;padding-top: 15px;}
            .FontColor{ color: #333333;font-size: 0.6em;font-weight: bold}
            .zixun{display: none}
            .ForgetPassword{ width: 100%;background-color: RGB(245,234,240);height:800px}
            .ForgetPassword .UpRectangles{ height: 150px;width: 100%}
            .ForgetPassword .ChangePwd{ width: 100%;height: 600px;background-color: inherit;margin: auto;}
            .ForgetPassword .ChangePwd p{ width: 100%;height: 50px;line-height: 50px}
            .ForgetPassword .ChangePwd .UserID{ margin-left: 12px;}
            .ForgetPassword .ChangePwd .UserID img{ width: 30px;height: 30px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .UserID .txtPhoneNumber{margin-left: 10px; height: 40px;width: 300px;}
            .ForgetPassword .ChangePwd .SendCode{margin-left: 12px;}
            .ForgetPassword .ChangePwd .SendCode img{ width: 30px;height: 30px;vertical-align: bottom}
            .ForgetPassword .ChangePwd .SendCode .txtPhoneNumber{margin-left: 10px; height: 40px;width: 200px;}
            .ForgetPassword .ChangePwd .titles{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
            /*重复可利用Button 全局*/
            .BtnSendCode{ width: 100px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .Btn_Submit{margin-left: 38px; width: 310px;height: 40px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
        }
        @media only screen and (max-width: 330px) {
            *{padding: 0px;margin: 0px;text-decoration: none;}
            .PhoneHead{z-index: 100000000000; position: fixed;top: 0px;left: 0px;display: block;height: 50px;width: 100%;background: linear-gradient(to left, purple, RGB(176, 53, 112));border-bottom:gray 2px solid}
            .PhoneHead .headerTtile{ width: 100%;}
            .PhoneHead .headerTtile .left .transfer{color: white}
            .PhoneHead .headerTtile .left{ width: 230px;float: left;height: 50px;}
            .PhoneHead .headerTtile .left span{text-indent: 15px; display: block;color:white;font-weight: bold;font-size: 14px;line-height:50px;height: 50px;text-align: left;}
            .PhoneHead .headerTtile .center{text-indent: 20px; width: 48%;float: left;}
            .PhoneHead .headerTtile .right{ width: 80px;float: left;height: 50px;position: relative}
            .PhoneHead .headerTtile .right a{display: block; position: absolute;top: 0px;right: 5px;color: gold;line-height: 50px;}
            .Head{display: none;background-color: white;color: #333333;position: fixed;top: 52px;color: #333333;width: 100%}
            .Head .logo{display: none}
            .Head .Nav ul li{ height: 40px;line-height: 40px;text-indent: 30px;color: #333333}
            .Head .NavPhone{ display: block;}
            .Head .NavPhone ul li{height: 50px;line-height:40px;text-indent: 30px;color: #333333}
            .Head .Login_ACE{display: none}
            .PhoneImg{ width: 30px;height: 30px;padding-top: 15px;}
            .FontColor{ color: #333333;font-size: 0.6em;font-weight: bold}
            .zixun{display: none}
            .ForgetPassword{ width: 100%;background-color: RGB(245,234,240);height:800px}
            .ForgetPassword .UpRectangles{ height: 150px;width: 100%}
            .ForgetPassword .ChangePwd{ width: 100%;height: 600px;background-color: inherit;margin: auto;}
            .ForgetPassword .ChangePwd p{ width: 100%;height: 50px;line-height: 50px}
            .ForgetPassword .ChangePwd .UserID{ margin-left: 12px;}
            .ForgetPassword .ChangePwd .UserID img{ display: none}
            .ForgetPassword .ChangePwd .UserID .txtPhoneNumber { margin-left: 10px;height: 30px;width: 80%}
            .ForgetPassword .ChangePwd .SendCode{margin-left: 12px;}
            .ForgetPassword .ChangePwd .SendCode img{ display: none}
            .ForgetPassword .ChangePwd .SendCode .txtPhoneNumber{margin-left: 10px; height: 30px;width: 60%;}
            .ForgetPassword .ChangePwd .titles{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
            /*重复可利用Button 全局*/
            .BtnSendCode{ width: 60px;height: 30px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .Btn_Submit{margin-left: 10px; width: 265px;height: 30px;background-color: RGB(176,53,112);border-radius: 2px;font-size: 1.2em;color: white;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';word-spacing: 4px;font-weight: 400;}
            .JiaoBen{margin-bottom: 0px; width: 100%;height: 80px;font-size: 0.5em;font-family:'华文楷体','楷体', '微软雅黑', '宋体';word-spacing: 2px;color: gainsboro;text-align: center;background-color:RGB(176,53,112) }
            .JiaoBen a{color: gainsboro}
        }
       cents{ width: 100px;height: 30px;line-height: 30px;color: white;font-weight: 300;border: 1px solid gray}
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
            } else if (screen3.matches) {
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

        }
    </script>
    <title>创造门</title>
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
                        caidan.style.height = oHeight + 'px';
                    }
                } else {
                    /*nonthing*/
                }
            }
        </script>
<header class="PhoneHead" id="daohanglanPhone">
            <div class="headerTtile">
                <div class="left">
                    <span>四川创造门高新技术开发有限公司</span>
                </div>
                <div class="right">
                    <a href="javascript:ShowHead()"><asp:Label ID="lbltxtTitle" runat="server" Text="网站导航"></asp:Label></a>
                </div>
            </div>
</header>
        <div class="Head" id="headerCaidan">
            <div class="logo"><i style="font-size: 16px;">创造门</i></div>
            <div class="Nav">
                <ul>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneFirstPage20171001.png"/><a target="_blank" href="../DefalutEng.aspx"><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="Home"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneType20171001.png"/><a target="_blank" href="../UserPage/UserProductTypeShow.aspx"><asp:Label ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="Product Catagory"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneNewProject20171001.png"/><a target="_blank" href="../UserPage/UserNewProductShow.aspx"><asp:Label ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="New"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneCreate20171001.png"/><a target="_blank" href="../UserPage/UserCreateProject.aspx"><asp:Label ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="Project Applay"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneInvest20171001.png"/><a target="_blank" href="../UserPage/UserInvestProject.aspx"><asp:Label ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="Invest"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneShoe20171001.png"/><a target="_blank" href="../UserPage/UserProjectShow.aspx"><asp:Label ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="Display"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneVedio20171001.png"/><a target="_blank" href="../UserPage/UserVedioShowList.aspx"><asp:Label ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="Video"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneConection20171001.png"/><a target="_blank" href="../UserPage/UserConmunicationApace.aspx"><asp:Label ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="Communication"></asp:Label></a></li>
                </ul>
            </div>
            <div class="NavPhone">
                <ul>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLog20171001.png"/><a target="_blank" href="../UserPage/UserPageLogin.aspx"><asp:Label ID="lblUserLog" runat="server"  CssClass="FontColor" Text="用户登录"></asp:Label></a></li>
                    <li><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLogin20171001.png"/><a target="_blank" href="../UserPage/UserPageRegister.aspx"><asp:Label ID="lblUserLogin" runat="server"  CssClass="FontColor" Text="用户注册"></asp:Label></a></li>
                </ul>
            </div>
            <div class="Login_ACE">
                <ul>
                    <li>
                        <a href="../UserPage/UserPageLogin.aspx" class="hoverTitle"  target="_blank"  id="KickOpen" ><img src="../Images/SystemPicture/User_White.png"/></a>
                    </li>
                    <li>
                        <asp:LinkButton ID="lkbtnChinese" CssClass="transfer" runat="server" target="_blank"  OnClick="lkbtnChinese_Click" >转为汉语</asp:LinkButton>
                        <asp:LinkButton ID="lkbtnEnish" CssClass="transfer"  runat="server" target="_blank" OnClick="lkbtnEnish_Click">English</asp:LinkButton>
                        <li></li>
                        <li></li>
                    </li>
                </ul>
            </div>
        </div>
        <div id="Closeit">
            <div class="ForgetPassword">
                <div class="UpRectangles"></div>
                <div class="ChangePwd">
                        <p class="titles">创造门 </p>
                        <p class="UserID">
                            <img src="../Images/SystemPicture/User.png"/><asp:TextBox ID="txtPhoneNumber" CssClass="txtPhoneNumber" runat="server" placeholder="[手机号(Phone Number)]" ></asp:TextBox>
                             <span>
                                <asp:Image ID="imgPhoneRight"  runat="server"  ImageUrl="../Images/SystemPicture/Right.png" Visible="False" Width="20px" Height="20px" />
                                <asp:Image ID="imgPhoneError" runat="server" ImageUrl="../Images/SystemPicture/Error.png" Visible="False" Width="20px" Height="20px"/>
                             </span>
                        </p>
                        <p class="UserID">
                            <img src="../Images/SystemPicture/again_hover.png"/><asp:TextBox ID="txtPwdOne" CssClass="txtPhoneNumber" runat="server" placeholder="[新密码(New Password)]" ></asp:TextBox>
                            <span>
                                <asp:Image ID="imgNewPassword" runat="server" ImageUrl="../Images/SystemPicture/Right.png" Visible="False"  Width="20px" Height="20px"/>
                                <asp:Image ID="imgNewPasswords" runat="server"  ImageUrl="../Images/SystemPicture/Error.png" Visible="False" Width="20px" Height="20px"/>
                            </span>
                        </p>
                        <p class="UserID">
                            <img src="../Images/SystemPicture/again_hover.png"/><asp:TextBox ID="txtPwdTwo" CssClass="txtPhoneNumber" runat="server" placeholder="[重复新密码(New Password Again)]" ></asp:TextBox>
                            <span>
                                <asp:Image ID="imgPwdOne" runat="server" ImageUrl="../Images/SystemPicture/Right.png" Visible="False" Width="20px" Height="20px"/>
                                <asp:Image ID="imgPwdTwo" runat="server"  ImageUrl="../Images/SystemPicture/Error.png" Visible="False" Width="20px" Height="20px"/>
                            </span>
                        </p>
                        <p class="SendCode"> 
                            <img src="../Images/SystemPicture/validcoed.png"/><asp:TextBox ID="txtVaildCode" CssClass="txtPhoneNumber" runat="server" placeholder="[验证码(Verification Code)]" ></asp:TextBox>
                            <asp:Button ID="btnSendCodeNow"  runat="server" Text="发送" CssClass="BtnSendCode" OnClick="btnSendCodeNow_Click" />
                        </p>
                        <p class="SendCode">
                            <asp:Button ID="btnOk" runat="server" CssClass="Btn_Submit" Text="提交" OnClick="btnOk_Click" />
                        </p>
                        <p style="text-align: center">
                            <asp:LinkButton   ID="lnkChinese" runat="server" OnClick="lnkChinese_Click" ForeColor="#FF0066" Width="100" Height="25" Font-Size="Medium">中文</asp:LinkButton>
                            &nbsp;
                            &nbsp;

                            <asp:LinkButton  ID="LnkEnglish" runat="server" OnClick="lkbtnEnish_Click"  ForeColor="#FF0066"  Width="100" Height="25" Font-Size="Medium">English</asp:LinkButton>   
                        </p>
                </div>
            </div>
            <div class="JiaoBen">
                <p style="text-align: center;padding-top: 5px">
                    <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
                    <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
                    <a href="../BackendManage/AdminLogin.aspx">管理员</a>
                </p>
            </div>
            <div class="zixun">
                <div class="showDiv">
                    <p>微信二维码</p>
                    <img src="../Images/SystemPicture/timg.jpg"/>
                    <p>扫码咨询关注</p>
                    <p>惊喜连连更多</p>
                </div>
                <div class="lanmu">
                    <a  target="blank" href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
                    <a  target="blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
                    <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
                    <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
                    <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
                </div>
       
            </div>
        </div>
    </form>
</body>
</html>
