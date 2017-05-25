$ ->
  googleMapShop = new ShopGoogleMap
  lat = if $("#id_shop_latitude").length > 0 then Number($("#id_shop_latitude").val()) else 0
  lon = if $("#id_shop_latitude").length > 0 then Number($("#id_shop_longitude").val()) else 0

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
    marker = new google.maps.Marker({
      position: latlon,
      map: map,
      title: "Fancy Nails",
      url: "https://www.google.com/maps/place/Fancy+Nails+of+Sunshine+Square/@26.5141244,-80.0613791,15z/data=!4m5!3m4!1s0x0:0x33b2c700c082fa06!8m2!3d26.5141244!4d-80.0613791"
    })
    google.maps.event.addListener marker, 'click', () ->
      window.location.href = marker.url

