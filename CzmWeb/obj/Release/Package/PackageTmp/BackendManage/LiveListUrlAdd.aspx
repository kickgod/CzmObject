<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LiveListUrlAdd.aspx.cs" Inherits="CzmWeb.BackendManage.LiveListUrlAdd" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/TraditionalFontStyle.css" rel="stylesheet" type="text/css" />
    <link href="../Content/FontBindData.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <title>事务管理</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container-fluid">
           <table class="table table-hover ">
               <caption>直播列表</caption>
               <thead>
               <tr>
                   <th>直播平台</th>
                   <th>直播链接</th>
                   <th>直播标题[中文]</th>
                   <th>直播标题[英文]</th>
                   <th>操作</th>
               </tr>
               </thead>
               <tbody>
               <tr>
                   <td>
                       快手直播
                   </td>
                   <td>
                       <asp:TextBox ID="txtLivelinkKuaiShou" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtLinkKuaishouTitle" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtLinkKuaishouTitleEng" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Button ID="btnKSXiugai" CssClass="btn btn-default btn-sm"  runat="server" Text="修改 " OnClick="btnKSXiugai_Click" />
                       <asp:Button ID="btnKSSave" CssClass="btn btn-default btn-sm" runat="server" Text="保存" OnClick="btnSave_Click" />
                   </td>
               </tr>
               <tr>
                   <td>
                       映客直播
                   </td>
                   <td>
                       <asp:TextBox ID="txtyinkeLink" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtyinkeLinkSass" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtyinkelinkSassEng" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Button ID="btnYKXiugai" CssClass="btn btn-default btn-sm"  runat="server" Text="修改 " OnClick="btnYKXiugai_Click" />
                       <asp:Button ID="btnYKsave" CssClass="btn btn-default btn-sm" runat="server" Text="保存" OnClick="btnYKsave_Click" />
                   </td>   
               </tr>
               <tr>
                   <td>
                       上鱼直播
                   </td>
                   <td>
                       <asp:TextBox ID="txtshangyuLink" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtShangyutitle" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:TextBox ID="txtShangyutitleENG" CssClass="form-control" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:Button ID="btnSYxiugai" CssClass="btn btn-default btn-sm"  runat="server" Text="修改 " OnClick="btnSYxiugai_Click" />
                       <asp:Button ID="btnSYsave" CssClass="btn btn-default btn-sm" runat="server" Text="保存" OnClick="btnSYsave_Click" />
                   </td>
               </tr>
               </tbody>
           </table>
       </div>
    </form>
</body>
</html>
