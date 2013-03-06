window.addTimezoneToDateTime = () ->
  datetime = $('form input[id="event_datetime"]').val()
  timezone = (new Date()).toString().split('GMT')[1]
  $('form input[id="event_datetime"]').attr('type', 'text')
  $('form input[id="event_datetime"]').val(datetime + " " + timezone)
