<!--#include file="includes/_registers/register_init.ascx"-->
<!--#include file="includes/_preheader/preheaderEssential.ascx"-->

<div class="ie-page">
    <div class="ie-page__logo">
        <img src="portals/0/skins/newTheme/assets/images/borwser-icon.png" alt="">
    </div>
    <div class="ie-page__body">
        <h3 class="ie-page__title" id="title">
            Lo sentimos, navegador no compatible
        </h3>
        <h4 class="ie-page__subtitle" id="sub-title">
            Notamos que estás utilizando Internet Explorer para acceder a nuestro sitio web.
        </h4>
        <div class="ie-page__container">
            <p>
                <span class="ie-page__text" id="text-1"> Para brindarte la mejor experiencia posible, te recomendamos utilizar otros navegadores modernos como </span>
                    <a class="ie-page__link" target="_blank" href="https://www.google.com/chrome/browser/desktop/"> Google Chrome</a>, <a class="ie-page__link"
                    target="_blank" href="https://www.mozilla.org/en-US/firefox/new/"> MozillaFirefox</a> o <a
                    class="ie-page__link" target="_blank"
                    href="https://www.microsoft.com/es-es/edge/download?form=MA13FJ"> Microsoft Edge</a>
                <span class="ie-page__text" id="text-2">. Estos navegadores ofrecen un mejor rendimiento, mayor seguridad y soporte para las últimas tecnologías web.</span>
            </p>
            <p class="ie-page__text" id="text-3">
                    Internet Explorer ha dejado de recibir actualizaciones y no es compatible con algunas de las funcionalidades y diseños más recientes en nuestro sitio. Al utilizar un navegador más actualizado, podrás disfrutar de una navegación más rápida, una mayor compatibilidad con estándares web y una experiencia general más fluida.
            </p>            
        </div>
        <div class="ie-page__container ie-page__container--footer">
            <span class="ie-page__line"></span>
            <div class="ie-page__logo">
                <dnn:LOGO runat="server" ID="dnnLOGO" />
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="col-12">
        <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
    </div>
</div>
