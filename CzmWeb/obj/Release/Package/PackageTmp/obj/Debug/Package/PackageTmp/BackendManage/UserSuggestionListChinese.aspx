<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSuggestionListChinese.aspx.cs" Inherits="CzmWeb.BackendManage.UserSuggestionListChinese" %>

<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>
<%@ Register Src="~/Common/wuc_PagerEng.ascx" TagPrefix="uc1" TagName="wuc_PagerEng" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../bootstrap337/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../bootstrap337/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap337/js/bootstrap.min.js"></script>
    <script src="../bootstrap337/js/jquery-3.2.1.min.js"></script>
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
            var currentdate = "[时间  :" + date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds() + "]";
            return currentdate;
        }
        function WordLengthChange() {
            var text = document.getElementById("<%=txtMessageContent.ClientID%>");
            var lengths = document.getElementById("<%=lblWordTime.ClientID%>");
            lengths.innerHTML = "[字数:] " + text.value.toString().length + "/1200";
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
            if (textPhone.value == "") { alert("Please leave the contact information so that we can contact you"); return false; }
            if (textContent.value == "") { alert("Please enter text"); return false; }
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
<form id="form1" runat="server">
    <div  class="container">
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
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <strong>开始：</strong><asp:TextBox ID="ThisFataFirst" TextMode="Date" runat="server"></asp:TextBox><asp:TextBox ID="FirstPratTwo" TextMode="Time" runat="server"></asp:TextBox> 
                <strong>结束：</strong><asp:TextBox ID="ThisFataSecond"  TextMode="Date" runat="server"></asp:TextBox> <asp:TextBox ID="SecondPartTwo" runat="server" TextMode="Time" ></asp:TextBox>
            </div>
            <div class="col-md-6 col-sm-12">
                <strong>电话号码：</strong><asp:TextBox ID="txtPhone" runat="server"   placeholder="Phone"  Height="27px"></asp:TextBox>
                <asp:Button ID="btnSearch"  runat="server" Text="查询" CssClass="btn btn-primary btn-sm" OnClick="btnSearch_Click"  />
                <asp:Button ID="Button1"  runat="server" Text="删除所有" OnClientClick="JavaScript:confirm('You Will Delete All Messages！')" CssClass="btn btn-danger btn-sm" OnClick="Button1_Click1"  />
            </div>
        </div>
        <br/>
        <h4 class="h4">留言列表</h4>
        <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
            <ItemTemplate>
                <div class="row" style="border-bottom: 1px gray solid; height: 35px; line-height: 35px;">
                    <div class="col-md-2"><strong>第 <%# Container.ItemIndex+1%>楼</strong></div>
                    <div class="col-md-4"><strong>电话:</strong><%#Eval("Phone") %></div>
                    <div class="col-md-5">
                        <strong>邮件:</strong><%#Eval("userEmail") %></div>
                    <div class="col-md-1" style="text-align: right">
                        <asp:Button ID="BtnDelete" CssClass="btn btn-info btn-xs"  OnClientClick="javascript:return  confirm('确定删除吗?')" runat="server" Text="删除" CommandName="Delete" CommandArgument='<%#Eval("AdviceID") %>' />                      
                    </div>
                </div>
                <div class="row" style="border-bottom: 1px gray solid">
                    <div class="col-md-12 tabletdBGc"><strong>内容：</strong><%#Eval("AdviceContent") %></div>
                </div>
                <div class="row" style="text-align: right">
                    <div class="col-md-12"><strong>时间：</strong><%#Eval("LeaveTime") %></div>
                </div>
                <br/>                
            </ItemTemplate>
        </asp:Repeater>
        <div class="row" style="text-align: center">
            <uc1:wucPager runat="server" ID="wucPager" OnBindList="wucPager_OnBindList" />
            <asp:Label ID="lblWhere" runat="server" Text="" Visible="False"></asp:Label>
        </div>
    </div>
</form>
</body>
</html>

