<?php

$curl = curl_init();
$latitude = $_GET["latitude"];
$longitude = $_GET["longitude"];
// $latitude = '12.235588';
// $longitude = '109.19553';

curl_setopt_array($curl, [
	CURLOPT_URL => "https://travel-advisor.p.rapidapi.com/attractions/list-by-latlng?longitude=$longitude&latitude=$latitude&lunit=km&currency=USD&lang=en_US",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "GET",
	CURLOPT_HTTPHEADER => [
		"X-RapidAPI-Host: travel-advisor.p.rapidapi.com",
		"X-RapidAPI-Key: 5ff4ce52e3msh9ca1467ec4f5789p14b878jsndd3447cabc4b"
	],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
	echo "cURL Error #:" . $err;
} else {
	echo $response;
}