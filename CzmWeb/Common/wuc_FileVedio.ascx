<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuc_FileVedio.ascx.cs" Inherits="CzmWeb.Common.wuc_FileVedio" %>
<link href="../Content/InputFileUploadStyle.css" rel="stylesheet" type="text/css"/>
<a href="javascript:;" class="file" style="border-radius: 13px">
    <asp:FileUpload ID="FlUpLoad" runat="server" />  选择文件
</a>
<asp:Label ID="lblWenjian" runat="server" Text=""></asp:Label>