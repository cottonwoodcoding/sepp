$ ->
  $('.curtains').curtain()

  scrollorama = $.scrollorama({
    blocks: '.curtains'
  })

  scrollorama.animate('#home h1', {
    duration:200, property:'left', end:-860
  })

  scrollorama.animate('.about-content-container', {
    delay:700, duration:900, property:'left', start:-860, end:700
  })

  scrollorama.animate('#contact_info', {
    delay:1800, duration:900, property:'zoom', end:5
  })
