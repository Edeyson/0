/* Enable show query string for user to copy link */
var netactica_booking_show_querystring = 0;

/* Pagina de booking Portal */
var netactica_client_portal_bookingAir_page = "/ResultadosAereo.aspx?iurl=";
var netactica_client_portal_bookingHotel_page = "/ResultadosHotel.aspx?iurl=";
var netactica_client_portal_bookingPlan_page = "/ResultadosPaquetes.aspx?iurl=";
var netactica_client_portal_bookingCar_page = "/ResultadosCarro.aspx?iurl=";

/* Used into current_use CMS|local */
var netactica_current_widget_use = "CMS";

/* Dominio para netsuite */
var netactica_netsuite_domain = "http://testing.netactica.net/v221";

/* Direcciones para netbooking */
var netactica_NetAdmin = netactica_netsuite_domain+"/NetAdmin/Login.aspx";
var netactica_NetBooking = netactica_netsuite_domain+"/NetBooking/Search.aspx";
var netactica_NetBookingHotel = netactica_netsuite_domain+"/NetBookingHotel/Search.aspx";
var netactica_NetBookingCar = netactica_netsuite_domain+"/NetBookingCar/Search.aspx";
var netactica_NetPackaging = netactica_netsuite_domain+"/NetPackaging/Search.aspx";
var netactica_NetBookingExtra = netactica_netsuite_domain+"/NetBookingExtra/Search.aspx";
var netactica_NetFulfillment = netactica_netsuite_domain+"/NetFulfillment/Login.aspx";
var netactica_NetCore = netactica_netsuite_domain+"/NetCore/";

/* Direcciones para passengers */
var netactica_netsuite_passengers_air = netactica_netsuite_domain + "/NetBooking/Passengers.aspx";
var netactica_netsuite_passengers_hotel = netactica_netsuite_domain + "/NetBookingHotel/Passengers.aspx";
var netactica_netsuite_passengers_car = netactica_netsuite_domain + "/NetBookingCar/Driver.aspx";
var netactica_netsuite_passengers_plan = netactica_netsuite_domain + "/NetPackaging/Passengers.aspx";
var netactica_netsuite_passengers_extras = netactica_netsuite_domain + "/NetBookingExtra/Passengers.aspx";

/* Parametros aereo */
var netactica_UserService = "Afondo";
var netactica_air_FareType = "Both";
var netactica_enable_FlexiDates = 0;

/* Selección de módulos */
var netactica_show_air = 1;
var netactica_show_hotel = 1;
var netactica_show_packages = 0;
var netactica_show_car = 0;

/* Pagina de copy paste de urls de booking */
var netactica_admin_booking_copy_paste = "Admin/GeneradordeLinks.aspx";

/* Direcciones de paginas de contenido */
var netactica_cms_air_page = "AirBooking.aspx";
var netactica_cms_hotel_page = "HotelBooking.aspx";
var netactica_cms_car_page = "CarBooking.aspx";
var netactica_cms_plan_page = "PackageBooking.aspx";

/* Titulos para las pestañas de Booking */
var netactica_tab_title_air = "A&eacute;reo";
var netactica_tab_title_hotel = "Hoteles";
var netactica_tab_title_plan = "Planes";
var netactica_tab_title_car = "Autos";

/* Módulo por defecto */
/*
	air
	hotel
	plan
	car
	extras
*/
var netactica_module_default = "air";

/* Fecha minima para dateFrom en bookings */
var netactica_booking_minDateFrom = 20;


/* Variables para modulo Newsletter */
var netactica_newsletter_action = "";
var netactica_newsletter_method = "";


/* Variables para modulo TuTiempo */
var netactica_tutiempo_countrycode = "CO";