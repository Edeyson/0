$(document).ready(function() {
    if ($("#slider-banners")) {
        $("#slider-banners").bxSlider({
            border: false
        })
    }



    $("#showUserOptions").click(function() {
        showUserOptions();
    });
    $("#showLangOptions").click(function() {
        showLangOptions();
    });

    function showUserOptions() {
        document.getElementById("CmsDropdown-UO").classList.toggle("show");
        //mostrar link de registrar e iniciar sesión cuando no esta logueado
        addUserOptionsMenu();
    }

    function showLangOptions() {
        document.getElementById("CmsDropdown-LS").classList.toggle("show");
    }

    function addUserOptionsMenu() {
        var urlpage = window.location.href;
        var isnetfulfillment = urlpage.search("NetFulfillment");
        if (isnetfulfillment < 0) {
            if ($(".defaultdivUserInfo").is(":visible")) {
                $(".defaultdivUserAction").css("display", "none");
            } else {
                $(".defaultdivUserAction").css("display", "block");
            }
        } else {
            if ($(".defaultdivUserInfo .defaultUserName:eq(0)").text() != " ") {
                $(".defaultdivUserAction").css("display", "none");
                $(".defaultdivUserInfo").css("display", "block");
            } else {
                $(".defaultdivUserAction").css("display", "block");
                $(".defaultdivUserInfo").css("display", "none");
            }
        }
    }
    $("#btnOptions").click(function(e) {
        e.preventDefault();
        $("#CmsDropdown-UO").addClass("show");
    })



    var langSelected = $("#lang-selected").val();

    var langList = [
        { val: 'es-ES', text: 'Español' },
        { val: 'en-US', text: 'Ingles' },
        { val: 'pt-BR', text: 'Protugues' },
    ]

    langList.forEach(element => {
        if (element.val == langSelected) {
            $("#lang-selected-text").text(element.text)
            $("#CmsDropdown-LS a[data-lang=" + element.val + "]").append('<i class="fa fa-check" aria-hidden="true">');
        }

    });

    $("#lang-mobile-options").change(function() {
        document.location = $(this).val()
    });

    $("#lang-mobile-options").each(function() {
        console.log($(this).attr("data-lang"))
        if ($(this).attr("data-lang") == langSelected) {
            console.log($(this).attr("value"))
        }
    });

    $("nav.main-navigation").on('click', '.caret', function(e) {
        e.preventDefault();
        var enable = $(this).parent().parent().attr("data-enable");

        if (enable === 'false' || enable === undefined) {
            $(this).parent().parent().find(".fa-plus-circle").hide();
            $(this).parent().parent().find(".fa-minus-circle").show();

            $(this).parent().parent().attr("data-enable", "true")

        } else {

            $(this).parent().parent().find(".fa-plus-circle").show();
            $(this).parent().parent().find(".fa-minus-circle").hide();
            $(this).parent().parent().attr("data-enable", "false")

        }

        var submenu = $(this).parent().parent().find(".sub-menu").first();

        $(submenu).slideToggle()



    })
    $(".cms-flex-accordion").on('click', '.title-btn', function(e) {

            e.preventDefault();

            if ($(window).width() < 1025) {
                var accordionId = $(this).attr("data-target");
                var openClass = $(this).attr("class").split(" ");

                if (openClass.indexOf("open") > -1) {
                    $(this).removeClass("open");
                    $(this).find("span").html("+");
                } else {

                    $(this).addClass("open");
                    $(this).find("span").html("-");

                }

                $("#" + accordionId).slideToggle(350).show();
            } else {
                return true;
            }

        })
});



// widgetSearchForm2


$(document).ready(function() {

    function widgetEstructure(widget) {
        $('input:radio[name=AirTripType]').click(function() {
            if ($(this).val() != "MD") {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").addClass("col-md-80");
    
            } else {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").removeClass("col-md-80").addClass("col-md-100");
            }
        });
        if ($(window).width() >= 1024) {
            if ($('input:radio[name=AirTripType]:checked').val() != "MD") {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirCarCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AirCarDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").addClass("col-md-80");
            } else {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AirCarDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").removeClass("col-md-80").addClass("col-md-100");
    
            }
    
            $(`${widget} #divAirHotelCities`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divBusHotelCities`).removeClass("row").addClass("col-md-40");
            $(`${widget} #BusHotelDatesPassengers`).removeClass("row").addClass("col-md-60");
            $(`${widget} #BusHotelDatesPassengers .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #BusHotelDatesPassengers .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #AirHotelDatesRooms`).removeClass("row").addClass("col-md-60");
            $(`${widget} #AirHotelDatesRooms .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #AirHotelDatesRooms .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divAirHotelTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divAirHotelTogglePromoCode .col-lg-4`).addClass("col-md-100");
            $(`${widget} #BtnAirHotel`).removeClass("row").addClass("col-md-100");
            $(`${widget} #divAirHotelSpecialOptionsControl`).removeClass("row");
            $(`${widget} #divAirHotelSpecialOptionsControl`).detach().appendTo('#divAirHotelTogglePromoCode');
    
            $(`${widget} #HotelDestination`).removeClass("row").addClass("col-md-30");
            $(`${widget} #HotelDatesRooms`).removeClass("row").addClass("col-md-70");
            $(`${widget} #HotelDatesRooms .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #HotelDatesRooms .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divHotelTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divHotelTogglePromoCode .col-lg-3`).removeClass("row").addClass("col-md-100");
            $(`${widget} #BtnHotel`).removeClass("row").addClass("col-md-100");
    
    
            $(`${widget} #divExtraDestination`).removeClass("row").addClass("col-md-30");
            $(`${widget} #divExtraDates`).removeClass("row").addClass("col-md-70");
            $(`${widget} #divExtraTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divExtraTogglePromoCode .col-lg-4`).addClass("col-md-100");
            $(`${widget} #BtnExtras`).removeClass("row").addClass("col-md-100");
    
            $(`${widget} #divCarAirports`).removeClass("row").addClass("col-md-30");
            $(`${widget} #divCarAirports #divCarAirportPickup`).addClass("col-md-100");
            $(`${widget} #CarDates`).removeClass("row").addClass("col-md-70");
    
            $(`${widget} #divCarChangeReturn`).removeClass("row").addClass("col-md-50");
            $(`${widget} #BtnCar`).addClass("col-md-100");
            $(`${widget} #BtnCar .col-lg-12`).addClass("col-md-50");
    
            for (var i = 1; i <= 6; i++) {
                $(".divMDFlight" + i + " .divAirCityFrom" + i).addClass("col-md-30");
                $(".divMDFlight" + i + " .divAirCityTo" + i).addClass("col-md-30");
                $(".divMDFlight" + i + " .divAirDateFrom" + i).addClass("col-md-30");
                $("#divAirFlight" + i + "Opt label").remove();
            }
    
            var otrodestinocard = $(`${widget} #divCarChangeReturn`).detach();
            otrodestinocard.prependTo('#BtnCar');
    
            //organizar check
            $("#divAirFlexDates").addClass("col-md-100");
            var datacheck = $(`${widget} #divAirBaggageIncluded`).eq(0).find(".divAirBaggageIncluded").eq(0);
            var datacheck2 = $(`${widget} #divAirBaggageIncluded`).eq(0).find(".divAirBaggageIncluded").eq(1);
            datacheck.prependTo('#divAirFlexDates');
            datacheck2.prependTo('#divAirFlexDates');
    
            $("#divAirCarFlexDates").addClass("col-md-100");
            var datacheckCard = $(`${widget} #divAirCarBaggageIncluded`).eq(0).find(".divAirCarBaggageIncluded").eq(0);
            var datacheckCard2 = $(`${widget} #divAirCarBaggageIncluded`).eq(0).find(".divAirCarBaggageIncluded").eq(1);
            datacheckCard.prependTo('#divAirCarFlexDates');
            datacheckCard2.prependTo('#divAirCarFlexDates');
    
        }        
    }
    if ($('.widget-net-mobileNew')) {
        widgetEstructure('.widget-net-mobileNew'); 
    }
    if ($('.widget-net')) {
        widgetEstructure('.widget-net');
    }



    // setTimeout(() => {
    //     document.querySelector('div#HotelTitle span').innerText = 'Lagomar y Lagosol';
    // }, 1000);










    function widgetEstructureDef(widget) {
        $('input:radio[name=AirTripType]').click(function() {
            if ($(this).val() != "MD") {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").addClass("col-md-80");
    
            } else {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").removeClass("col-md-80").addClass("col-md-100");
            }
        });
        if ($(window).width() >= 1024) {
            if ($('input:radio[name=AirTripType]:checked').val() != "MD") {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirCarCities`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #AirCarDatesPassengers`).removeClass("row").removeClass("col-md-100").addClass("col-md-50");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").addClass("col-md-80");
            } else {
                $(`${widget} #divAirCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusCities`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AirCarDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #AireDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divBusDatesPassengers`).removeClass("row").removeClass("col-md-50").addClass("col-md-100");
                $(`${widget} #divAirSpecialOptionsControl`).removeClass("row").removeClass("col-md-80").addClass("col-md-100");
    
            }
    
            $(`${widget} #divAirHotelCities`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divBusHotelCities`).removeClass("row").addClass("col-md-40");
            $(`${widget} #BusHotelDatesPassengers`).removeClass("row").addClass("col-md-60");
            $(`${widget} #BusHotelDatesPassengers .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #BusHotelDatesPassengers .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #AirHotelDatesRooms`).removeClass("row").addClass("col-md-60");
            $(`${widget} #AirHotelDatesRooms .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #AirHotelDatesRooms .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divAirHotelTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divAirHotelTogglePromoCode .col-lg-4`).addClass("col-md-100");
            $(`${widget} #BtnAirHotel`).removeClass("row").addClass("col-md-100");
            $(`${widget} #divAirHotelSpecialOptionsControl`).removeClass("row");
            $(`${widget} #divAirHotelSpecialOptionsControl`).detach().appendTo('#divAirHotelTogglePromoCode');
    
            $(`${widget} #HotelDestination`).removeClass("row").addClass("col-md-30");
            $(`${widget} #HotelDatesRooms`).removeClass("row").addClass("col-md-70");
            $(`${widget} #HotelDatesRooms .col-lg-9`).removeClass("row").addClass("col-md-60");
            $(`${widget} #HotelDatesRooms .col-lg-3`).removeClass("row").addClass("col-md-40");
            $(`${widget} #divHotelTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divHotelTogglePromoCode .col-lg-3`).removeClass("row").addClass("col-md-100");
            $(`${widget} #BtnHotel`).removeClass("row").addClass("col-md-100");
    
    
            $(`${widget} #divExtraDestination`).removeClass("row").addClass("col-md-30");
            $(`${widget} #divExtraDates`).removeClass("row").addClass("col-md-70");
            $(`${widget} #divExtraTogglePromoCode`).removeClass("row").addClass("col-md-50");
            $(`${widget} #divExtraTogglePromoCode .col-lg-4`).addClass("col-md-100");
            $(`${widget} #BtnExtras`).removeClass("row").addClass("col-md-100");
    
            $(`${widget} #divCarAirports`).removeClass("row").addClass("col-md-30");
            $(`${widget} #divCarAirports #divCarAirportPickup`).addClass("col-md-100");
            $(`${widget} #CarDates`).removeClass("row").addClass("col-md-70");
    
            $(`${widget} #divCarChangeReturn`).removeClass("row").addClass("col-md-50");
            $(`${widget} #BtnCar`).addClass("col-md-100");
            $(`${widget} #BtnCar .col-lg-12`).addClass("col-md-50");
    
            for (var i = 1; i <= 6; i++) {
                $(".divMDFlight" + i + " .divAirCityFrom" + i).addClass("col-md-30");
                $(".divMDFlight" + i + " .divAirCityTo" + i).addClass("col-md-30");
                $(".divMDFlight" + i + " .divAirDateFrom" + i).addClass("col-md-30");
                $("#divAirFlight" + i + "Opt label").remove();
            }
    
            var otrodestinocard = $(`${widget} #divCarChangeReturn`).detach();
            otrodestinocard.prependTo('#BtnCar');
    
            //organizar check
            $("#divAirFlexDates").addClass("col-md-100");
            var datacheck = $(`${widget} #divAirBaggageIncluded`).eq(0).find(".divAirBaggageIncluded").eq(0);
            var datacheck2 = $(`${widget} #divAirBaggageIncluded`).eq(0).find(".divAirBaggageIncluded").eq(1);
            datacheck.prependTo('#divAirFlexDates');
            datacheck2.prependTo('#divAirFlexDates');
    
            $("#divAirCarFlexDates").addClass("col-md-100");
            var datacheckCard = $(`${widget} #divAirCarBaggageIncluded`).eq(0).find(".divAirCarBaggageIncluded").eq(0);
            var datacheckCard2 = $(`${widget} #divAirCarBaggageIncluded`).eq(0).find(".divAirCarBaggageIncluded").eq(1);
            datacheckCard.prependTo('#divAirCarFlexDates');
            datacheckCard2.prependTo('#divAirCarFlexDates');
    
        }        
    }
    if ($('.widgetPrueba')) {
        widgetEstructureDef('.widgetPrueba');
    }
});

// fin widgetSearchForm2