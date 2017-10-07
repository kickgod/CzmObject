<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductList.aspx.cs" Inherits="CzmWeb.BackendManage.AddProductList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加产品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{text-align: center; width: 100%;text-indent: 50px;color: RGB(153, 23, 85);font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{margin-top: 5px;	height: 26px;width: 60px; border: none; background: none;cursor: pointer;background-color: gainsboro;color: darkturquoise;border: solid 1px gainsboro}   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="Title TFS_Standardstyle">
            添加产品
        </div>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </div>
        <div class="Title TFS_Standardstyle">
            添加产品
        </div>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <tr>
                    <td align="center">
                        编号
                    </td>
                    <td>
                       自动编号
                    </td>
                    <td align="center">
                        产品名称
                    </td>
                    <td>
                        <asp:TextBox ID="txtNameChinese" runat="server"  CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td align="center">
                        英文名称
                    </td>
                    <td>
                        <asp:TextBox ID="txtNameEnglish" runat="server"  CssClass="txtBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        所属类别
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlProductType" runat="server" CssClass="txtBox" ></asp:DropDownList>
                    </td>
                    <td align="center">
                        淘宝地址
                    </td>
                    <td>
                        <asp:TextBox ID="txttaobaoUrl" runat="server"  CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td align="center" >
                        关键字[空格分开]
                    </td>
                    <td>
                        <asp:TextBox ID="txtKetWords" runat="server"  CssClass="txtBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" >
                        是否包邮
                    </td>
                    <td>
                        <asp:CheckBox ID="chkBaoyou" runat="server" />包邮
                    </td>
                    <td align="center" >
                        是否热卖
                    </td>
                    <td>
                        <asp:CheckBox ID="chbremai" runat="server" />热卖
                    </td>
                    <td align="center" >
                        是否新品
                    </td>
                    <td>
                        <asp:CheckBox ID="chbIsNew" runat="server" />新品
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
