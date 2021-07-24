$(window).load(function()
{
  
    // cache container
    var $container = $('.holder');
    console.log($container);
    // initialize isotope
    $container.isotope({
    // options...
    animationEngine: 'best-available',
    itemSelector: '.card'
    });

    // filter items when filter link is clicked
    $('#menu-categories ol li a').on('click', function() {
    var selector = $(this).data('filter');
    $container.isotope({
    filter: selector
    });

}); });
