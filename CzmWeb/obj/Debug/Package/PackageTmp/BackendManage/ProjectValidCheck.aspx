<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectValidCheck.aspx.cs" Inherits="CzmWeb.BackendManage.ProjectValidCheck" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register TagPrefix="uc1" TagName="wuc_ListPager" Src="~/Common/wuc_ListPager.ascx" %>
<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加项目</title>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none}
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{height: 40px;line-height: 40px;text-align: center; width: 100%;text-indent: 50px;color:black;font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{height: 25px;	width: 60px; border: none; background: gainsboro;cursor: pointer;color: RGB(243,35,135);border: solid 1px g;margin-top: 0px;}  
        .Save:hover{background-color: gray}
        .ProductShowNow{position: relative; width: 900px;height: 300px;background-color: white;margin: 0px auto;font-family:ProductFontStyle } 
        .ProductShowNow:hover{ border: 3px solid RGB(1,135,234);}
        .ProductShowNow .PictureShowLeft{float: left;width: 300px;height: 284px;background-color: azure;  border:8px solid white}
        .ProductShowNow .PitrueNotOpcity{background-image: url('../ProductImage/2017108175537609.jpg');display: block;position: absolute; width: 264px;height: 248px;top: 24px;left: 24px}
        .ProductShowNow .Right{ width: 580px;height: 300px;background-color: white;float: right}
        .ProductShowNow .Right .ProductNametitle{text-align: center}
        .ProductShowNow .Right h1{ height: 40px;color: white;font-weight: 400;line-height: 25px;font-size: 24px;background-color: black;display: inline;padding:4px 30px;}
        .ProductShowNow .Right h2{ font-size: 23px;height: 40px;line-height: 40px;font-weight:500 }
        .ProductShowNow .Right .Jnjieia{ width: 98%;overflow: hidden;font-size: 15px;color: RGB(191, 181, 181);height: 70px;word-break: break-all}
        .ProductShowNow .Right .DownGoumai .MeonyChar{ font-weight: 700;color: RGB(148, 30, 80);font-size: 25px;vertical-align: top;padding-left: 30px;}
        .ProductShowNow .Right .DownGoumai .Meony{ font-weight: 700;font-size: 30px;color:RGB(148, 30, 80) }
        .ProductShowNow .Right .DownGoumai .MeonyLastChar{ color: RGB(191,181,181); text-decoration: line-through;font-size: 18px}
        .ProductShowNow .Right .DownGoumai .ButtonCheck{margin-left: 170px;line-height: 40px;background-color: RGB(105, 17, 75);padding: 8px 20px;text-align: center;color: white;font-weight: 400;font-size: 1.2em }
        .btnYes{ width: 50px;height: 25px;background-color: RGB(209, 148, 204);border: none;color: white;font-weight: 500 }
        .btnNo{width: 50px;height: 25px;background-color: inherit;border: none;color: gainsboro}
        .XiaoxiProduct{ height: 50px;line-height: 50px;}
        .A_p_item_0{background-color: RGB(248,232,235)}
        .A_p_item_0:hover{ background-color: RGB(243,35,135);color: white }
        .A_p_item_1{background-color: white}
        .A_p_item_1:hover{ background-color: RGB(243,35,135);color: white }
        .auto-style1
        {
            height: 32px;
        }
    </style>
</head>
<body> 
<form id="form1" runat="server">
    <div>
        <div class="Title TFS_Standardstyle">
            项目列表
        </div>
        <div >
            <center style="font-family:楷体,华文楷体,微软雅黑">
                项目名称<asp:TextBox ID="txtProjectShow" runat="server"  Width="150px" Height="22px" ></asp:TextBox>
                |关键词[描述]
                <asp:TextBox ID="txtKeyMiaoshu" Width="150px" Height="22px" runat="server"></asp:TextBox>
                项目ID<asp:TextBox ID="txtProductKey"   Width="150px" Height="22px" runat="server"></asp:TextBox>
                状态<asp:DropDownList ID="ddlState" runat="server"  AutoPostBack="True" Height="26px" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"  >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="10">未审核</asp:ListItem>
                    <asp:ListItem Value="30">已通过</asp:ListItem>
                    <asp:ListItem Value="-30">未通过</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button6" CssClass="Save" runat="server" Text="检索" OnClick="Button6_Click1" />
            </center>
        </div>
        <br/>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <asp:Repeater ID="rpItem" runat="server" OnItemCommand="rpItem_ItemCommand">
                    <HeaderTemplate>
                        <tr class="table_title">
                            <td width="70px" align="center">
                                删除
                            </td>
                            <td  align="center">
                                编号
                            </td>
                            <td align="center">
                                项目名称
                            </td>
                            <td align="center"  >
                                申请人名称
                            </td>
                            <td>
                                专利号
                            </td>
                            <td align="center" >
                                用户ID
                            </td>
                            <td  align="center" >
                                投资金额
                            </td>
                            <td align="center" width="100px">
                                上传图片
                            </td>
                            <td align="center" width="100px">
                                证书下载
                            </td>
                            <td  align="center" >
                                上传时间
                            </td>
                            <td  align="center" >
                                 状态
                            </td>                           
                            <td align="center" width="250px">
                                操作
                            </td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class='A_p_item_<%# Container.ItemIndex % 2 %>' >
                            <td align="center">
                                <asp:Button ID="btndelete" runat="server" Text="" CssClass="btnDelete" OnClientClick="javascript:return confirm('你确定要删除吗');"  CommandArgument='<%#Eval("PciID")%>' CommandName="Delete"/>
                            </td>
                            <td align="center">
                                <%#Eval("PciID")%>
                            </td>
                            <td align="center">
                                <%#Eval("PciName_c")%>
                            </td>
                            <td align="center">
                                <%#Eval("FzrName")%>
                            </td>
                            <td align="center">
                                <%#Eval("PatentNumber")%>  
                            </td>
                            <td align="center">
                                <%#Eval("UserId")%>
                            </td>
                            <td align="center">
                                <%#Eval("PciInvestMeony")%>
                            </td>
                            <td align="center">
                                <a href=<%#Eval("ImgPicturPath") %> >图片查看</a>  
                            </td>
                            <td align="center">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("PciRemark")%>'>证书上传</asp:HyperLink>
                            </td>
                            <td align="center">
                                <%#Eval("ImgUploadtime")%>
                            </td>
                            <td align="center" width="80px">
                                <%# (Eval("PciState").ToString()=="30") ?"通过":( (Eval("PciState").ToString()=="10")?"已提交":"未通过" )  %>
                            </td>
                            <td align="center">
                                <asp:Button ID="Button3" runat="server" Text="Button"  Visible="False" CommandArgument='<%#Eval("PciID")%>'  />
                                <asp:Button ID="Button5" runat="server" Text="通过" CssClass="Save" Visible='<%#Eval("PciState").ToString()=="10" %>'  CommandArgument='<%#Eval("PciID")%>' CommandName="OK" />
                                <asp:Button ID="Button1" runat="server" Text="不通过" CssClass="Save" Visible='<%#Eval("PciState").ToString()=="10" %>' CommandArgument='<%#Eval("PciID")%>' CommandName="NotOK" />
                                <asp:Button ID="Button2" runat="server" Text="查看" CssClass="Save"  CommandArgument='<%#Eval("PciID")%>' CommandName="Edit" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="12" align="center"> 
                        <uc1:wucPager runat="server" ID="wucPager" OnBindList="wucPager_OnBindList" />
                    </td>
                </tr>
                <tr>
                    <td colspan="12" align="center"> 
                        <asp:Label ID="lblWhere" runat="server" Visible="False" Text=""></asp:Label>
                    </td>
                </tr>
            </table>              
        </div>
    </div>
</form>
</body>
</html>