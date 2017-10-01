<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	<?php
	try {
		$artist_id = $_GET["id"];
		$stmt = $conn->prepare("SELECT profile_pic,spotify_id,genre,name,bio,links_set FROM artists WHERE id = " . $artist_id);
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach ($stmt as $key => $value) {
			echo '<div class="artists artist-view col-12 col-lg-12 card">';
			echo '<div class="inny float-left col-12 col-lg-6" style="background-image:url(/images/artists/' . $value["profile_pic"] . ');"></div>';

			echo '<div class="ollie-outy float-right col-12 col-lg-6 card" style="background-image:url(' . Spotify::getTopArt($value["spotify_id"]) . ')"><br>';
			echo '<div><span>';
			echo '<center><h3>' . $value["name"] . "</h3> </center><br>";
			if (!isset($value["spotify_id"]) || trim($value["spotify_id"]) == "" || $value["spotify_id"] == -1 || $value["spotify_id"] == 0) {
				echo '<h4>Biography: </h4>' . $value["bio"] . "<br><br>";
			}else {
				echo '<h4>Top Songs: </h4>' . Spotify::topTracks($value["spotify_id"], 3);
				echo '<br><br><h4>Genre: </h4>' . $value["genre"] . "<br><br>";
				echo '<h4>Biography: </h4>' . $value["bio"] . "<br><br>";
				echo '<br><b><img class="spotify-icon" src="/images/spotify.png"> <a href="https://open.spotify.com/artist/' . $value["spotify_id"] . '">View on Spotify</a></b>';
			}
			echo '<br><b><img class="facebook-icon" src="/images/facebook.png"> <a href="' . $value["links_set"] . '">View on Facebook</a></b><br>';
			echo '</span></div></div></div>';

		}
	}

	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}

	?>

</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
