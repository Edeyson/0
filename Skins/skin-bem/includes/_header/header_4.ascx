    <header class="header">
        <div class="header__includes">
            <div class="header__logo">
                <dnn:LOGO runat="server" ID="dnnLOGO" />
            </div>
            <div class="header__burger">
                <span class="header__bar"></span><span class="header__bar"></span><span class="header__bar"></span>
            </div>
        </div>    
        <div class="header__container">

            <div class="header__menu header__menu--top">
                <nav class="_navbar _navbar--top">
                    <ul class="_navbar__list _navbar__list--top">
                        <li class="_navbar__item _navbar__item--top">
                            <a class="_navbar__link _navbar__link--top" href="mailto:info@netactica.com"><iconify-icon icon="mdi:email-outline"></iconify-icon> info@netactica.com </a>
                        </li>
                            <li class="_navbar__item _navbar__item--top">
                                <a class="_navbar__link _navbar__link--top" href="tel:2616506810"><iconify-icon icon="ic:baseline-local-phone"></iconify-icon> 2616506810 </a>
                            </li>
                        <li class="_navbar__item _navbar__item--top _navbar__item--children">
                            <div class="_navbar__container-link-submenu _navbar__container-link-submenu--top">
                                <a class="_navbar__link _navbar__link--top" href="javascript:void(0)"><iconify-icon icon="mdi:account-circle-outline"></iconify-icon> [User:DisplayName] <span id="sub-page" class="_navbar__btn-page-desk _navbar__btn-page _navbar__btn-page--top">
                                        <iconify-icon icon="uil:angle-down"></iconify-icon>
                                    </span>
                                </a>
                                <span id="sub-page" class="_navbar__btn-page-mobile _navbar__btn-page _navbar__btn-page--bottom"><iconify-icon icon="uil:angle-down"></iconify-icon></span>
                            </div>
                            <ul class="_navbar__submenu _navbar__submenu--top">
                                <li class="_navbar__item _navbar__item--top">
                                    <dnn:LOGIN runat="server" id="dnnLOGIN" cssClass="_navbar__link _navbar__link--top" Text="Iniciar Sesión" />
                                </li>
                                <li class="_navbar__item _navbar__item--top">
                                    <dnn:USER runat="server" id="dnnUSER" cssClass="_navbar__link _navbar__link--top" Text="Registrar" />
                                </li>
                                <li class="_navbar__item _navbar__item--top _navbar__item--last">
                                    <dnn:MYBOOKINS runat="server" cssClass="_navbar__link _navbar__link--top" id="dnnMYBOOKINS"/>
                                </li>
                            </ul>
                        </li>
                        <li class="_navbar__item _navbar__item--top _navbar__item--last _navbar__item--children">
                            <div class="_navbar__container-link-submenu _navbar__container-link-submenu--top">
                                <a class="_navbar__link _navbar__link--top" href="javascript:void(0)">
                                   <iconify-icon icon="mdi:globe"></iconify-icon> ES <span id="sub-page" class="_navbar__btn-page-desk _navbar__btn-page _navbar__btn-page--top"><iconify-icon icon="uil:angle-down"></iconify-icon></span>
                                </a>
                                <span id="sub-page" class="_navbar__btn-page-mobile _navbar__btn-page _navbar__btn-page--bottom"><iconify-icon icon="uil:angle-down"></iconify-icon></span>
                            </div>
                            <ul class="_navbar__submenu _navbar__submenu--top">
                                <li class="_navbar__item _navbar__item--top">
                                    <a class="_navbar__link _navbar__link--top" href="javascript:void(0)">Español <iconify-icon icon="material-symbols:check"></iconify-icon></a>
                                </li>
                                <li class="_navbar__item _navbar__item--top _navbar__item--last">
                                    <a class="_navbar__link _navbar__link--top" href="https://en.netactica.com/">English</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav> 
            </div>
            <div class="header__menu header__menu--bottom">
                <dnn:MENU ID="LISUSER" MenuStyle="assets/menu/navbar__bottom" runat="server" NodeSelector="*"></dnn:MENU>
            </div>
        </div>
    </header>
