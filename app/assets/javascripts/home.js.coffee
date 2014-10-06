$ ->
  $('.curtains').curtain()

  scrollorama = $.scrollorama({
    blocks: '.curtains'
  })

  scrollorama.animate('#home h1', {
    duration:200, property:'left', end:-860
  })

