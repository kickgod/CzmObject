<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_Pc_ENG.aspx.cs" Inherits="CzmWeb.Default_Pc_ENG"  EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="bootstrap337/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <script src="bootstrap337/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap337/js/bootstrap.min.js"></script>
    <script src="bootstrap337/js/holder.min.js"></script>
    <link rel="icon" href="../Img/CZM.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>创造门</title>
    <script type="text/javascript">
        var screen3 = window.matchMedia('(min-width:0px) and (max-width:800px)');
        if (screen3.matches) {
            /*使得手机端折叠菜单打开pc端折叠菜单*/
            location.href = '../DefalutEng.aspx';
        } else {

        }
    </script>
    <style type="text/css">		
			/*标准Css*/
        body{width: 1980px;}
        *{padding: 0px; margin: 0px;font-family:"微软雅黑";}
        .borderGrey_One{border: 0px solid gainsboro;}
        #ShowMov{
            height: 45px;
            width: 100%;
            background-color:RGB(255,246,221)}
        #ShowMov div{
            width: 100%; 
            color:crimson;
            font-size: 20px;
            display: inline-block;
            height: 120px;
            height: 45px; 
            line-height: 45px;
            font-family:"微软雅黑";	
            letter-spacing: 2px;
        }
        .mov-to-left{
            -webkit-animation:MovLeft 15s linear 0s normal infinite forwards;
            animation:MovLeft 15s linear 0s normal infinite forwards;        	
        }
        header{
            width: 100%;
            background-color: RGB(244,242,242);
        }
        nav{
            height: 30px;
            width: 1200px;
            margin: 0 auto;
        }
        nav a{
            width: 80px;
            float: right;
            color: darkslategrey;
            display: inline-block;
            height: 30px;
            line-height: 30px;
            text-align: right;
        }
        nav a:hover{text-decoration: none;color: crimson;}
        .Header{
            padding: 5px;
            width: 1200px;
            height: 110px;
            margin: 0 auto;
        }
        .Header>div{float: left;}
        .HeaderOne{width: 200px;padding: 5px;}
        .HeaderOne input[type=button]{width: 80px;}
        .HearderTwo{
            width: 850px;
            height: 100px;
            margin-left: 0px;}
        .HearderTwo .CompanyName{
            font-size: 30px;
            vertical-align: middle;
            font-family:"微软雅黑";
            font-weight: 700;
        }
        .HeaderThree{
            padding: 5px;
            width: 300px;
            height: 100px;
            margin-left: 35px;
            padding-left: 220px;	
        }
        .HeaderThree input[type=button]{width: 80px;}
        .Center{
            width: 1200px;
            margin: 0 auto;
        }
        .nav-Liner{
            background-color: RGB(175, 53, 110);
            height: 42px;
        } 
        .nav-Liner a{
            text-align: center;
            float: left;
            line-height: 42px;
            font-size: 16px;
            height: 40px;
            width: 130px;
            color: white;
            background-color: RGB(175, 53, 110);
            border-right: 2px solid white;
        }
        .nav-Liner a:hover{
            background-color: RGB(161,6,79);
            color: white;
        }
        #LunBoTu{
            border-right: 20px solid RGB(175, 53, 110);
            border-left: 20px solid RGB(175, 53, 110);
            border-bottom: 10px solid RGB(175, 53, 110);
        }
        .carousel-caption:first-letter{font-size: 20px;font-weight: 700;}
        .carousel-caption::selection{
            background-color: RGB(175, 53, 110);
        }
        .carousel-indicators li{
            background-color: RGB(175, 53, 110);
        }
        #MainCenter{
            height: 500px;
            margin-top: 10px;
        }
        #MainCenter>div{
            height: 500px;
            	
        }
        .McOne{width: 240px;margin-right: 18px;float: left;}
        .McTwo{width: 680px;margin-right: 12px;float: left;padding: 5px;}
        .McTwo .imgdivhiddle{ padding: 2px;width: 220px;height: 220px; overflow: hidden;}
        .McTwo .imgdivhiddle img{width: 220px; }
        .McTwo>div{width: 220px;float: left;margin-right: 2.5px;margin-top: 20px;}
        .McTwo>div figcaption{width: 100%;height: 87px;overflow: hidden;margin-top: 10px;font-size: 13px;text-overflow: ellipsis;}
        .McTwo  .btn_left{width: 80px;height: 30px;font-size: 14px;float: right;margin-left: 10px;}
        .McThree{width: 240px;float:right;margin-right: 0px;}
        .Foot{height: 500px;margin-top: 10px;}
        .Foot div{float: left;}
        .Foot .Oone{width: 240px;}
        .Foot .Otwo{width: 680px;height: 500px;}
        .Foot .Othree{width: 240px;float: right;}
        /*
                              投资记录：
            */
        /* CSS Document */
        input,button,select,textarea{outline:none;}
        ul,li,dl,ol{list-style:none;}
        a{color:#666; text-decoration:none;}
        a:hover{ text-decoration: none;}	
        .box{width: 680px ; margin:0 auto;}
        .bcon{ width:100%; border:1px solid #eee; margin:30px auto;}
        .bcon h1{ border-bottom:1px solid #eee; padding:0 10px;}
        .bcon h1 b{ font:bold 14px/40px '宋体'; border-top:2px solid #3492D1; padding:0 8px; margin-top:-1px; display:inline-block;}
			
        .list_lh{ height:400px; overflow:hidden;}
        .list_lh li{ padding:10px;}
        .list_lh li.lieven{ background:RGB(231, 223, 238);}
        .list_lh li p{ height:24px; line-height:24px;width: 650px;}
        .list_lh li p a{ float:left;}
        .list_lh li p em{ font-family: "微软雅黑";font-size: 14px; color:steelblue; float:right; display:inline-block;cursor: pointer;font-style: normal
        }
        .list_lh li p span{ color:#999; float:right;}
        .list_lh li p a.btn_lh{ background:RGB(175, 53, 110); height:17px; line-height:17px; color:#fff; padding:0 5px; margin-top:4px; display:inline-block; float:right;}
        .btn_lh:hover{ color:#fff; text-decoration:none;}
			
        .btm p{ font:normal 12px/24px 'Microsoft YaHei'; text-align:center;}
        footer{
            height: 60px;
            margin-top: 20px;
            padding: 10px;
        }
        .RightDiv{width: 42px;height: 300px;background-color: transparent;position: fixed;left: 1640px;top: 300px;}
        .RightDiv p{margin-top: 15px;}
        .RightDiv img{border-radius: 50%; transition: 2s; }
        .RightDiv img:hover{transform: rotateY(180deg);cursor: pointer;}
        .ErWeiMa{transition: 1.5s;overflow: hidden;width: 100px;height: 0px;position:fixed;left:1685px;top: 390px;background-color: black;border-radius: 10px;}	
        .drawDown{ overflow: hidden;transition: 2s;z-index: 1000;position: absolute;top: 43px;left: 779px;display: block;height: 0px;width: 130px;background-color: RGB(175, 53, 110);color: white;}	
        .drawDown li{ height: 25px;border-bottom: 1px solid white;text-align: center;}	
        .drawDown li a{color: white;font-family: "微软雅黑";display: inline-block;height: 25px;width: 130px}
        .drawDown li a:hover{   
            background-color: RGB(161,6,79);
            color: white;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
      <header>
        <nav >
            <asp:HyperLink ID="HyPersonCenter" Visible="False" NavigateUrl="../UserPage/UserbecomeTypeHighCHN.aspx" runat="server">Personal</asp:HyperLink>
            <a href="../UserPage/UserPageLoginCHN.aspx" >Login In</a>
            <a  href="../UserPage/UserPageRegisterCHN.aspx"> Login Up</a>
        </nav>			
    </header>

<div class="Header borderGrey_One">
    <div class="HearderTwo ">
        <img src="Img/CZM.png" height="110px" width="110px" />
        <span class="CompanyName">SiChuan ChuangZaoMen High - tech Development Co. Ltd</span>
    </div>
    <div class="HeaderThree">
        <input type="button" value="English" class="btn btn-primary" style="display: inline-block;width: 85px" />
        <br/>
        <br/>  
        <a href="Default_Pc_CHN.aspx" class="btn btn-danger" style="display: inline-block;width: 85px"> 中文 </a>      		
    </div>
</div>
<div class="Center" style="position: relative">
    <nav class="nav-Liner Center borderGrey_One">
        <a target="_blank" href="../DefalutEng.aspx">Home Page</a>
        <a target="_blank" href="../UserPage/UserProductTypeShow.aspx">Product Catagory</a>
        <a target="_blank" href="../UserPage/UserNewProductShow.aspx">New</a>
        <a target="_blank" href="../UserPage/UserCreateProject.aspx">Project Applay</a>
        <a target="_blank" href="../UserPage/UserInvestProject.aspx">Invest</a>
        <a target="_blank" href="../UserPage/UserProjectShow.aspx">Display</a>
        <a  href="#Watchlive" onmouseover="showZhibo()"  >Live Webcast</a>
        <a target="_blank" href="../UserPage/UserVedioShowList.aspx">Video List</a>
        <a target="_blank" href="../UserPage/UserConmunicationApace.aspx">Communication</a>
    </nav>
    <ul class="drawDown" id="ZHIboLiebiao" onmouseleave="Hiddenzhibo()" >
        <asp:Repeater ID="ReptmLive" runat="server">
            <ItemTemplate>
                <li><asp:HyperLink ID="HypKuaiShow" target="_blank" runat="server" NavigateUrl='<%#Eval("LiUrl").ToString()==""? "#":Eval("LiUrl").ToString() %>' > <%#Eval("NameEng")%> </asp:HyperLink></li>               
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>

<section class="Center borderGrey_One" id="LunBoTu" style="z-index: 1" >
    <div id="myCarousel" class="carousel slide" data-interval="5000" >
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>			       
        </ol>   
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="../Img/1.jpg" alt="First slide">
                <div class="carousel-caption" title="    Sichuan Creation Door High-tech Development Co.Ltd. is a commitment to a variety of innovative product development entities, we continue to develop innovative products to the market, there is no industry restrictions.
    We absorb a variety of innovative talent to become our partners, but also for the various investment agencies to provide quality innovative projects pull pin.
    To create a door to promote universal innovation as its mission, gather wisdom, focus on creating is our theme will never change.
    At present, we have achieved success in the fishing gear industry with several products that pass through the brand. Also successfully developed Kang and the United States wash shoes and socks patented products. Kang also successfully developed the health care industry in the United States series of health care equipment. In the future, we will continue to introduce more meaningful and innovative products and contribute to the development of human society.">
                    Sichuan Creation Door High-tech Development Co.Ltd. is a commitment to a variety of innovative product development entities, we continue to develop innovative products to the market, there is no industry restrictions.
                    We absorb a variety of innovative talent to become our partners, but also for the various investment agencies to provide quality innovative projects pull pin.
                   .......
                </div>
            </div>
            <div class="item">
                <img src="../Img/2.jpg" alt="First slide">

            </div>
            <div class="item">
                <img src="../Img/3.jpg" alt="First slide">

            </div>
            <div class="item">
                <img src="../Img/4.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="../Img/5.jpg" alt="First slide">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel" 
           data-slide="prev">&lsaquo;
        </a>
        <a class="carousel-control right" href="#myCarousel" 
           data-slide="next">&rsaquo;
        </a>
    </div>
</section>
<section class="Center borderGrey_One" id="MainCenter" >
    <div class="McOne borderGrey_One">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    New Products
                </h3>
            </div>
            <div class="panel-body">
                <div id="myCarousel1" class="carousel slide" data-interval="5000" >
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel1" data-slide-to="1"></li>
                        <li data-target="#myCarousel1" data-slide-to="2"></li>
                        <li data-target="#myCarousel1" data-slide-to="3"></li>
                    </ol>   
                    <div class="carousel-inner">
                        <asp:Repeater ID="reptemNewProduct" runat="server">
                            <ItemTemplate>
                                <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                    <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ProductImgPC")%>' ></a>   
                                    <div class="carousel-caption"><span style="color: white;font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_e")%>]</span>
                                        <br />
                                        <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning btn-sm" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>Buy Now</asp:HyperLink>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>   
                        </div>						        
                    </div>
                </div>
            </div>
    </div>
    <div class="McTwo borderGrey_One">
        <h4>Project display<small><a  href="../UserPage/UserProjectShow.aspx" target="_blank">See more..</a></small></h4>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_OnItemCommand" >
            <ItemTemplate>
                <div>	
                    <figure>
                        <div class="imgdivhiddle">
                            <img src='<%#Eval("ImgPicturPath")%>' alt="加载中..." > 
                        </div>
                        <figcaption>
                            <span><b>Introduction：</b></span><%#Eval("PciDescription_c")%>
                        </figcaption>
                    </figure>
                    <br />
                    <asp:Button ID="Button1" runat="server"  CssClass="btn_left btn  btn-warning "   Text="Details" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Check" />
                    <asp:Button ID="Button2" runat="server"   CssClass="btn_left btn btn-danger"  Text="Invest" CommandArgument='<%#Eval("PciName_c") %>' CommandName="Invest" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="McThree borderGrey_One">
        <div class="PCYuju">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Pass Fishing Gear
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="myCarousel2" class="carousel slide" data-interval="4000">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel2" data-slide-to="1"></li>
                            <li data-target="#myCarousel2" data-slide-to="2"></li>
                        </ol>   
                        <div class="carousel-inner">
                            <asp:Repeater ID="rptYuJu" runat="server">
                                <ItemTemplate>
                                    <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                        <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ProductImgPC")%>' ></a>   
                                        <div class="carousel-caption"><span style="color: white;font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_e")%>]</span>
                                           <!--<asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning btn-sm" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>Buy Now</asp:HyperLink>-->
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="Foot Center borderGrey_One">
    <div class="Oone">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Normal Product
                </h3>
            </div>
            <div class="panel-body">
                <div id="myCarousel10" class="carousel slide" data-interval="4000" >
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel10" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel10" data-slide-to="1"></li>
                        <li data-target="#myCarousel10" data-slide-to="2"></li>
                    </ol>   
                    <div class="carousel-inner">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                    <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ProductImgPC")%>' ></a>   
                                    <div class="carousel-caption">
                                        <span style="color: white;font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_e")%>]</span>
                                        <br/>
                                        <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning btn-sm" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>Buy Now</asp:HyperLink>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="Otwo">
        <div class="container">
            <div class="box" >
                <div class="bcon" id="ScrollTime">
                    <h1><b>Cooperation Show</b></h1>
                    <!-- 展示列表 -->
                    <div class="list_lh">
                        <ul>
                            <asp:Repeater ID="reptmInvset" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <p><a href="javascript:alert('对方隐私！无法查看')" target="_blank"><%#Eval("TypeName_c") %> <%#Eval("UserName_e") %>  对</a><a href="#" class="btn_lh" >投资了<%#Eval("Account") %>元</a><em ><%#Eval("InsertProjectName")%></em></p>
                                        <br/>
                                        <p><a href="#" style="cursor:text" class="a_blue">Investment time：</a><span><%#Eval("InvestTime") %></span></p>
                                    </li>                       
                                </ItemTemplate>
                            </asp:Repeater>			                         
                        </ul>
                    </div>
                </div>    
            </div>   
        </div>
    </div>
    <div class="Othree">
        <div class="ZiOne">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Shoes And Socks
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="myCarousel22" class="carousel slide" data-interval="4000" >
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel22" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel22" data-slide-to="1"></li>
                            <li data-target="#myCarousel22" data-slide-to="2"></li>
                        </ol>   
                        <div class="carousel-inner">
                            <asp:Repeater ID="ptmxixiewa" runat="server">
                                <ItemTemplate>
                                    <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                        <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ProductImgPC")%>' ></a>   
                                        <div class="carousel-caption">
                                            <span style="color: white;font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_e")%>]</span>
                                            <br/>
                                            <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning btn-sm" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>Buy Now</asp:HyperLink>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ZiTwo">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Medical Insurance
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="myCarousel33" class="carousel slide" data-interval="4000" >
                        <!-- 轮播（Carousel）指标 -->
                        <ol class="carousel-indicators">
                            <asp:Repeater ID="ptmyiniaobaojian" runat="server">
                                <ItemTemplate>
                                    <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                    <li data-target="#myCarousel33" data-slide-to='<%#Container.ItemIndex %>' class='<%#(Container.ItemIndex.ToString()=="0")? "active":"  "  %>'></li>
                                </ItemTemplate>
                            </asp:Repeater> 
                        </ol>   
                        <!-- 轮播（Carousel）项目 -->
                        <div class="carousel-inner">
                            <asp:Repeater ID="rpt_YiNiaoBaoJian" runat="server">
                                <ItemTemplate>
                                    <div class='<%#(Container.ItemIndex.ToString()=="0")? "item active":"item"  %>' >
                                        <a href=<%#Eval("taobaoUrl")%>  target="_blank" ><img src='<%#Eval("ProductImgPC")%>' ></a>   
                                        <div class="carousel-caption">
                                            <span style="color: white;font-size: 18px; font-weight: 400;">[<%#Eval("ProductName_e")%>]</span>
                                            <br/>
                                            <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-warning btn-sm" target="_blank" NavigateUrl='<%#Eval("taobaoUrl")%>'>Buy Now</asp:HyperLink>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="RightDiv">
    <p><a href="../UserPage/UserPageLoginCHN.aspx" target="_blank"><img src="Img/User.png" width="40px" height="40px" title="用户登录"></a></p>
    <a target="_blank" href="https://amos.alicdn.com/getcid.aw?spm=2013.1.1000126.6.5a8f08b5Aoywrz&v=3&groupid=0&s=1&charset=utf-8&uid=%E6%B5%B7%E7%BF%94%E5%88%9B%E9%80%A0&site=cntaobao&groupid=0&s=1&fromid=cntaobao"><img src="Img/Aliba.png" width="40px" height="40px" title="阿里旺旺"></a>
    <p><a onmouseover="showErWeMa()" onmouseleave="HiddenErWeMa()" ><img src="Img/weixin.png" width="40px" height="40px" title="微信"></a></p>
    <p><a target="_blank" href="../UserPage/UserConmunicationApaceCHN.aspx"><img src="Img/zixun.png" width="40px" height="40px" title="在线咨询"></a></p>
    <p><a href="#"><img class="Movehuojian" src="Img/dingbu.png" width="40px" height="40px" title="置顶" ></a></p>
</div>
<div class="ErWeiMa" id="ShowEwM">
    <img src="Img/Qiye2WM.jpg" width="100px" height="100px" alt="First slide">	
</div>
<br/>
<footer class="Center borderGrey_One">
    <p><b>公司地址：四川省绵阳市经开区长虹大道中段229号金楠天街6幢4楼1号</b>
    <p><b>网站备案：蜀ICP备17037074号-1<b/> 四川创造门高新技术开发有限公司版权所有  @ server 2017~2018</b></p>
</footer>
</form>
</body>
<script src="js/scroll.js" type="text/javascript"></script>
<script type="text/javascript">
    function showErWeMa() {
        var erwm = document.getElementById("ShowEwM");
        erwm.style.height = 100 + "px";
    }
    function HiddenErWeMa() {
        var erwm = document.getElementById("ShowEwM");
        erwm.style.height = 0 + "px";
    }
    $('.carousel').carousel();

    function showZhibo() {
        var zhiboliebiao = document.getElementById("ZHIboLiebiao");
        zhiboliebiao.style.height = 77 + "px";
    }
    function Hiddenzhibo() {
        var zhiboliebiao = document.getElementById("ZHIboLiebiao");
        zhiboliebiao.style.height = 0 + "px";
    }
</script>
</html>
