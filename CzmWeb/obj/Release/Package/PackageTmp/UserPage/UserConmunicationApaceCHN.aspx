<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserConmunicationApaceCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserConmunicationApaceCHN" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/holder.min.js"></script>
    <link rel="icon" href="../Img/CZM.png" />
    <link href="../bootstrap337/css/style.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/FontBindData.css" rel="stylesheet" />
    <link href="../CSS/BootsrapMuBan.css" rel="stylesheet" />
    <link rel="stylesheet" href="../CSS/navXiaoxiannv.css" type="text/css" />
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
            lengths.innerHTML = "[剩余文字:] " + text.value.toString().length + "/1200";
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
            if (textPhone.value == "") { alert("请输入留言"); return false; }
            if (textContent.value == "") { alert("请输入文本"); return false; }
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
  <div class="row row_15" id="PhoneDaohang">
			<ul class="nav_bar_Headers">
				<li class="navbar-title"><a target="_blank" href="../Default.aspx" class="text-left" >四川创造门高新技术开发有限公司</a></li>
				<li class="navbar-open"><a href="javascript:Opennavbar()">网站导航</a></li>
			</ul>
		</div>
		<div  id="XDXC" style="display: none;">
			<div class="dropdown" >
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    <small>Language【语言】</small>
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="Menu1">
				      <li><a href="../Default.aspx" target="blank" >中文</a></li>
				      <li><a href="../DefalutEng.aspx" target="blank" >English</a></li>
				  </ul>
				</div>
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    <small>用户入口</small> 
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" id="Menu2">
				      <li><a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><span class="glyphicon glyphicon-user"></span> 立即登录</a></li>
				      <li><a target="_blank" href="../UserPage/UserPageRegisterCHN.aspx"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a></li>
				      <li><a target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a></li>
				  </ul>
				</div>
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				      <small>用户功能</small> 
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu3" id="Menu3">
				      <li class="active"><a target="_blank" href="../Default.aspx">主页</a></li>
				      <li><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a></li>
				      <li><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a></li>
				      <li><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
				      <li><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
				      <li><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a></li>
				      <li><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
				      <li><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
			 	 </ul>
			</div>
		</div>				
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
<br/><br/>
<div class="container-fluid " style="margin-top: -30px;background-color: white">
    <div class="page-header">
        <h4 class="h4"><span class="ProductNameType">交流空间</span>
        </h4>
    </div>
</div>
<form id="form1" runat="server">
    <div class="container-fluid">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#home" data-toggle="tab">投诉建议</a>
            </li>
            <li class="dropdown">
                <a href="#" id="myTabDrop1" class="dropdown-toggle" 
                   data-toggle="dropdown">咨询 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                    <li><a href="#jmeter" tabindex="-1" data-toggle="tab">
                            QQ服务</a>
                    </li>
                    <li><a href="#ejb" tabindex="-1" data-toggle="tab">
                            阿里旺旺</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="home">
                <div  class="container-fluid">
                    <div class="row">
                        <h4 class="col-md-12 h4">用户留言 <small><span id="DateTimeNow">[时间:2017-10-18 18:28:39]</span></small></h4>
                    </div>
                    <div class="row">
                        <div class="col-md-6"><ins>[你可以给我们反馈你的意见]</ins></div>
                        <div class="col-md-3 col-md-offset-3" id="BtnSaveMessage"><asp:Button ID="btnSave" OnClientClick="return checkNull()"  runat="server" Text="留言" CssClass="btn btn-danger" OnClick="btnSave_Click" /></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="txtboxPhone">电话号码</label>
                            <asp:TextBox ID="txtboxPhone" CssClass="form-control" runat="server" placeholder="电话号码"></asp:TextBox>
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="txtEmailText">电子邮件</label>
                            <asp:TextBox ID="txtEmailText" CssClass="form-control" runat="server" placeholder="填写电子邮件"></asp:TextBox>
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="txtMessageContent">留言内容</label><asp:Label ID="lblWordTime" runat="server" Text="[字数:] 0/1200"></asp:Label>
                            <asp:TextBox ID="txtMessageContent" CssClass="form-control" runat="server" placeholder="输入文字" Height="120px" 
                                         onMouseDown="WordLengthChange();"  onkeydown="WordLengthChange();" 
                                         TextMode="MultiLine"  Text=""></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="jmeter">
                <p>
                    在线QQ：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
                </p>
                <figure>
                    <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="310px" height="310px " alt="加载中"  />
                    <figcaption>
                          微信咨询渠道！扫码即可
                    </figcaption>
                </figure>
                <p>
                    [咨询说明]:我们会最快的及时回复你的问题！
                </p>
            </div>
            <div class="tab-pane fade" id="ejb">
                <p>
                    阿里旺旺：<a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>旺旺咨询</a>
                </p>
                <figure>
                    <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="310px" height="310px " alt="加载中"  />
                    <figcaption>
                        微信咨询渠道！扫码即可
                    </figcaption>
                </figure>
                <p>
                    [咨询说明]:我们会最快的及时回复你的问题！
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
<br/><br/><br/><br/><br/><br/>
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
<div class="JiaoBen" Id="Adminsrator" style="position: fixed;bottom: 0px">
    <p style="text-align: center;padding-top: 5px">
        <a target="blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
        <a target="blank" href="../BackendManage/AdminLogin.aspx" style="color: black">管理员</a>
    </p>
</div>
</body>
<script type="text/javascript">
    function Opennavbar() {
        var Invest = document.getElementById("XDXC");
        if (Invest.style.display == "block") {
            Invest.style.display = "none";
        } else {
            Invest.style.display = "block";
        }
    }
</script>
</html>