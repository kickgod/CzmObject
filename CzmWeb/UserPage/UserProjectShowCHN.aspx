<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProjectShowCHN.aspx.cs" Inherits="CzmWeb.UserPage.UserProjectShowCHN" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
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

        function Guquan(StockName) {
            alert(StockName);
        }
    </script>
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
        .SearchTxt{ width: 70%;height: 27px;border-radius: 12.5px;font-size: 13px;color: black;text-indent: 15px}
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
        <div class="page-header">
            <h3><span class="ProductNameType">项目展示</span>
                <small>Project Search<br/><asp:TextBox ID="txtSearch" placeholder="Project Search By Name" TextMode="Search"  CssClass="SearchTxt" results="S" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" CssClass="btn btn-warning btn-sm" runat="server" Text="Search" OnClick="Button2_Click" />
                </small>
            </h3>
        </div>
        <div class="row" id="ProjectHave">
            <asp:Repeater ID="reptemNewProduct" runat="server" OnItemCommand="reptemNewProduct_OnItemCommand" >
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6 col-xs-12">
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
                                    <a href="#InvestPFmy" class="btn btn-danger">取消</a>
                                </p>
                            </figcaption>
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:Repeater>   
        </div>
        <div class="page-header">
            <h3><span class="ProductNameType">我的项目[创作]</span>
                <small>项目</small>
            </h3>
        </div>
        <div class="row" id="reptemNewProductMy">
            <asp:Repeater ID="reptmMy" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <figure>
                            <img src='<%#Eval("ImgPicturPath")%>' >          
                            <figcaption>
                                <p ><span class="introShowWord">[<%#Eval("PciName_c")%>]</span></p>
                                <p>Status:<%# Eval("PciState").ToString()=="30" ? "通过":(Eval("PciState").ToString()=="-30"? "未通过":"审核中" ) %></p>
                                <p>
                                    <details>
                                        <summary>Basic Information</summary>
                                        <span class="TitleIconsins">Demand:</span><%#Eval("PciInvestMeony")%> RMB<br/>
                                        <a href="javascript:Guquan('<%#Eval("PciName_c")%>')">股权信息->点击查看</a><br/>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl=<%#Eval("PciRemark")%> runat="server">证书下载</asp:HyperLink>
                                        <p>Project Debriefing</p>
                                        <asp:Repeater ID="reptem" runat="server">
                                            <ItemTemplate>
                                                <p> <%#Eval("UserName_e") %> 投资了  <%#Eval("Account") %> RMB 给你的项目:<%#Eval("InvestTime") %></p>
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
        <div class="page-header" id="InvestPFmy">
            <h3><span class="ProductNameType">我的投资</span>
                <small>投资</small>
            </h3>
            <div class="row">
                <table class="table" style="width: 100%">
                    <div class="col-md-12 col-sm-12 col-xs-12" >
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>项目名称</th>
                            <th>金额</th>
                            <th>地区</th>
                            <th>时间</th>
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
    </div>
</form>
</body>
</html>