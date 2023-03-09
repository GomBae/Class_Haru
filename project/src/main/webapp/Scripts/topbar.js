$(window).scroll(function () {
    var max = 435;
    var val = $(this).scrollTop();
    var topbar = $('#topbar');

    if(max > val && (val / max) < 0.85) {
        topbar.css('background-color', "rgba(00,00,00," + val / max + ")");
    } else {
       topbar.css('background-color', "rgba(00,00,00, 0.85)");
    }
});