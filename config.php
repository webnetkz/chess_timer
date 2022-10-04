<?php

require_once "./app/libs/Db.php";
$_SESSION['host'] = "https://qazpostexpress";
echo "<script>localStorage.setItem('host', '".$_SESSION['host']."');</script>";

