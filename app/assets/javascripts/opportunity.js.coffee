$('.carousel').carousel interval: 4000

$(document).on 'click', '.right', (e) ->
  $('.carousel').carousel('next')

$(document).on 'click', '.left', (e) ->
  $('.carousel').carousel('prev')
