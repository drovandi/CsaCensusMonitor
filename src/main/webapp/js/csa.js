$(function () {
    //Start metis menu 
    $('#side-menu').metisMenu({
        toggle: false
    });

});

//Set menu active
function setMenuActive(id){
    
    //Clean up
    $('ul.nav a').each(function(){
        var element = $(this).removeClass('active').parent().parent().removeClass('in').parent();
        if (element.is('li')) {
            element.removeClass('active');
        }
    });
    
    $("#" + id).addClass("active");
    $("#" + id + " a").addClass('active').parent().parent().addClass('in').parent();
}