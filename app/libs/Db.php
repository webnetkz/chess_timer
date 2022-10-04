<?php

// $config = [
// 	'host' => 'srv-pleskdb28.ps.kz:3306',
// 	'db_name' => 'webnetkz_tc',
// 	'db_user' => 'webnetkz_tc',
// 	'db_pass' => 'fepipe7611!!QQ',
// ];

$config = [
	'host' => 'localhost:3306',
	'db_name' => 'tc',
	'db_user' => 'root',
	'db_pass' => '',
];

// Данные для подключения к базе данных
$driver = 'mysql';
$host = $config['host'].':3306';
$db_name = $config['db_name'];
$db_user = $config['db_user'];
$db_pass = $config['db_pass'];
$charset = 'utf8';
$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];

try {
	// Создание обьекта PDO и передача данных
	// для подключения в конструктор класса
	$db = new PDO("$driver:host=$host;dbname=$db_name;charset=$charset",$db_user,$db_pass,$options);
// Отладка ошибок подключения
} catch(PDOException $e) {
	exit('Ошибка подключения к базе данных'.$e);
}



