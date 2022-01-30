// In this example, we center the map, and add a marker, using a LatLng object
// literal instead of a google.maps.LatLng object. LatLng object literals are
// a convenient way to add a LatLng coordinate and, in most cases, can be used
// in place of a google.maps.LatLng object.
let map;

function initMap() {
  const mapOptions = {
    zoom: 12,
    center: { lat: 41.8239, lng: -71.4128 },
  };

  map = new google.maps.Map(document.getElementById("map"), mapOptions);
  navigator.geolocation.getCurrentPosition(showPosition);

  const marker = new google.maps.Marker({
    // The below line is equivalent to writing:
    // position: new google.maps.LatLng()
    position: { lat: 41.8239, lng: -71.4128 },
    map: map,
  });

  function showPosition(position) {
    var markerPosition={};
    markerPosition.lat=position.coords.latitude;
    markerPosition.lng=position.coords.longitude;

    // Create a marker and place it on the map
    var marker = new google.maps.Marker({
      position: markerPosition,
      map: map
    });
  }
  // You can use a LatLng literal in place of a google.maps.LatLng object when
  // creating the Marker object. Once the Marker object is instantiated, its
  // position will be available as a google.maps.LatLng object. In this case,
  // we retrieve the marker's position using the
  // google.maps.LatLng.getPosition() method.
  const infowindow = new google.maps.InfoWindow({
    content: "<p>Marker Location:" + marker.getPosition() + "</p>",
  });

  google.maps.event.addListener(marker, "click", () => {
    infowindow.open(map, marker);
  });
}
