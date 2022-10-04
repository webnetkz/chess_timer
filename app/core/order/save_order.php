<?php

session_start();

if(!isset($_SESSION['login']) || !isset($_GET['ord'])) {
  header("Location: ../../../");
}

include_once "../../libs/Db.php";

$idGroup = $db->query('SELECT parent_version FROM orders WHERE id ="'.$_GET['ord'].'"');
$idGroup = $idGroup->fetch(PDO::FETCH_ASSOC);

if(isset($idGroup['parent_version']) && $idGroup['parent_version'] != null) {
  // Получение данных ордера для создание его копии  
  $newId = copy_order($idGroup['parent_version'], $db);
} else {
  // Если копия еще не была создана
  $newId = copy_order($_GET['ord'], $db);
  $db->query("UPDATE orders SET parent_version =".$_GET['ord']." WHERE id=".$_GET['ord']);
}


function copy_order($idGroup, $db) {
  $order = $db->query("SELECT * FROM orders WHERE id=".$_GET['ord']);
  $order = $order->fetch(PDO::FETCH_ASSOC);

  // Валидация данных перед добавлением в БД
  foreach($order as $k => $v) {
    if($v == null) {
      $order[$k] = 0;
    }
  }
  if($order['count_days'] == 0) {
    $order['count_days'] = 1;
    $order['count_pax'] = 1;
  }
  
  $res = $db->query('SELECT max(`id`) FROM orders');
  $res = $res->fetch();
  $newId = $res[0] + 1;


  // Вставка данных нового ордера
  $db->query("INSERT INTO orders (id, manager, `create`, lang, country, count_days, count_pax, service_class, `start_date`, hotel_class, parent_version) VALUES('".$newId."', '".$_SESSION['login']."', '".date("Y-m-d")."', '".$order['lang']."', '".$order['country']."', '".$order['count_days']."', '".$order['count_pax']."', '".$order['service_class']."', '".date("Y-m-d")."', '".$order['hotel_class']."', '".$idGroup."')");

  // Копарование данных о кол-ве пассажиров
  $paxData = $db->query("SELECT * FROM pax WHERE id = ".$_GET['ord']);
  $paxData= $paxData->fetch(PDO::FETCH_ASSOC);
  foreach($paxData as $k => $v) {
    if($v == null) {
      $paxData[$k] = 0;
    }
  }

  $db->query("INSERT INTO pax (id, adult, child, small_child, baby, guide, all_mans, rumming_one, rumming_double, rumming_triple) VALUES(".$newId.", '".$paxData['adult']."', '".$paxData['child']."', '".$paxData['small_child']."', '".$paxData['baby']."', '".$paxData['guide']."', '".$paxData['all_mans']."', '".$paxData['rumming_one']."', '".$paxData['rumming_double']."', '".$paxData['rumming_triple']."')");
  return $newId;
}

header("Location: ../../../calculator.php?ord=".$newId."&msg=Для ордера создана новая версия");