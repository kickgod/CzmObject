<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDataList.aspx.cs" Inherits="CzmWeb.BackendManage.AddProductList" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register TagPrefix="uc1" TagName="wuc_ListPager" Src="~/Common/wuc_ListPager.ascx" %>
<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加产品</title>
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
        .Save{height: 25px;	width: 60px; border: none; background: gainsboro;cursor: pointer;color: darkturquoise;border: solid 1px gainsboro;margin-top: 0px;}  
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
    </style>
</head>
<body> 
    <form id="form1" runat="server">
    <div>
        <div class="Title TFS_Standardstyle">
            产品列表
        </div>
        <div >
            <center style="font-family:楷体,华文楷体,微软雅黑">
                产品类别:<asp:DropDownList ID="ddlShoosProductTypes" runat="server" Height="24px" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="ddlShoosProductTypes_OnSelectedIndexChanged" ></asp:DropDownList>
                是否包邮:<asp:DropDownList ID="ddlIiBaoyou" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" AutoPostBack="True" OnSelectedIndexChanged="ddlShoosProductTypes_OnSelectedIndexChanged" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">包邮</asp:ListItem>
                    <asp:ListItem Value="0">不包邮</asp:ListItem>
                </asp:DropDownList>
                是否热卖:<asp:DropDownList ID="ddlLiRemai" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px"  AutoPostBack="True" OnSelectedIndexChanged="ddlShoosProductTypes_OnSelectedIndexChanged">
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">热卖</asp:ListItem>
                    <asp:ListItem Value="0">不热卖</asp:ListItem>
                </asp:DropDownList>
                是否下架:<asp:DropDownList ID="ddlIsXiajia" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" AutoPostBack="True" OnSelectedIndexChanged="ddlShoosProductTypes_OnSelectedIndexChanged" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">下架</asp:ListItem>
                    <asp:ListItem Value="0">未下架</asp:ListItem>
                </asp:DropDownList>
                是否新品:<asp:DropDownList ID="ddlISnew" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" AutoPostBack="True" OnSelectedIndexChanged="ddlShoosProductTypes_OnSelectedIndexChanged" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">新品</asp:ListItem>
                    <asp:ListItem Value="0">非新品</asp:ListItem>
                </asp:DropDownList>
                <br/>
                产品名称[名称 中文/英文]<asp:TextBox ID="txtPRoductName" runat="server"  Width="150px" Height="22px" ></asp:TextBox>
                |关键词[描述 中文/英文]
                <asp:TextBox ID="txtKeyMiaoshu" Width="150px" Height="22px" runat="server"></asp:TextBox>
                关键词[产品 中文/英文]<asp:TextBox ID="txtProductKey"   Width="150px" Height="22px" runat="server"></asp:TextBox>
                <asp:Button ID="Button6" CssClass="Save" runat="server" Text="检索" OnClick="Button6_Click1" />
            </center>
        </div>
        <br/>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
                    <HeaderTemplate>
                        <tr class="table_title">
                            <td width="70px" align="center">
                                删除
                            </td>
                            <td width="40px" align="center">
                                编号
                            </td>
                            <td align="center">
                                产品名称
                            </td>
                            <td align="center"  >
                                产品英文名称
                            </td>
                            <td align="center" width="100px">
                                产品类别
                            </td>
                            <td width="50px" align="center">
                                是否下架
                            </td>
                            <td width="50px"  align="center">
                                是否包邮
                            </td>
                            <td width="50px" align="center">
                                是否热卖
                            </td>
                            <td align="center" width="50px">
                                是否新品
                            </td>
                            <td width="80px" align="center" >
                                当前价格
                            </td>
                            <td align="center" width="80px" >
                                过去价格
                            </td>
                            <td align="center">
                                上传图片
                            </td>
                            <td  align="center" width="110px">
                                上传时间
                            </td>
                            <td width="80px"  align="center">
                                产品关键词
                            </td>
                            <td align="center" width="100px">
                                操作
                            </td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class='A_p_item_<%# Container.ItemIndex % 2 %>' >
                            <td align="center">
                                <asp:Button ID="btndelete" runat="server" Text="" CssClass="btnDelete"  CommandArgument='<%#Eval("ProductID")%>' CommandName="Delete"/>
                            </td>
                            <td align="center">
                                <%#Eval("ProductID")%>
                            </td>
                            <td align="center">
                                <%#Eval("ProductName_c")%>
                            </td>
                            <td align="center">
                                <%#Eval("ProductName_e")%>
                            </td>
                            <td align="center">
                                <%#Eval("typeName_c")%>
                            </td>
                            <td align="center">
                                <%#Eval("IsVisiable")%>
                            </td>
                            <td align="center">
                                <%#Eval("IsBY")%>
                            </td>
                            <td align="center">
                                <%#Eval("IsRm")%>
                            </td>
                            <td align="center">
                                <%#Eval("IsNew")%>
                            </td>
                            <td align="center">
                                <%#Eval("price_last") %>
                            </td>
                            <td align="center">
                                <%#Eval("Price_now") %> 
                            </td>
                            <td align="center" width="100px">
                                <a href=<%#Eval("ImgPatjh") %> >图片查看</a>  
                            </td>
                            <td align="center">
                                <%#Eval("ImgUplodetime") %> 
                            </td>
                            <td align="center">
                                <%#Eval("ProductKey") %>
                            </td>
                            <td align="center">
                                <asp:Button ID="Button5" runat="server" Text="编辑" CssClass="Save"  CommandArgument='<%#Eval("ProductID")%>' CommandName="Edit" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="15" align="center"> 
                        <uc1:wucPager runat="server" ID="wucPager" OnBindList="wucPager_OnBindList" />
                    </td>
                </tr>
                <tr>
                    <td colspan="15" align="center"> 
                        <asp:Label ID="lblWhere" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>              
        </div>
    </div>
    </form>
</body>
</html>
