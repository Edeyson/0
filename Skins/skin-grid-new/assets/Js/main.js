$(function() {

    $('.btn-volver-arriba').click(function() {
        $('body, html').animate({
            scrollTop: '0px'
        }, 300);
    });

    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('.btn-volver-arriba').slideDown(300);
        } else {
            $('.btn-volver-arriba').slideUp(300);
        }
    });

});