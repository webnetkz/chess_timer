<?php

session_start();

if(isset($_POST['login']) && !empty($_POST['login'])) {
  if(isset($_POST['pass']) && !empty($_POST['pass'])) {
    $login = trim(htmlspecialchars($_POST['login']));
    $pass = trim(htmlspecialchars($_POST['pass']));

    include_once "../../libs/Db.php";
    
    $res = $db->query('SELECT user FROM users WHERE user ="'.$_POST['login'].'";');
    $res = $res->fetch(PDO::FETCH_ASSOC);
    
    if($res) {
      $res = $db->query('SELECT user FROM users WHERE user ="'.$pass.'";');
      $res = $res->fetch(PDO::FETCH_ASSOC);
      if($res) {
        $_SESSION['login'] = $login;
        header("Location: ".$_GET['url']);
      } else {
        header("Location: ".$_GET['url']."?msg=Не верный пароль");  
      }

    } else {
      header("Location: ".$_GET['url']."?msg=Не верный логин");
    }
  } else {
    header("Location: ".$_GET['url']."?msg=Введите пароль");
  } 
} else {
  header("Location: ".$_GET['url']."?msg=Введите логин");
}