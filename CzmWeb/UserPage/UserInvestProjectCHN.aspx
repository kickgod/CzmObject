<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInvestProjectCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserInvestProjectCHN" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <script src="../Js/scroll.js"></script>
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <title>项目投资</title>
    <script type="text/javascript">
        function CheckNull() {
            var txtTread = document.getElementById('<%=txtTread.ClientID%>');
            if (txtTread.value == "") {
                alert("请输入投资项目");
                return false;
            }
            var txtAmount = document.getElementById('<%=txtAmount.ClientID%>');
            if (txtAmount.value == "") {
                alert("请输入投资金额");
                return false;
            }
            var txtApplicant = document.getElementById('<%=txtApplicant.ClientID%>');
            if (txtApplicant.value == "") {
                alert("请输入申请人");
                return false;
            }
            var txtPhone = document.getElementById('<%=txtPhone.ClientID%>');
            if (txtPhone.value == "") {
                alert("请输入手机号");
                return false;
            }
            var txtAddress = document.getElementById('<%=txtAddress.ClientID%>');
            if (txtAddress.value == "") {
                alert("请输入地址");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfStart">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        汉语 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Defalut.aspx" target="blank" >Chinese</a></li>
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> log in immediately</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign up now</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx" >Home Page</a></li>
                        <li><a href="#">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="#">Project Applay</a></li>
                        <li><a href="#">Invest</a></li>
                        <li><a href="#">Display</a></li>
                        <li><a href="#">Live Webcast</a></li>
                        <li><a href="#">Video List</a></li>
                        <li><a href="#">Communication</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="#Adminsrator"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx">Home Page</a></li>
                        <li><a href="#">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="#">Project Applay</a></li>
                        <li><a href="#">Invest</a></li>
                        <li><a href="#">Display</a></li>
                        <li><a href="#">Live Webcast</a></li>
                        <li><a href="#">Video List</a></li>
                        <li><a href="#">Communication</a></li>
                    </ul>
                </li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> log in immediately</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign up now</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx"  type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx"  type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
<form id="form1" runat="server">
    <div class="container">
        <div class="page-header" style="margin-top: -20px">
            <h3><span class="ProductNameType">我要投资</span>
                <small>投资</small>
            </h3>
        </div>
        <div class="form-group">
            <label for="txtTread">投资方向</label>
            <asp:TextBox ID="txtTread" list="ProjectNames" class="form-control"  placeholder="Project Name"   runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtAmount">投资金额</label>
            <asp:TextBox ID="txtAmount" TextMode="Number"  class="form-control" placeholder="investment amount"  runat="server"></asp:TextBox>
        </div> 
        <div class="form-group">
            <label for="">投资省市</label>
            <asp:DropDownList ID="ddlProvince"  CssClass="form-control"  runat="server" AutoPostBack="True"  OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged"></asp:DropDownList>
        </div>      
        <div class="form-group">
            <label for="">投资地区2</label>
            <asp:DropDownList ID="ddlDataRegiom"  CssClass="form-control"  runat="server"></asp:DropDownList>
        </div>         
        <div class="form-group">
            <label for="txtApplicant">申请人</label>
            <asp:TextBox ID="txtApplicant" CssClass="form-control"  placeholder="Applicant" runat="server"></asp:TextBox>
        </div>    
        <div class="form-group">
            <label for="txtPhone">电话</label>
            <asp:TextBox ID="txtPhone" CssClass="form-control"  placeholder="Phone" runat="server"></asp:TextBox>
        </div>  
        <div class="form-group">
            <label for="txtAddress">地址</label>
            <asp:TextBox ID="txtAddress" CssClass="form-control"  placeholder="Address" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btnSave" OnClientClick="return  CheckNull()"  CssClass="btn btn-danger btn-lg btn-block" runat="server" Text="Submit" OnClick="btnSave_Click" />
        </p>  
    </div>
</form>
<div class="zixun">
    <div class="showDiv">
        <p style="font-size: 8px">WeChat QR code</p>
        <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
        <p>Scan code</p>
        <p>More surprises</p>
    </div>
    <div class="lanmu">
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="JiaoBen" Id="Adminsrator" style="border-top: 1px gainsboro solid;">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
        <a href="http://wpa.qq.com/msgrd?v=1&uin=544956252"><img src="../Images/SystemPicture/qq.png" width="20px" height="20px"/>QQ service</a>Copyright © 2017-Today|SiChuan ChuangZaoMen High - tech Development Co. Ltd|Consumer hotline：15698259380|Enterprise Mail:chuangzaomen@163.com|hotline：15826121
        <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
    </p>
</div>
</body>
</html>
