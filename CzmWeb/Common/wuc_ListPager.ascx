<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuc_ListPager.ascx.cs" Inherits="CzmObject.Common.wuc_ListPager" %>
<style type="text/css">
    .LinK{
        text-decoration: none;
        color: black;
    }
    .LinK:hover {
        color: red;
    }
    *{
        padding: 0px;
        margin: 0px;
        font-size: 12px;
    }
</style>
第<asp:Label ID="lblCurPage" runat="server" Text="1"></asp:Label>/
<asp:Label ID="lblAllPage" runat="server" Text="1"></asp:Label>页
<asp:LinkButton ID="lbtnFirstPage"  CssClass="LinK" runat="server" onclick="btnFirstPage_Click">首页</asp:LinkButton>
<asp:LinkButton ID="lbtnUpPage"    CssClass="LinK" runat="server" onclick="lbtnUpPage_Click">上一页</asp:LinkButton>
|
<asp:LinkButton ID="lbtnNextPage"  CssClass="LinK" runat="server" onclick="lbtnNextPage_Click">下一页</asp:LinkButton>
<asp:LinkButton ID="lbtnLastPage" CssClass="LinK"  runat="server" onclick="lbtnLastPage_Click">尾页</asp:LinkButton>
共<asp:Label ID="lblCountDate" runat="server" Text="0"></asp:Label>条