<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductTypeAdd.aspx.cs" Inherits="CzmWeb.BackendManage.ProductTypeAdd" %>

<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/button.css" type="text/css" rel="stylesheet"  />
    <link href="../CSS/table.css" rel="stylesheet" type="text/css"  />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        *{padding: 0px}
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{height: 40px;line-height: 40px;text-align: center; width: 100%;text-indent: 50px;color:black;font-weight: 600;font-size: 1.3em}
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .TdClass{text-align: center}
        .hs{ height: 28px;line-height: 28px}
        .Save{height: 25px;	width: 60px; border: none; background: palevioletred;cursor: pointer;color: white;border: solid 1px gainsboro;
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
        .MaxDiv{ width: 98%;margin: auto}
        .A_p_item_0{background-color: RGB(248,232,235)}
        .A_p_item_0:hover{ background-color: RGB(243,35,135);color: white }
        .A_p_item_1{background-color: white}
        .A_p_item_1:hover{ background-color: RGB(243,35,135);color: white }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MaxDiv">
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
                        <asp:Label ID="lblID" runat="server" Text="自动编号" Visible="True" ></asp:Label>
                    </td>
                    <td align="center">
                        <strong>选择编辑或查看</strong>
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
                    <td align="center">
                        图片上传
                    </td>
                    <td colspan="3">
                        <uc1:wuc_FileUpload runat="server" ID="wuc_FileUpload" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        产品描述[中文]
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="txtDecriptionCHN" CssClass="txtBox"  runat="server" Width="99%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        产品描述[英文]
                    </td>
                    <td colspan="3"> 
                        <asp:TextBox ID="txtDecriptionENG" CssClass="txtBox"  runat="server" Width="99%"></asp:TextBox>
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
        <br/>
        <div>
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="table4">
                <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
                    <HeaderTemplate>
                        <tr class="table_title">
                            <td width="80px" align="center">
                                编号
                            </td>
                            <td align="center" width="150px">
                               类型中文名称
                            </td>
                            <td width="150px" align="center">
                               类型英文名称
                            </td>
                            <td width="160px" align="center">
                                添加时间
                            </td>
                            <td width="160px" align="center">
                                图片查看
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
                        <tr class='A_p_item_<%# Container.ItemIndex % 2 %>' 
                           >
                            <td align="center">
                                <%#(Container.ItemIndex + 1)%>
                            </td>
                            <td align="center">
                                <%#Eval("typeName_c")%>
                            </td>
                            <td align="center">
                                <%#Eval("typeName_e")%>
                            </td>
                            <td align="center">
                                <%#Eval("InsertTime")%>
                            </td>
                            <td align="center">
                                <a href=<%#Eval("TypePicture") %> >图片查看</a>  
                            </td>
                            <td align="center">
                                正常
                            </td>
                            <td align="center">
                                <asp:Button ID="btnDel" runat="server" OnClientClick="return confirm('真的要删除？这样会删除该产品类别下面的所有产品！请慎重考虑！')" Text=" "
                                 CssClass="btnDelete" CommandArgument='<%#Eval("typeID")%>'
                                 CommandName="Delete" />
                                <asp:Button ID="btnXiaJia"  CommandName="XiaJia" runat="server" Text="下架" Visible='<%#Eval("TypeState").ToString()=="30" %>'  CommandArgument='<%#Eval("typeID")%>'  CssClass="Save" />
                                <asp:Button ID="btnShangjia"  CommandName="ShangeJia" runat="server" Text="上架" Visible='<%#Eval("TypeState").ToString()=="-30" %>' CommandArgument='<%#Eval("typeID")%>'  CssClass="Save" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                  <tr>
                      <td colspan="7" align="center">
                          <uc1:wucPager runat="server" ID="wucPager" OnBindList="wucPager_OnBindList" />                  
                      </td>
                  </tr>
                </table>  
        </div>
    </div>
    </form>
</body>
</html>
