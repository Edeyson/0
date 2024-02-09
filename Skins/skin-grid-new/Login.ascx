<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
    <%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
        <%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
            <%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
                <%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
                    <%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
                        <%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
                            <%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
                                <%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
                                    <%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
                                        <%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
                                            <%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
                                                <%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
                                                    <%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
                                                        <%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
                                                            <%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
                                                                <%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>
                                                                    <%@ Register TagPrefix="dnn" TagName="MYBOOKINS" Src="~/DesktopModules/Netactica/MyBookings/MyBookings.ascx" %>
                                                                        <%@ Register TagPrefix="dnn" TagName="NETTERMINAL" Src="~/DesktopModules/Netactica/NetTerminal/NetTerminal.ascx" %>
                                                                            <%@ Register TagPrefix="dnn" TagName="GOOGLETAGMANAGER" Src="~/DesktopModules/Netactica/GoogleTagManager/GoogleTagManager.ascx" %>

                                                                                <dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

                                                                                <style type="text/css">
                                                                                    body {
                                                                                        background: #ededed !important;
                                                                                    }
                                                                                    footer{
                                                                                            display: flex;
                                                                                            justify-content: center;
                                                                                            margin-top: 30px;
                                                                                    }
                                                                                </style>
                                                                                <div id="siteWrapper" class="wrapper-container-login">

                                                                                    <!--Header -->
                                                                                    <header role="banner" class="header-container-login">
                                                                                        <div class="menu-logo-container bg-bluemobile">
                                                                                            <div id="mainHeader-inner" class="container">
                                                                                                <div class="clearfix"></div>

                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="widgetPaneContainer widgetPaneLogin">
                                                                                            <div class="container">
                                                                                                <div class="row">
                                                                                                    <div id="logoPane" class="col-xs-12 col-sm-12 col-md-4 col-md-offset-4">
                                                                                                        <div class="logo-login">
                                                                                                            <dnn:LOGO runat="server" ID="dnnLOGO" />
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div id="loginPane" class="col-xs-12 col-sm-12 col-md-4 col-md-offset-4" runat="server"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </header>
                                                                                    <div class="top-header-bg">
                                                                                        <div class="container">
                                                                                            <div class="row">
                                                                                                <div id="TopHeaderPane" class="col-lg-12" runat="server"></div>

                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <!-- Page Content -->
                                                                                    <div class="container">
                                                                                        <main role="main">
                                                                                            <div class="row dnnpane">
                                                                                                <div id="HeaderPane" class="col-md-12 headerPane" runat="server"></div>
                                                                                            </div>
                                                                                            <div id="mainContent-inner">
                                                                                                <div class="row dnnpane">
                                                                                                    <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <!-- /.mainContent-inner -->
                                                                                        </main>
                                                                                        <!-- /.mainContent -->
                                                                                    </div>
                                                                                    <!-- /.container -->
                                                                                    <footer>
                                                                                        <div class="footer-poweredby">
                                                                                            <a href="https://www.netactica.com/" target="_blank"><img src="/Portals/1192/skins/skin-grid-new/assets/Images/logoNetactica1.png"></a>
                                                                                        </div>
                                                                                    </footer>

                                                                                </div>


                                                                                <%-- CSS & JS includes --%>
                                                                                    <!--#include file="assets/Common/AddFilesLogin.ascx"-->