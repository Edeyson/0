<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
    <%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
        <%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
            <%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
                <%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
                    <%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
                        <%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
                            <%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
                                <%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
                                    <%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
                                        <%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>
                                            <%@ Register TagPrefix="dnn" TagName="MYBOOKINS" Src="~/DesktopModules/Netactica/MyBookings/MyBookings.ascx" %>
                                                <%@ Register TagPrefix="dnn" TagName="NETTERMINAL" Src="~/DesktopModules/Netactica/NetTerminal/NetTerminal.ascx" %>
                                                    <%@ Register TagPrefix="dnn" TagName="ADDSESSIONTOKEN" Src="~/DesktopModules/Netactica/AddSessionToken/AddSessionToken.ascx" %>
                                                        <dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
                                                        <dnn:ADDSESSIONTOKEN runat="server" id="ADDSESSIONTOKEN" />
                                                        <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

                                                        <style>
                                                            .user-menu-mobile .user-authenticated-icon-mobile {
                                                                display: none;
                                                            }
                                                        </style>
                                                        <%If DotNetNuke.Common.Globals.IsEditMode() Then%>
                                                            <style>
                                                                .header-container {}
                                                                
                                                                .main-banner-search-section__search-widget {
                                                                    position: relative !important;
                                                                }
                                                            </style>
                                                            <%End If%>
                                                                <% If Request.IsAuthenticated %>
                                                                    <style>
                                                                        .user-authenticated-icon-mobile {
                                                                            display: inline-block !important;
                                                                        }
                                                                        
                                                                        .user-no-authenticated-icon-mobile {
                                                                            display: none !important;
                                                                        }
                                                                    </style>
                                                                    <% End If %>
                                                                        <script>
                                                                            var browser = navigator.appName
                                                                            var ver = navigator.appVersion
                                                                            var thestart = parseFloat(ver.indexOf("MSIE")) + 1 //This finds the start of the MS version string.
                                                                            var brow_ver = parseFloat(ver.substring(thestart + 4, thestart + 7)) //This cuts out the bit of string we need.

                                                                            if ((browser == "Microsoft Internet Explorer") && (brow_ver < 10)) //By default the min. IE ver is set to 6. Change as desired.
                                                                            {
                                                                                window.location = "/ie"; //URL to redirect to.
                                                                            }
                                                                        </script>

                                                                        <div id="siteWrapper" class="cms-flex__main_container">
                                                                            <!--Header -->
                                                                            <div class="cms-flex__main">
                                                                                <!-- Page Content -->
                                                                                <div class="container cms-flex__page-content">
                                                                                    <div class="cms-flex__404-page">
                                                                                        <dnn:LOGO runat="server" ID="dnnMobileLOGO" cssClass="" />
                                                                                        <h2 class="titulo-principal">404</h2>
                                                                                        <h2 class="titulo-secundario">Pagina no encontrada</h2>
                                                                                        <p>La pagina solicitada no ha sido encontrada, volver a la pagina de<a href="/"> Inicio</a>

                                                                                        </p>
                                                                                    </div>
                                                                                    <div id="mainContent-inner">
                                                                                        <div class="row dnnpane">
                                                                                            <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!-- /.container -->

                                                                            <!-- Footer -->


                                                                        </div>
                                                                        <!-- /.SiteWrapper -->

                                                                        <%-- CSS & JS includes --%>
                                                                            <!--#include file="assets/common/B2C.ascx"-->