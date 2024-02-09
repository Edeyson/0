<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%-- CSS files --%>
<dnn:DnnCssInclude ID="BootstrapCSS" runat="server" FilePath="/portals/0/css/bootstrap/css/bootstrap.min.css" PathNameAlias="" Priority="12" />
<dnn:DnnCssInclude ID="SkinCSS" runat="server" FilePath="assets/Css/skin.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="ContentCSS" runat="server" FilePath="assets/Css/login.css" PathNameAlias="SkinPath" />

<%-- JS files --%>
<dnn:DnnJsInclude ID="BootstrapJS" runat="server" FilePath="/portals/0/css/bootstrap/js/bootstrap.min.js" PathNameAlias="" />
<dnn:DnnJsInclude ID="scriptJS" runat="server" FilePath="assets/js/login.scripts.js" PathNameAlias="SkinPath" />
