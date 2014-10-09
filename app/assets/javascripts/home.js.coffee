$ ->
  mapBuilt = false

  $('a.page-scroll').bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate
      scrollTop: $($anchor.attr('href')).offset().top, 1500, 'easeInOutExpo'
      e.preventDefault()

  if $('.curtains').is ':visible'
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
      delay:200, duration:200, property:'zoom', end:2
    })

    scrollorama.animate('.home-contact', {
      duration:200, property:'left', start:-200, end:200
    })

    scrollorama.animate('.about-office', {
      delay:20, duration: 200, property:'opacity', start:0, end:1
    })

    scrollorama.animate('.about-content-container', {
      delay:600, duration:300, property:'left', start:-200, end:50
    })

    scrollorama.animate('.about-content-container', {
      delay:500, duration:300, property:'opacity', start:0, end:1
    })

    scrollorama.animate('.details', {
      delay:1200, duration:500, property:'opacity', start:0, end:1
    })

    scrollorama.animate('#scroll_message', {
      duration:75, property:'opacity', start:1, end:0
    })

    scrollorama.animate('.doc-image', {
      delay:900, duration:75, property:'opacity', start:0, end:1
    })

    scrollorama.animate('.doc-image', {
      delay:900, duration:75, property:'top', start:-300, end:-100
    })

    buildMap = ->
      handler = Gmaps.build("Google")
      handler.buildMap
        internal:
          id: "map"
      , ->
        marker = handler.addMarker({
          lat: 45.404174
          lng: -122.798982
        })
        handler.map.centerOn(marker)
        handler.getMap().setZoom(14)
      mapBuilt = true

  $('#show_map').on 'click', (e) ->
    e.preventDefault()
    if $('#map').is(':visible')
      $('#map').addClass('hidden')
    else
      buildMap() unless mapBuilt
      $('#map').removeClass('hidden')


