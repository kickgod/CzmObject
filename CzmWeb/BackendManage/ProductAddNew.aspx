<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductAddNew.aspx.cs" Inherits="CzmWeb.BackendManage.ProductAddNew" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register TagPrefix="uc1" TagName="wuc_ListPager" Src="~/Common/wuc_ListPager.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        *{padding: 0px}
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{height: 40px;line-height: 40px;text-align: center; width: 100%;text-indent: 50px;color: black;font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{height: 25px;	width: 60px; border: none; background: gainsboro;cursor: pointer;color: darkturquoise;border: solid 1px gainsboro;
            margin-top: 0px;
        }  
        .Save:hover{background-color: gray}
        .ProductShowNow{position: relative; width: 900px;height: 300px;background-color: white;margin: 0px auto;font-family:ProductFontStyle } 
        .ProductShowNow:hover{ border: 3px solid RGB(1,135,234);}
        .ProductShowNow .PictureShowLeft{float: left;width: 300px;height: 284px;background-color: azure;  border:8px solid white}
        .ProductShowNow .PitrueNotOpcity{background-image: url('../ProductImage/2017108175537609.jpg');display: block;position: absolute; width: 264px;height: 248px;top: 24px;left: 24px}
        .ProductShowNow .Right{ width: 580px;height: 300px;background-color: white;float: right}
        .ProductShowNow .Right .ProductNametitle{text-align: center}
        .ProductShowNow .Right h1{ height: 40px;color: white;font-weight: 400;line-height: 25px;font-size: 24px;background-color: black;display: inline;padding:4px 30px;}
        .ProductShowNow .Right h2{ font-size: 23px;height: 60px;line-height: 60px;font-weight:500 }
        .ProductShowNow .Right .Jnjieia{ width: 98%;overflow: hidden;font-size: 15px;color: RGB(191, 181, 181);height: 110px;overflow: hidden;text-overflow: ellipsis; word-break: break-all}
        .ProductShowNow .Right .DownGoumai .MeonyChar{ font-weight: 700;color: RGB(148, 30, 80);font-size: 25px;vertical-align: top;padding-left: 30px;}
        .ProductShowNow .Right .DownGoumai .Meony{ font-weight: 700;font-size: 30px;color:RGB(148, 30, 80) }
        .ProductShowNow .Right .DownGoumai .MeonyLastChar{ color: RGB(191,181,181); text-decoration: line-through;font-size: 18px}
        .ProductShowNow .Right .DownGoumai .ButtonCheck{margin-left: 170px;line-height: 40px;background-color: RGB(105, 17, 75);padding: 8px 20px;text-align: center;color: white;font-weight: 400;font-size: 1.2em }
        .btnYes{ width: 50px;height: 25px;background-color: RGB(209, 148, 204);border: none;color: white;font-weight: 500 }
        .btnNo{width: 50px;height: 25px;background-color: inherit;border: none;color: gainsboro}
        .XiaoxiProduct{ height: 50px;line-height: 50px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="Title TFS_Standardstyle">
            添加产品
        </div>
        <div>
            <asp:Panel ID="pnlProduct" runat="server">
                <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                    <tr>
                        <td align="center"  >
                            编号
                        </td>
                        <td colspan="5">
                            <asp:Label ID="lblProductId" runat="server" Text="自动编号"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            是否下架      
                        </td>
                        <td>
                            <asp:CheckBox ID="chkIsDown" runat="server" Text="下架" />
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
                    <tr>
                        <td align="center">
                            图片上传
                        </td>
                        <td>
                            <uc1:wuc_FileUpload runat="server" ID="wuc_FileUpload" />
                        </td>
                        <td align="center">
                            当前价格
                        </td>
                        <td>
                            <asp:TextBox ID="txtPriceNow" runat="server"  CssClass="txtBox"></asp:TextBox>
                        </td>
                        <td align="center">
                            过去价格
                        </td>
                        <td>
                            <asp:TextBox ID="txtPriceLst" runat="server"  CssClass="txtBox"></asp:TextBox>
                            [默认值为当前价格的1.2倍]</td>
                    </tr>
                    <tr>
                        <td align="center">关键字[英文 空格分开]</td>
                        <td colspan="5">
                            <asp:TextBox ID="txtProductKeyWordsEnd" Width="99%" Height="25px"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            产品简介[中文]
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtProductIntroDuct" Width="99%" Height="25px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            产品简介[英文]
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtProductIntroDuctEng" Width="99%" Height="25px" runat="server"></asp:TextBox>                                       
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"  align="center">
                            <asp:Button ID="btnAddProduct" runat="server" Text="添加" CssClass="Save" OnClick="btnAddProduct_Click" />
                            <asp:Button ID="btnEditProduct" runat="server" Text="编辑" CssClass="Save"  OnClick="btnEditProduct_Click" />
                            <asp:Button ID="btnSaveProduct" runat="server" Text="保存" CssClass="Save" OnClick="btnSaveProduct_Click"  />                       
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:Label ID="Label1"  Visible="False" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>   
    </div>
    </form>
</body>
</html>
