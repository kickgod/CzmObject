<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProductList.aspx.cs" Inherits="CzmWeb.BackendManage.AddProductList" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register TagPrefix="uc1" TagName="wuc_ListPager" Src="~/Common/wuc_ListPager.ascx" %>


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
        .Div_Center{ width: 100%;}
        .Div_Center .Div_Main{ width: 70%;margin: 0 auto}
        .Title{text-align: center; width: 100%;text-indent: 50px;color: RGB(153, 23, 85);font-weight: 600;font-size: 1.3em}
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
    <div id="23">
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
                            <asp:Button ID="btnAddProduct" runat="server" Text="添加" CssClass="Save" OnClick="btnAddProduct_Click" Visible="False" />
                            <asp:Button ID="btnEditProduct" runat="server" Text="编辑" CssClass="Save" Visible="False" OnClick="btnEditProduct_Click" />
                            <asp:Button ID="btnSaveProduct" runat="server" Text="保存" CssClass="Save" OnClick="btnSaveProduct_Click"  />                       
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <br/><br/>
        <div>
            <center>
                产品类别:<asp:DropDownList ID="ddlShoosProductTypes" runat="server" Height="24px" Width="160px"></asp:DropDownList>
                是否包邮:<asp:DropDownList ID="ddlIiBaoyou" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">包邮</asp:ListItem>
                    <asp:ListItem Value="0">不包邮</asp:ListItem>
                </asp:DropDownList>
                是否热卖:<asp:DropDownList ID="ddlLiRemai" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">热卖</asp:ListItem>
                    <asp:ListItem Value="0">不热卖</asp:ListItem>
                </asp:DropDownList>
                是否下架:<asp:DropDownList ID="ddlIsXiajia" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">下架</asp:ListItem>
                    <asp:ListItem Value="0">未下架</asp:ListItem>
                </asp:DropDownList>
                是否新品:<asp:DropDownList ID="ddlISnew" runat="server" Height="24px" Width="160px" style="margin-bottom: 0px" >
                    <asp:ListItem Value="-1">-- 全部 --</asp:ListItem>
                    <asp:ListItem Value="1">新品</asp:ListItem>
                    <asp:ListItem Value="0">非新品</asp:ListItem>
                </asp:DropDownList>
                <br/>
                |关键词[描述 英文/中文]
                <asp:TextBox ID="txtKeyMiaoshu" Width="150px" Height="22px" runat="server"></asp:TextBox>
                关键词[产品]<asp:TextBox ID="txtProductKey"   Width="150px" Height="22px" runat="server"></asp:TextBox>
                <asp:Button ID="Button6" CssClass="Save" runat="server" Text="检索" OnClick="Button6_Click1" />
                数据量：<asp:Label ID="ProductCount" runat="server" Text=""></asp:Label>
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
                            <td align="center" width="70px">
                                产品名称
                            </td>
                            <td align="center" width="70px">
                                产品类别
                            </td>
                            <td width="80px" align="center">
                                是否下架
                            </td>
                            <td width="80px"  align="center">
                                是否包邮
                            </td>
                            <td width="80px" align="center">
                                是否热卖
                            </td>
                            <td align="center" width="90px">
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
                            <td align="center" width="220px">
                                操作
                            </td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class='p_item_<%# Container.ItemIndex % 2 %>' onmouseover="c=this.className;this.className='p_item_hover';"
                            onmouseout="this.className=c">
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
                                <%#Eval("ProductType")%>
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
                                <asp:Button ID="Button5" runat="server" Text="通过" CssClass="Save"  CommandArgument='<%#Eval("ProductID")%>' CommandName="OK" />
                                <a href="#<%#Eval("ProductID")%>" style="text-decoration: none; color: black; font-size: 1.2em; font-family: ProductFontStyle;font-weight: 500 ">效果查看</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="14" align="center"> 
                        <uc1:wuc_ListPager ID="wuc_ListPager1" runat="server" OnBindList="wuc_ListPager1_OnBindList" />
                    </td>
                </tr>
                <tr>
                    <td colspan="14" align="center"> 
                        <asp:Label ID="lblWhere" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>              
        </div>
        <div style="width: 100%;background-color: RGB(245,234,240)">
            <div class="Title TFS_Standardstyle">
                产品详情列表
            </div>
             <div class="ProductShowNow" id="1">
                 <div  class="PictureShowLeft" style="background-image: url('../ProductImage/2017108175537609.jpg'); opacity: 0.5; filter: alpha(opacity=50); z-index: 1;">
                     
                 </div>
                 <div class="PitrueNotOpcity">
                 </div>
                 <div class="Right"> 
                      <div class="ProductNametitle"><h1>伽玛鲤台钓竿</h1></div>
                      <h2 style="font-weight: 400;">[关 键 字]高碳 超清超细超硬 台钓竿</h2>
                      <p class="Jnjieia">
                          [介绍] 台钓竿，俗称四六、三七、二八竿，是专用于台钓法，长节，较轻，径细的钓鱼竿。它分为软竿、硬钓竿、超硬钓竿三种，可以由向心力、软硬度、受力均匀度判断竿的好坏。   
                      </p>
                     <p class="DownGoumai">
                         <span class="MeonyChar">¥</span><span class="Meony">499.00</span> <span class="MeonyLastChar">¥599.00</span>
                         <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server" CssClass="ButtonCheck" >购买</asp:HyperLink></span>
                     </p>
                     <p class="XiaoxiProduct">
                         <button class="btnYes">包邮</button>
                         <button class="btnNo">热卖</button>
                         <button class="btnYes">新品</button>
                     </p>
                 </div>
             </div>
        </div>
    </div>
    </form>
</body>
</html>
