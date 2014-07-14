$ =>

  setupInitialMapView = (lon = 22.269102, lat = 114.184457, zoom = 13) =>
    @map = L.map('map').setView([lon, lat], zoom)

    L.tileLayer('http://{s}.tiles.mapbox.com/v3/nwre.i640d78h/{z}/{x}/{y}.png', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18
    }).addTo(map)

  showMarker = (lon, lat, map) -> L.marker([lon, lat]).addTo(map)

  panMap = (lon, lat, map) -> map.panTo([lon, lat])

  markRestaurants = (map) ->

    restaurants = $('.restaurant')

    for r in restaurants
      r = $(r)
      lon = r.data('lon')
      lat = r.data('lat')
      showMarker(lon, lat, map)

  setupInitialMapView()
  markRestaurants(map)
  # showMarker(51.5, -0.09, map)