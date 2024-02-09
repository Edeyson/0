$(document).ready(function() {
    // Declare Carousel jquery object
    var owl = $('#owl_1');

    // Carousel initialization
    owl.owlCarousel({
        loop: true,
        margin: 10,
        navSpeed: 500,
        nav: true,
        rewind: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        autoHeight: true,
        autoplay: true,
        // autoWidth: true,
        responsive: {
            0: {
                items: 1
            },
            651: {
                items: 3
            },
            1200: {
                items: 4
            },
        }
    });

    var owl = $('#owl_2');

    // Carousel initialization
    owl.owlCarousel({
        loop: true,
        margin: 10,
        navSpeed: 500,
        nav: true,
        rewind: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        autoHeight: true,
        autoplay: true,
        // autoWidth: true,
        items: 1,
    });

    var owl = $('#owl_3');

    // Carousel initialization
    owl.owlCarousel({
        loop: true,
        margin: 10,
        navSpeed: 500,
        nav: true,
        rewind: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        autoHeight: true,
        autoplay: true,
        // autoWidth: true,
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 1
            },
            1200: {
                items: 3
            },
            1920: {
                items: 4
            },
        }
    });

    var owl = $('#owl_4');

    // Carousel initialization
    owl.owlCarousel({
        loop: true,
        margin: 10,
        navSpeed: 500,
        nav: true,
        rewind: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        autoHeight: true,
        autoplay: true,
        // autoWidth: true,
        items: 1,
    });

    $('.play').on('click', function() {
        owl.trigger('play.owl.autoplay', [3000])
        $(".stop").css("display", "flex");
        $(".play").css("display", "none");
    })
    $('.stop').on('click', function() {
        owl.trigger('stop.owl.autoplay')
        $(".stop").css("display", "none");
        $(".play").css("display", "flex");
    })


    // add animate.css class(es) to the elements to be animated
    function setAnimation(_elem, _InOut) {
        // Store all animationend event name in a string.
        // cf animate.css documentation
        var animationEndEvent = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

        _elem.each(function() {
            var $elem = $(this);
            var $animationType = 'animated ' + $elem.data('animation-' + _InOut);

            $elem.addClass($animationType).one(animationEndEvent, function() {
                $elem.removeClass($animationType); // remove animate.css Class at the end of the animations
            });
        });
    }

    // Fired before current slide change
    owl.on('change.owl.carousel', function(event) {
        var $currentItem = $('.owl-item', owl).eq(event.item.index);
        var $elemsToanim = $currentItem.find("[data-animation-out]");
        setAnimation($elemsToanim, 'out');
    });

    // Fired after current slide has been changed
    var round = 0;
    owl.on('changed.owl.carousel', function(event) {

        var $currentItem = $('.owl-item', owl).eq(event.item.index);
        var $elemsToanim = $currentItem.find("[data-animation-in]");

        setAnimation($elemsToanim, 'in');
    })

    owl.on('translated.owl.carousel', function(event) {
        console.log(event.item.index, event.page.count);

        if (event.item.index == (event.page.count - 1)) {
            if (round < 1) {
                round++
                console.log(round);
            } else {
                owl.trigger('stop.owl.autoplay');
                var owlData = owl.data('owl.carousel');
                owlData.settings.autoplay = false; //don't know if both are necessary
                owlData.options.autoplay = false;
                owl.trigger('refresh.owl.carousel');
            }
        }
    });

});

/**/