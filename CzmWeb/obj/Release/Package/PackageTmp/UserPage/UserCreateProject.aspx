<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCreateProject.aspx.cs" Inherits="CzmWeb.UserPage.UserCreateProject" %>
<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>
<%@ Register Src="~/Common/wuc_FileVedio.ascx" TagPrefix="uc1" TagName="wuc_FileVedio" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
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
    <script type="text/javascript">
        window.onload = function () {
            $('.carousel').carousel();
            $('#identifier').carousel('cycle');
            $('#identifier').carousel({
                interval: 1000
            });
        }
        $(document).ready(function () {
            $('.list_lh li:even').addClass('lieven');
        })
        $(function () {
            $("div.list_lh").myScroll({
                speed: 30,
                rowHeight: 68
            });
        });
        function chengckIsNull(parameters) {
            var projectName = document.getElementById('<%=txtProjectName.ClientID%>');
            if (projectName.value=="") {
                alert("Please Enter The Project Name");
                return false;
            }
            var txtZlH = document.getElementById('<%=txtZlH.ClientID%>');
            if (txtZlH.value == "") {
                alert("Please Enter The Patent Number");
                return false;
            }
            var txtProjectIntroDuction = document.getElementById('<%=txtProjectIntroDuction.ClientID%>');
            if (txtProjectIntroDuction.value == "")
            {
                alert("Please Enter The Profile");
                return false;
            }
            var txtAmount = document.getElementById('<%=txtAmount.ClientID%>');
            if (txtAmount.value == "") {
                alert("Please enter the amount of investment");
                return false;
            }
            var txtBilieShuoming = document.getElementById('<%=txtBilieShuoming.ClientID%>');
            if (txtBilieShuoming.value == "") {
                alert("Please enter the description of the shares");
                return false;
            }
            var txtApplyName = document.getElementById('<%=txtApplyName.ClientID%>');
            if (txtApplyName.value == "") {
                alert("Please enter the applicant or the applicant unit");
                return false;
            }
            var txtPhone = document.getElementById('<%=txtPhone.ClientID%>');
            if (txtPhone.value == "") {
                alert("Please enter your phone number");
                return false;
            }
            var txtAddress = document.getElementById('<%=txtAdress.ClientID%>');
            if (txtAddress.value == "") {
                alert("Please enter your unit address");
                return false;
            }
            var sHeight = document.documentElement.scrollHeight;
            var sWidth = document.documentElement.scrollWidth;
            /*alert(sHeight+"  "+sWidth);*/
            //获取页面的可视区域
            var wHeight = document.documentElement.clientHeight;
            var wWidth = document.documentElement.clientWidth;
            var oMask = document.createElement("div");
            oMask.id = "mask";
            oMask.innerHTML = "加载中";
            oMask.className = "Make";
            oMask.style.height = sHeight + "px";
            oMask.style.width = sWidth + "px";
            /*在页面尾部追加标签*/
            document.body.appendChild(oMask);
            return true;
        }
    </script>
    <style type="text/css">
        .NoResize{resize: none}
        .Make{ background: #000000;		opacity: 0.30;filter:alpha(opacity=30);position: absolute;top: 0px;left: 0px;z-index: 10;}
    </style>
</head>
<body>
<!--导航部分bootstrap框架-->
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
            <a class="navbar-brand" href="../DefalutEng.aspx"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Default.aspx" target="blank" >Chinese</a></li>
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLogin.aspx"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                        <li><a href="../UserPage/UserPageRegister.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../DefalutEng.aspx">Home Page</a></li>
                        <li><a href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                        <li><a href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                        <li><a href="../UserPage/UserProjectShow.aspx">Display</a></li>
                        <li><a href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                        <li><a href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="../DefalutEng.aspx"><strong class="CZMBrandCompany">CZM</strong></a>
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
                        <li class="active"><a href="../DefalutEng.aspx">Home Page</a></li>
                        <li><a href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                        <li><a href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                        <li><a href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                        <li><a href="../UserPage/UserProjectShow.aspx">Display</a></li>
                        <li><a href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                        <li><a href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
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
                        <li><a href="../UserPage/UserPageLogin.aspx"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                        <li><a href="../UserPage/UserPageRegister.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
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
            <h3><span class="ProductNameType">Apply for Project</span>
                <small>I want to create</small>
            </h3>
        </div>
        <div class="form-group">
            <label for="txtProjectName">Project Name</label>
            <asp:TextBox id="txtProjectName" runat="server" CssClass="form-control"  placeholder="Please enter the project name"  ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtZlH">Patent No</label>
            <asp:TextBox id="txtZlH" runat="server" CssClass="form-control"  placeholder="Patent No" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtProjectIntroDuction">Project Introduction</label>
            <asp:TextBox id="txtProjectIntroDuction" runat="server" CssClass="form-control NoResize"  TextMode="MultiLine" placeholder="Text" Height="200"></asp:TextBox>
        </div>
        <div class="form-group">
            <label  for="wuc_FileUpload_Piture">Project Picture Upload[Just One|The picture is 1000 pixels wide and 400 pixels high ]</label><br/>
            <uc1:wuc_FileUpload runat="server" ID="wuc_FileUpload_Piture" />
        </div>
        <div class="form-group">
            <label  for="wuc_FileVedio">Certificate upload</label><br/>
            <uc1:wuc_FileVedio runat="server" ID="wuc_FileVedio" />
        </div>
        <div class="form-group">
            <label for="">Investment Amount[Unit:RMB]</label>
            <asp:TextBox id="txtAmount" runat="server" CssClass="form-control " TextMode="Number" placeholder="100000" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtBilieShuoming"> Shareholding Ratio[Holding instructions]</label>
            <asp:TextBox id="txtBilieShuoming" runat="server" CssClass="form-control NoResize" TextMode="MultiLine"  placeholder="Please explain the method of share allocation" Height="200"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtApplyName">Applicants</label>
            <asp:TextBox id="txtApplyName" runat="server" CssClass="form-control"  placeholder="Applicant" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPhone">Telephone Number</label>
            <asp:TextBox id="txtPhone" runat="server" CssClass="form-control"  placeholder="Telephone Number" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtAddress">Address</label>
            <asp:TextBox id="txtAdress" runat="server" CssClass="form-control"  placeholder="Address" ></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btnSave" OnClientClick="return  chengckIsNull()"  CssClass="btn btn-danger btn-lg btn-block" runat="server" Text="Submit" OnClick="btnSave_Click" />
        </p>
    </div>
</form>
<br/><br/>
    <div class="zixun">
        <div class="showDiv">
            <p style="font-size: 6px">WeChat QR code</p>
            <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
            <p>Scan code</p>
            <p>More surprises</p>
        </div>
        <div class="lanmu">
            <a href="../UserPage/UserPageLogin.aspx"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
            <a href="../UserPage/UserConmunicationApace.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="Ali Server" /></a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ Server" /></a>
            <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="Home" /></a>
        </div>
    </div>
    <div class="JiaoBen" Id="Adminsrator">
        <p style="text-align: center;padding-top: 5px">
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-Today|Sichuan Creator Association New & High-tech Development Co.LTD.|Consumer hotline：18981191139|Enterprise Mail:2212901@qq.com|hotline：18981191139
            <a href="../BackendManage/AdminLogin.aspx">Administrator</a>
        </p>
    </div>
</body>
</html>
