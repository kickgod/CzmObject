<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuc_UploadPic.ascx.cs" Inherits="CzmWeb.Common.wuc_UploadPic" %>
<link href="../Content/InputFileUploadStyle.css" rel="stylesheet" type="text/css"/>
<style>
    .btnTop{ 
        vertical-align: top;
        height: 28px;
        width: 70px;
        background-color: white;
        color: black;
        border-radius: 5px;
        border: 1px solid gray;   
    }
    .btnTop:hover {
        background-color: gainsboro;
    }
</style>
<a href="javascript:;" class="file" style="border-radius: 13px">
    <asp:FileUpload ID="FlUpLoad" runat="server"  />  选择文件
</a>
<asp:Button ID="Button1" runat="server" Text="上传"   OnClick="Button1_Click" CssClass="btnTop" />
<asp:Label ID="lblWenjian" runat="server" Text=""  Visible="False"></asp:Label>
<asp:Label ID="lblState" runat="server" Text=""  Visible="True" ForeColor="Red"></asp:Label>