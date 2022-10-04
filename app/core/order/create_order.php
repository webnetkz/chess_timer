<?php

session_start();

if(!isset($_SESSION['login'])) {
  header("Location: ../../../");
}

include_once "../../libs/Db.php";
$db->query('INSERT INTO orders(manager, `create`) VALUES ("'.$_SESSION['login'].'", "'.date("Y-m-d").'");');

$res = $db->query('SELECT max(`id`) FROM orders');
$res = $res->fetch();

$db->query('INSERT INTO pax(id, adult, all_mans) VALUES ("'.$res[0].'", "1", "1")');

header("Location: ../../../calculator.php?ord=".$res[0]);