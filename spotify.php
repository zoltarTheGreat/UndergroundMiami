<?php
include($_SERVER['DOCUMENT_ROOT'] . '/environment.php');

class Spotify
{
	public static function search($search, $item_type)
	{
			//   search can be: any string
			//item type can be: album, artist, track, playlist
			switch ($item_type) {
				case 'album':
					break;
				case 'artist':
					break;
				case 'track':
					break;
				case 'playlist':
					break;

				default:
					return "Invalid item type, second parameter to search() must be 'album', 'artist', 'track', or 'playlist'";
					break;
			}

			// Get cURL resource
			$curl = curl_init();
			curl_setopt_array($curl, array(
			    CURLOPT_RETURNTRANSFER => true,
			    CURLOPT_URL => 'https://api.spotify.com/v1/search?q=' . str_replace(' ', '+', $search) . '&type=' . $item_type,
			    CURLOPT_USERAGENT => 'curl',
					CURLOPT_HTTPHEADER => ['Accept: application/json','Authorization: Bearer ' . "SPOTIFY_OAUTH" . '']
			));
			// Send the request & save response to $resp
			$resp = curl_exec($curl);
			// Close request to clear up some resources
			curl_close($curl);
			return $resp;
	}

	public static function topTracks($spotify_id, $amount)
	{
			$curl = curl_init();
			curl_setopt_array($curl, array(
			    CURLOPT_RETURNTRANSFER => true,
			    CURLOPT_URL => 'https://api.spotify.com/v1/artists/' . $spotify_id . '/top-tracks?country=US',
			    CURLOPT_USERAGENT => 'curl',
					CURLOPT_HTTPHEADER => ['Accept: application/json', 'Authorization: Bearer ' . $_ENV["SPOTIFY_OAUTH"]]
			));
			$resp = curl_exec($curl);
			curl_close($curl);

			$json = json_decode($resp, true);
			$result = [];

			if (!isset($amount) || !is_numeric($amount) || $amount > 9) {
				$amount_of_top_songs = sizeof($json['tracks']);
			} else {
				$amount_of_top_songs = $amount;
			}

			for ($i=0; $i < $amount_of_top_songs; $i++) {
				array_push($result , '<a href="' . $json['tracks'][$i]["external_urls"]["spotify"] . '">' . $json['tracks'][$i]["name"] . '</a>');
			}

			return implode("<br class='break-songs'>", $result);
	}

	public static function getTopArt($spotify_id)
	{
			$curl = curl_init();
			curl_setopt_array($curl, array(
			    CURLOPT_RETURNTRANSFER => true,
			    CURLOPT_URL => 'https://api.spotify.com/v1/artists/' . $spotify_id . '/top-tracks?country=US',
			    CURLOPT_USERAGENT => 'curl',
					CURLOPT_HTTPHEADER => ['Accept: application/json', 'Authorization: Bearer ' . $_ENV["SPOTIFY_OAUTH"]]
			));
			$resp = curl_exec($curl);
			curl_close($curl);

			$json = json_decode($resp, true);


			if (!isset($amount) || !is_numeric($amount) || $amount > 9) {
				$amount_of_top_songs = sizeof($json['tracks']);
			} else {
				$amount_of_top_songs = $amount;
			}

			if (!isset($json['tracks'][0]["album"]['images'][0]['url'])) {
				return false;
			}

			return $json['tracks'][0]["album"]['images'][0]['url'];
	}
}

?>
