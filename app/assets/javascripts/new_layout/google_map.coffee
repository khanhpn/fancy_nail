$ ->
  googleMapShop = new ShopGoogleMap
  lat = Number($("#id_shop_latitude").val().trim())
  lon = Number($("#id_shop_longitude").val().trim())
  googleMapShop.drawMap(lat, lon)


class ShopGoogleMap
  drawMap: (lat, lon) ->
    latlon = new google.maps.LatLng(lat, lon)
    mapProp = {
      center: latlon,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      zoom: 15
    }
    map = new google.maps.Map(document.getElementById("id_google_map"), mapProp)
    marker = new google.maps.Marker({position: latlon, map: map, title: "You are here!"})
