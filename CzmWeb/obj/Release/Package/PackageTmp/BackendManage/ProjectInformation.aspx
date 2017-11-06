<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectInformation.aspx.cs" Inherits="CzmWeb.BackendManage.ProjectInformation" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register Src="~/Common/wuc_FileVedio.ascx" TagPrefix="uc1" TagName="wuc_FileVedio" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>创造门</title>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <script src="../Js/scroll.js"></script>
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <style type="text/css">
        .NoResize
        {
            resize: none;
        }
        .Make
        {
            background: #000000;
            opacity: 0.30;
            filter: alpha(opacity=30);
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 10;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="container-fluid">
        <div class="page-header" style="margin-top: -20px">
            <h3><span class="ProductNameType">我要创造</span>
                <small>创造</small>
            </h3>
        </div>
        <div class="form-group">
            <label for="txtProjectName">创造名称</label>
            <asp:TextBox ID="txtProjectName" runat="server" CssClass="form-control" placeholder="项目名称"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtZlH">专利号</label>
            <asp:TextBox ID="txtZlH" runat="server" CssClass="form-control" placeholder="Patent No"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtProjectIntroDuction">项目简介</label>
            <asp:TextBox ID="txtProjectIntroDuction" runat="server" CssClass="form-control NoResize" TextMode="MultiLine" placeholder="简介" Height="200"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="wuc_FileUpload_Piture">项目图片</label><br />
            <asp:HyperLink ID="hylicture" runat="server">图片</asp:HyperLink>
        </div>
        <div class="form-group">
            <label for="wuc_FileVedio">证书</label><br />
            <asp:HyperLink ID="hylZs" runat="server">证书</asp:HyperLink>
        </div>
        <div class="form-group">
            <label for="">投资金额[单位:人民币]</label>
            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control " TextMode="Number" placeholder="100000"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtBilieShuoming">持股比例[股份说明]</label>
            <asp:TextBox ID="txtBilieShuoming" runat="server" CssClass="form-control NoResize" TextMode="MultiLine" placeholder="Please explain the method of share allocation" Height="200"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtApplyName">申请人</label>
            <asp:TextBox ID="txtApplyName" runat="server" CssClass="form-control" placeholder="Applicant"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPhone">电话</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Telephone Number"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtAddress">地址</label>
            <asp:TextBox ID="txtAdress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
        </div>
        <table class="table" style="width: 90%;margin: auto" align="center">
            <caption><h3 class="h3">已获投资</h3></caption>
            <thead>
            <tr>
                <th>
                    编号
                </th>
                <th>
                    投资用户
                </th>
                <th>
                    用户名称
                </th>
                <th>
                    投资金额
                </th>
                <th>
                    联系电话
                </th>
                <th>
                    投资地区
                </th>
                <th>
                    申请时间
                </th>
                <th>
                    状态
                </th>
            </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repert" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td >
                                <%#Eval("PiiID")%>
                            </td>
                            <td >
                                <%#Eval("UserId")%>
                            </td>
                            <td >
                                <%#Eval("UserName_e")%>
                            </td>
                            <td >
                                <%#Eval("Account")%>
                            </td>
                            <td >
                                <%#Eval("NewPhone")%>  
                            </td>
                            <td >
                                <%#Eval("Province")%>
                            </td>
                            <td>
                                <%#Eval("InvestTime")%>
                            </td>
                            <td>
                                <%# (Eval("PiiState").ToString()=="30") ?"通过":( (Eval("PiiState").ToString()=="10")?"已提交":"未通过" )  %>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <br/>
        <p>
            <a href="../BackendManage/ProjectValidCheck.aspx"  class="btn btn-danger btn-lg btn-block" >返回</a>
        </p> 
    </div>
 
</form>
<br />
<br />
</body>
</html>
