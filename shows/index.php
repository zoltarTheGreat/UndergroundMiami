<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/header.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/navbar.php'); ?>
<div id="main" class="container">
<?php
	try {
		$stmt = $conn->prepare("SELECT previewimage FROM shows");
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		foreach(new RecursiveIteratorIterator(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
				echo '<div class="venues rounded float-left col-12 col-lg-6"><img class="img-fluid" src="/images/shows/' . $v . '" alt=""></div>';

		}
	}
	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}
	?>
	whoa dog show it up
</div>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/modules/footer.php'); ?>
