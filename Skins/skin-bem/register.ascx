<!--#include file="includes/_registers/register_init.ascx"-->
<!--#include file="includes/_preheader/preheaderEssential.ascx"-->

<dnn:DnnCssInclude Priority="15" ID="header1" runat="server" FilePath="assets/css/header--1.css" PathNameAlias="SkinPath" HtmlAttributesAsString="rel:stylesheet" />
<dnn:DnnCssInclude Priority="15" ID="footer1" runat="server" FilePath="assets/css/footer--1.css" PathNameAlias="SkinPath" HtmlAttributesAsString="rel:stylesheet" />


    <div class="header-container">
        <!--#include file="includes/_header/header_1.ascx"-->
        <!--#include file="includes/_preheader/functions.ascx"-->
    </div>
    
        <div class="register">
            <div class="register__body">
                <div id="registerPane" class="registerFormPane net-offset-md-2 net-col-md-8" runat="server">
                </div>
                <div id="ContentPane" class="net-col-md-12" runat="server">
                </div>
            </div>
        </div>
    <!-- ___include footer___ -->

    <!--#include file="includes/_footer/footer_1.ascx"-->