<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CzmWeb.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
        <title>创造门</title>
        <script type="text/javascript">
            var screen3 = window.matchMedia('(min-width:0px) and (max-width:800px)');
            if (screen3.matches) {
                /*使得手机端折叠菜单打开pc端折叠菜单*/

            } else {
                location.href = '../Default_Pc_CHN.aspx';
            }
        </script>
        <link rel="icon" href="../Images/SystemPicture/创造力.ico" />
        <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
        <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
        <style type="text/css">
            .Loading{width: 100%;height: 100%;position: fixed;top: 0px;left: 0px;background-color: white;z-index: 200;}
            .pic{width: 64px; height: 64px;background-image: url(../Master/BigFengCheng.gif);  /*居中显示方法*/ position: absolute; top: 0px;left: 0px; right: 0px; bottom: 0px; margin: auto;}
        </style>
        <link href="../Content/FontBindData.css" rel="stylesheet" />
        <link href="../CSS/BootsrapDefaultCHN.css" rel="stylesheet" />
        <link rel="stylesheet" href="CSS/navXiaoxiannv.css" type="text/css" />
        <style type="text/css">
            .OnMouseOver:hover{cursor: pointer}
             .introShowWordNew{ font-family: ProductFontStyle;font-size: 23px;text-indent: 20px;text-decoration: underline;height: 50px;overflow: hidden }
            .TypeIntroductions{ font-family: ProductFontStyle;font-size: 16px;padding-left: 20px;height: 200px;overflow: hidden;}
            .TypeIntroductions:first-letter{ color: purple;font-size: 25px}
            .TypeIntroductions strong{font-size: 15px}
            #ProjectHave figure img{ width: 100%;height: 100%;}
            #NewProductShow .col-md-3{ padding: 5px;box-sizing: border-box}
            #RowProductTypeShow .col-md-3{ padding: 5px;}
            #reptemNewProductMy figure img{ width: 100%;height: 100%;}
            .TitleIconss{color: purple;font-size: 18px;font-family: ProductFontStyle;}
            .TitleIconsins{color: purple;font-size: 13px;font-family: ProductFontStyle;}
            #PictureProject{ overflow: hidden;}
            /**电脑**/
            @media only screen and (min-width: 1200px) {
                #ProjectHave figure img{ width: 100%;height: 200px;}
                #reptemNewProductMy figure img{ width: 120px;height: 55px;}
                #introdutionOFourCompany{ display: block;}
            }
            @media only screen and (min-width: 768px) and (max-width: 1199px) {
                #ProjectHave figure img{ width: 100%;height: 200px;}
                #reptemNewProductMy figure img{ width: 120px;height: 55px;}
                #introdutionOFourCompany{display: none;overflow: hidden}
            }
            @media only screen and (min-width:440px ) and (max-width: 768px) {
                #ProjectHave figure img{ width: 100%;height: 200px;}
                #reptemNewProductMy figure img{ width: 120px;height: 55px;}
                #introdutionOFourCompany{display: none;overflow: hidden}
            }
            @media only screen and (min-width:0px ) and (max-width: 440px) {
                #ProjectHave figure img{ width: 100%;height: 200px;}
                #reptemNewProductMy figure img{ width: 120px;height: 55px;}
                .FirstTimeDivLogo{ display: none;overflow: hidden}
                #introdutionOFourCompany{ display: none;overflow: hidden}
            }
            .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
            .LiveIng{color:coral;font-size:15px;border-bottom: coral 1px solid}
            .ulloSpan a{display: block}
            .ulloSpan:hover { background-color: RGB(175, 53, 110);border-bottom: RGB(148, 30, 80) 2px solid;border-top: RGB(148, 30, 80) 2px solid;color: black;font-size: 18px}
            .FirstTimeDivLogo{ background-color: RGB(175, 53, 110); height: 60px;}
            .FirstTimeDivLogo i{opacity: 0.6;filter: opacity(60);letter-spacing:4px;  margin-left: 40px;margin-top: 5px; font-size: 20px;color: white;font-family: '微软雅黑';height: 58px;vertical-align: bottom}
            #ShowPhoneIfEnd{ background-color: white;color: white;margin-bottom: 20px}
            #ShowPhoneIfEnd{ height: 70px}
            #ShowPhoneIfEnd a{font-size: 16px;color: gray;display: inline-block;height: 70px;line-height: 70px;padding-left: 15px;padding-right: 15px;transition: 1s;}
            #ShowPhoneIfEnd a:hover{ text-decoration: none;color: white;background-color: RGB(175, 53, 110);border: RGB(175, 53, 110);border-radius: 5px }
            #ShowPhoneIfEnd .FloatRight{float: right}
            .scroll-box{
                width: 100%;
                height: 250px;
                border: 1px solid white;
                margin: 20px auto;
                overflow: hidden;
 
            }
        </style>
    </head>
<body>
    <div class="row row_15">
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
				      <li><a target="_blank" href="#Watchlive">观看直播</a></li>
				      <li><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a></li>
				      <li><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a></li>
			 	 </ul>
			</div>
		</div>				

<nav class="borderGrey_One" id="ShowPhoneIfEnd">
                 <a target="_blank" href="../Default.aspx">主页</a>
                 <a target="_blank" href="../UserPage/UserProductTypeShowCHN.aspx">产品分类</a>
                 <a target="_blank" href="../UserPage/UserNewProductShowCHN.aspx">新品预告</a>
                 <a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a>
                 <a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a>
                 <a target="_blank" href="../UserPage/UserProjectShowCHN.aspx">项目展示</a>
                 <a  href="#Watchlive">观看直播</a>
                 <a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx">视频专区</a>
                 <a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx">交流空间</a>
                 <a class="FloatRight" href="../Default.aspx "  target="_blank" type="submit" >CN</a>
                 <a class="FloatRight" href="../DefalutEng.aspx" target="_blank" type="submit" >EN</a>
                 <a class="FloatRight" href="../UserPage/UserPageLoginCHN.aspx" target="_blank"><span class="glyphicon glyphicon-user"></span> 立即登录</a>
                 <a class="FloatRight" href="../UserPage/UserPageRegisterCHN.aspx" target="_blank"><span class="glyphicon glyphicon-log-in"></span> 立即注册</a>
                 <a class="FloatRight" target="_blank" href="../UserPage/UserbecomeTypeHighCHN.aspx"><span class="glyphicon glyphicon-home"></span> 个人中心</a>

</nav>
<div id="LunBoControl">
    <div id="myCarousel" class="carousel slide"  data-ride="carousel"   data-interval="4500"   >
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" style="background-color: #000000;" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;" data-slide-to="1"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;" data-slide-to="2"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;"  data-slide-to="3"></li>
            <li data-target="#myCarousel"  style="background-color: #000000;"  data-slide-to="4"></li>
        </ol>   
        <div class="carousel-inner">
            <div class="item active">
                <img  src="../FirstImage/1_CompanyName_c.jpg"  alt="First slide"/>
                <div class="carousel-caption" style="color: #000000;">
                    <div class="col-md-12"  id="introdutionOFourCompany">
                        <p class="ItroDuctionOfCompany">
                            <span class="intro">【公司简介】</span>四川创造门高新技术开发有限公司是一家致力于各种创新产品研发的实体机构，我们不断开发各种创新产品推向市场，没有行业限制。
                            我们吸纳各种创新人才成为我们的合作伙伴，也为各投资机构投资提供优质创新项目千针引线。
                            创造门以促进全民创新为己任，汇聚智慧，专注创造是我们永不改变的主题。
                            目前我们已经成功在渔具行业有了多个产品取得成功。也成功研发了洗鞋袜专利产品。还在医疗保健行业成功开发了康和美系列保健器械。未来，我们还会不断推出更多有意义的创新产品，为人类社会的发展添砖加瓦。
                        </p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="../FirstImage/2_CompanyIntro_c.jpg" alt="Second slide"/>
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/3_CompanyTitle_c.jpg" alt="Third slide"/>
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/4_CompanyFocus_c.jpg" alt="Third slide"/>
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
            <div class="item">
                <img src="../FirstImage/5_CompanyFeture_c.jpg" alt="Third slide"/>
                <div class="carousel-caption" style="color: #000000;" ></div>
            </div>
        </div>
    </div>
</div>
<br/><br/>
<div class="JuzhongFont">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">产品分类</span><span class="Font_Name_English" style="font-size: 18px">PRODUCT CATEGORY</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <a href="#Section_Two"><img src="../Images/SystemPicture/yitiao.png"></img></a>
    </p>
</div>
<br/><br/>
<form id="form1" runat="server">
    <div class="container" >
        <div class="row" id="RowProductTypeShow" style="padding:20px">
            <asp:Repeater ID="reptem" runat="server" OnItemCommand="reptem_ItemCommand">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6 col-xs-6 borderGrey_One">
                        <figure>
                            <a href="../UserPage/UserProductTypeShowCHN.aspx" target="_blank" ><img src='<%#Eval("TypePicture")%>'></a>                 
                        </figure>
                        <div class="TypeName">
                            <%#Eval("typeName_c")%> 
                        </div>
                        <div style=" height: 25px; opacity: 0.2; filter: opacity(20); color: white; position: absolute; top: 4%;left: 21%">
                            <p style="width: 100px;display: block; color: white; text-align: center;">
                                <asp:Button ID="btnCheck" CssClass="btn btn-default" runat="server" Text="查看详情" CommandArgument='<%#Eval("typeID")%>' CommandName="Check" Width="160" Height="150" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>              
        </div>
    </div>
    <div class="JuzhongFont" id="Section_Two">
        <span style="padding-bottom: -10px;">
            <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">新品预告</span><span class="Font_Name_English" style="font-size: 18px">NEW PRODUCT</span>
        </span> 
        <p style="height: 25px; margin-top: -30px;">
            <a href="#Section_Three"><img src="../Images/SystemPicture/yitiao.png"/></a>
        </p>
    </div>
    <br/><br/><br/><br/>
    <div class="container">
        <div class="row" id="NewProductShow">
            <asp:Repeater ID="reptemNewProduct" runat="server">
                <ItemTemplate>
                    <div class="borderGrey_One col-md-3 col-sm-6 col-xs-12">
                        <figure>
                            <a href='<%#Eval("taobaoUrl")%>'  target="_blank" ><img src='<%#Eval("ImgPatjh")%>' ></a>                
                            <figcaption>
                                <br/>
                                <p class="introShowWord"><span style="font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_c")%>]</span></p>
                                <p class="DownGoumai">
                                    <span class="MeonyChar">¥</span><span class="Meony"><%#Eval("Price_now")%></span> <span class="MeonyLastChar">¥<%#Eval("price_last")%></span>
                                    <span><asp:HyperLink ID="hypLinkToTaoBao" runat="server"  CssClass="btn btn-primary btn-danger" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>购买</asp:HyperLink></span>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <%#Eval("ProductDescription_c")%>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>              
        </div>
    </div>
<div class="JuzhongFont" id="Section_Three">
    <span style="padding-bottom: -10px;">
        <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">视频专区</span><span class="Font_Name_English" style="font-size: 18px">Video Shelf</span>
    </span> 
    <p style="height: 25px; margin-top: -30px;">
        <a href="#Section_Four"><img src="../Images/SystemPicture/yitiao.png"/></a>
    </p>
</div>
<br/><br/><br/><br/>
    <section class="VedioList">
        <div class="Vedioshelf">
            <a href="../UserPage/UserVedioShowListCHE.aspx" style="padding-left: 30px"> 点击观看视频</a> 
            <div class="LeftBox" style="background-image: url(../FirstImage/diaoyu.png)"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
            <div class="CenterBox" style="background-image: url(../FirstImage/yihui.png);"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx" ><img src="../FirstImage/图标8.png"/></a></div>
            <div class="RightBox" style="background-image: url(../FirstImage/wenwu.png)"><a target="_blank" href="../UserPage/UserVedioShowListCHE.aspx"><img src="../FirstImage/图标8.png"/></a></div>
        </div>   
        <br/>
        <div class="LearingMoreVedio">
            <p><a href="../UserPage/UserVedioShowListCHE.aspx" target="_blank" >观看更多</a></p>
        </div>        
    </section>  
    <div class="container-fluid" id="DaiTwo">
        <div class="row">
            <div class="col-md-7">
                <section class="container" id="Watchlive" style="margin-top:100px;"> 
                    <div class="row">
                        <div class="col-md-12"> 
                            <asp:Repeater ID="ReptmLive" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4 col-xs-4">
                                        <figure>
                                            <asp:HyperLink ID="HypKuaiShow" target="_blank" CssClass="OnMouseOver" runat="server" NavigateUrl='<%#Eval("LiUrl")%>' ><img src='<%#Eval("UrlImg")%>' /></asp:HyperLink>
                                            <figcaption>
                                                <br/>
                                                <asp:HyperLink ID="HypKuaiShow2" CssClass="OnMouseOver" target="_blank"  NavigateUrl='<%#Eval("LiUrl")%>' runat="server">
                                                    <span class="LiveIng">
                                                        <asp:Label ID="lblkuaishou" runat="server" Text='<%#Eval("LiTitle") %>' ></asp:Label>
                                                    </span>
                                                </asp:HyperLink>
                                            </figcaption>
                                        </figure>                
                                    </div>                  
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-5" id="Section_Four">
                <span  style="font-size:70px;font-family:'微软雅黑';color:white;font-weight:400; text-shadow:1px 1px 0px RGB(195,195,189); letter-spacing: 4px;  ">
                    观看直播
                </span>                  
            </div>
        </div>
    </div>
<!--项目展示-->
    <div class="JuzhongFont">
        <span style="padding-bottom: -10px;">
            <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">项目展示</span><span class="Font_Name_English" style="font-size: 18px">Projrct Show</span>
        </span> 
        <p style="height: 25px; margin-top: -30px;">
            <a href="#Section_Five"><img src="../Images/SystemPicture/yitiao.png"></img></a>
        </p>
    </div>
    <br/><br/><br/><br/>
    <div style="width: 100%; text-align: center; font-size: 18px; font-family: '微软雅黑'; color: white; background-color: purple; height: 30px; line-height: 30px;">
        项目图片
    </div>
    <section class="container" style="width: 100%">
        <div class="row" id="PictureProject">
            <asp:Repeater ID="reptmProject" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <a target="_blank" href="../UserPage/UserProjectShowCHN.aspx"><img width="100%" src=<%#Eval("ImgPicturPath")%>   alt="First slide"></a>
                    </div>                   
                </ItemTemplate>  
            </asp:Repeater> 
        </div>
    </section>
  <br/><br/>
    <div class="JuzhongFont" id="Section_Five">
        <span style="padding-bottom: -10px;">
            <span style="font-size: 20px; font-weight: 700; font-family: '微软雅黑';">项目投资</span><span class="Font_Name_English" style="font-size: 18px">INVESTMENT</span>
        </span> 
        <p style="height: 25px; margin-top: -30px;">
            <a href="#Section_Six"><img src="../Images/SystemPicture/yitiao.png"></img></a>
        </p>
    </div>
    <br/>
    <div class="container">
        <div class="row" id="ProjectHave">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_OnItemCommand" >
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <figure>
                            <img src='<%#Eval("ImgPicturPath")%>' >          
                            <figcaption>
                                <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                <p>
                                    <details>
                                        <summary>基本信息</summary>
                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%>RMB<br/>
                                        <a href="javascript:Guquan('<%#Eval("stockRateIntroduction")%>')">股权信息->点击查看</a><br/>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载</asp:HyperLink>
                                    </details>
                                </p>
                                <p class="ProductShowDiscr"> 
                                    <span class="TitleIconss">[简介]:</span><%#Eval("PciDescription_c")%></p>
                                <p>
                                    <asp:Button ID="btncanshu" runat="server"  Visible="False" Text="" CommandArgument='<%#Eval("PciName_c") %>' />
                                    <asp:Button ID="btnInvest" CssClass="btn btn-warning" runat="server" Text="我要投资" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Invest" />
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>   
        </div>
    </div>
    <div class="container">
        <div class="box" >
            <div class="bcon" id="ScrollTime">
                <h4 style="border-bottom: 1px solid gray">合作展示</h4>
                <!-- 展示列表 -->
                <div class="scroll-box">
                    <ul>
                                                <li>
                            <div class="row">
                                <div style="text-indent: 20px;height: 20px; width: 48%; float: left;text-align: left">
                                    <a href="javascript:alert('对方隐私！无法查看')" target="_blank">钻石会员Whchat</a>
                                </div>
                                <div style="height: 20px; width: 48%; float: left;text-align: center">
                                    投资250000元
                                </div>
                                <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                    <a href="javascript:Guquan('联合开发下属五大茶厂及周边茶农基地生态茶园建设项目')">联合开发下属五大茶厂及周边茶农基地生态茶园建设项目</a>
                                </div>
                                <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                    <span>2017/12/4 14:38:17</span>
                                </div>
                            </div>
                            <br/>
                        </li>    
                        <li>
                            <div class="row">
                                <div style="text-indent: 20px;height: 20px; width: 48%; float: left;text-align: left">
                                    <a href="javascript:alert('对方隐私！无法查看')" target="_blank">钻石会员李明</a>
                                </div>
                                <div style="height: 20px; width: 48%; float: left;text-align: center">
                                    投资150000元
                                </div>
                                <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                    <a href="javascript:Guquan('联合开发下属五大茶厂及周边茶农基地生态茶园建设项目')">联合开发下属五大茶厂及周边茶农基地生态茶园建设项目</a>
                                </div>
                                <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                    <span>2017/12/4 14:38:17</span>
                                </div>
                            </div>
                            <br/>
                        </li>   
                        <li>
                            <div class="row">
                                <div style="text-indent: 20px;height: 20px; width: 48%; float: left;text-align: left">
                                    <a href="javascript:alert('对方隐私！无法查看')" target="_blank">钻石会员Kicker</a>
                                </div>
                                <div style="height: 20px; width: 48%; float: left;text-align: center">
                                    投资3000000元
                                </div>
                                <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                    <a href="javascript:Guquan('联合开发下属五大茶厂及周边茶农基地生态茶园建设项目')">联合开发下属五大茶厂及周边茶农基地生态茶园建设项目</a>
                                </div>
                                <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                    <span>2017/12/4 14:38:17</span>
                                </div>
                            </div>
                            <br/>
                        </li>   
                        <li>
                            <div class="row">
                                <div style="text-indent: 20px;height: 20px; width: 48%; float: left;text-align: left">
                                    <a href="javascript:alert('对方隐私！无法查看')" target="_blank">钻石会员Kicker</a>
                                </div>
                                <div style="height: 20px; width: 48%; float: left;text-align: center">
                                    投资3000000元
                                </div>
                                <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                    <a href="javascript:Guquan('联合开发下属五大茶厂及周边茶农基地生态茶园建设项目')">联合开发下属五大茶厂及周边茶农基地生态茶园建设项目</a>
                                </div>
                                <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                    <span>2017/12/4 14:38:17</span>
                                </div>
                            </div>
                            <br/>
                        </li>   
                        <li>
                            <div class="row">
                                <div style="text-indent: 20px;height: 20px; width: 48%; float: left;text-align: left">
                                    <a href="javascript:alert('对方隐私！无法查看')" target="_blank">钻石会员Kicker</a>
                                </div>
                                <div style="height: 20px; width: 48%; float: left;text-align: center">
                                    投资1000000元
                                </div>
                                <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                    <a href="javascript:Guquan('联合开发下属五大茶厂及周边茶农基地生态茶园建设项目')">联合开发下属五大茶厂及周边茶农基地生态茶园建设项目</a>
                                </div>
                                <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                    <span>2017/12/4 14:38:17</span>
                                </div>
                            </div>
                            <br/>
                        </li>  
                        <asp:Repeater ID="reptmInvset" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="row">
                                        <div style="text-indent: 20px; height: 20px; width: 48%; float: left;text-align: left">
                                            <a href="javascript:alert('对方隐私！无法查看')" target="_blank"><%#Eval("TypeName_c") %> <%#Eval("UserName_e") %></a>
                                        </div>
                                        <div style="height: 20px; width: 48%; float: left;text-align: center">
                                            投资<%#Eval("Account") %>元
                                        </div>
                                        <div  style="text-indent: 20px;text-align: right;height: 17px; width: 48%; float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                           <a href="javascript:Guquan('<%#Eval("InsertProjectName") %>')"> <%#Eval("InsertProjectName") %></a>
                                        </div>
                                        <div  style="height: 20px; width: 48%; float: left;text-align: center">
                                            <span><%#Eval("InvestTime") %></span></p>
                                        </div>
                                    </div>
                                    <br/>
                                </li>    
                            </ItemTemplate>
                        </asp:Repeater>
 
                    </ul>
                </div>
            </div>    
        </div>   
    </div>
<!--关于我们-->
<footer style="width: 100%; height: 50px;background-color:RGB(160,53,122) "></footer>
<footer style="width: 100%; height: 25px;background-color:ghostwhite "></footer>
<div class="container-fluid" style="background-color:RGB(241,238,238); " id="Section_Six">
      <div class="container-fluid">
          <div class="row" >
              <div class="col-md-6 col-sm-12 " id="Font_Intro_Footer1">
                  <br/>
                  <br/>
                  <h3 class="h3">关于我们</h3>
                  <br/>
                  <p style="font-size: 14px">凝聚智慧，专注创造。创造门是专注于各种创新产品研发的平台。为发明人提供项目开发平台，为投资者提供优质项目选择机会</p>
                  <table cellpadding="10px" cellspacing="10px" class="TableName" width="100%" >
                      <thead>
                           <tr>
                               <th>关于我们</th><th>合作投资</th><th>交流空间</th>
                           </tr>
                      </thead>
                      <tr>
                          <td  width="33%" height="30px" style="line-height: 30px">
                              <a href="../UserPage/UserConmunicationApaceCHN.aspx" class="a_blue">联系方式</a>
                          </td>
                          <td width="33%"  height="30px" style="line-height: 30px">
                              <a href="../UserPage/UserProjectShowCHN.aspx" class="a_blue" >投资信息</a>
                          </td>
                          <td width="33%"  height="30px" style="line-height: 30px">
                              <asp:Label ID="Label3" runat="server" Text="上传流程"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td width="33%" height="30px" style="line-height: 30px">
                              <asp:Label ID="Label2" runat="server" Text="投资流程"></asp:Label>
                          </td>
                          <td width="33%" height="30px" style="line-height: 30px">
                              <asp:Label ID="lblFalv" runat="server" Text="投资项目"></asp:Label>
                          </td>
                          <td width="33%" height="30px" style="line-height: 30px">
                              <asp:Label ID="lblshengming" runat="server" Text="投资咨询"></asp:Label>
                          </td>
                      </tr>
                  </table>
                  <br/><br/>
              </div>
              <div class="col-md-2 col-sm-4" id="Font_Intro_Footer2">
                  <p>
                      <img src="../Img/QQ.png" width="40px" height="40px"/>&nbsp;
                      <img src="../Img/微信.png" width="40px" height="40px"/>&nbsp;
                      <img src="../Img/支付宝.png" width="40px" height="40px"/>
                  </p>
              </div>
              <div class="col-md-4 col-sm-8" id="Font_Intro_Footer3">
                      <br/><br/><br/><br/><br/><br/>
                       <figure>
                           <figcaption>企业公众号</figcaption>
                           <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="150px" height="150px" />
                       </figure>

                      <figure style="margin-left: 40px">
                          <figcaption>网站二维码</figcaption>
                          <img src="../Img/1510495015.png"  width="150px" height="150px"/>
                      </figure>
                      
              </div>
              <!--
              <div class="col-md-3 col-sm-6" id="Font_Intro_Footer3" onmouseout="ChangeDispLaythree()">
                   <div class="div_Img_CZM"  onmouseover="ChangeDispLayOne()"  id="CZMIMG" style="z-index: 2;position: absolute; top: 20px; left: 00px; ">
                       <img src="../Images/SystemPicture/mmexport1509186467240.jpg" width="200px" height="200px" />
                   </div>
                  <div class="div_Img_Webnet" id="WebImg" onmouseover="ChangeDispLayTwo()" style="z-index: 1;position: absolute; top: 60px; left: 40px;">
                      <img src="../Img/1510495015.png"  width="200px" height="200px"/>
                  </div>
              </div>
              -->
          </div>
      </div>
</div>
    <script>
        function ChangeDispLayOne() {
            var gg = document.getElementById("CZMIMG");
            var ggs = document.getElementById("WebImg");
            gg.style.display = "block";
            ggs.style.display = "none";
        }
        function ChangeDispLaythree() {
            var gg = document.getElementById("CZMIMG");
            var ggs = document.getElementById("WebImg");
            gg.style.display = "block";
            ggs.style.display = "block";
        }
        function ChangeDispLayTwo() {
            var gg = document.getElementById("CZMIMG");
            var ggs = document.getElementById("WebImg");
            gg.style.display = "none";
            ggs.style.display = "block";
        }
    </script>
<div class="zixun">
    <div class="showDiv">
        
    </div>
    <div class="showDivs">
        <ul class="TiaoLan">
            <li> 
                <a href="../UserPage/UserPageLoginCHN.aspx" target="_blank">登录注册</a>
            </li>
            <li><a  target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx" >在线咨询</a></li>
            <li><a target="_blank" href="../UserPage/UserInvestProjectCHN.aspx">我要投资</a></li>
            <li><a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx">我要创作</a></li>
            <li><a href="#">置顶</a></li>
        </ul>
    </div>
    <div class="lanmu">
        <a target="_blank" href="../UserPage/UserPageLoginCHN.aspx"><img src="../Images/SystemPicture/用户123.png" title="用户登录"/></a>
        <a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="../Images/SystemPicture/消息.png" title="在线咨询"/></a>
        <a target="_blank" href="../UserPage/UserCreateProjectCHN.aspx"><img src="../Images/SystemPicture/投资.png" title="我要投资" /></a>
        <a arget="_blank" href="../UserPage/UserInvestProjectCHN.aspx" ><img src="../Images/SystemPicture/写作.png" title="我要创作" /></a>
        <a href="#"><img src="../Images/SystemPicture/置顶.png" title="首页" /></a>
    </div>
</div>
<div class="JiaoBens" Id="Adminsrator">
    <p style="text-align: center;padding-top: 5px">
        <a href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="../Images/SystemPicture/阿里旺旺.png" width="20px" height="20px"/>阿里旺旺</a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=646248323&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:646248323:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>Copyright © 2017-至今|四川创造门高新技术开发有限公司|客服电话：18981191139|企业邮箱:646248323@qq.com|热线电话：18981191139
        <a href="../BackendManage/AdminLogin.aspx">管理员</a>
    </p>
</div>
</form>
 </body>
<script src="../bootstrap337/js/bootstrap.min.js"></script>
<script src="../bootstrap337/js/holder.min.js"></script>
<script type="text/javascript">
    function Opennavbar() {
        var Invest = document.getElementById("XDXC");
        if (Invest.style.display == "block") {
            Invest.style.display = "none";
        } else {
            Invest.style.display = "block";
        }
    }
    document.querySelector("#myCarousel").addEventListener("touchstart",
        function(event) {
            //code here
            event.preventDefault();
        },
        false);
    'use strict';
    $(function () {
        // 获取手指在轮播图元素上的一个滑动方向（左右）

        // 获取界面上轮播图容器
        var $carousels = $('.carousel');
        var startX, endX;
        // 在滑动的一定范围内，才切换图片
        var offset = 50;
        // 注册滑动事件
        $carousels.on('touchstart', function (e) {
            // 手指触摸开始时记录一下手指所在的坐标x
            startX = e.originalEvent.touches[0].clientX;

        });
        $carousels.on('touchmove', function (e) {
            // 目的是：记录手指离开屏幕一瞬间的位置 ，用move事件重复赋值
            endX = e.originalEvent.touches[0].clientX;
        });
        $carousels.on('touchend', function (e) {
            //console.log(endX);
            //结束触摸一瞬间记录手指最后所在坐标x的位置 endX
            //比较endX与startX的大小，并获取每次运动的距离，当距离大于一定值时认为是有方向的变化
            var distance = Math.abs(startX - endX);
            if (distance > offset) {
                //说明有方向的变化
                //根据获得的方向 判断是上一张还是下一张出现
                $(this).carousel(startX > endX ? 'next' : 'prev');
            }
        })
    });
    function Guquan(StockName) {
        alert(StockName);
    }
    $(function () {
        //获得当前<ul>
        var $uList = $(".scroll-box ul");
        var timer = null;
        //触摸清空定时器
        $uList.hover(function () {
            clearInterval(timer);
        }, function () {//离开启动定时器
            timer = setInterval(function () {
                scrollList($uList);
            }, 2300);
        }).trigger("mouseleave"); //自动触发触摸事件
        //滚动动画
        function scrollList(obj) {
            //获得当前<li>的高度
            var scrollHeight = $("ul li:first").height();
            //滚动出一个<li>的高度
            $uList.stop().animate({ marginTop: -scrollHeight }, 600, function () {
                //动画结束后，将当前<ul>marginTop置为初始值0状态，再将第一个<li>拼接到末尾。
                $uList.css({ marginTop: 0 }).find("li:first").appendTo($uList);
            });
        }
    });
</script>
</html>
