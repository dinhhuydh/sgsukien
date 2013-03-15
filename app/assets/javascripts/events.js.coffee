window.addTimezoneToDateTime = () ->
  date = $('form input[id="event_date"]').val()
  time = $('form input[id="event_time"]').val()
  timezone = (new Date()).toString().split('GMT')[1]
  $('form input[id="event_datetime"]').val(date + " " +time + " " + timezone)
