<?php

header('Content-type: application/json; charset=utf-8');

if(isset($_SERVER["REQUEST_METHOD"]) && !empty($_SERVER["REQUEST_METHOD"])) {
  if(isset($_SERVER["REQUEST_METHOD"]) && !empty($_SERVER["REQUEST_METHOD"] == "GET")) {
    if(isset($_GET['id']) && !empty($_GET['id'])) {
      require_once "../app/libs/Db.php";

      $order = $db->query("SELECT * FROM orders WHERE id =".$_GET['id']);
      $order = $order->fetch(PDO::FETCH_ASSOC);

      $pax = $db->query("SELECT * FROM pax WHERE id =".$_GET['id']);
      $pax = $pax->fetch(PDO::FETCH_ASSOC);

      $days = $db->query("SELECT * FROM order_days WHERE id =".$_GET['id']);
      $days = $days->fetch(PDO::FETCH_ASSOC);

      $order = [
        "order" => $order,
        "pax" => $pax,
        "days" => $days
      ];
      $order = json_encode($order);
      echo $order;
    }
  }
  

}
