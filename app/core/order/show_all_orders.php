<?php

include_once "./app/libs/Db.php";

if(isset($_GET['page']) && !empty($_GET['page'])) {
  switch($_GET['page']) {
    case '2':
      $res = $db->query('SELECT * FROM orders WHERE id > 50 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '3':
      $res = $db->query('SELECT * FROM orders WHERE id > 100 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '4':
      $res = $db->query('SELECT * FROM orders WHERE id > 150 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '5':
      $res = $db->query('SELECT * FROM orders WHERE id > 200 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '6':
      $res = $db->query('SELECT * FROM orders WHERE id > 250 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '7':
      $res = $db->query('SELECT * FROM orders WHERE id > 300 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '8':
      $res = $db->query('SELECT * FROM orders WHERE id > 350 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '9':
      $res = $db->query('SELECT * FROM orders WHERE id > 400 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    case '10':
      $res = $db->query('SELECT * FROM orders WHERE id > 450 LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
    default:
      $res = $db->query('SELECT * FROM orders LIMIT 50');
      $res = $res->fetchAll(PDO::FETCH_ASSOC);
    break;
  }
} else {
  $res = $db->query('SELECT * FROM orders LIMIT 50');
  $res = $res->fetchAll(PDO::FETCH_ASSOC);
}


$lang = $db->query('SELECT * FROM langs');
$lang = $lang->fetchAll(PDO::FETCH_ASSOC);

$country = $db->query('SELECT * FROM countries');
$country = $country->fetchAll(PDO::FETCH_ASSOC);

$hotel = $db->query('SELECT * FROM hotel_stars');
$hotel = $hotel->fetchAll(PDO::FETCH_ASSOC);

$service = $db->query('SELECT * FROM service_class');
$service = $service->fetchAll(PDO::FETCH_ASSOC);
