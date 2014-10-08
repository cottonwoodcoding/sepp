$ ->
  $('a.page-scroll').bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate
      scrollTop: $($anchor.attr('href')).offset().top, 1500, 'easeInOutExpo'
      e.preventDefault()

  $('.curtains').curtain({
    scrollSpeed: 1000
    curtainLinks: '.page-scroll'
  })

  scrollorama = $.scrollorama({
    blocks: '.curtains'
  })

  scrollorama.animate('.home-content', {
    duration:200, property:'left', end:-860
  })

  scrollorama.animate('.home-contact', {
    duration:200, property:'zoom', end:2
  })

  scrollorama.animate('.home-contact', {
    duration:200, property:'left', start:-200, end:200
  })

  scrollorama.animate('.about-content-container', {
    delay:600, duration:300, property:'left', start:-200, end:50
  })

  scrollorama.animate('.about-content-container', {
    delay:500, duration:300, property:'opacity', start:0, end:1
  })

  scrollorama.animate('#contact_info', {
    delay:1200, duration:500, property:'zoom', end:3
  })

  scrollorama.animate('#contact_info', {
    delay:1200, duration:500, property:'opacity', start:0, end:1
  })
