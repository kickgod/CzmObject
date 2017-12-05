<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CzmWeb.Contact" %>

<%@ Register Src="~/Common/wuc_UploadPic.ascx" TagPrefix="uc1" TagName="wuc_UploadPic" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>425.555.0199</span>
        </p>
        <uc1:wuc_UploadPic runat="server" id="wuc_UploadPic" />
        <br />
        <uc1:wuc_UploadPic runat="server" id="wuc_UploadPic1" />
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </section>
    
    
    
    
  
    <!--
    #containter { overflow: hidden; width: 600px;height: 267.5px;position: relative;z-index: 1;margin: 0px auto;z-index: 1;}
    #ilist{width: 3000px;height: 267.5px;position: absolute;z-index: 1;left: 0px;}
    #ilist img{float: left;z-index: 1;width: 600px;height: 267.5px}
    #buttons {position: absolute;height: 10px;width: 160px;z-index: 2; bottom: 20px;left: 48%;}
    #buttons span{cursor: pointer;float: left;border: 1px solid #FFFDEF;width: 14px; height: 14px;border-radius: 50%;background: #333333;margin-right: 5px;}
    #buttons .on{background: orangered;}
    .Onlist{background-color: white;}
    .arrow{cursor: pointer;display: none;line-height: 40px;text-align: center;font-size: 36px;font-weight: bold;width: 50px;height: 50px;position: absolute;z-index: 2;top: 100px;background-color: rgba(0,0,0,0.3);}
    .arrow:hover{background-color: rgba(0,0,0,0.7);}
    .arrow img{ width: 50px;height: 50px}
    #containter:hover .arrow{display: block;}
    #prev{left: 20px;z-index: 5;display: block;}
    #next{right: 20px;z-index: 5;display: block;}
    .lunboSection{ width: 100%;height: 267.5px;background: linear-gradient(darkmagenta, RGB(176, 53, 112));}
    .lunboSection .Font_ont{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(64deg);}
    .lunboSection .Font_tot{color: white;font-size: 2em; position: absolute;top: 25%;transform: rotate(-152deg);right: 10%;}
        
        -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            One Microsoft Way<br />
            Redmond, WA 98052-6399
        </p>
    </section>
</asp:Content>