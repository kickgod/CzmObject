<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<%@ Register Src="~/Common/wuc_ListPager.ascx" TagPrefix="uc1" TagName="wuc_ListPager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <style type="text/css">
         .logo{ width: 100%;background-color: RGB(176, 53, 112);height: 66px;}
         .logo i{ color: white;font-weight: bold;font-size: 50px;font-style: italic;padding-left: 20%;line-height: 66px;height: 66px; }
         .Head{ width: 1200px;margin: 0px auto;height: 60px;line-height: 60px;border-bottom: 2px grey solid; }
         
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div class="logo"><i class="Font_Title">创造门</i></div>
          <header class="Head">
              <div class="Login_CE"></div>
              <div class="Nav"></div>
          </header>
    </form>
</body>
</html>
