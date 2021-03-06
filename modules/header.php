<!DOCTYPE html>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/environment.php'); ?>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/spotify.php'); ?>
<html>
	<head>
		<meta charset="utf-8">
		<title>Underground Miami</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="/css/template.css" rel="stylesheet">
	</head>
	<body>

<?php

$dbstatus="disconnected";

try {
	$conn = new PDO("mysql:host=$DATABASE_HOSTNAME_ADDRESS;dbname=$DATABASE_NAME", $DATABASE_USER, $DATABASE_PASSWORD);
	// set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$dbstatus="connected";
}
catch(PDOException $e)
{
	$dbstatus="failed, " . $e->getMessage();
	// echo $dbstatus;
}
?>
