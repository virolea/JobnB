$(window).scroll(function() {
if ($(this).scrollTop() > $("#client-title").offset().top - 300) {
    $('#wrapper-missions').stop().animate({ bottom: '0px' });
} else {
    $('#wrapper-missions').stop().animate({ bottom: '-500px' });
}
});