<!--#include file="includes/_registers/register_init.ascx"-->
<!--#include file="includes/_preheader/preheader.ascx"-->
<dnn:DnnCssInclude Priority="15" ID="header2" runat="server" FilePath="assets/css/header--2.css" PathNameAlias="SkinPath" HtmlAttributesAsString="rel:stylesheet" />
<dnn:DnnCssInclude Priority="15" ID="footer1" runat="server" FilePath="assets/css/footer--1.css" PathNameAlias="SkinPath" HtmlAttributesAsString="rel:stylesheet" />

<div class="body-page-notfound">
    <div class="header-container">
        <!--#include file="includes/_header/header_2.ascx"-->
        <!--#include file="includes/_preheader/functions.ascx"-->
    </div>
    <div class="notfound-page">
        <div>
            <h1 class="notfound-page__title">404</h1>
        </div>
        <div class="notfound-page__body">
            <p id="title" class="notfound-page__text-title">Oops! Página no encontrada</p>
            <div class="notfound-page__text-content">
                <p class="notfound-page__text">La url solicitada no fue encontrada, haz <a id="textLink" class="notfound-page__link" href="/">click aquí</a> para regresar a la página de inicio.</p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="col-12">
            <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
        </div>
    </div>
    <!--#include file="includes/_footer/footer_1.ascx"-->
</div>