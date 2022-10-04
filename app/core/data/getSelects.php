<?php

require_once "../../libs/Db.php";

$langs = $db->query("SELECT * FROM langs");
$langs = $langs->fetchAll(PDO::FETCH_ASSOC);
$langs = json_encode($langs);

$countries = $db->query("SELECT * FROM countries");
$countries = $countries->fetchAll(PDO::FETCH_ASSOC);
$countries = json_encode($countries);

$serviceClass = $db->query("SELECT * FROM service_class");
$serviceClass = $serviceClass->fetchAll(PDO::FETCH_ASSOC);
$serviceClass = json_encode($serviceClass);

$hotelStars = $db->query("SELECT * FROM hotel_stars");
$hotelStars = $hotelStars->fetchAll(PDO::FETCH_ASSOC);
$hotelStars = json_encode($hotelStars);

$season = $db->query("SELECT * FROM season");
$season = $season->fetchAll(PDO::FETCH_ASSOC);
$season = json_encode($season);


$allData = [
  "langs" => $langs,
  "countries" => $countries,
  "service_class" => $serviceClass,
  "hotel_stars" => $hotelStars,
  "season" => $season,
];
$allData = json_encode($allData);

echo $allData;