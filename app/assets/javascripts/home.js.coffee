$ ->
  $('a.page-scroll').bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate
      scrollTop: $($anchor.attr('href')).offset().top, 1500, 'easeInOutExpo'
      e.preventDefault()

  $('.curtains').curtain({
    scrollSpeed: 400
    curtainLinks: '.page-scroll'
  })

  scrollorama = $.scrollorama({
    blocks: '.curtains'
  })

  scrollorama.animate('#home h1', {
    duration:200, property:'left', end:-860
  })

  scrollorama.animate('.about-content-container', {
    delay:600, duration:900, property:'left', start:-860, end:700
  })

  scrollorama.animate('#contact_info', {
    delay:1500, duration:900, property:'zoom', end:5
  })
