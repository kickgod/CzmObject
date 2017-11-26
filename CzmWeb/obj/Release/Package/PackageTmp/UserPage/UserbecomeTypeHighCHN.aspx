<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserbecomeTypeHighCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserbecomeTypeHighCHN" %>
<%@ Register TagPrefix="uc1" TagName="wuc_FileUpload_1" Src="~/Common/wuc_FileUpload.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
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
        .SSSS{border-radius: 12.5px;}
        .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
    </style>
    <script type="text/javascript">
        function CheckNull() {
            var userId = document.getElementById("<%=txtId.ClientID%>");
            if (userId.value == "") {
                alert("请输入证件号码!");
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
                <a class="navbar-brand" href="../Default.aspx"><strong class="CZMBrandCompany">创造门</strong></a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Language【语言】 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="../Default.aspx" target="blank" >中文</a></li>
                            <li><a href="../DefalutEng.aspx" target="blank" >English</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            用户入口 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                            <li><a target="_blank" href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            用户功能 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active"><a target="_blank" href="../Default.aspx">主页</a></li>
                            <li><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                            <li><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                            <li><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                            <li><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                            <li><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                            <li><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                            <li><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left" >
                <li class="ulloSpan"><a target="_blank" href="../Default.aspx">主页</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="ulloSpan"><a href="../UserPage/UserPageLoginCHN.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                <li class="ulloSpan"><a href="../UserPage/UserPageRegisterCHN.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                <li class="ulloSpan"><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <a href="../Default.aspx "  target="_blank" type="submit" class="btn btn-default" >CN</a>
                <a href="../DefalutEng.aspx" target="_blank" type="submit" class="btn btn-default"  >EN</a>
            </form>
        </div>
    </div>
</nav>
<form id="form1" runat="server">
    <div class="container" style="margin-top: -35px">
        <div class="page-header">
            <h3><span class="ProductNameType">个人中心</span>
                <small>用户</small>
            </h3>
        </div>
        <div class="row">
            <div class="col-md-3">
                <asp:Repeater ID="RpemUserInfor" runat="server">
                    <ItemTemplate>
                        <span class="glyphicon glyphicon-user FontBig"></span><span class="FontBigUser"><%#Eval("UserName_e")%></span>
                        <br/>
                        <span class="glyphicon glyphicon-phone-alt FontBig"></span><span class="FontUserPhoneId"><%#Eval("UserId")%></span>
                        <br/>
                        <span class="glyphicon glyphicon-queen FontBig"></span><span class="FontUserType"><%# Eval("UserType").ToString()=="1"? "普通会员":"钻石会员" %></span> 
                        <br/><br/>
                        <span class="FontUserEmail"><%#Eval("UserEmail")%></span>
                        <div>
                            <br/>
                            <button type="button" class="btn btn-warning" title="Account status"  
                                    data-container="body" data-toggle="popover" data-placement="bottom" 
                                    data-content='<%#Eval("UserState").ToString()=="-30"? "你的账户以及被屏蔽":"你的账户正常" %>'>
                                状态
                            </button>
                            <a href="../UserPage/UserForgetCode.aspx" target="_blank" class="btn btn-warning" >修改密码</a>
                        </div>
                        <br/>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                你的权限
                            </div>
                            <div class="panel-body">
                                <asp:Label ID="lblAuthorityFalse" runat="server" Visible='<%#Eval("UserType").ToString()=="1"%>' Text="你还没有上传你的个人证件进行个人实名认证!所以你暂时无法投资!你可以在这个页面进行账号管理上传认真。"></asp:Label>
                                <asp:Label ID="lblAuthorityTrue" runat="server" Visible='<%#Eval("UserType").ToString()=="2"%>' Text="你是钻石会员可以自由投资!"></asp:Label>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                更多信息
                            </div>
                            <div class="panel-body">
                                注册时间:<asp:Label ID="Label1" runat="server" Visible="True" Text='<%#Eval("InsertTime")%>'></asp:Label>
                            </div>
                            <div class="panel-body">
                                用户名:<asp:Label ID="Label2" runat="server" Visible="True" Text='<%#Eval("UserWechat")%>'></asp:Label>
                            </div>
                            <div class="panel-body">
                                [备注] 钻石会员才有自由投资的权限和快速申请项目的能力.
                            </div>
                        </div>                          
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-9">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#investment" data-toggle="tab">
                            个人投资
                        </a>
                    </li>
                    <li><a href="#project" data-toggle="tab">个人项目 </a></li>
                    <li class="dropdown">
                        <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                           data-toggle="dropdown">账号管理
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                            <li><a href="#upgrade" tabindex="-1" data-toggle="tab">会员升级</a></li>
                            <li><a href="#Personal" tabindex="-1" data-toggle="tab">修改信息</a></li>
                        </ul>
                    </li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="investment">
                        <div class="row">
                            <table class="table" style="width: 96%;margin: auto">
                                <div class="col-md-12 col-sm-12 col-xs-12" >
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>项目名称</th>
                                        <th>金额</th>
                                        <th>区域</th>
                                        <th>申请时间</th>
                                        <th>状态</th>
                                        <th>删除</th>
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
                                                <td><%# (Eval("PiiState").ToString()=="30") ?"通过":( (Eval("PiiState").ToString()=="10")?"已提交":"未通过" )  %></td>
                                                <td><asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn-primary btn-sm" OnClientClick="javascript:confirm('你确定你要删除这项投资?');" Visible='<%#Eval("PiiState").ToString()=="10"%>'  CommandName="删除" CommandArgument='<%#Eval("PiiID")%>'/></td>
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
                    <div class="tab-pane fade" id="project">
                        <div class="row" id="reptemNewProductMy">
                            <asp:Repeater ID="reptmMy" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <figure>
                                            <img src='<%#Eval("ImgPicturPath")%>' >          
                                            <figcaption>
                                                <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                                <p>Status:<%# Eval("PciState").ToString()=="30" ? "通过":(Eval("PciState").ToString()=="-30"? "未通过":"审核中" )%></p>
                                                <p>
                                                    <details>
                                                        <summary>基本信息</summary>
                                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%> RMB<br/>
                                                        <a href="javascript:Guquan('<%#Eval("PciName_c")%>')">股份权限->点击查看</a><br/>
                                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载地址</asp:HyperLink>
                                                        <p>获得投资</p>
                                                        <asp:Repeater ID="reptem" runat="server">
                                                            <ItemTemplate>
                                                                <p> <%#Eval("UserName_e") %> 投资了  <%#Eval("Account") %> RMB 给你的项目。:<%#Eval("InvestTime") %></p>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </details>
                                                </p>
                                                <p class="ProductShowDiscr"> 
                                                    <span class="TitleIconss">[简介]:</span><%#Eval("PciDescription_c")%>
                                                </p>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>   
                        </div>
                    </div>
                    <div class="tab-pane fade" id="upgrade">
                        <br/>
                        <p>
                            [填写指示]
                            请填写你的身份证件号码！并且上传你的身份证前后两张照片。我们会及时处理你的申请，并为你升级你的会员等级！
                        </p>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-globe FontBig"></span><span class="FontUserType">证件号码</span></span>
                            <asp:TextBox ID="txtId" CssClass="form-control" placeholder="Please enter your ID number" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="name">第一张图片</label>
                            <br/>
                            <uc1:wuc_FileUpload_1 runat="server" ID="wuc_FileUpload1" />
                        </div>
                        <div class="form-group">
                            <label for="name">第二张图片</label>
                            <br />
                            <uc1:wuc_FileUpload_1 runat="server" ID="wuc_FileUpload2" />
                        </div>
                        <p style="text-align: center">
                            <asp:Button ID="btnChange" CssClass="btn btn-danger" OnClick="btnChange_OnClick" runat="server" Text="Submit" OnClientClick="return CheckNull()" />
                        </p>
                    </div>
                    <div class="tab-pane fade" id="Personal">
                        <div class="form-group">
                            <label for="txtUserName">真实姓名</label>
                            <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Please enter your real name" runat="server"></asp:TextBox>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label for="txtUserEmail">电子邮件</label>
                            <asp:TextBox ID="txtUserEmail" TextMode="Email" CssClass="form-control" placeholder="Please enter your email address" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtWeChat">用户名</label>
                            <asp:TextBox ID="txtWeChat"  CssClass="form-control" placeholder="Please enter your WeChat" runat="server"></asp:TextBox>
                        </div>
                        <br/>
                        <div style="text-align: center; height: 70px;line-height: 70px">
                            <asp:Button ID="btnEditUserInfor" runat="server" CssClass="btn btn-danger" Text="Edit" OnClick="btnEditUserInfor_OnClick" />
                            <asp:Button ID="btnChangeUserInfor" runat="server" CssClass="btn btn-danger" Text="Submit" OnClick="btnChangeUserInfor_OnClick" />
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
            <p>微信二维码</p>
            <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
            <p>扫码咨询关注</p>
            <p>惊喜连连更多</p>
        </div>
        <div class="lanmu">
            <a target="blank" href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
            <a target="blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
            <a target="blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
            <a  href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="置顶" /></a>
        </div>
    </div>
    <div class="JiaoBen" Id="Adminsrator">
        <p style="text-align: center;padding-top: 5px">
            <a target="blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
            <a target="blank" href="../BackendManage/AdminLogin.aspx" style="color: black">管理员</a>
        </p>
    </div>
</body>
</html>
