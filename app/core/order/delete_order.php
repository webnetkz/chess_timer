<?php

session_start();

if(!isset($_SESSION['login']) || !isset($_GET['ord'])) {
  header("Location: ../../../");
}

include_once "../../libs/Db.php";

$db->query('DELETE FROM orders WHERE id ="'.$_GET['ord'].'"');

header("Location: ../../../index.php?msg=Ордер удален");