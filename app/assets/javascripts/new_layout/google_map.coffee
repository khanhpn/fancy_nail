$ ->
  googleMapShop = new ShopGoogleMap
  lat = Number($("#id_shop_latitude").val())
  lon = Number($("#id_shop_longitude").val())
  googleMapShop.drawMap(lat, lon) if lat.length != undefined


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
