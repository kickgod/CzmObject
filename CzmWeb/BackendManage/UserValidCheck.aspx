<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserValidCheck.aspx.cs" Inherits="CzmWeb.BackendManage.UserValidCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <title>用户管理</title>
    <style type="text/css">  
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{text-align: center; width: 100%;text-indent: 50px;color: RGB(153, 23, 85);font-weight: 600;font-size: 1.1em}
        .txtBox{ width: 200px;height: 30px;line-height: 30px}
        .TdClass{text-align: center}
    </style>
    <script type="text/javascript">
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Div_Center">
        <div class="Title TFS_Standardstyle">
            系统管理员
        </div>
        <div class="Div_Main">
            <table class="table4" cellpadding="0px" cellspacing="0px" width="100%">
                <tr>
                    <td class="TdClass">
                        管理员列表
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlAdmin" runat="server" Height="25px" AutoPostBack="True" OnSelectedIndexChanged="ddlAdmin_SelectedIndexChanged" Width="220px">
                        </asp:DropDownList>
                    </td>
                   <td colspan="2" class="TdClass" >
                       [这里你可以对管理进行修改操作]
                   </td>
                </tr>
                <tr>
                    <td class="TdClass">
                        姓名
                    </td> 
                    <td>
                        <asp:TextBox ID="txtName"  Enabled="False" runat="server"></asp:TextBox>
                    </td>
                    <td class="TdClass">
                        电话号码
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone"  Enabled="False" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="TdClass">
                        管理员ID
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdminID"  Enabled="False" runat="server"></asp:TextBox>
                        <asp:Label ID="lblIDLast" Visible="True" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="TdClass">
                        密码
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdminPwd"  Enabled="False" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="TdClass">
                        添加时间
                    </td>
                    <td>
                        <asp:Label ID="lbladdTime" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="TdClass">
                        状态
                    </td>
                    <td>
                        正常
                     
                        <asp:Label ID="lblxiugai" Visible="True" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="TdClass" >
                        <asp:Button ID="btnAdd" runat="server" Text="" CssClass="btnAdd" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnEdit" runat="server" Text="" CssClass="btnEdit" OnClick="btnEdit_Click" />
                        <asp:Button ID="Button1" runat="server" Text="" CssClass="btn_save" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
