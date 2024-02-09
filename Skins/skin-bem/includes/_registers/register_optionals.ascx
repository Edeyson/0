<!-- REGISTROS OPCIONALES DNN -->

<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %> 
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>

<!-- REGISTROS OPCIONALES NETACTICA -->

<%@ Register TagPrefix="dnn" TagName="NETTERMINAL" Src="~/DesktopModules/Netactica/NetTerminal/NetTerminal.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ADDSESSIONTOKEN" Src="~/DesktopModules/Netactica/AddSessionToken/AddSessionToken.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEAMLESSLOGIN" Src="~/DesktopModules/Netactica/SeamlessLogin/View.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ADDSESSIONTOKENB" Src="~/DesktopModules/Netactica/AddSessionToken/AddSessionTokenB.ascx" %>
<dnn:SEAMLESSLOGIN ID="dnnSEAMLESSLOGIN" runat="server" />
<dnn:ADDSESSIONTOKEN runat="server" id="ADDSESSIONTOKEN" />
<dnn:ADDSESSIONTOKENB runat="server" id="ADDSESSIONTOKENB" />
