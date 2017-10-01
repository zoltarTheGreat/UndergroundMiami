<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	<?php
	try {
		$stmt = $conn->prepare("SELECT name,artists_set,photo FROM graffiti");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach ($stmt as $key => $value) {
			echo '<div class="artists float-left col-6 col-lg-4 card">';
			echo '<div class="outy"><div><span class="artist-info">';
			echo '<center><h5>' . $value["name"] . "</h5><br>";
			echo 'by<b>' . $value["artists_set"] . "</b><br><br><br>";
			echo '<h5><a href="/images/graffiti/' . $value["photo"] . '">Open photo</a></h5></center><br>';
			echo '</span></div></div>';
			echo '<div class="inny" style="background-image:url(/images/graffiti/' . $value["photo"] . ');"></div>';
			echo '</div>';
		}
	}

	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}

	?>

</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
