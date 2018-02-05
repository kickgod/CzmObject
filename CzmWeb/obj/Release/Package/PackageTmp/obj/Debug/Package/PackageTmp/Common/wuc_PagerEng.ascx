<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuc_PagerEng.ascx.cs" Inherits="CzmWeb.Common.wuc_PagerEng" %>
<span style="height: 40px; line-height: 40px">The<asp:Label ID="lblCurPageCount" runat="server"
                                                          Text="1"></asp:Label>/
    <asp:Label ID="lblTotalPageCount" runat="server" Text="1"></asp:Label>th Page
    <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click" Text="Home"></asp:LinkButton>
    <asp:LinkButton ID="lbtnPre" runat="server" OnClick="lbtnPre_Click" Text="Previous page"></asp:LinkButton>
    <asp:LinkButton ID="lbtnNext" runat="server" OnClick="lbtnNext_Click" Text="Next page"></asp:LinkButton>
    <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click" Text="Last page"></asp:LinkButton>
    <asp:DropDownList ID="ddlChangePage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChangePage_SelectedIndexChanged"
                      onchange="javascript:ShowWaitingDialog('loading……');" Font-Size="12px">
    </asp:DropDownList>
    共<asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label>条,每页<asp:DropDownList
                                                                               ID="ddlChangePageSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChangePageSize_SelectedIndexChanged"
                                                                               onchange="javascript:ShowWaitingDialog('loading……');" Font-Size="12px">
    </asp:DropDownList>
    <asp:Label ID="lblPageSize" runat="server" Text="10" Visible="False"></asp:Label>条
    <asp:Label ID="lblInfo" runat="server" Text="" ForeColor="red"></asp:Label>
</span>