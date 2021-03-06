﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/UserPageMaster.Master" AutoEventWireup="true" CodeBehind="UserPageLogin.aspx.cs" Inherits="CzmWeb.UserPage.UserPageLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .ulloSpan a{display: block}
        .ulloSpan:hover { border-bottom: RGB(148, 30, 80) 2px solid;border-top: RGB(148, 30, 80) 2px solid;color: black;font-size: 18px}
         .Mainpage{ width: 100%;background-color: RGB(245, 234, 240); }
        .Mainpage .LoginUp{ width: 100%;height: 100px;background-color: inherit}
        .Mainpage .Login {background-color: inherit; width: 400px;margin: auto;margin-top: 50px}
        .Mainpage .Login .Ttile{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 20px;text-align: center;font-style: italic;font-weight: bold;}
        .Mainpage .Login .Headsummary{ height: 40px;height: 40px;font-family: '华文楷体', '楷体', '微软雅黑','宋体';color: RGB(246, 139, 209);text-align:center  }
        .Mainpage .Login .UserID { height: 44px;width: 100%;line-height: 44px;}
        .Mainpage .Login .UserID img{ width: 40px;height: 40px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
        .Mainpage .Login .UserID .txtUserIDs{ height: 44px;width: 280px}
        .Mainpage .Login .UserID .IdIsRight{background-color: red;color: white;font-size: 30px;font-weight: 600;border: solid 1px red;text-align: center;vertical-align: bottom;
            border-radius: 50%;-webkit-border-radius: 50%;}
        .Mainpage .Login .ValidCode{ line-height: 45px;height: 45px;margin-top: 5px}
        .Mainpage .Login .ValidCode img{ width: 40px;height: 40px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
        .Mainpage .Login .ValidCode .txtUserpwds{ height: 44px;width: 100px} 
        .Mainpage .Login .ValidCode .BtnSendCodes{font-family: '华文楷体', '楷体', '微软雅黑', '宋体';height: 46px;width: 100px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color:                                                                                                                                                                            white;font-weight: 300;letter-spacing: 3px;font-size: large;margin-left: 50px;border-radius: 10px}
        .Mainpage .Login .LoginBtn{ margin-top: 10px;}
        .Mainpage .Login .LoginBtn .BtnLogin{ width: 288px;height: 46px;margin-left: 50px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color: white;font-weight: 300;letter-spacing: 3px;font-size: large; }
        .Mainpage .Login .LoginError{margin-top: 12px}
        .Mainpage .Login .LoginError .FontCss{ color: RGB(244, 113, 176);margin-left: 100px; }
        .Mainpage .Login .LoginError .FontCss:hover{color: red}
        .Mainpage .Login .LoginError .FontCssRight{color: RGB(244, 113, 176);margin-left: 10px;}
        .Mainpage .Login .LoginError .FontCssRight:hover{color: red}
        .Foot{ width: 100%;background-color: red;height: 120px;}
        @media only screen and (max-width: 767px) {
            .Mainpage .LoginUp{ width: 100%;height: 70px;background-color: inherit}
            .Mainpage{ width: 100%;background-color: RGB(245, 234, 240);}
            .Mainpage .Login {background-color: inherit; width: 400px;margin: auto;height: 400px;margin-top: 80px}
            .JiaoBen{ display: none;overflow: hidden}
        }
        @media only screen and (max-width: 320px) {
            .Mainpage .LoginUp{ width: 100%;height: 70px;background-color: inherit}
            .Mainpage{ width: 100%;background-color: RGB(245, 234, 240);}
            .Mainpage .Login {background-color: inherit; width: 320px;margin: auto;height: 400px;margin-top: 80px}
            .Mainpage .Login .Ttile{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 20px;text-align: center;font-style: italic;font-weight: bold;}
            .Mainpage .Login .Headsummary{ height: 40px;height: 40px;font-family: '华文楷体', '楷体', '微软雅黑','宋体';color: RGB(246, 139, 209);text-align:center  }
            .Mainpage .Login .UserID {text-indent: 20px; height: 34px;width: 100%;line-height: 34px;}
            .Mainpage .Login .UserID img{ width: 30px;height: 30px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
            .Mainpage .Login .UserID .txtUserIDs{ height: 34px;width: 220px}
            .Mainpage .Login .UserID .IdIsRight{color: red;font-size: 20px;font-weight: 600;border: solid 1px red;text-align: center;vertical-align: bottom;}
            .Mainpage .Login .ValidCode{text-indent: 20px; line-height: 35px;height: 35px;margin-top: 5px}
            .Mainpage .Login .ValidCode img{ width: 30px;height: 30px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
            .Mainpage .Login .ValidCode .txtUserpwds{ height: 34px;width: 100px} 
            .Mainpage .Login .ValidCode .BtnSendCodes{font-family: '华文楷体', '楷体', '微软雅黑', '宋体';height: 36px;width: 100px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color:
                                                                                                                                                                                           white;font-weight: 300;letter-spacing: 3px;font-size: large;margin-left: 10px;border-radius: 12px}
            .Mainpage .Login .LoginBtn{ margin-top: 10px;}
            .Mainpage .Login .LoginBtn .BtnLogin{ width: 226px;height: 36px;margin-left: 60px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color: white;font-weight: 300;letter-spacing: 6px;font-size: large; }
            .Mainpage .Login .LoginError{margin-top: 12px}
            .Mainpage .Login .LoginError .FontCss{ color: RGB(244, 113, 176);margin-left: 100px;  }
            .Mainpage .Login .LoginError .FontCssRight{color: RGB(244, 113, 176);margin-left: 10px;}
            .Foot{ width: 100%;background-color: red;height: 120px;}
            .JiaoBen{ display: none;overflow: hidden}
        }
    </style>
    <script type="text/javascript" defer="defer">
        window.onload = function () {
            /**匹配屏幕查询**/
            var wWidth = document.documentElement.clientWidth;
            console.log(wWidth);
            var screen1 = window.matchMedia('(min-width:1300px)');
            var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
            var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
            if (screen1.matches) {
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen2.matches) {
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen3.matches) {
                document.getElementById('headerCaidan').style.display = 'none';
                document.getElementById('daohanglanPhone').style.display = 'block';
                document.getElementById('daohanglanPhone').style.visibility = true;
                var list = document.getElementById('ilist');
            }
            var scrennPhone = window.matchMedia('(max-width: 767px)');
                var oHeight = document.documentElement.clientHeight;
                var Main = document.getElementById('MainPageLogin');
                Main.style.height = oHeight + 'px';
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
                    var oHeight = document.documentElement.clientHeight;
                    var Main = document.getElementById('MainPageLogin');
                    Main.style.height = oHeight + 'px';
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <script type="text/javascript">
        function Login() {
            var UserID = document.getElementById("<%=txtUserID.ClientID%>");
            var UserPwd = document.getElementById("<%=txtUserPwds.ClientID%>");
            if (UserID.value == "") {
                alert("Please enter your ID");
                return false;
            }
            if (UserPwd.value == "") {
                alert("Please enter your password");
                return false;
            }
            return true;
        }
    </script>
    <div>
    <div class="Mainpage" id="MainPageLogin">
        <div class="LoginUp"></div>
                <div class="Login">
                    <p class="Ttile">Creation Door</p>
                    <p class="Headsummary"> Gather Ideas, Open Thinking, Create Value</p>
                    <p class="UserID">
                        <img src="../Images/SystemPicture/User.png"/>
                        <asp:TextBox ID="txtUserID" CssClass="txtUserIDs" placeholder="Please enter the account number (binding phone number)" runat="server" OnTextChanged="txtUserID_TextChanged1">
                        </asp:TextBox>
                    </p>
                    <p class="UserID">
                        <img src="../Images/SystemPicture/Userpwd.png"/>
                        <asp:TextBox ID="txtUserPwds" CssClass="txtUserIDs" TextMode="Password" placeholder="Please enter your password" runat="server"></asp:TextBox>
                    </p>
                    <p class="LoginBtn">
                        <asp:Button ID="btnLogin" CssClass="BtnLogin TFS_Standardstyle" runat="server" Text="Landing" OnClientClick="return  Login();"  OnClick="btnLogin_Click" />
                    </p>
                    <p class="LoginError">
                        <asp:LinkButton ID="likbtnForgetPwd" CssClass="TFS_Standardstyle FontCss" runat="server" PostBackUrl="~/UserPage/UserForgetCode.aspx">forget password</asp:LinkButton>
                        <asp:LinkButton ID="likbtnRegister" CssClass="TFS_Standardstyle FontCssRight" runat="server" PostBackUrl="~/UserPage/UserPageRegister.aspx">Sign up now</asp:LinkButton>
                    </p>
                </div>
                </div>               
    <script type="text/javascript">
        /*获得页面的可视区域*/
        var scrennPhone = window.matchMedia('(max-width: 767px)');
        if (scrennPhone.matches) {
            var oHeight = document.documentElement.clientHeight;
            var Main = document.getElementById('MainPageLogin');
            Main.style.height = oHeight+'px';
        }
    </script>
    </div>
</asp:Content>
