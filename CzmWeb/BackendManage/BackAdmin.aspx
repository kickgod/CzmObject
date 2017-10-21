<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BackAdmin.aspx.cs" Inherits="CzmWeb.BackendManage.UserIdentityVerify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../Scripts/jquery-1.8.2.min.js"></script>
    <link href="../CSS/TraditionalFontStyle.css" type="text/css" rel="stylesheet"/>
    <title>事务管理</title>
    <style type="text/css">
        *{ padding: 0px;margin: 0px;text-decoration: none;}
        .Header{ width: 100%;}
        .UpRectangle{ width: 100%;height: 70px;line-height: 70px;background-color:RGB(176,53,112)}
        .UpRectangle .TitleName{ font-size: 1.1em;font-weight: 500;font-style: italic;color: white}
        .UpLower{ width: 100%;height: 40px;background-color: pink;line-height: 40px}
        .UpLower img{vertical-align:middle}
        .UpLower a{color: white}
        .Main{ width: 100%;}
        .Main::after{ content: "";display: block;clear: both}/*清楚浮动*/
        .Main .LeftBoxs{float: left; width: 15%;background-color: RGB(206,71,136); height: 1000px;}
        .Main .LeftBoxs .UpYouNo{ height: 50px;}
        .Main .LeftBoxs .ChooseKa{ width: 80%;margin: auto;color: white}
        .Main .LeftBoxs .ChooseKa ul{list-style: none}
        .Main .LeftBoxs .ChooseKa ul li {text-align:center;margin-bottom: 5px;font-size: 1.2em;font-weight: 500;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';vertical-align: middle;margin-bottom: 15px;margin-top: 15px;}
        .Main .LeftBoxs .ChooseKa ul li:hover{color: white }
        .Main .LeftBoxs .ChooseKa ul li a:hover{color:red;}
        .OpenInvert{font-size: 14px;font-weight: 500;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';display: none;color: gainsboro}
        .OpenProduct{font-size: 14px;font-weight: 500;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';display: none;color: gainsboro}
        .OpenAdvie{ font-size: 14px;font-weight: 500;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';display: none;color: gainsboro}
        .OpenHome{font-size: 14px;font-weight: 500;font-family: '华文楷体', '楷体', '微软雅黑', '宋体';display: none;color: gainsboro}
        .OpenHome a:hover{color: crimson}
        .OpenProduct a:hover{color: crimson}
        .OpenInvert a:hover{color: crimson}
        .OpenAdvie a:hover{color: crimson}
        .Main .LeftBoxs .ChooseKa ul li a{color: white;} 
        .Main .zhedie{ width: 1%;height: 1000px;float: left;}
        .Main .zhedie .ZheDieChoose img{ width: 100%;vertical-align: text-bottom}
        .Main .ZheDieChoose{ width: 100%;height: 50px;position: relative;top: 475px}
        .Main .ZheDieChoose:hover{cursor:pointer}
        .Main .RightBoxs{ float: right; width: 84%;height: 1000px;background-color: white}
        .TFS_Font{font-style: italic;font-weight: 400;color: RGB(167,24,92) }
        .ImgShooseCk {height: 20px;  width: 20px;vertical-align: middle; }
        .ImgShooseCk:hover{cursor: pointer}
    </style>
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
            var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
            return currentdate;
        }
        function GoGoGo() {
            var heihei = document.getElementById("ImgZhedie");
            if (heihei.getAttribute('src') == "../Images/SystemPicture/折叠zhedie.png") {
                heihei.setAttribute('src', "../Images/SystemPicture/折叠xiangzuo.png");
                document.getElementById('leFtBoxsS').style.display = 'none';
                document.getElementById('Righxbox').style.width = '99%';
            } else if (heihei.getAttribute('src') == "../Images/SystemPicture/折叠xiangzuo.png") {
                heihei.setAttribute('src', '../Images/SystemPicture/折叠zhedie.png');
                document.getElementById('leFtBoxsS').style.display = 'block';
                document.getElementById('Righxbox').style.width = '84%';
            }          
        }

        function OpenChooseKa() {
            var Invest = document.getElementById("InverstShooseKa");
            if (Invest.style.display == "block") {
                Invest.style.display = "none";
                InvestAdmin.style.backgroundColor = "inherit";
            } else {
                InvestAdmin.style.borderColor = "white";
                InvestAdmin.style.backgroundColor = "RGB(229,107,166)";
                Invest.style.display = "block";
            }
        }
        function OpenProductChooseKa() {
            var Invest = document.getElementById("ProductShooseKa");
            if (Invest.style.display == "block") {
                Invest.style.display = "none";
                ProductAdmin.style.backgroundColor = "inherit";
            } else {
                ProductAdmin.style.borderColor = "white";
                ProductAdmin.style.backgroundColor = "RGB(229,107,166)";
                Invest.style.display = "block";
            }
        }
        function OpenAdviceChooseKa() {
            var Invest = document.getElementById("AdviceShooseKa"); 
            if (Invest.style.display == "block") {
                Invest.style.display = "none";
                AdviceAdmin.style.backgroundColor = "inherit";
            } else {
                AdviceAdmin.style.borderColor = "white";
                AdviceAdmin.style.backgroundColor = "RGB(229,107,166)";
                Invest.style.display = "block";
            }
        }
        function OpenHomeChooseKa() {
            var Invest = document.getElementById("HomeShooseKa");
            if (Invest.style.display == "block") {
                Invest.style.display = "none";
                HomeAdmin.style.backgroundColor = "inherit";
            } else {
                HomeAdmin.style.borderColor = "white";
                HomeAdmin.style.backgroundColor = "RGB(229,107,166)";
                Invest.style.display = "block";
            }
        }
        function GetPage() {
            var div = document.getElementById('framGetPage');
            div.setAttribute('src',arguments[0].toString());
        }
        setInterval(function() {
                document.getElementById("DateTimeNow").innerHTML = getNowFormatDate();
            },
            1000);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Header">
            <div class="UpRectangle">
                <div class="TitleName">
                    <h2 class="TFS_Standardstyle">创造门会员后台管理</h2>
                </div>
            </div>
            <div class="UpLower" style="color: white">
                <p class="TFS_Standardstyle">
                    <span>管理员:</span><asp:Label ID="lblAdmin" CssClass="TFS_Standardstyle TFS_Font" runat="server" Text="admin"></asp:Label> 时间：<span id="DateTimeNow"></span>
                    <a href="../BackendManage/AdminLogin.aspx" title="退出登陆" ><img src="../Images/SystemPicture/退出.png" width="30px"  height="30px" />退出登录</a>
                    <a href="../Default.aspx"  title="返回首页"><img src="../Images/SystemPicture/生生世世.png"  width="30px"  height="30px" />返回首页</a> 
                    <asp:Label ID="lbladminpwd" runat="server" Text=""  Visible="False"></asp:Label>
                </p>
            </div>
        </div>
        <section class="Main">
            <div class="LeftBoxs" id="leFtBoxsS">
                <div class="UpYouNo"></div>
                <div class="ChooseKa">
                    <ul>
                        <li id="HomeAdmin"><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"/><a href="javascript:OpenHomeChooseKa()">首页管理</a>
                            <ul class="OpenHome" id="HomeShooseKa">
                                <li><a href="javascript:GetPage('../Default.aspx')">A.首页查看</a></li>
                            </ul>
                        </li>
                        <li id="ProductAdmin"><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk" onclick="OpenProductChooseKa()" /><a href="javascript:OpenProductChooseKa()">产品管理</a>
                            <ul class="OpenProduct" id="ProductShooseKa">
                                <li><a href="javascript:GetPage('../BackendManage/ProductTypeAdd.aspx')">A.产品类别</a></li>
                                <li><a href="javascript:GetPage('../BackendManage/ProductAddNew.aspx')">B.添加产品</a></li>
                                <li><a href="javascript:GetPage('../BackendManage/ProductDataList.aspx')">C.产品列表</a></li>
                                <li><a href="javascript:GetPage('../BackendManage/ProductDataShow.aspx')">D.产品效果</a></li>
                            </ul>
                        </li>
                        <li><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"/><a href="javascript:GetPage('../BackendManage/UserApplyCheck.aspx')">会员管理</a></li>
                        <li><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"/><a href="javascript:void(0)">项目审核</a></li>
                        <li id="InvestAdmin"><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"  onclick="OpenChooseKa();" /><a href="javascript:OpenChooseKa()">投资管理</a>
                            <ul class="OpenInvert" id="InverstShooseKa">
                                <li><a href="javascript:void(0)">A.投资地区</a></li>
                                <li><a href="javascript:void(0)">B.投资项目</a></li>
                                <li><a href="javascript:void(0)">C.投资审核</a></li>
                            </ul>
                        </li>
                        <li id="AdviceAdmin"><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"/><a href="javascript:OpenAdviceChooseKa()">投诉建议</a>
                            <ul class="OpenAdvie" id="AdviceShooseKa">
                                <li><a href="javascript:GetPage('../BackendManage/UserSuggestionsList.aspx')">A.英文版</a></li>
                                <li><a href="javascript:GetPage('../BackendManage/UserSuggestionListChinese.aspx')">B.中文版</a></li>
                            </ul>
                        </li>
                        <li><img src="../Images/SystemPicture/角标（下） - 副本.png" class="ImgShooseCk"/><a href="javascript:GetPage('../BackendManage/UserValidCheck.aspx')">投诉建议</a></li>
                    </ul>                    
                </div>
            </div>
            <div class="zhedie" >
                <div class="ZheDieChoose" id="ZheDieChange" onclick="GoGoGo()"  ><img  id="ImgZhedie"   src="../Images/SystemPicture/折叠zhedie.png"/></div>
            </div>
            <div class="RightBoxs" id="Righxbox">
                <iframe width="100%" height="100%" id="framGetPage" src="">
                    
                </iframe>
            </div>
        </section>
    </form>
</body>
</html>
