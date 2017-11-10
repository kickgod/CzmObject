<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserConmunicationApace.aspx.cs" Inherits="CzmWeb.UserPage.UserConmunicationApace" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <script type="text/javascript">
        function getNowFormatDate() {
            var date = new Date();
            var seperator1 = "-";
            var seperator2 = ":";
            var month = date.getMonth() + 1;
            var strDate = date.getDate();
            if (month >= 1 && month <= 9) {
                month = "0" + month;
            }
            if (strDate >= 0 && strDate <= 9) {
                strDate = "0" + strDate;
            }
            var currentdate = "[time:" + date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds() + "]";
            return currentdate;
        }
        function WordLengthChange() {
            var text = document.getElementById("<%=txtMessageContent.ClientID%>");
            var lengths = document.getElementById("<%=lblWordTime.ClientID%>");
            lengths.innerHTML = "[The remaining words:] " + text.value.toString().length + "/1200";
            if (text.value.toString().length >= 1200) {
                text.setAttribute("disabled", false);
            }
        }
        setInterval(function () {
                document.getElementById("DateTimeNow").innerHTML = getNowFormatDate();
            },
            1000);
        function checkNull() {
            var textPhone = document.getElementById("<%=txtboxPhone.ClientID%>");
            var textEmail = document.getElementById("<%=txtEmailText.ClientID%>");
            var textContent = document.getElementById("<%=txtMessageContent.ClientID%>");
            if (textPhone.value == "") { alert("Please leave the contact information so that we can contact you"); return false; }
            if (textContent.value == "") { alert("Please enter text"); return false; }
            return true;
        }
    </script>
    <style type="text/css">
        *{padding:0px;margin:0px;}
        .container .row .col-md-6 img{width:25px;height:25px;}
        #txtMessageContent{resize:none}
        #BtnSaveMessage{text-align:right}
        .tabletdBGc{ background-color: gainsboro;}
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
            <a class="navbar-brand" target="_blank" href="../DefalutEng.aspx"><strong class="CZMBrandCompany">CZM</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Language <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Default.aspx" target="blank" >Chinese</a></li>
                        <li><a href="../DefalutEng.aspx" target="_blank"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Login <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLogin.aspx" target="_blank" ><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                        <li><a href="../UserPage/UserPageRegister.aspx" target="_blank" ><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                        <li><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        User function <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="DefalutEng.aspx" target="_blank">Home Page</a></li>
                        <li><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                        <li><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                        <li><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                        <li><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                        <li><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                        <li><a target="_blank"  href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="../DefalutEng.aspx" target="_blank" ><strong class="CZMBrandCompany">CZM</strong></a>
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
                        <li class="active"><a target="_blank" href="../DefalutEng.aspx">Home Page</a></li>
                        <li><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                        <li><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                        <li><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                        <li><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                        <li><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                        <li><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                        <li><a target="_blank" href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
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
                        <li><a href="../UserPage/UserPageLogin.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                        <li><a href="../UserPage/UserPageRegister.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                        <li><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx" target="_blank" type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
    <div class="container-fluid " style="margin-top: -30px;background-color: white">
        <div class="page-header">
            <h4 class="h4"><span class="ProductNameType">Communicate with you</span>
            </h4>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">Suggestions</a>
                </li>
                <li class="dropdown">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                       data-toggle="dropdown">Advisory <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#jmeter" tabindex="-1" data-toggle="tab">
                                QQ Server</a>
                        </li>
                        <li><a href="#ejb" tabindex="-1" data-toggle="tab">
                                Ali Want</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="home">
                    <div  class="container-fluid">
                        <div class="row">
                            <h4 class="col-md-12 h4">User Comments <small><span id="DateTimeNow">[time:2017-10-18 18:28:39]</span></small></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-6"><ins>[You can give us feedback on your opinion]</ins></div>
                            <div class="col-md-3 col-md-offset-3" id="BtnSaveMessage"><asp:Button ID="btnSave" OnClientClick="return checkNull()"  runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnSave_Click" /></div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label for="txtboxPhone">Phone</label>
                                <asp:TextBox ID="txtboxPhone" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="txtEmailText">Email address</label>
                                <asp:TextBox ID="txtEmailText" CssClass="form-control" runat="server" placeholder="Email address"></asp:TextBox>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="txtMessageContent">Message content</label><asp:Label ID="lblWordTime" runat="server" Text="[The remaining words:] 0/1200"></asp:Label>
                                <asp:TextBox ID="txtMessageContent" CssClass="form-control" runat="server" placeholder="Text input" Height="120px" 
                                             onMouseDown="WordLengthChange();"  onkeydown="WordLengthChange();" 
                                             TextMode="MultiLine"  Text=""></asp:TextBox>
                            </div>
                        </div>
                     </div>
                </div>
                <div class="tab-pane fade" id="jmeter">
                    <p>
                        QQ Server：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
                    </p>
                    <figure>
                        <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="310px" height="310px " alt="加载中"  />
                        <figcaption>
                            WeChat Advisory channels! Code can be scanned
                        </figcaption>
                    </figure>
                    <p>
                        [Consultation]: We will be the fastest response to your questions!
                    </p>
                </div>
                <div class="tab-pane fade" id="ejb">
                    <p>
                        Ali Wang：<a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>旺旺咨询</a>
                    </p>
                    <figure>
                        <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="310px" height="310px " alt="加载中"  />
                        <figcaption>
                            WeChat Advisory channels! Code can be scanned
                        </figcaption>
                    </figure>
                    <p>
                        [Consultation]: We will be the fastest response to your questions!
                    </p>
                </div>
            </div>
            <script>
                $(function () {
                    $('#myTab li:eq(1) a').tab('show');
                });
            </script>
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
        <a target="_blank" href="../UserPage/UserPageLogin.aspx"><img src="../Images/SystemPicture/userLanse.png" title="User Login"/></a>
        <a target="_blank" href="../UserPage/UserConmunicationApace.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="Online"/></a>
        <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="Ali Server" /></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ Server" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="Home" /></a>
    </div>
</div>
<div class="JiaoBen" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>Ali Want</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-Today|Sichuan Creator Association New & High-tech Development Co.LTD.|Consumer hotline：18981191139|Enterprise Mail:2212901@qq.com|hotline：18981191139
        <a target="_blank" href="../BackendManage/AdminLogin.aspx">Administrator</a>
    </p>
</div>
</body>
</html>
