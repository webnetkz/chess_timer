<?php

require_once "../../libs/Db.php";

$countDays = $db->query("SELECT count_days FROM orders WHERE id='".$_GET['ord']."'");
$countDays = $countDays->fetchAll(PDO::FETCH_ASSOC);
$countDays = json_encode($countDays);

$lang = $db->query("SELECT lang FROM orders WHERE id='".$_GET['ord']."'");
$lang = $lang->fetch(PDO::FETCH_ASSOC);
if($lang != null) {
  $idLang = $lang['lang'];
  $lang = $db->query("SELECT * FROM langs WHERE id='".$idLang."'");
  $lang = $lang->fetch(PDO::FETCH_ASSOC);
}
$lang = json_encode($lang);

$country = $db->query("SELECT country FROM orders WHERE id='".$_GET['ord']."'");
$country = $country->fetch(PDO::FETCH_ASSOC);
if($country != null) {
  $idCountry = $country['country'];
  $country = $db->query("SELECT * FROM countries WHERE id='".$idCountry."'");
  $country = $country->fetch(PDO::FETCH_ASSOC);
}
$country = json_encode($country);

$hotel = $db->query("SELECT hotel_class FROM orders WHERE id='".$_GET['ord']."'");
$hotel = $hotel->fetch(PDO::FETCH_ASSOC);
if($hotel != null) {
  $idHotel = $hotel['hotel_class'];
  $hotel = $db->query("SELECT * FROM hotel_stars WHERE id='".$idHotel."'");
  $hotel = $hotel->fetch(PDO::FETCH_ASSOC);
}
$hotel = json_encode($hotel);

$service_class = $db->query("SELECT service_class FROM orders WHERE id='".$_GET['ord']."'");
$service_class = $service_class->fetch(PDO::FETCH_ASSOC);
if($service_class != null) {
  $idServiceClass = $service_class['service_class'];
  $service_class = $db->query("SELECT * FROM service_class WHERE id='".$idServiceClass."'");
  $service_class = $service_class->fetch(PDO::FETCH_ASSOC);
}
$service_class = json_encode($service_class);

$start_date = $db->query("SELECT `start_date` FROM orders WHERE id='".$_GET['ord']."'");
$start_date = $start_date->fetchAll(PDO::FETCH_ASSOC);
$start_date = json_encode($start_date);

$adult = $db->query("SELECT adult FROM pax WHERE id='".$_GET['ord']."'");
$adult = $adult->fetch(PDO::FETCH_ASSOC);
$adult = json_encode($adult);

$child = $db->query("SELECT child FROM pax WHERE id='".$_GET['ord']."'");
$child = $child->fetch(PDO::FETCH_ASSOC);
$child = json_encode($child);

$small_child = $db->query("SELECT small_child FROM pax WHERE id='".$_GET['ord']."'");
$small_child = $small_child->fetch(PDO::FETCH_ASSOC);
$small_child = json_encode($small_child);

$baby = $db->query("SELECT baby FROM pax WHERE id='".$_GET['ord']."'");
$baby = $baby->fetch(PDO::FETCH_ASSOC);
$baby = json_encode($baby);

$guide = $db->query("SELECT guide FROM pax WHERE id='".$_GET['ord']."'");
$guide = $guide->fetch(PDO::FETCH_ASSOC);
$guide = json_encode($guide);

$all_mans = $db->query("SELECT all_mans FROM pax WHERE id='".$_GET['ord']."'");
$all_mans = $all_mans->fetch(PDO::FETCH_ASSOC);
$all_mans = json_encode($all_mans);

$rumming_one = $db->query("SELECT rumming_one FROM pax WHERE id='".$_GET['ord']."'");
$rumming_one = $rumming_one->fetch(PDO::FETCH_ASSOC);
$rumming_one = json_encode($rumming_one);

$rumming_double = $db->query("SELECT rumming_double FROM pax WHERE id='".$_GET['ord']."'");
$rumming_double = $rumming_double->fetch(PDO::FETCH_ASSOC);
$rumming_double = json_encode($rumming_double);

$rumming_triple = $db->query("SELECT rumming_triple FROM pax WHERE id='".$_GET['ord']."'");
$rumming_triple = $rumming_triple->fetch(PDO::FETCH_ASSOC);
$rumming_triple = json_encode($rumming_triple);

$allData = [
  "count_days" => $countDays,
  "lang" => $lang,
  "country" => $country,
  "hotel" => $hotel,
  "service_class" => $service_class,
  "start_date" => $start_date,

  "adult" => $adult,
  "child" => $child,
  "small_child" => $small_child,
  "baby" => $baby,
  "guide" => $guide,
  "all_mans" => $all_mans,
  "rumming_one" => $rumming_one,
  "rumming_double" => $rumming_double,
  "rumming_triple" => $rumming_triple,
];

$allData = json_encode($allData);

echo $allData;