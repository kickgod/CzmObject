<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserbecomeTypeHigh.aspx.cs" Inherits="CzmWeb.UserPage.UserbecomeTypeHigh" %>

<%@ Register Src="~/Common/wuc_UpLoadDoubleEng.ascx" TagPrefix="uc1" TagName="wuc_UpLoadDoubleEng" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <style>
        .FontBig { font-size: 18px; color: RGB(176,53,112); }
        .FontBigUser {font-size: 25px;font-weight: 400;text-indent: 10px; display: inline-block;}
        .FontUserType {font-size: 16px;font-family: ProductFontStyle;text-indent: 10px;display: inline-block;}
        .FontUserEmail {text-indent: 10px; display:block;     font-family: ProductFontStyle;color: gray;font-size: 15px;border-bottom: 1px solid gray;letter-spacing: 1px;}
        .FontUserPhoneId {color: gainsboro;text-indent: 10px;font-size: 14px;font-weight: 200;display:inline-block;  }
        .FontUserIdentifyID { text-indent: 10px; font-size: 14px; font-weight: 200; display:inline-block;}
    </style>
    <style type="text/css">
        .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow: hidden }
        .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow: hidden;}
        .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
        .TypeIntroductions strong{font-size: 15px}
        #ProjectHave figure img{ width: 100%;height: 100%;}
        #reptemNewProductMy figure img{ width: 100%;height: 100%;}
        .TitleIconss{color: purple;font-size: 18px;font-family: ProductFontStyle;}
        .TitleIconsins{color: purple;font-size: 13px;font-family: ProductFontStyle;}
        /**电脑**/
        @media only screen and (min-width: 1200px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width: 768px) and (max-width: 1199px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width:440px ) and (max-width: 768px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        @media only screen and (min-width:0px ) and (max-width: 440px) {
            #ProjectHave figure img{ width: 100%;height: 200px;}
            #reptemNewProductMy figure img{ width: 120px;height: 55px;}
        }
        .ulloSpan a{display: block}
        .ulloSpan:hover { border-bottom: white 2px solid;border-top: white 2px solid;color: black;font-size: 18px}
        .navbar-nav li:hover{
            background-color: purple;
        }
        .navbar-nav li  a:hover{
            background-color: purple;
        }
        .SSSS{border-radius: 12.5px;}
        .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
    </style>
    <script type="text/javascript">
        function CheckNull() {
            var userId = document.getElementById("<%=txtId.ClientID%>");
            if (userId.value == "") {
                alert("Please enter your ID number");
                return false;
            } else {
                return true;
            }
        }
    </script>
    <title>创造门</title>
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
                <li class="ulloSpan"><a target="_blank" href="../DefalutEng.aspx">Home Page</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserConmunicationApace.aspx">Communication</a></li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="ulloSpan"><a href="../UserPage/UserPageLogin.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span>log In Immediately</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserPageRegister.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span>Sign up now</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserbecomeTypeHigh.aspx" target="_blank" ><span class="glyphicon glyphicon-home"></span>Personal Center</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx" target="_blank" type="submit" class="btn btn-default" >Chinese</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >English</a>
            </form>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: -35px">
            <div class="page-header">
                <h3><span class="ProductNameType">Personal Center</span>
                    <small>User</small>
                </h3>
                <asp:Label ID="Label3" Visible="False" runat="server" Text=""></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Repeater ID="RpemUserInfor" runat="server">
                        <ItemTemplate>
                            <span class="glyphicon glyphicon-user FontBig"></span><span class="FontBigUser"><%#Eval("UserName_e")%></span>
                            <br/>
                            <span class="glyphicon glyphicon-phone-alt FontBig"></span><span class="FontUserPhoneId"><%#Eval("UserId")%></span>
                            <br/>
                            <span class="glyphicon glyphicon-queen FontBig"></span><span class="FontUserType"><%# Eval("UserType").ToString()=="1"? "Ordinary member":"Senior member" %></span> 
                            <br/><br/>
                            <span class="FontUserEmail"><%#Eval("UserEmail")%></span>
                            <div>
                                <br/>
                                <button type="button" class="btn btn-warning" title="Account status"  
                                        data-container="body" data-toggle="popover" data-placement="bottom" 
                                        data-content='<%#Eval("UserState").ToString()=="-30"? "Your account has been blocked":"Your account is normal" %>'>
                                    Status
                                </button>
                                <a href="../UserPage/UserForgetCode.aspx" class="btn btn-warning" target="_blank" >Change Password</a>
                            </div>
                            <br/>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Your Authority
                                </div>
                                <div class="panel-body">
                                    <asp:Label ID="lblAuthorityFalse" runat="server" Visible='<%#Eval("UserType").ToString()=="1"%>' Text="You have not yet uploaded your personal identification documents! So you have no investment authority!You can upload personal identification documents on this page"></asp:Label>
                                    <asp:Label ID="lblAuthorityTrue" runat="server" Visible='<%#Eval("UserType").ToString()=="2"%>' Text="You are a Senior member so you are free to invest and apply for a project!"></asp:Label>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    More Information
                                </div>
                                <div class="panel-body">
                                    Registration time:<asp:Label ID="Label1" runat="server" Visible="True" Text='<%#Eval("InsertTime")%>'></asp:Label>
                                </div>
                                <div class="panel-body">
                                    WeChat:<asp:Label ID="Label2" runat="server" Visible="True" Text='<%#Eval("UserWechat")%>'></asp:Label>
                                </div>
                                <div class="panel-body">
                                    [Remarks] Senior members have free investment privileges and quick project application privileges.
                                </div>
                            </div>                          
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-md-9">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#investment" data-toggle="tab">
                                Member upgrade application
                            </a>
                        </li>
                        <li><a href="#project" data-toggle="tab"> Personal information changes</a></li>
                        <li class="dropdown">
                            <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                               data-toggle="dropdown">Project & Investment
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                                <li><a href="#upgrade" tabindex="-1" data-toggle="tab">Personal investment</a></li>
                                <li><a href="#Personal" tabindex="-1" data-toggle="tab">Personal project</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="investment">
                            <p>
                                [Completion Instructions]
                                Please fill in your ID number and upload two pictures of your identification documents photo.
                                We will handle in time! Upgrade your membership level.
                            </p>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-globe FontBig"></span><span class="FontUserType">ID number</span></span>
                                <asp:TextBox ID="txtId" CssClass="form-control" placeholder="Please enter your ID number" runat="server"></asp:TextBox>
                            </div>
                            <uc1:wuc_UpLoadDoubleEng runat="server" id="wuc_UpLoadDoubleEng2" />
                            <p style="text-align: center">
                                <asp:Button ID="btnChange" CssClass="btn btn-danger" OnClick="btnChange_OnClick" runat="server" Text="Submit" OnClientClick="return CheckNull()" />
                            </p>
                            <h4 class="h4">Upload Picture Result：</h4>
                            <div class="row">
                                <div class="col-md-4 col-xs-6">
                                    <asp:Image ID="ImgSrcPictureOne" Visible="False" runat="server" Width="160px" Height="100px" BorderColor="white" />
                                </div>
                                <div class="col-md-4 col-xs-6">
                                    <asp:Image ID="ImgSrcPictureTwo"  Visible="False" runat="server" Width="160px" Height="100px"  BorderColor="white" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="project">
                            <div class="form-group">
                                <label for="txtUserName">Real name</label>
                                <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Please enter your real name" runat="server"></asp:TextBox>
                            </div>
                            <br/>
                            <div class="form-group">
                                <label for="txtUserEmail">Your E-mail</label>
                                <asp:TextBox ID="txtUserEmail" TextMode="Email" CssClass="form-control" placeholder="Please enter your email address" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="txtWeChat">WeChat</label>
                                <asp:TextBox ID="txtWeChat"  CssClass="form-control" placeholder="Please enter your WeChat" runat="server"></asp:TextBox>
                            </div>
                            <br/>
                            <div style="text-align: center; height: 70px;line-height: 70px">
                                <asp:Button ID="btnEditUserInfor" runat="server" CssClass="btn btn-danger" Text="Edit" OnClick="btnEditUserInfor_OnClick" />
                                <asp:Button ID="btnChangeUserInfor" runat="server" CssClass="btn btn-danger" Text="Submit" OnClick="btnChangeUserInfor_OnClick" />
                            </div>
                        </div>
                        <div class="tab-pane fade" id="upgrade">
                            <div class="row">
                                <table class="table" style="width: 96%;margin: auto">
                                    <div class="col-md-12 col-sm-12 col-xs-12" >
                                        <thead>
                                        <tr>
                                            <th>Number</th>
                                            <th>Project Name</th>
                                            <th>Account</th>
                                            <th>Region</th>
                                            <th>Time</th>
                                            <th>Status</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>
                                    </div>
                                    <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_OnItemCommand">
                                        <ItemTemplate>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <tr>
                                                    <td><%#Container.ItemIndex+1 %></td>
                                                    <td><%#Eval("InsertProjectName")%></td>
                                                    <td><%#Eval("Account")%></td>
                                                    <td><%#Eval("Province")%></td>
                                                    <td><%#Eval("InvestTime")%></td>
                                                    <td><%# (Eval("PiiState").ToString()=="30") ?"already passed":( (Eval("PiiState").ToString()=="10")?"submitted":"Did not pass" )  %></td>
                                                    <td><asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn-primary btn-sm" OnClientClick="javascript:confirm('Are you sure you want to delete your investment application?');" Visible='<%#Eval("PiiState").ToString()=="10"%>'  CommandName="Delete" CommandArgument='<%#Eval("PiiID")%>'/></td>
                                                </tr>
                                            </div>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                    </asp:Repeater>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="Personal">
                            <div class="row" id="reptemNewProductMy">
                                <asp:Repeater ID="reptmMy" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <figure>
                                                <img src='<%#Eval("ImgPicturPath")%>' >          
                                                <figcaption>
                                                    <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                                    <p>Status:<%# Eval("PciState").ToString()=="30" ? "Approved":(Eval("PciState").ToString()=="-30"? "Not approved":"Is under review" ) %></p>
                                                    <p>
                                                        <details>
                                                            <summary>Basic Information</summary>
                                                            <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%>RMB<br/>
                                                            <a href="javascript:Guquan('<%#Eval("PciName_c")%>')">Stock Right->Click to view</a><br/>
                                                            <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">Certificate download address</asp:HyperLink>
                                                            <p>Project Debriefing</p>
                                                            <asp:Repeater ID="reptem" runat="server">
                                                                <ItemTemplate>
                                                                    <p> <%#Eval("UserName_e") %> invested  <%#Eval("Account") %> RMB in your project time:<%#Eval("InvestTime") %></p>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </details>
                                                    </p>
                                                    <p class="ProductShowDiscr"> 
                                                        <span class="TitleIconss">[Introduction]:</span><%#Eval("PciDescription_c")%></p>
                                                </figcaption>
                                            </figure>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br/><br/><br/><br/><br/>
    </form>
    <script>
        $(function () {
            $("[data-toggle='popover']").popover();
        });
    </script>
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
            <a target="_blank" href="../BackendManage/AdminLogin.aspx">Administrator" href="../BackendManage/AdminLogin.aspx">Administrator</a>
        </p>
    </div>
</body>
</html>
