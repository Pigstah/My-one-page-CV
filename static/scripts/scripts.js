$(".navbar-toggle").click(function() {
	$(".navbar-toggle").toggleClass("expand");
	$(".main-nav").toggleClass("active");
});

$(".nav-links").click(function() {
	$(".main-nav").removeClass("active")
});

$(".logo").click(function() {
	$(".main-nav").removeClass("active")
});
