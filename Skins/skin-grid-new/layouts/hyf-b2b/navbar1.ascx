<div class="header-container1">
    <header id="hder1" class="header1">
        <div class="container-header">
            <div class="item item1">
                <dnn:LOGO runat="server" ID="dnnLOGO" />
            </div>
            <div class="burger">
                <span class="bar"></span><span class="bar"></span><span class="bar"></span>
            </div>
            <div class="navcontainer">
                <div class="item item2">
                    <ul>
                        <li><i class="fa fa-phone"></i><a href="tel:541149641900"> (54)1149641900</a></li>
                        <li><i class="fa fa-envelope-o"></i> <a href="mailto:soportecms@netactica.com"> soportecms@netactica.com</a></li>
                        <li class="dropdown">
                            <i class="fa fa-user-o user-authenticated-icon-mobile"></i>
                            <a class="btn btn-default dropdown-toggle" id="dropdownMenu1">
                                Mi cuenta
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu dropdownMenu1">
                                <div class="defaultdivUserInfo " style="display: none;">
                                    <li>
                                        <p class="defaultUserName">{LoggedUser}</p>
                                    </li>
                                    <li>
                                        <p class="defaultUserName">Puntos {PointsBalance}</p>
                                    </li>
                                    <li>
                                        <p class="defaultUserName">{CloseSession[Html="Cerrar Session"]}</p>
                                    </li>
                                </div>
                                <li role="separator" style="display: none;" class="divider defaultdivUserInfo"></li>
                                <li>
                                    <dnn:LOGIN runat="server" id="dnnLOGIN" cssClass="misReservas" Text="Iniciar Sesión" />
                                </li>
                                <li>
                                    <p class="defaultUserName">
                                        <dnn:USER runat="server" id="dnnUSER" cssClass="misReservas" Text="Registrarse" />
                                    </p>
                                </li>
                                <li>
                                    <dnn:MYBOOKINS runat="server" id="dnnMYBOOKINS" cssClass="misReservas" />
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="item item3">
                    <dnn:MENU ID="MENU" MenuStyle="assets/Menus/MainMenuFlex" runat="server" NodeSelector="*"></dnn:MENU>
                </div>
            </div>
        </div>
    </header>
</div>