<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserValidCheck.aspx.cs" Inherits="CzmWeb.BackendManage.UserValidCheck" %>

<%@ Register src="../Common/wuc_ListPager.ascx" tagname="wuc_ListPager" tagprefix="uc1" %>

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
        *{ padding: 0px;margin: 0px;text-decoration: none}  
         .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{height: 40px;line-height: 40px; text-align: center; width: 100%;text-indent: 50px;background-color: RGB(153, 23, 85);color: white;font-weight: 400;font-size: 1.3em}
        .txtBox{ width: 200px;height: 30px;line-height: 30px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{margin-top: 5px;	height: 26px;width: 60px; border: none; background: none;cursor: pointer;background-color: gainsboro;color: darkturquoise;border: solid 1px gainsboro}
        .auto-style1
        {
            height: 32px;
        }
        .A_p_item_0{background-color: RGB(248,232,235)}
        .A_p_item_0:hover{ background-color: RGB(243,35,135);color: white }
        .A_p_item_1{background-color: white}
        .A_p_item_1:hover{ background-color: RGB(243,35,135);color: white }
    </style>
    <script type="text/javascript">
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Div_Center">
        <div class="Div_Main">
            <div class="Title TFS_Standardstyle">
                管理员信息
            </div>
            <br/>
            <table class="table4" cellpadding="0px" cellspacing="0px" width="100%">
                <tr>
                    <td class="TdClass">
                        管理员
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
                        <asp:TextBox ID="txtName"  Enabled="False" runat="server" Width="215px" Height="23px" ></asp:TextBox>
                    </td>
                    <td class="TdClass">
                        电话号码
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone"  Enabled="False" runat="server"  Width="215px" Height="23px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="TdClass">
                        管理员ID
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdminID"  Enabled="False" runat="server"   Width="215px" Height="23px" ></asp:TextBox>
                        <asp:Label ID="lblIDLast" Visible="False" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="TdClass">
                        密码
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdminPwd"  Enabled="False" runat="server"  Width="215px" Height="23px"  ></asp:TextBox>
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
                     
                        <asp:Label ID="lblxiugai" Visible="False" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="TdClass hs" >
                        <asp:Button ID="btnAdd" runat="server" Text="添加" CssClass="Save" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnEdit" runat="server" Text="编辑" CssClass="Save" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="Save" OnClick="btnSave_Click"   />
                    </td>
                </tr>
            </table>
            <br/><br/>
            <div class="Title TFS_Standardstyle">
                系统管理员列表
            </div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
                    <HeaderTemplate>
                        <tr class="table_title">
                            <td width="140px" align="center">
                                编号
                            </td>
                            <td align="center" width="220px">
                                管理员名称
                            </td>
                            <td width="120px" align="center">
                                电话号码
                            </td>
                            <td width="80px" align="center">
                                账号
                            </td>
                            <td width="180px" align="center">
                                添加时间
                            </td>
                            <td width="80px"  align="center">
                                状态
                            </td>
                            <td width="100px"  align="center">
                                操作
                            </td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class='A_p_item_<%# Container.ItemIndex % 2 %>' >
                            <td align="center">
                                <%#(Container.ItemIndex + 1)%>
                            </td>
                            <td align="center">
                                <%#Eval("AdminName")%>
                            </td>
                            <td align="center">
                                <%#Eval("Phone")%>
                            </td>
                            <td align="center">
                                <%#Eval("AdminId")%>
                            </td>
                            <td align="center">
                                <%#Eval("GetDate")%>
                            </td>
                            <td align="center">
                                正常
                            </td>
                            <td align="center">
                                <asp:Button ID="btnDel" runat="server" OnClientClick="return confirm('真的要删除?')" Text=" "
                                            Visible='<%# Eval("state").ToString()=="30" %>'
                                            CssClass="btnDelete" CommandArgument='<%#Eval("AdminId")%>'
                                            CommandName="Delete" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>  
        </div>
    </div>
    </form>
</body>
</html>
