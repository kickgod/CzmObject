<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductTypeTwoAdd.aspx.cs" Inherits="CzmWeb.BackendManage.ProductTypeTwoAdd" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        *{ padding: 0px;text-decoration: none;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{height: 40px;line-height: 40px;text-align: center; width: 100%;text-indent: 50px;color:black;font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{height: 19px;	
            width: 60px; border: none; background: gainsboro;cursor: pointer;color: RGB(243,35,135);border: solid 1px gainsboro;margin-top: 0px;
        }  
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
        /**页面Css**/
        .Main_Div{ width: 100%;margin: auto;height: 1000px}
        .Province_Div{ width: 20%;float: left; border-right: gainsboro solid 1px;height: 100%}
        .Region_Div{ width: 79%;float: right;height: 100%}
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="Main_Div">
        <div class="Province_Div">
            <br/>
            <h3>产品类别</h3>
            <asp:TreeView ID="trvNode" runat="server" ImageSet="Arrows" OnSelectedNodeChanged="trvNode_SelectedNodeChanged1">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
        <div class="Region_Div">
            <div>
                <table width="99%"; align="center"; border="1" cellpadding="0" cellspacing="0" class="table4">
                    <caption>添加类别</caption>
                    <tr>
                        <td align="center">
                            编号
                        </td>
                        <td>
                            <asp:Label ID="lblProvinceId" runat="server" Text="自动编号"></asp:Label>
                        </td>
                        <td align="center">
                            父级
                        </td>
                        <td>
                            <asp:Label ID="lblFuji" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblFujiRegion" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            中文名称
                        </td>
                        <td>
                            <asp:TextBox ID="txtBoxCHNname" CssClass="txtBox" runat="server"></asp:TextBox>
                        </td>
                        <td align="center">
                            英文名称
                        </td>
                        <td>
                            <asp:TextBox ID="txtBoxENGname" CssClass="txtBox" runat="server"></asp:TextBox>
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
                            状态
                        </td>
                        <td>
                            正常
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            描述[中文]
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtDescriptionCHN" runat="server" Width="98%" Height="22px"> </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            描述[英文]
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtDescriptionENG" runat="server" Width="98%" Height="22px"> </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            淘宝地址
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtTaoBaoDizhi" runat="server" Width="98%" Height="22px"> </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <asp:Button ID="btnAdd" CssClass="Save" runat="server" Text="添加子级" OnClick="btnAdd_Click"  />
                            <asp:Button ID="btnEdit" CssClass="Save" runat="server" Text="修改" OnClick="btnEdit_Click" />
                            <asp:Button ID="btnSave" CssClass="Save" runat="server" Text="保存" OnClick="btnSave_Click" />
                            <asp:Button ID="btnDelete" CssClass="Save" runat="server" Text="删除"  OnClientClick="return confirm('将会删除此类别下的所以子类别确定吗?')" OnClick="btnDelete_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                
            </div>
        </div>
    </div>
</form>
</body>
</html>
