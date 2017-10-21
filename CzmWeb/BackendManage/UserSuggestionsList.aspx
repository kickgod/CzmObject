<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSuggestionsList.aspx.cs" Inherits="CzmWeb.BackendManage.UserSuggestionsList" %>

<%@ Register Src="~/Common/wucPager.ascx" TagPrefix="uc1" TagName="wucPager" %>
<%@ Register Src="~/Common/wuc_PagerEng.ascx" TagPrefix="uc1" TagName="wuc_PagerEng" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            var currentdate = "[time:" + date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds()+"]";
            return currentdate;
        }
        function WordLengthChange() {
            var text=document.getElementById("<%=txtMessageContent.ClientID%>");
            var lengths = document.getElementById("<%=lblWordTime.ClientID%>");
            lengths.innerHTML = "[The remaining words:] " + text.value.toString().length + "/1200";
            if (text.value.toString().length >= 1200) {
                text.setAttribute("disabled", false);
            }
        }
        setInterval(function () {
            document.getElementById("DateTimeNow").innerHTML = getNowFormatDate();
        },
    1000);
        function checkNull() {
            var textPhone   = document.getElementById("<%=txtboxPhone.ClientID%>");
            var textEmail   = document.getElementById("<%=txtEmailText.ClientID%>");
            var textContent = document.getElementById("<%=txtMessageContent.ClientID%>");
            if (textPhone.value == "") { alert("Please leave the contact information so that we can contact you"); return false;}
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
            <h4 class="col-md-12 h4">User Comments <small><span id="DateTimeNow">[time:2017-10-18 18:28:39]</span></small></h4>
        </div>
        <div class="row">
             <div class="col-md-6"><ins>[You can give us feedback on your opinion]</ins></div>
             <div class="col-md-3 col-md-offset-3" id="BtnSaveMessage"><asp:Button ID="btnSave" OnClientClick="return checkNull()"  runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnSave_Click" /></div>
        </div>
        <div class="row">
            <div class="col-md-12 form-group">
                <label for="txtboxPhone">Phone</label>
                <asp:TextBox ID="txtboxPhone" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
           </div>
           <div class="col-md-12 form-group">
                <label for="txtEmailText">Email address</label>
                <asp:TextBox ID="txtEmailText" CssClass="form-control" runat="server" placeholder="Email address"></asp:TextBox>
           </div>
           <div class="col-md-12 form-group">
                <label for="txtMessageContent">Message content</label><asp:Label ID="lblWordTime" runat="server" Text="[The remaining words:] 0/1200"></asp:Label>
                <asp:TextBox ID="txtMessageContent" CssClass="form-control" runat="server" placeholder="Text input" Height="120px" 
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
                <strong>Phone：</strong><asp:TextBox ID="txtPhone" runat="server"   placeholder="Phone"  Height="27px"></asp:TextBox>
                <asp:Button ID="btnSearch"  runat="server" Text="Search" CssClass="btn btn-primary btn-sm" OnClick="btnSearch_Click"  />
                <asp:Button ID="Button1"  runat="server" Text="Delete All" OnClientClick="JavaScript:confirm('You Will Delete All Messages！')" CssClass="btn btn-danger btn-sm" OnClick="Button1_Click1"  />
            </div>
        </div>
        <br/>
        <h4 class="h4">Comments List</h4>
        <asp:Repeater ID="rpItem" runat="server" OnItemDataBound="rpItem_ItemDataBound" OnItemCommand="rpItem_ItemCommand">
            <ItemTemplate>
                <div class="row" style="border-bottom: 1px gray solid; height: 35px; line-height: 35px;">
                    <div class="col-md-2"><strong>The <%# Container.ItemIndex+1%>th Floor</strong></div>
                    <div class="col-md-4"><strong>Phone:</strong><%#Eval("Phone") %></div>
                    <div class="col-md-5">
                        <strong>Email:</strong><%#Eval("userEmail") %>                   
                    </div>
                    <div class="col-md-1" style="text-align: right">
                        <asp:Button ID="BtnDelete" CssClass="btn btn-info btn-xs" OnClientClick="javascript:return  confirm('You Will Delete the Message?')" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("AdviceID") %>' />                      
                    </div>
                </div>
                <div class="row" style="border-bottom: 1px gray solid">
                    <div class="col-md-12 tabletdBGc"><strong>Content：</strong><%#Eval("AdviceContent") %></div>
                </div>
                <div class="row" style="text-align: right">
                    <div class="col-md-12"><strong>Time：</strong><%#Eval("LeaveTime") %></div>
                </div>
                <br/>                
            </ItemTemplate>
        </asp:Repeater>
        <div class="row" style="text-align: center">
            <uc1:wuc_PagerEng runat="server" ID="wuc_PagerEng" OnBindList="wuc_PagerEng_OnBindList" />
            <asp:Label ID="lblWhere" runat="server" Text="" Visible="False"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
