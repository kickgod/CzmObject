<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDataShow.aspx.cs" Inherits="CzmWeb.BackendManage.ProductDataShow" %>
<%@ Register TagPrefix="uc1" TagName="wucPager" Src="~/Common/wucPager.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        .ProductShowNow .PitrueNotOpcity{display: block;position: absolute; width: 264px;height: 248px;top: 24px;left: 24px}
        .ProductShowNow .Right{ width: 580px;height: 300px;background-color: white;float: right}
        .ProductShowNow .Right .ProductNametitle{text-align: center}
        .ProductShowNow .Right h1{ height: 40px;color: white;font-weight: 400;line-height: 25px;font-size: 24px;background-color: black;display: inline;padding:4px 30px;}
        .ProductShowNow .Right h2{ font-size: 23px;height: 50px;line-height: 50px;font-weight:500 }
        .ProductShowNow .Right .Jnjieia{ width: 98%;overflow: hidden;font-size: 15px;color: RGB(191, 181, 181);height: 90px;word-break: break-all}
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
        <hr width="80%" align="center" style="margin: 0px auto" />
    <br/>
    <div>
        <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
            <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
                <ItemTemplate>
                    <div class="ProductShowNow" id="1">
                        <div  class="PictureShowLeft" style="background-image: url('<%#Eval("ImgPatjh")%>'); opacity: 0.5; filter: alpha(opacity=50); z-index: 1;">
                        </div>
                        <div class="PitrueNotOpcity">
                            <img src='<%#Eval("ImgPatjh")%>'  alt="加载中..." width="100%" height="100%" />
                        </div>
                        <div class="Right"> 
                            <div class="ProductNametitle"><h1><%#Eval("ProductName_c")%></h1></div>
                            <h2 style="font-weight: 400;">[关 键 字]<%#Eval("ProductKey")%></h2>
                            <p class="Jnjieia">
                                [介绍] <%#Eval("ProductDescription_c")%>
                            </p>
                            <p class="DownGoumai">
                                <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server"  CssClass="ButtonCheck" NavigateUrl='<%#Eval("taobaoUrl")%>'>购买</asp:HyperLink></span>
                            </p>
                            <p style="height:50px;line-height:50px">
                                <button class="btn<%#(Eval("IsBY").ToString()==null ||Eval("IsBY").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsBY"))?"Yes":"No") %>">包邮</button>
                                <button class="btn<%#(Eval("IsRm").ToString()==null ||Eval("IsRm").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsRm"))?"Yes":"No") %>">热卖</button>
                                <button class="btn<%#(Eval("IsNew").ToString()==null||Eval("IsNew").ToString()=="")? "No":(Convert.ToBoolean(Eval("IsNew"))?"Yes":"No") %>">新品</button>
                            </p>
                        </div>
                    </div>
                    <hr width="80%" align="center" style="margin: 0px auto" />
                </ItemTemplate>
            </asp:Repeater>
            <tr>
                <td colspan="14" align="center"> 
                    <uc1:wucPager runat="server" ID="wucPager" OnBindList="wucPager_OnBindList" />
                </td>
            </tr>
            <tr>
                <td colspan="14" align="center"> 
                    <asp:Label ID="lblWhere" runat="server" Visible="false" Text=""></asp:Label>
                </td>
            </tr>
        </table>              
    </div>
    </form>
</body>
</html>
