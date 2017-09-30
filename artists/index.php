<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
	we out here arting
	<?php
	try {
		$stmt = $conn->prepare("SELECT profile_pic FROM artists");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach(new RecursiveIteratorIterator(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
				echo '<div class="artists rounded float-left col-12 col-lg-6"><img class="img-fluid" src="/images/artists/' . $v . '" alt=""></div>';
		}
	}
	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}
	?>
</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
