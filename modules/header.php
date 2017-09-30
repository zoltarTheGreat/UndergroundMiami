<!DOCTYPE html>
<?php include($_SERVER['DOCUMENT_ROOT'] . '/environment.php'); ?>
<?php
    require_once 'spotify.class.php';
        
    // Search for an artist by its name
    $artist = Spotify::searchArtist('hometown losers');
        
    // Take a look at the response
    echo '<pre>';
    print_r($artist);
    echo '<pre>';
?>
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

class TableRows extends RecursiveIteratorIterator {
    function __construct($it) {
        parent::__construct($it, self::LEAVES_ONLY);
    }

    function current() {
        return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
    }

    function beginChildren() {
        echo "<tr>";
    }

    function endChildren() {
        echo "</tr>" . "\n";
    }
} 

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
}
?>
