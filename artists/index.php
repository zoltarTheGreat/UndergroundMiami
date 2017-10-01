<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	<?php
	try {
		$stmt = $conn->prepare("SELECT profile_pic FROM artists");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach(new RecursiveIteratorIterator(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
			echo '<div class="artists rounded float-left col-6 col-lg-4 card">';
			echo '<div class="front" style="background-image:url(/images/artists/' . $v . ');"></div>';
			echo '<div class="back">' . Spotify::topTracks("0TnOYISbd1XYRBk9myaseg", 3) . '</div>';
			echo '</div>';
		}
	}

	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}

	?>

</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
