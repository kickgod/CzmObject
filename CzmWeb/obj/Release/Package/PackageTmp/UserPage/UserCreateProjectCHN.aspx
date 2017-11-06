<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCreateProjectCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserCreateProjectCHN" %>
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
      $(document).ready(function() {
          function chengckIsNull(parameters) {
              var projectName = document.getElementById('<%=txtProjectName.ClientID%>');
              if (projectName.value == "") {
                  alert("请填写项目名称");
                  return false;
              }
              var txtZlH = document.getElementById('<%=txtZlH.ClientID%>');
              if (txtZlH.value == "") {
                  alert("请填写专利号");
                  return false;
              }
              var txtProjectIntroDuction = document.getElementById('<%=txtProjectIntroDuction.ClientID%>');
              if (txtProjectIntroDuction.value == "") {
                  alert("请填写简介");
                  return false;
              }
              var txtAmount = document.getElementById('<%=txtAmount.ClientID%>');
              if (txtAmount.value == "") {
                  alert("请输入投资金额");
                  return false;
              }
              var txtBilieShuoming = document.getElementById('<%=txtBilieShuoming.ClientID%>');
              if (txtBilieShuoming.value == "") {
                  alert("请说明持股比例");
                  return false;
              }
              var txtApplyName = document.getElementById('<%=txtApplyName.ClientID%>');
              if (txtApplyName.value == "") {
                  alert("请输入申请人名称");
                  return false;
              }
              var txtPhone = document.getElementById('<%=txtPhone.ClientID%>');
              if (txtPhone.value == "") {
                  alert("Please enter your phone number");
                  return false;
              }
              var txtAddress = document.getElementById('<%=txtAdress.ClientID%>');
              if (txtAddress.value == "") {
                  alert("请输入联系电话");
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
      })

    
    </script>
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
                <label for="wuc_FileUpload_Piture">项目图片[宽高比例 1000x400]</label><br />
                <uc1:wuc_FileUpload runat="server" ID="wuc_FileUpload_Piture" />
            </div>
            <div class="form-group">
                <label for="wuc_FileVedio">证书</label><br />
                <uc1:wuc_FileVedio runat="server" ID="wuc_FileVedio" />
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
            <p>
                <asp:Button ID="btnSave"  CssClass="btn btn-danger btn-lg btn-block" OnClientClick="return  chengckIsNull()" runat="server" Text="提交" OnClick="btnSave_Click" />
            </p>
        </div>
    </form>
    <br />
    <br />
    <div class="zixun">
        <div class="showDiv">
            <p>微信二维码</p>
            <img src="../Images/SystemPicture/timg.jpg"/>
            <p>扫码咨询关注</p>
            <p>惊喜连连更多</p>
        </div>
        <div class="lanmu">
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
            <a href="javascript:void(0)"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
            <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
        </div>
    </div>
    <div class="JiaoBens" id="Adminsrator" style="border-top: 1px gainsboro solid">
        <p style="text-align: center; padding-top: 5px">
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao">
                <img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px" />阿里旺旺</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes">
                <img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息" /></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx">管理员</a>
        </p>
    </div>
</body>
</html>
