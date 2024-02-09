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
                                                            .header-container{}
                                                                .main-banner-search-section__search-widget {
                                                                    position: relative !important;
																	display:block;
                                                                }
																#dnn_MobilePane.col-md-12.contentPane.hidden-desktop{
																	display: block!important;
																	background: #e3e3e3;
																}
																#dnn_MobilePane.col-md-12.contentPane.hidden-desktop::after {
																		content: 'CONTENIDO EXCLUSIVO PARA MOVIL';
																}                                                            </style>
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

                                                                    if (/*@cc_on!@*/false || !!document.documentMode) //By default the min. IE ver is set to 11. Change as desired.
                                                                    {
                                                                        window.location = "/ie"; //URL to redirect to.
                                                                    }
                                                                </script>


<div id="siteWrapper" class="cms-flex__main_container"> 

  <!--Header -->


				<!--#include file="layouts/hyf-b2c/navbar2.ascx"-->

<!--FIN Header -->

<!-- Page Content -->

<div class="cms-flex__main"> 
<section>
	<div class="main-banner-search-section">

		<div id="MainBanner" runat="server" class="main-banner-search-section__bannerPane"></div>

		<div class="main-banner-search-section__search-widget">
			<div id="SearchWidget_80" runat="server"></div>
			<div id="SearchWidget_100" runat="server"></div>
		</div>
 	</div>
</section>	  
	  
	<div class="cms-flex__page-content-full">
		<section>
		<div id="ContentPaneFull" class="col-md-12 contentPane " runat="server"></div>
		</section>
		<section>
		<div class="container">
			<div class="row dnnpane">
				<div id="search75" class="col-md-8 contentPane" runat="server"></div>
				<div id="block25" class="col-md-4 contentPane" runat="server"></div>
				<div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
			</div>
		</div>
		</section>
		<section>
		<div class="container">
		<div class="row dnnpane">
			<div id="LeftSidebar2" class="col-md-4 spacingTop" runat="server"></div>
			<div id="LeftSidebarOuter2" class="col-md-8 spacingTop" runat="server"></div>
		</div>
			<div class="row dnnpane">
				<div id="ContentPane5" class="col-md-12 contentPane" runat="server"></div>
			</div>
		</div>
		</section>

		<section>
		<div id="TopPaneFull" class="col-md-12 contentPane cms-flex__panelbg" runat="server"></div>
		</section>

		<section>
		<div class="container">
		<div class="row dnnpane">
			<div id="MiddlePane2" class="col-md-12 contentPane spacingTop" runat="server"></div>
		</div>
		
		<div class="row dnnpane">
			<div id="LeftPane" class="col-md-6 col-sm-6 spacingTop" runat="server"></div>
			<div id="RightPane" class="col-md-6 col-sm-6 spacingTop" runat="server"></div>
		</div>
		</div>
		</section>

		<section>
		<div class="container">
		<div class="row dnnpane d-flex flex-md-row flex-column">
			<div id="LeftPane2" class="order-2 order-sm-1 col-md-6 col-sm-6 spacingTop" runat="server"></div>
			<div id="RightPane2" class="order-1 order-sm-2 col-md-6 col-sm-6 spacingTop" runat="server"></div>
		</div>
		</div>
		</section>

		<section>
		<div class="container">
		<div class="row dnnpane d-flex flex-md-row flex-column">
			<div id="LeftPane3" class="order-2 order-sm-1 col-md-6 col-sm-6 spacingTop" runat="server"></div>
			<div id="RightPane3" class="order-1 order-sm-2 col-md-6 col-sm-6 spacingTop" runat="server"></div>
		</div>
		</div>
		</section>

		<section>
		<div class="container">
		<div class="row dnnpane d-flex flex-md-row flex-column">
			<div id="LeftPane4" class="order-2 order-sm-1 col-md-6 col-sm-6 spacingTop" runat="server"></div>
			<div id="RightPane4" class="order-1 order-sm-2 col-md-6 col-sm-6 spacingTop" runat="server"></div>
		</div>
		</div>
		</section>

		<div class="container">
			<div class="row dnnpane">
		<div id="ContentPane2" class="col-md-12 contentPane" runat="server"></div>
			</div>
		</div>
		<div class="container">
			<div class="row dnnpane">
				<div id="MobilePane"  class="col-md-12 contentPane hidden-desktop" runat="server"></div>
				<div id="TopPane" class="col-md-12 contentPane" runat="server"></div>
			</div>
		</div>
		
	</div>

	  <div id="MiddlePaneFull" class="col-md-12 contentPane spacingTop" runat="server"></div>

	  <div class="container">

		<div class="row dnnpane">
			<div id="MiddlePane3" class="col-md-12 contentPane spacingTop" runat="server"></div>
		</div>
		</section>
		<section>
		<div class="row dnnpane">
			<div id="LeftPane5" class="col-md-6 col-sm-6 spacingTop" runat="server"></div>
			<div id="RightPane5" class="col-md-6 col-sm-6 spacingTop" runat="server"></div>
		</div>
		</section>
	</div>
	<section>
	<div id="MiddlePaneFull2" class="col-md-12 contentPane spacingTop bg-secondary" runat="server"></div>
	</section>
	<div class="container">
	<div class="row dnnpane">
			  <div id="midleLeftOuter" class="col-md-3 col-sm-3 col-12 spacingTop" runat="server"></div>
			  <div id="midleLeftInner" class="col-md-3 col-sm-3 col-12 spacingTop" runat="server"></div>
			  <div id="midleRightInner" class="col-md-3 col-sm-3 col-12 spacingTop" runat="server"></div>
			  <div id="midleRightOuter" class="col-md-3 col-sm-3 col-12 spacingTop" runat="server"></div>
		</div>
	</div>
	<section>	
		<div id="MiddlePaneFull3" class="col-md-12 contentPane spacingTop" runat="server"></div> 
	</section>

	<div class="container">
		<div class="row dnnpane">
			<div id="BottomLeftPane" class="col-md-4 spacingTop" runat="server"></div>
			<div id="BottomCenterPane" class="col-md-4 spacingTop" runat="server"></div>
			<div id="BottomRightPane" class="col-md-4 spacingTop" runat="server"></div>
		</div>
		<div class="row dnnpane">
			<div id="LeftSidebar3" class="col-md-4 spacingTop" runat="server"></div>
			<div id="LeftSidebarOuter3" class="col-md-8 spacingTop" runat="server"></div>
		</div>
		<div class="row dnnpane">
			<div id="BottomPane" class="col-md-12 spacingTop" runat="server"></div>
		</div>
	  </div>
	  <div id="BottomPaneFull" class="col-md-12 contentPane spacingTop" runat="server"></div>
	  <div class="container">
		<div class="row dnnpane">
			<div id="RegisterFormPane" class="registerFormPane col-md-12" runat="server"></div>
		  </div>
	  </div>
</div>

<!-- /.container -->

<!--#include file="layouts/hyf-b2c/footer3.ascx"-->

<!-- Footer -->

</div>
<!-- /.SiteWrapper -->

<%-- CSS & JS includes --%>
				<!--#include file="assets/Common/B2C_b5.ascx"-->
				
				