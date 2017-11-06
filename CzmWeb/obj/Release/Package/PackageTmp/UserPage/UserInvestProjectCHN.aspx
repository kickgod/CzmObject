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
                        <li><a href="../DefalutEng.aspx"  >English</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../Default.aspx">主页</a></li>
                        <li><a href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                        <li><a href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                        <li><a href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                        <li><a href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                        <li><a href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar navbar-default" role="navigation" id="ShowPhoneIfEnd">
    <div class="container-fluid"> 
        <div class="navbar-header">
            <a class="navbar-brand" href="../Default.aspx"><strong class="CZMBrandCompany">创造门</strong></a>
        </div>
        <div>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户功能
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="../Default.aspx">主页</a></li>
                        <li><a href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
                        <li><a href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
                        <li><a href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
                        <li><a href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
                        <li><a href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
                        <li><a href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
                        <li><a href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
                    </ul>
                </li>
            </ul>
            <!--向右对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户入口 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
                        <li><a href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
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
            <asp:TextBox ID="txtTread"  class="form-control"  placeholder="项目名称"   runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtAmount">投资金额</label>
            <asp:TextBox ID="txtAmount" TextMode="Number"  class="form-control" placeholder="投资金额"  runat="server"></asp:TextBox>
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
            <asp:TextBox ID="txtApplicant" CssClass="form-control"  placeholder="申请人单位名或者个体名" runat="server"></asp:TextBox>
        </div>    
        <div class="form-group">
            <label for="txtPhone">电话</label>
            <asp:TextBox ID="txtPhone" CssClass="form-control"  placeholder="电话号码" runat="server"></asp:TextBox>
        </div>  
        <div class="form-group">
            <label for="txtAddress">地址</label>
            <asp:TextBox ID="txtAddress" CssClass="form-control"  placeholder="个人/单位-地址" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btnSave" OnClientClick="return  CheckNull()"  CssClass="btn btn-danger btn-lg btn-block" runat="server" Text="提交" OnClick="btnSave_Click" />
        </p>  
    </div>
</form>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
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
<div class="zixun">
    <div class="showDiv">
        <p>微信二维码</p>
        <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
        <p>扫码咨询关注</p>
        <p>惊喜连连更多</p>
    </div>
    <div class="lanmu">
        <a href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
        <a href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
        <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
    </div>
</div>
<div class="JiaoBen" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx" style="color: black">管理员</a>
    </p>
</div>
</body>
</html>
