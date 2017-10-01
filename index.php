<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	<center><img src="UndergroundMiami2.png" alt="" height="400" width="600"><br><br></center>
  <p class="lead">See what's happening in Miami's underground</p>
  <p class="lead">
    <a href="/shows" class="btn btn-lg btn-lit">Upcoming shows and concerts</a>
    <a href="/venues" class="btn btn-lg btn-chill">Hot spots in Miami</a>
  </p>
	<br>
	<div id="map">
		<style>
      #map{
        height : 400px;
        width: 100%;
      }
    </style>
	</div>
</div>
<script>
  function initMap(){
    var options = {
      zoom: 8,
      center: {lat:25.7617,lng:-80.1918}
    }

    var map = new google.maps.Map(document.getElementById('map'),options);

    // var infoWindow = new google.maps.InfoWindow({
    //   content:'<h3>Churchhills Pub</h3>'
    // });

    // marker.addListener('click',function(){
    //   infoWindow.open(map,marker);
    // });

    // addMarker({
    //   lat: < ?php echo  ?>,
    //   lon: < ?php echo  ?>
    // })

    <?php
	try {
		$stmt = $conn->prepare("SELECT name,lat,lon,social_link FROM venues");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach ($stmt as $key => $value) {
			echo '<div class="artists float-left col-6 col-lg-4 card">';
			echo '<div class="outy"><div><span class="artist-info">';
			echo '<center><b>' . $value["name"] . "</b></center><br>";
			echo '</span></div></div>';
			echo '<div class="inny" style="background-image:url(/images/venues/' . $value["image"] . ');"></div>';
			echo '</div>';
		}
	
	}



      addMarker(coord{lat: 25.7596208, lng:-80.37439180000001});
      addMarker({lat: 26.2469165, lng:-80.20110239999997});

    //AddMarker Function
    function addMarker(props){
      var marker = new google.maps.Marker({
      position:props.coords,
      map:map
    });
    }
  }
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDEO58rG00GZ1kep12O4Q5_cqQ5-jMkdvY&callback=initMap">
</script>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
