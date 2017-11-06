<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VedioListAndUp.aspx.cs" Inherits="CzmWeb.BackendManage.VedioListAndUp" %>

<%@ Register Src="~/Common/wuc_FileVedio.ascx" TagPrefix="uc1" TagName="wuc_FileVedio" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>视频管理</title>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/> 
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script type="text/javascript">
        
    </script>
    <style type="text/css">
        .txtBox{ width: 240px;height: 23px;line-height: 23px}
        .Save{height: 25px;	width: 60px; border: none; background: palevioletred;cursor: pointer;color: white;border: solid 1px gainsboro;
            margin-top: 0px;
        }  
        .IntroDuction{ width: 100%;height: 40px;line-height: 40px}
        .VedioName{ font-family: ProductFontStyle;font-size: 20px;font-weight: 400;padding-top: 5px;padding-left: 10px}
        .rowVdeio .col-md-4{margin-top: 15px}
        .Save:hover{background-color: gray}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br/>
    <div class="container">
        <table width="90%" border="1" cellpadding="0" cellspacing="0" class="table table-bordered" style="margin: auto">
            <tr>
                <td align="center">
                    编号
                </td>
                <td colspan="3">
                    <asp:Label ID="lblVedioId" runat="server" Text="自动编号"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    中文名称
                </td>
                <td>
                    <asp:TextBox ID="txrChineseName" runat="server" CssClass="txtBox"></asp:TextBox>
                </td >
                <td  align="center">
                    英文名称
                </td>
                <td>
                    <asp:TextBox ID="txtEnglishName" runat="server" CssClass="txtBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    选择文件
                </td>
                <td>
                    <uc1:wuc_FileVedio runat="server" id="wuc_FileVedio" />                   
                </td>
                <td align="center">
                    状态
                </td>
                <td>
                    正常
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:Button ID="btnAdd" CssClass="Save" runat="server" Text="添加" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnEdit" CssClass="Save" runat="server" Text="编辑" OnClick="btnEdit_Click" />
                    <asp:Button ID="btnSave" CssClass="Save" runat="server" Text="保持" OnClick="btnSave_Click" />
                </td>
            </tr>
        </table>
    </div>
     <br/>
     <br/>
      <h2 class="h2" style="text-align: center;font-family: ProductFontStyle">视频列表</h2>
     <div class="container">
        <div class="row rowVdeio">
            <asp:Repeater ID="reptm" runat="server" OnItemCommand="reptm_OnItemCommand">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div style="width: 100%">
                            <video poster="../VedioList/2017102413124848.jpg" preload="auto" controls="controls" style="width: 100%;" >
                                <source type="video/mp4" src=<%#Eval("VidioPath")%> >
                                <source type="video/webm" src=<%#Eval("VidioPath")%> >
                                <source type="video/ogg" src=<%#Eval("VidioPath")%> >
                            </video>
                        </div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl=<%#Eval("VidioPath")%> >点击播放</asp:HyperLink>
                        <div class="IntroDuction"><span class="VedioName"><%#Eval("VideoName_c")%></span> 状态：<%#Eval("IsShow").ToString()=="False"? "下线":"上线" %></div>
                        <div class="IntroDuction">
                            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="删除"  CommandArgument='<%#Eval("VidioID")%>' CommandName="Delete" OnClientClick="return confirm('确定删除这个视频吗?')" />
                            <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="编辑"   CommandArgument='<%#Eval("VidioID")%>' CommandName="Edit"/>
                            <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" Text="下线" Visible='<%#Eval("IsShow").ToString()=="True"%>'  CommandArgument='<%#Eval("VidioID")%>'  CommandName="XiaXian" />
                            <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="上线" Visible='<%#Eval("IsShow").ToString()=="False"%>'  CommandArgument='<%#Eval("VidioID")%>' CommandName="ShangXian"  />
                        </div>          
                    </div>
                </ItemTemplate>
            </asp:Repeater>
         </div>
        </div>
    </form>
</body>
</html>
