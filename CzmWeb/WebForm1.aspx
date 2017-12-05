<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CzmWeb.WebForm1" %>

<%@ Register Src="~/Common/wuc_UpLoadDouble.ascx" TagPrefix="uc1" TagName="wuc_UpLoadDouble" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:wuc_UpLoadDouble runat="server" ID="wuc_UpLoadDouble" />
    </div>
    </form>
</body>
</html>
