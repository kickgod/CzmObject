<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPageRegisterCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserPageRegister1" %>

<%@ Register Src="~/Common/wuc_FileUpload.ascx" TagPrefix="uc1" TagName="wuc_FileUpload" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../Img/CZM.png" />
    <link href="../CSS/TraditionalFontStyle.css" type="text/css"  rel="stylesheet" />
    <link href="../Content/FontBindData.css" type="text/css"  rel="stylesheet" />
    <link href="../CSS/Refister.css"  type="text/css"  rel="stylesheet" />
    <script type="text/javascript">
        window.onload = function () {
            /**匹配屏幕查询**/
            /*轮播图的大小*/

            var widthLunbo;
            var wWidth = document.documentElement.clientWidth;
            var screen1 = window.matchMedia('(min-width:1300px)');
            var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
            var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
            if (screen1.matches) {
                widthLunbo = 1200;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen2.matches) {
                widthLunbo = 750;
                document.getElementById('headerCaidan').style.display = 'block';
                document.getElementById('headerCaidan').style.height = '60px';
                document.getElementById('daohanglanPhone').style.display = 'none';
                document.getElementById('daohanglanPhone').style.visibility = false;
            } else if (screen3.matches) {
                widthLunbo = 350;
                document.getElementById('headerCaidan').style.display = 'none';
                document.getElementById('daohanglanPhone').style.display = 'block';
                document.getElementById('daohanglanPhone').style.visibility = true;
                var list = document.getElementById('ilist');
            }
            /*监视页面窗口大小变化*/
            window.onresize = function () {
                var wWidth = document.documentElement.clientWidth;
                var screen1 = window.matchMedia('(min-width:1300px)');
                var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
                var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
                if (screen1.matches) {
                    widthLunbo = 1200;
                    document.getElementById('headerCaidan').style.display = 'block';
                    document.getElementById('headerCaidan').style.height = '60px';
                    document.getElementById('daohanglanPhone').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.visibility = false;
                } else if (screen2.matches) {
                    widthLunbo = 750;
                    document.getElementById('headerCaidan').style.display = 'block';
                    document.getElementById('headerCaidan').style.height = '60px';
                    document.getElementById('daohanglanPhone').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.visibility = false;
                } else if (screen3.matches) {
                    widthLunbo = wWidth;
                    document.getElementById('headerCaidan').style.display = 'none';
                    document.getElementById('daohanglanPhone').style.display = 'block';
                    document.getElementById('daohanglanPhone').style.visibility = true;
                }
            }

        }
    </script>
    <title>创造门</title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            var screen3 = window.matchMedia('(min-width:0px) and (max-width:767px)');
            function ShowHead() {
                var caidan = document.getElementById('headerCaidan'); /*PC端导航栏*/
                var zhidie = document.getElementById('daohanglanPhone');/*手机导航栏折叠菜单*/
                var oHeight = document.documentElement.clientHeight;/*得到页面可视区域高度*/
                if (screen3.matches) {
                    /*使得手机端折叠菜单打开pc端折叠菜单*/
                    if (caidan.style.display == 'block') {
                        document.getElementById('Closeit').style.display = 'block';
                        caidan.style.display = 'none';
                    } else {
                        document.getElementById('Closeit').style.display = 'none';
                        caidan.style.display = 'block';
                        caidan.style.height = oHeight + 'px';
                    }
                } else {
                    /*nonthing*/
                }
            }
        </script>
    <header class="PhoneHead" id="daohanglanPhone">
        <div class="headerTtile">
            <div class="left">
                <span><a href="../Default.aspx" target="_blank"  style="color: white">四川创造门高新技术开发有限公司</a></span>
            </div>
            <div class="right">
                <a href="javascript:ShowHead();">网站导航</a>
            </div>
            <div class="center">
                <a href="../Defalut.aspx" style="visibility: hidden" target="_blank"  class ="cents" >CHE</a>
                <a href="../DefalutEng.aspx" class="cents" target="_blank"  style="visibility: hidden" >ENG</a>                      
            </div>

        </div>
    </header>
    <div class="Head" id="headerCaidan">
        <div class="logo"><a href="../Default.aspx" target="_blank"  ><i class="Font_Title">创造门</i></a></div>
        <div class="Nav">
            <ul>
                <li><a target="_blank" href="../Default_Pc_CHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneFirstPage20171001.png"/><asp:Label ID="lblFisrtPage" runat="server" CssClass="FontColor" Text="首页"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneType20171001.png"/><asp:Label ID="lbl_Product_type"  runat="server" CssClass="FontColor"  Text="产品分类"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneNewProject20171001.png"/><asp:Label ID="lbl_NewProduct"    runat="server"  CssClass="FontColor" Text="新品预告"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneCreate20171001.png"/><asp:Label ID="lbl_CreateProject" runat="server" CssClass="FontColor"  Text="我要创作"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneInvest20171001.png"/><asp:Label ID="lbl_Create_Invert" runat="server" CssClass="FontColor"  Text="我要投资"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserProjectShowCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneShoe20171001.png"/><asp:Label ID="lbl_Project_show" runat="server" CssClass="FontColor"  Text="项目展示"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneVedio20171001.png"/><asp:Label ID="lbl_Look_Vedio" runat="server"  CssClass="FontColor" Text="视屏专区"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneConection20171001.png"/><asp:Label ID="lblChangeSpace" runat="server"  CssClass="FontColor" Text="交流空间"></asp:Label></a></li>
            </ul>
        </div>
        <div class="NavPhone">
            <ul>
                <li><a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLog20171001.png"/><asp:Label ID="lblUserLog" runat="server"  CssClass="FontColor" Text="用户登录"></asp:Label></a></li>
                <li><a target="_blank" href="../UserPage/UserPageRegisterCHN.aspx"><img class="PhoneImg" src="../Images/SystemPicture/NavPhoneLogin20171001.png"/><asp:Label ID="lblUserLogin" runat="server"  CssClass="FontColor" Text="用户注册"></asp:Label></a></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <div class="Login_ACE">
            <ul>
                <li>
                    <a href="#" class="hoverTitle" id="KickOpen" target="_blank"  ><img src="../Images/SystemPicture/User_White.png"/></a>
                </li>
                <li>
                    <a href="../Default.aspx" target="_blank"  class ="transfer" >汉语</a>
                    <a href="../DefalutEng.aspx" target="_blank" class="transfer" >English</a>    
                </li>
            </ul>
        </div>
    </div>
        <div id="Closeit">
            <script type="text/javascript">
                function sendCodes() {
                    var phoneNumber = document.getElementById('<%=txtUserPhone.ClientID%>');
                    if (phoneNumber.value == "" || phoneNumber.value == null) {
                        alert("请填写你的手机号！");
                        return false;
                    } else {
                        return true;
                    }
                }
                function CheckNull() {
                    var userName = document.getElementById('<%=txtUserName.ClientID%>');
                    var realName = document.getElementById('<%= txtUserRealName.ClientID%>');
                    var emai = document.getElementById('<%= txtPwd.ClientID%>');
                    var phoneNumber = document.getElementById('<%=txtUserPhone.ClientID%>');
                    var verificatioN = document.getElementById('<%= txtCode.ClientID%>');
                    var cardIdNuMber = document.getElementById('<%= txtUserCardID.ClientID%>');
                    var passwordC = document.getElementById('<%= txtPasswordOne.ClientID%>');
                    var passstwo = document.getElementById('<%= txtPasswordTwo.ClientID%>');
                    if (userName.value == "" || userName.value == null) {
                        alert("请填写你的微信号");
                        return false;
                    }
                    if (realName.value == "" || realName.value == null) {
                        alert("请填写你的真实姓名");
                        return false;
                    }
                    if (emai.value == "" || emai.value == null) {
                        alert("请填写你的电子邮件");
                        return false;
                    }
                    if (phoneNumber.value == "" || phoneNumber.value == null) {
                        alert("请填写你的手机号！");
                        return false;
                    }
                    if (verificatioN.value == "" || verificatioN.value == null) {
                        alert("请填写验证码");
                        return false;
                    }
                    if (passwordC.value == "" || passwordC.value == null) {
                        alert("请填写你的密码！");
                        return false;
                    }
                    if (passstwo.value == "" || passstwo.value == null) {
                        alert("请再次填写你的密码！");
                        return false;
                    }
                    if (passstwo.value.toString() != passwordC.value.toString()) {
                        alert("两次密码不相同！");
                        return false;
                    }
                    return true;
                }
            </script>
            <div class="Register">
                <div class="MainRegister">
                    <p class="FistHange">
                        <span><asp:Label ID="Label2" runat="server" Text="用户注册"></asp:Label></span><asp:Label ID="lblyzm" runat="server" Text="" Visible="False"></asp:Label>
                        <span class="Requre">星号 * 必填</span>
                    </p>
                    <br/>
                    <br/>
                    <p class="Sheck UserName">
                        <asp:Label ID="lblUserName_C" CssClass="TFS_FormFont" runat="server" Text="用户名:" Visible="True"></asp:Label>
                        <asp:TextBox ID="txtUserName" CssClass="BtnTextForm"  runat="server"  autofocus="autofocus" placeholder="用户名"></asp:TextBox>
                        <span class="Requre">*</span>
                    </p>
                    <p class="Sheck UserRealName">
                        <asp:Label ID="lblUserPwd_C" CssClass="TFS_FormFont" runat="server" Text="真实姓名:" Visible="True"></asp:Label>
                        <asp:TextBox ID="txtUserRealName" CssClass="BtnTextFormS"  runat="server"  placeholder="真实姓名"></asp:TextBox>
                        <span class="Requre">*</span>
                    </p>
                    <p class="Sheck UserSex">
                        <asp:Label ID="lblSex_C" CssClass="TFS_FormFont" runat="server" Text="性别:" Visible="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList1"  CssClass="BtnTextFormSex" runat="server">
                            <asp:ListItem value="1">男（male）</asp:ListItem>
                            <asp:ListItem value="0">女（female）</asp:ListItem>
                        </asp:DropDownList>
                        <span class="Requre">*</span>
                    </p>
                    <p class="Sheck UserPwd">
                        <asp:Label ID="lblPwd_C" CssClass="TFS_FormFont" runat="server" Text="电子邮箱:" Visible="True"></asp:Label>
                        <asp:TextBox ID="txtPwd" TextMode="Email" CssClass="BtnTextFormPwd"  runat="server"  placeholder="E-mail Address"></asp:TextBox>
                        <span class="Requre">*</span>
                        <span class="biaozhu">请输入常用邮箱</span>
                    </p>
                    <p class="Sheck UserPhone">
                        <asp:Label ID="lblUserPhone_C" CssClass="TFS_FormFont" runat="server" Text="手机号:" Visible="True"></asp:Label>
                        <asp:TextBox ID="txtUserPhone" CssClass="BtnTextFormPhone"  runat="server"  placeholder="Phone Number"></asp:TextBox>
                        <span class="Requre">*</span>
                        <span class="biaozhu">你的手机号就是以后的登录ID</span>
                    </p>
                    <p class="Sheck VaildCodes">
                        <asp:Label ID="Code_C" CssClass="TFS_FormFont" runat="server" Text="验证码:" Visible="True" ></asp:Label>
                        <asp:TextBox ID="txtCode" CssClass="BtnTextFormCode"  runat="server"  placeholder="验证码"></asp:TextBox>
                        <asp:Button ID="btnSendCode" runat="server" Text="发送" OnClientClick="return  sendCodes()" CssClass="BtnSendCodes" OnClick="btnSendCode_Click"/>
                        <span class="Requre">*</span>
                        <span class="biaozhu">填写好后点击发送</span>
                    </p>
                    <div style="display: none">
                        <p class="Sheck CradIdNumber">
                            <asp:Label ID="IDNumber_C" CssClass="TFS_FormFont" runat="server" Text="身份证号:" Visible="True" ></asp:Label>
                            <asp:Label ID="IDNumber_E" CssClass="TFS_FormFont"  runat="server" Text="Chinese identity card number:" Visible="False" ></asp:Label>
                            <asp:TextBox ID="txtUserCardID" CssClass="BtnTextFormIDNumber"  runat="server"  placeholder="身份证号"></asp:TextBox>
                            <span class="biaozhu">我们会按照法律保护你的隐私！</span>
                        </p>
                        <p class="Sheck CradIdPicture">
                            <asp:Label ID="pictureUp_C" CssClass="TFS_FormFont" runat="server" Text="身份证照片上传:" Visible="True" ></asp:Label>
                            <uc1:wuc_FileUpload ID="wuc_FileUpload1" runat="server"  />
                            <span class="biaozhu">请上传身份证正面照片</span>
                        </p>
                        <p class="Sheck CradIdPicture">
                            <asp:Label ID="pictureDown_C" CssClass="TFS_FormFont" runat="server" Text="身份证照片上传:" Visible="True" ></asp:Label>
                            <asp:Label ID="pictureDown_E" CssClass="TFS_FormFont"  runat="server" Text="Chinese identity card :" Visible="False" ></asp:Label>
                            <uc1:wuc_FileUpload ID="wuc_FileUpload2" runat="server"  />
                            <span class="biaozhu">请上传身份证背面照片</span>
                        </p>
                    </div>
                    <p class="Sheck UserPwd">
                        <asp:Label ID="LblPwdW_C" CssClass="TFS_FormFont" runat="server" Text="设置密码:" Visible="True"></asp:Label>
                        <asp:Label ID="LblPwdW_E" CssClass="TFS_FormFont"  runat="server" Text="Password:" Visible="false"></asp:Label>
                        <asp:TextBox ID="txtPasswordOne" CssClass="BtnTextFormPwd"  runat="server" TextMode="Password" placeholder="请输入密码(Password)"></asp:TextBox>
                        <span class="Requre">*</span>
                        <span class="biaozhu">请输入严格密码</span>
                    </p>
                    <p class="Sheck UserPwd">
                        <asp:Label ID="lblPwds_C" CssClass="TFS_FormFont" runat="server" Text="重复输入:" Visible="True"></asp:Label>
                        <asp:Label ID="lblPwds_E" CssClass="TFS_FormFont"  runat="server" Text="Password:" Visible="false"></asp:Label>
                        <asp:TextBox ID="txtPasswordTwo" CssClass="BtnTextFormPwd"  runat="server" TextMode="Password"  placeholder="请输入密码(Input Password Again)"></asp:TextBox>
                        <span class="Requre">*</span>
                        <span class="biaozhu">请输入严格密码</span>
                    </p>
                    <p class="Sheck LoginNow">
                        <asp:Button ID="btnLoginNowTime" CssClass="btnLoginNowTime" runat="server" Text="注册" OnClientClick="return CheckNull();" OnClick="btnLoginNowTime_Click" />
                        <span class="biaozhu">
                            <asp:Label ID="lblResult" runat="server" Text="" Visible="False"></asp:Label>
                        </span>
                    </p>
                </div>
            </div>
        </div>
    </form>
    <div class="zixun">
        <div class="showDiv">
            <p>微信二维码</p>
            <img src="../Images/SystemPicture/mmexport1509186467240.jpg"/>
            <p>扫码咨询关注</p>
            <p>惊喜连连更多</p>
        </div>
        <div class="lanmu">
            <a  target="blank" href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/userLanse.png" title="用户登录"/></a>
            <a  target="blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/zixunlanse.png" title="在线咨询"/></a>
            <a  target="blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" title="阿里旺旺" /></a>
            <a  target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img src="../Images/SystemPicture/qqlanse.png" title="QQ咨询" /></a>
            <a href="#"><img src="../Images/SystemPicture/zhidinglanse.png" title="首页" /></a>
        </div>
    </div>
    <div class="JiaoBen" Id="Adminsrator">
        <p style="text-align: center;padding-top: 5px">
            <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2212901&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2212901:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:2212901@qq.com|热线电话：18981191139
            <a href="../BackendManage/AdminLogin.aspx">管理员</a>
        </p>
    </div>
</body>
</html>

