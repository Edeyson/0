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
                                            
                                                
                                                    
                                                        <dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
                                                        
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
		<div class="">

			<div id="full12" runat="server" class="main-banner-search-section__bannerPane"></div>

			<div class="container">
                <div class="row">
                    <div id="left6" class="col-lg-6" runat="server"></div>
                    <div id="right6" class="col-lg-6" runat="server"></div>
                </div>
            </div>
		</div>
		<div class="row">
			<div id="right8" class="col-lg-8" runat="server"></div>
			<div id="left4" class="col-lg-4" runat="server"></div>
		</div>
	</section>
	<section class="section-content__pane">
		<div class="container">
			<div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
		</div>
	</section>
	<section class="">
		<div class="container">
			<div id="ContainerPane12" runat="server"></div>
		</div>
	</section>
	<section>
		<div >
			<div id="fullPane12" runat="server"></div>
		</div>
	</section>
	<section>
		<div class="container">
			<div id="pane12" runat="server"></div>
		</div>
	</section>
</div>
<!-- /.container -->

<!--#include file="layouts/hyf-b2c/footer3.ascx"-->

<!-- Footer -->

</div>
<!-- /.SiteWrapper -->

<%-- CSS & JS includes --%>
				<!--#include file="assets/Common/B2C_b5_living.ascx"-->
				
				
