<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MYBOOKINS" Src="~/DesktopModules/Netactica/MyBookings/MyBookings.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>
   
<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1, user-scalable=no" />
<div class="i8Page">
<div class="logo-login">
                                                                                                         <dnn:LOGO runat="server" ID="dnnLOGO" />
                                                                                                        </div>

<p>Para mejorar tu experiencia en nuestro sitio es aconsejable actualizar la versión de tu navegador haciendo clic <a href="https://www.microsoft.com/en-us/download/internet-explorer.aspx">aquí.</a><br>
Si prefieres, puedes utilizar otros como <a href="https://www.google.com/chrome/browser/desktop/">Google Chrome</a> o <a href="https://www.mozilla.org/en-US/firefox/new/">MozillaFirefox</a></p>
</div>
<div id="contentPane" class="contentPane" runat="server"></div>

<style>
.logo-login{
        margin-bottom: 20px;
}
body {
    background: #fff;
}
.i8Page {
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    padding-top: 146px;
}
.i8Page p {
    line-height: 24px;
    width: 500px;
    margin-left: auto;
    margin-right: auto;
    font-size: 18px; color: #000;
}

</style>