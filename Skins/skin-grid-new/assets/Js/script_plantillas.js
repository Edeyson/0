$(document).ready(function() {

    let burger = document.querySelector(".burger");
    let nav1 = document.getElementsByClassName("item2")[0];
    let nav2 = document.getElementsByClassName("item3")[0];
    let navcontainer = document.querySelector('.header-container1 header');
    if (window.innerWidth <= 950) {
        nav1.style.display = 'none'
    }
    burger.addEventListener('click', () => {
        if (nav1.style.display === 'none') {
            nav1.style.display = 'grid'
            nav2.style.display = 'grid'
            burger.style.transform = 'rotate(360deg)'
            navcontainer.classList.add('active')
            setTimeout(() => {
                burger.classList.add('active')
            }, 500);

        } else {
            nav1.style.display = 'none'
            nav2.style.display = 'none'
            burger.style.transform = 'rotate(0deg)'
            navcontainer.classList.remove('active')
            burger.classList.remove('active')
                // containerHeader.style.gridTemplateAreas = '"logo burger"'
        }
    })


    // stiky header
    function stikyheader(a = null) {
        window.onscroll = function() { myFunction(a) };

        // Get the header
        var header = document.querySelector("header:nth-child(1)");

        // Get the offset position of the navbar
        var sticky = header.offsetTop;

        // Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
        function myFunction(a) {
            if (window.pageYOffset > sticky && (navcontainer.classList.contains('active') || a != null)) {
                header.classList.add("sticky");
            } else {
                header.classList.remove("sticky");
            }
        }
    }
    if (window.innerWidth <= 950) {
        stikyheader()

    }else if(document.querySelector("div#siteWrapper.transparent")) {
        stikyheader(1)
    }
    
    // fin stiky header
    let drop = document.getElementsByClassName('dropdownMenu1')[0];
    if(drop){
        if (window.innerWidth <= 950) {
            drop.style.display = "block"          
        }else{
            document.getElementById('dropdownMenu1').addEventListener('click',()=>{
                if (drop.style.display === "block") {
                    drop.style.display = "none"
                }else
                {
                    drop.style.display = "block"
                }
            })
        }

    }

    if (document.querySelector('li.menu-item-has-children')) {
        document.querySelectorAll('li.menu-item-has-children').forEach(li =>{
            li.querySelector('span#sub-page').addEventListener('click',()=>{
            
            
               let ul =  li.querySelector('li.menu-item-has-children ul');
                if(ul.style.display == 'none' || ul.style.display == ''){
                    ul.style.display = 'block'
                }else{
                ul.style.display = 'none'
                }
            })
            })
            
    }    

    let titleSubmit = document.querySelector('ul.dnnActions.dnnClear a[title="Submit"]');
    let titleCancel = document.querySelector('ul.dnnActions.dnnClear a[title="Cancel"]');
    let titleRecords = document.querySelector('ul.dnnActions.dnnClear a[href*="/show/records"]');
    if (titleSubmit) titleSubmit.textContent = "Enviar";
    if (titleCancel) titleCancel.textContent = "Cancelar";
    if (titleRecords) titleRecords.textContent = "Mostrar registros";

/* btn Toggle: */
    function addDarkmodeWidget() {
        let bodyClass = document.body.classList.value;
        if(bodyClass.includes('darkmode--activated')) {
          document.body.classList.value = bodyClass.replace("darkmode--activated","");
          return;
        }
        console.log("paso")
        document.body.classList.add('darkmode--activated');
    }
    if (document.querySelector('.darkmode-toggle')) {
        document.querySelector('.darkmode-toggle')
        .addEventListener('click',()=>{
            addDarkmodeWidget();
        })          
    }
/*end btn Toggle: */

    // let sliderHome = document.querySelector('#BannerPrincipal')
    // if (sliderHome) {
    //     $('#BannerPrincipal').bxSlider({
    //         pager: false,
    //         adaptiveHeight: true,
    //         auto: true,
    //         pause: 5000
    //     });
    // }
})
