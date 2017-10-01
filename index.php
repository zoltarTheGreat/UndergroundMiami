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

    <?php
	try {
		$stmt = $conn->prepare("SELECT name,lat,lon,social_link FROM venues");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach ($stmt as $key => $value) {
			echo 'var markprops = { coords:{lat: ' . $value["lat"] . ', lng: ' . $value["lon"] . '}';
      echo ', content: "<h3><a href="'. $value["social_link"] .'">' . $value["name"] . '</a></h3>" ';
      echo 'addMarker(markprops)';
    }
  }
    catch(PDOException $e) {
      echo "Error: " . $e->getMessage();
    }
  
?>

    //AddMarker Function
    function addMarker(props){
      var marker = new google.maps.Marker({
      position:props.coords,
      map:map
    });

    var infoWindow = new google.maps.InfoWindow({
      content:props.content
    });

    marker.addListener('click',function(){
      infoWindow.open(map,marker);
    });
  }
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDEO58rG00GZ1kep12O4Q5_cqQ5-jMkdvY&callback=initMap">
</script>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
