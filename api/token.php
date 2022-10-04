<?php

header('Content-type: application/json; charset=utf-8');

if(isset($_POST) && !empty($_POST)) {
  if(isset($_POST['hash_code']) && !empty($_POST['hash_code'])) {
    $allHeaders = getallheaders();
    
    echo '<pre>';
    var_dump($allHeaders);

    require_once "../app/libs/Db.php";


    $order = [
      "order" => $order,
      "pax" => $pax,
      "days" => $days
    ];
    $order = json_encode($order);
    echo $order;
  } 
}
