<%@ Page Title="" Language="C#" MasterPageFile="~/Master/UserPageMaster.Master" AutoEventWireup="true" CodeBehind="UserPageLogin.aspx.cs" Inherits="CzmWeb.UserPage.UserPageLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Mainpage{ width: 100%;height: 1080px;background-color:RGB(245,234,240) }
        .Mainpage .LoginUp{ width: 100%;height: 100px;background-color: inherit}
        .Mainpage .Login {background-color: inherit; width: 400px;margin: auto;height: 600px;margin-top: 15px}
        .Mainpage .Login .Ttile{height: 50px;line-height: 50px; color: RGB(176, 53, 112);font-size: 2em;text-align: center;font-style: italic;font-weight: bold;letter-spacing: 10px}
        .Mainpage .Login .Headsummary{ height: 40px;height: 40px;font-family: '华文楷体', '楷体', '微软雅黑','宋体';color: RGB(246, 139, 209);text-align:center  }
        .Mainpage .Login .UserID { height: 44px;width: 100%;line-height: 44px;}
        .Mainpage .Login .UserID img{ width: 40px;height: 40px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
        .Mainpage .Login .UserID .txtUserIDs{ height: 44px;width: 280px}
        .Mainpage .Login .UserID .IdIsRight{background-color: red;color: white;font-size: 30px;font-weight: 600;border: solid 1px red;text-align: center;vertical-align: bottom;
        border-radius: 50%;-webkit-border-radius: 50%;}
        .Mainpage .Login .ValidCode{ line-height: 45px;height: 45px;margin-top: 5px}
        .Mainpage .Login .ValidCode img{ width: 40px;height: 40px;border: RGB(245,234,240) 3px solid;vertical-align: bottom}
        .Mainpage .Login .ValidCode .txtUserpwds{ height: 44px;width: 100px} 
        .Mainpage .Login .ValidCode .BtnSendCodes{font-family: '华文楷体', '楷体', '微软雅黑', '宋体';height: 46px;width: 100px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color: 
        white;font-weight: 300;letter-spacing: 3px;font-size: large;margin-left: 50px;border-radius: 10px}
        .Mainpage .Login .LoginBtn{ margin-top: 10px;}
        .Mainpage .Login .LoginBtn .BtnLogin{ width: 288px;height: 46px;margin-left: 50px;background-color: RGB(176, 53, 112);border: RGB(176, 53, 112);color: white;font-weight: 300;letter-spacing: 3px;font-size: large; }
        .Mainpage .Login .LoginError{margin-top: 12px}
        .Mainpage .Login .LoginError .FontCss{ color: RGB(244, 113, 176);margin-left: 190px; }
        .Mainpage .Login .LoginError .FontCssRight{color: RGB(244, 113, 176);margin-left: 10px;}
        .Foot{ width: 100%;background-color: red;height: 120px;}
        </style>
    <script type="text/javascript">
        window.onload = function () {
            /**匹配屏幕查询**/
            /*轮播图的大小*/
            var widthLunbo;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Mainpage">
        <div class="LoginUp"></div>
        <div class="Login">
            <p class="Ttile">  创造门 </p>
            <p class="Headsummary"> 凝聚思想,开放思维,创造价值</p>
            <p class="UserID">
                <img src="../Images/SystemPicture/User.png"/>
                <asp:TextBox ID="txtUserID" CssClass="txtUserIDs" placeholder="请输入账号(绑定手机号)" runat="server">
                </asp:TextBox><asp:Label ID="lblisRight" CssClass="IdIsRight" Visible="False" runat="server" Text="X" Width="44" Height="44"></asp:Label>
            </p>
            <p class="UserID">
                <img src="../Images/SystemPicture/Userpwd.png"/>
                <asp:TextBox ID="TextBox1" CssClass="txtUserIDs" placeholder="请输入密码" runat="server"></asp:TextBox>
                <asp:Label ID="lblisRightTwo" CssClass="IdIsRight" Visible="False" runat="server" Text="X" Width="44" Height="44"></asp:Label>
            </p>
            <p class="ValidCode">
                <img src="../Images/SystemPicture/validcoed.png"/>
                <asp:TextBox ID="TextBox2" CssClass="txtUserpwds" placeholder="请输入验证码" runat="server"></asp:TextBox>
                <asp:Button ID="BtnSendCode" CssClass="BtnSendCodes" runat="server" Text="发送" />
            </p>
            <p class="LoginBtn">
                <asp:Button ID="Button1" CssClass="BtnLogin TFS_Standardstyle" runat="server" Text="发送" />
            </p>
            <p class="LoginError">
                <asp:LinkButton ID="likbtnForgetPwd" CssClass="TFS_Standardstyle FontCss" runat="server">忘记密码</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" CssClass="TFS_Standardstyle FontCssRight" runat="server">立即注册</asp:LinkButton>
            </p>
        </div>
        <footer class="Foot">
            
        </footer>
    </div>
</asp:Content>
