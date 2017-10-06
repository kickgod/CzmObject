<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CzmWeb.BackendManage.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="../css3/Css3WebLog.css" />
    <title></title>
    <script>
        function isempty() {
            var ch = document.getElementById("txtID");
            var sh2 = document.getElementById("txtpwd");
            if (ch.value == "" || sh2.value == "") {
                alert("请输入账号或密码！");
                return false;
            } else {
                return true;
            }
        }
    </script>
    <style>
        * {
            padding: 0px;
            margin: 0px;
        }
        a.a3 {
            text-align: center;
        }
        a.a2 {
            text-decoration: none;
            text-decoration-color: #00ffff
        }
        body {
            width: 100%;
            height: 1030px;
        }
        .style1 {
            margin-left: 0px;
        }
        .BtnLogin{ width: 210px;margin-left: 70px;background-color: RGB(176, 53, 112);border-color: RGB(176,53,112)}
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="height: 1025px; width: 100%;">
            <div style="width: 15%; float: left; height: 1021px; background-color:RGB(176,53,112);" >
                <div style="height: 146px; background-color:RGB(176,53,112);">
             
                </div>
            </div>
            <div style="width: 68%; float: left; height: 914px; margin-bottom: 0px;">
                <div style="width: 50%; margin: auto;margin-top: 100px">
                        <h2 style="border-color: #FFFFFF; color: #000000; font-family: 华文新魏; text-align: center;">管理员登陆界面</h2>
                        <br />
                        <hr style="border-width: thin; border-color: #00FFFF;" />
                        <p style="text-align: center; height: 50px;line-height: 50px">
                            <asp:Label ID="lblid" runat="server" Text="账号：" width="70px" ForeColor="Black" Font-Names="华文楷体"></asp:Label>
                            <asp:TextBox ID="txtID"  runat="server" Text="" Height="30px" Width="200px" ForeColor="#66FFFF"></asp:TextBox>
                        </p>
                        <br/>
                        <p style="text-align: center; height: 50px;line-height: 50px">
                            <asp:Label ID="lblmima" runat="server" Text="密码：" width="70px" ForeColor="Black" Font-Names="华文楷体"></asp:Label>
                            <asp:TextBox ID="txtpwd"  runat="server" Text="" Height="30px" Width="200px" ForeColor="#66FFFF" TextMode="Password"></asp:TextBox>
                        </p>
                        <br/>
                        <p style="text-align: center; height: 50px;line-height: 50px">
                            <asp:Button ID="btnlogin" CssClass="BtnLogin" runat="server" Text="登陆" OnClientClick="return isempty()"  BorderStyle="Double" CausesValidation="False" Height="23px" OnClick="btnlogin_Click" style="margin-bottom: 0px" />
                        </p>
                        <hr style="color: #00FFFF" />
                        <div>
                            <p style="text-align: center; height: 50px;line-height: 50px">
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="a2" Font-Names="华文新魏" ForeColor="#000066" PostBackUrl="~/Default.aspx" >返回首页</asp:LinkButton>
                                @<asp:Label ID="Label1" runat="server" Font-Names="华文新魏" Text="四川创造门高新技术开发有限公司"></asp:Label>
                            </p>
                            <p style="text-align: center; height: 50px;line-height: 50px">
                                <asp:Label ID="Label2" runat="server" Font-Names="华文新魏" Text="联系电话：15682690975"></asp:Label>   
                             </p>                           
                        </div>
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
            <div style="width: 16%; float: left; height: 1024px; background-color:RGB(176,53,112);">
                <div style="height: 146px; background-color:RGB(176,53,112)">          
                </div>
            </div>
        </div>
    </form>
</body>
</html>
