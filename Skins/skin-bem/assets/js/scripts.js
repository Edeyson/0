$(document).ready(function() {
    if (document.querySelector('.ModSearchForm2C')) {
        widgetEstructure('.ModSearchForm2C [id*="widget-"]');
        mobileIcon();
    }
//functions for searchForm:
//--------change icons fa----------------.

//how to use?: function > "element","fa fa-iconName"
//example:
// changeIconsTab("#widget-tabs a[href="#hotel"] i","fa fa-bed");

//---------change title------------.

//how to use?: function > "element","title"
//example:
// changeTitle("a[aria-controls='airhotel'] span","Vuelos + Hotel");

//---------checked extra type------------.
// const ExtraType = document.getElementById("chkExtraType_5");
// if(ExtraType){
//     ExtraType.checked = true;
//     console.log("ExtraType", ExtraType.checked);
// }
// and... in styles aply display:none; in element.


})