<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucPager.ascx.cs" Inherits="CzmWeb.Common.wucPager" %>
<span style="height: 40px; line-height: 40px">第<asp:Label ID="lblCurPageCount" runat="server"
                                                          Text="1"></asp:Label>/
    <asp:Label ID="lblTotalPageCount" runat="server" Text="1"></asp:Label>页
    <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click" Text="首页"></asp:LinkButton>
    <asp:LinkButton ID="lbtnPre" runat="server" OnClick="lbtnPre_Click" Text="上一页"></asp:LinkButton>
    <asp:LinkButton ID="lbtnNext" runat="server" OnClick="lbtnNext_Click" Text="下一页"></asp:LinkButton>
    <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click" Text="尾页"></asp:LinkButton>
    <asp:DropDownList ID="ddlChangePage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChangePage_SelectedIndexChanged"
                      onchange="javascript:ShowWaitingDialog('数据处理中，请等待……');" Font-Size="12px">
    </asp:DropDownList>
    共<asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label>条,每页<asp:DropDownList
                                                                               ID="ddlChangePageSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChangePageSize_SelectedIndexChanged"
                                                                               onchange="javascript:ShowWaitingDialog('数据处理中，请等待……');" Font-Size="12px">
    </asp:DropDownList>
    <asp:Label ID="lblPageSize" runat="server" Text="10" Visible="False"></asp:Label>条
    <asp:Label ID="lblInfo" runat="server" Text="" ForeColor="red"></asp:Label>
</span>
