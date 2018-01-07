<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wuc_UpLoadDouble.ascx.cs" Inherits="CzmWeb.Common.wuc_UpLoadDouble" %>
<link href="../Content/InputFileUploadStyle.css" rel="stylesheet" type="text/css"/>
<style>
    .btnTop{ 
        vertical-align: top;
        height: 28px;
        width: 70px;
        background-color: white;
        color: black;
        border-radius: 5px;
        border: 1px solid gray;   
    }
    .btnTop:hover {
        background-color: gainsboro;
    }
</style>
<script type="text/javascript">
    //下面用于图片上传预览功能
    function setImagePreview(avalue) {
        //input
        var docObj = document.getElementById('<%=FlUpLoad.ClientID%>');
        //img
        var imgObjPreview = document.getElementById('<%=preview.ClientID%>');
        //div
        var divs = document.getElementById("localImag");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '100px';
            imgObjPreview.style.height = '100px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById('<%=localImag.ClientID%>');
            //必须设置初始大小
            localImagId.style.width = "100px";
            localImagId.style.height = "100px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
    function setImagePreview2(avalue) {
        //input
        var docObj = document.getElementById('<%=FlUpLoad2.ClientID%>');
        //img
        var imgObjPreview = document.getElementById('<%=preview2.ClientID%>');
        //div
        var divs = document.getElementById("localImag");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '100px';
            imgObjPreview.style.height = '100px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById('<%=localImag2.ClientID%>');
            //必须设置初始大小
            localImagId.style.width = "100px";
            localImagId.style.height = "100px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
</script>
<br/>
<span style="font-size: 20px;font-weight: 400">身份证前照：</span>
<a href="javascript:;" class="file" style="border-radius: 13px">
    <asp:FileUpload ID="FlUpLoad" runat="server" onchange="javascript:setImagePreview();" multiple="multiple" />  选择文件
</a>
<asp:Button ID="Button1" runat="server" Text="上传"   OnClick="Button1_Click" CssClass="btnTop" />
<asp:Label ID="lblWenjian" runat="server" Text=""  Visible="False"></asp:Label>
<asp:Label ID="lblState" runat="server" Text=""  Visible="True" ForeColor="Red"></asp:Label>
<br/>
<div id="localImag" style="width: 100px; height: 100px;" runat="server">
    <img id="preview" src="" runat="server" width="100" height="100" style="display: block;border: 1px solid white;" alt="" />
</div>
<br/>
<span style="font-size: 20px;font-weight: 400">身份证后照：</span>
<a href="javascript:;" class="file" style="border-radius: 13px">
    <asp:FileUpload ID="FlUpLoad2" runat="server" onchange="javascript:setImagePreview2();" multiple="multiple" />  选择文件
</a>
<asp:Button ID="Button2" runat="server" Text="上传"   OnClick="Button2_Click" CssClass="btnTop" />
<asp:Label ID="lblWenjian2" runat="server" Text=""  Visible="False"></asp:Label>
<asp:Label ID="lblState2" runat="server" Text=""  Visible="True" ForeColor="Red"></asp:Label>
<br/>
<div id="localImag2" style="width: 100px; height: 100px;" runat="server">
    <img id="preview2" src="" runat="server" width="100" height="100" style="display: block;border: 1px solid white;" alt="" />
</div>
