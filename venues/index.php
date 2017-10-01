<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	<?php
	try {
		$stmt = $conn->prepare("SELECT name,addr,image,description FROM venues");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach ($stmt as $key => $value) {
			echo '<div class="artists float-left col-6 col-lg-4 card">';
			echo '<div class="outy"><div><span class="artist-info">';
			echo '<center><b>' . $value["name"] . "</b></center><br>";
			echo $value["addr"] . "<br><br>";
			echo '<span class="venue-desc">' . $value["description"] . "</span><br>";
			echo '</span></div></div>';
			echo '<div class="inny" style="background-image:url(/images/venues/' . $value["image"] . ');"></div>';
			echo '</div>';
		}
		// foreach(new RecursiveIteratorIterator(new RecursiveArrayIterator($stmt)) as $k=>$v) {
		// 	echo '<div class="artists float-left col-6 col-lg-4 card">';
		// 	echo '<div class="outy"><div><span class="artist-info">';
		// 	echo '<b>Top Song: </b>' . Spotify::topTracks("0TnOYISbd1XYRBk9myaseg", 1);
		// 	echo '</span></div></div>';
		// 	echo '<div class="inny" style="background-image:url(/images/artists/' . $v . ');"></div>';
		// 	echo '</div>';
		// }
	}

	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}

	?>

</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
