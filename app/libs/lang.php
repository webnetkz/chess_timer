<?php

session_start();
if(empty($_SESSION['lang'])) {
  $_SESSION['lang'] = "en";
}

$url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$url = explode('?', $url);
$url = $url[0];
 
if(!empty($url)) {
  $page = substr($url, 18, -4);

  if($page == '.kz/calculator') {
    $page = substr($url, 21, -4);
  }
  if($page == '.kz/orders') {
    $page = substr($url, 21, -4);
  }

  if($_SESSION['lang'] == "en") {
    require_once "./public/lang/".$page."En.php";
  }
  if($_SESSION['lang'] == "ru") {
    require_once "./public/lang/".$page."Ru.php";
  }
  if($_SESSION['lang'] == "kz") {
    require_once "./public/lang/".$page."Kz.php";
  }
}



