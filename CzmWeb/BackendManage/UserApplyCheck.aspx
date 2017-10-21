<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserApplyCheck.aspx.cs" Inherits="CzmWeb.BackendManage.UserApplyCheck" %>
<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户申请</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{text-align: center; width: 100%;text-indent: 50px;color: black;font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 200px;height: 30px;line-height: 30px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{text-align: center;height: 25px;	width: 65px; border: none; background: palevioletred;cursor: pointer;color: white;border: solid 1px gainsboro;
            margin-top: 0px;
        }  
        .Save:hover{ background-color: RGB(238, 12, 121); }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Div_Main">
        <div class="Title TFS_Standardstyle">
           用户申请审核
        </div>
        <div style="height: 40px;line-height: 26px">
            <center style="font-family: 楷体,华文楷体,微软雅黑;">
                  性别:<asp:DropDownList ID="ddlSex" runat="server" AutoPostBack="True" Height="26px" OnSelectedIndexChanged="ddlSex_OnSelectedIndexChanged" >
                      <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                      <asp:ListItem Value="1">男</asp:ListItem>
                      <asp:ListItem Value="0">女</asp:ListItem>
                  </asp:DropDownList>
                  会员类别:<asp:DropDownList ID="ddlUserType" runat="server"   AutoPostBack="True" Height="26px"  OnSelectedIndexChanged="ddlUserType_OnSelectedIndexChanged"  >
                      <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                      <asp:ListItem Value="1">普通会员</asp:ListItem>
                      <asp:ListItem Value="2">钻石会员</asp:ListItem>
                  </asp:DropDownList>
                  状态<asp:DropDownList ID="ddlState" runat="server"  AutoPostBack="True" Height="26px"  OnSelectedIndexChanged="ddlState_OnSelectedIndexChanged" >
                      <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                      <asp:ListItem Value="10">未审核</asp:ListItem>
                      <asp:ListItem Value="30">已通过</asp:ListItem>
                      <asp:ListItem Value="-30">未通过</asp:ListItem>
                  </asp:DropDownList>
                  关键字[手机号码]:<asp:TextBox ID="txtPhone" runat="server" Height="26px"></asp:TextBox>
                  关键字[用户名]<asp:TextBox ID="txtName" runat="server" Height="26px"></asp:TextBox>
                 <asp:Button ID="Button1" runat="server" Text="查找"  CssClass="Save" OnClick="Button1_OnClick" ></asp:Button>
            </cente>
        </div>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
                    <HeaderTemplate>
                        <tr class="table_title">
                            <td width="70px" align="center">
                                删除
                            </td>
                            <td width="140px" align="center">
                                用户手机ID
                            </td>
                            <td align="center" width="70px">
                                用户名称
                            </td>
                            <td align="center" width="70px">
                                会员等级
                            </td>
                            <td width="40px" align="center">
                                性别
                            </td>
                            <td width="80px"  align="center">
                                密码
                            </td>
                            <td width="80px" align="center">
                                微信号码
                            </td>
                            <td align="center" width="90px">
                                电子邮件
                            </td>
                            <td width="180px" align="center" >
                                身份证号码
                            </td>
                            <td align="center" width="110px" >
                                身份证图片1
                            </td>
                            <td  align="center" width="110px">
                                身份证图片2
                            </td>
                            <td width="80px"  align="center">
                                状态
                            </td>
                            <td align="center" width="220px">
                                审核
                            </td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class='p_item_<%# Container.ItemIndex % 2 %>' onmouseover="c=this.className;this.className='p_item_hover';"
                            onmouseout="this.className=c">
                            <td align="center">
                                <asp:Button ID="btndelete" runat="server" Text="" CssClass="btnDelete"  CommandArgument='<%#Eval("UserId")%>' CommandName="Delete"/>
                            </td>
                            <td align="center">
                                <%#Eval("UserId")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserName_e")%>
                            </td>
                            <td align="center">
                                <%#Eval("TypeName_c")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserSexType")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserPwd")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserWechat")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserEmail")%>
                            </td>
                            <td align="center">
                                <%#Eval("UserCard") %>
                            </td>
                            <td align="center">
                               <a href="../CradIDPictureDB/201710416920339.jpg">图片查看</a>  
                            </td>
                            <td align="center">
                                <a href=‘<%#Eval("UserCardPicture2_Address") %>’>图片查看</a>  
                            </td>
                            <td align="center">
                                <%#Eval("UserStateFlag") %>
                            </td>
                            <td align="center">
                                <asp:Button ID="Button5" runat="server" Text="通过" CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="10" %>' CommandArgument='<%#Eval("UserId")%>' CommandName="OK" />
                                <asp:Button ID="Button8" runat="server" Text="不通过"  CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="10" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="NotOK"/>
                                <asp:Button ID="Button2" runat="server" Text="屏蔽"  CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="30" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="Close"/>
                                <asp:Button ID="Button3" runat="server" Text="会员升级"  CssClass="Save"  Visible='<%# Eval("UserType").ToString()=="1"&&Eval("UserState").ToString()=="30" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="Up"/>
                                <asp:Button ID="Button4" runat="server" Text="会员降级"  CssClass="Save"  Visible='<%# Eval("UserType").ToString()=="2"&&Eval("UserState").ToString()=="30" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="Down"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="13" align="center"> 
                        <uc1:wucPager runat="server" ID="wucPager1" OnBindList="wucPager_OnBindList" />
                    </td>
                </tr>
                <tr>
                    <td colspan="13" align="center"> 
                        <asp:Label ID="lblWhere" runat="server" Visible="False"  Text=""></asp:Label>
                    </td>
                </tr>
            </table>              
        </div>
    </div>
    </form>
</body>
</html>
