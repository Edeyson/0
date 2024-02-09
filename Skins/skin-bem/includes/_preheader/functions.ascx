
    <script>
        // function replaceUrl(url){
        //     return url.href.replace(`${window.location.origin}/`,'')
        //     .replace('https://','')
        //     .replace('http://','')
        //     .replace('/','')
        // }
        // const UrlPhones = null || document.querySelectorAll("header a[href*='//tel']");
        // const UrlScript = null || document.querySelectorAll("header a[href*='//javascript']");
        // if (UrlPhones != null && UrlPhones[0]) {UrlPhones.forEach(UrlPhones => UrlPhones.href = replaceUrl(UrlPhones))};
        // if (UrlScript != null && UrlScript[0]) {UrlScript.forEach(UrlScript => UrlScript.href = replaceUrl(UrlScript))};
        // if (UrlScript != null && UrlScript[0]) {UrlScript.forEach(UrlScript => UrlScript.href = replaceUrl(UrlScript))};
        //DisplayName in link header
        let DisplayName = '';
        DisplayName = DisplayName.includes(' ') ? DisplayName.split(' ')[0] : DisplayName;
        document.querySelectorAll("header a").forEach((a) => {
                if (a.textContent.includes("[User:DisplayName]")) {
                    a.innerHTML = DisplayName != ""
                        ? a.innerHTML.replace("[User:DisplayName]",`${DisplayName}`)
                        : a.innerHTML.replace("[User:DisplayName]","Mi Cuenta");
                    return;
                }
            })
    </script>
    <script>
        function ArrowRemove(className){
            const arrowSubPage = null || document.querySelectorAll(`header ${className}`);
            if(arrowSubPage != null && arrowSubPage[0]){
                arrowSubPage.forEach( arrow => arrow.remove() )
            }
        }
        if(window.innerWidth <= 1024) {
            ArrowRemove('._navbar__btn-page-desk');
        }else {
            ArrowRemove('._navbar__btn-page-mobile');
        }
    </script>
    
    <script>
        if(window.innerWidth <= 1024){
            // Declare a fragment:
            var fragment = document.createDocumentFragment();
            // Append desired element to the fragment:
            fragment.appendChild(document.querySelector('.header__menu--top'));
            document.querySelector('.header__container').appendChild(fragment);
        }
    </script>

    <!-- init iconify -->
    <script>
        import 'iconify-icon';
    </script>