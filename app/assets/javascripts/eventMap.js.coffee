class window.EventMap
  constructor: (elementId, latitude, longitude) ->
    @elementId = elementId
    @defaultLatitude = latitude
    @defaultLongitude = longitude
    @map = null

  initGoogleMap: () =>
    self = this
    mapOptions = {
      center: new google.maps.LatLng(@defaultLatitude, @defaultLongitude),
      zoom: 16,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    @map = new google.maps.Map(document.getElementById(@elementId), mapOptions)
    google.maps.event.addListener(@map, 'click', (event) ->
      self.placeMarker(event.latLng)
    )

  placeMarker: (location) ->
    marker = new google.maps.Marker({
      position: location,
      map: @map
    })
    @map.setCenter(location)
    @setEventLocation(location)

  setEventLocation: (location) ->
    $('#event_location_attributes_latitude').val(location.mb)
    $('#event_location_attributes_longitude').val(location.nb)
