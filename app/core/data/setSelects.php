<?php

if(isset($_GET['type'])) {
  require_once "../../libs/Db.php";

  if(isset($_GET['type'])) {
    if($_GET['type'] == "count_days") {
      $db->query("DELETE * FROM `days` WHERE id =".$_GET['ord']);

      while($_GET['v']) {
        $db->query("INSERT INTO order_days(`d`, `order`) VALUES('".$_GET['v']."', '".$_GET['ord']."');");
        $_GET['v']--;
      }

      $db->query('UPDATE orders SET '.$_GET['type'].'="'.$_GET['v'].'" WHERE id="'.$_GET['ord'].'"');
    }

    if($_GET['type'] == "adult" || $_GET['type'] == "child" || $_GET['type'] == "small_child" || $_GET['type'] == "baby" || $_GET['type'] == "guide" || $_GET['type'] == "all_mans" || $_GET['type'] == "rumming_one" || $_GET['type'] == "rumming_double"  || $_GET['type'] == "rumming_triple") {
      $db->query('UPDATE pax SET '.$_GET['type'].'="'.$_GET['v'].'" WHERE id="'.$_GET['ord'].'"');
    } else {
      $db->query('UPDATE orders SET '.$_GET['type'].'="'.$_GET['v'].'" WHERE id="'.$_GET['ord'].'"');
    }
  }
}
