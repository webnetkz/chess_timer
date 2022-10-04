<?php

session_start();

if(isset($_GET['lang']) && !empty($_GET['lang'])) {
  $_SESSION['lang'] = $_GET['lang'];
  header("Location: ".$_GET['url']);
}