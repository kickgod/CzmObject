<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductList.aspx.cs" Inherits="CzmWeb.BackendManage.AddProductList" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>


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
        .Save{margin-top: 5px;	width: 60px; border: none; background: gainsboro;
cursor: pointer;color: darkturquoise;border: solid 1px gainsboro
        }   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="Title TFS_Standardstyle">
            添加产品类型
        </div>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <tr>
                    <td align="center">
                        编号
                    </td>
                    <td >
                        自动编号<asp:Label ID="lblID" runat="server" Text="" Visible="False" ></asp:Label>
                    </td>
                    <td align="center">
                        选择查看
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCheckType" AutoPostBack="True"  OnSelectedIndexChanged="ddlCheckType_OnSelectedIndexChanged" runat="server" CssClass="txtBox" ></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        类别名称
                    </td>
                    <td>
                        <asp:TextBox ID="txtTypeNameChe" CssClass="txtBox"  runat="server"></asp:TextBox>
                    </td>
                    <td align="center">
                        英文名称
                    </td>
                    <td>
                        <asp:TextBox ID="txtTypeNameEng" CssClass="txtBox"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <asp:Button ID="btnAdd" runat="server" Text="添加" CssClass="Save" OnClick="btnAdd_OnClick" />
                        <asp:Button ID="btnEdit" runat="server" Text="编辑" CssClass="Save" OnClick="btnEdit_OnClick" />
                        <asp:Button ID="btnSave" runat="server" Text="保存" CssClass="Save" OnClick="btnSave_OnClick"   />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br/>
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
                            <asp:Button ID="btnAddProduct" runat="server" Text="添加" CssClass="Save" OnClick="btnAddProduct_Click" Visible="False" />
                            <asp:Button ID="btnEditProduct" runat="server" Text="编辑" CssClass="Save" Visible="False" OnClick="btnEditProduct_Click" />
                            <asp:Button ID="btnSaveProduct" runat="server" Text="保存" CssClass="Save" OnClick="btnSaveProduct_Click"  />                       
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <br/><br/>
        <div class="Title TFS_Standardstyle">
            产品列表
        </div>
        <table class="table4">
            
        </table>
    </div>
    </form>
</body>
</html>
