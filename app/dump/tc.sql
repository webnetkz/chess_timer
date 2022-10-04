-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2022 at 02:23 PM
-- Server version: 5.7.33-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tc`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `result` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `result`, `code2`) VALUES
(1, 'Пока не известно', 'none'),
(2, 'Смешанная группа', 'xx'),
(3, 'Казахстан', 'kz'),
(4, 'Россия', 'ru'),
(5, 'Singapore', 'sg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_stars`
--

CREATE TABLE `hotel_stars` (
  `id` int(11) UNSIGNED NOT NULL,
  `result` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_stars`
--

INSERT INTO `hotel_stars` (`id`, `result`) VALUES
(1, 'Не требуется'),
(2, 'Отель 3*'),
(3, 'Отель 4*'),
(4, 'Отель 5*'),
(5, 'Другое');

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `result` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `result`, `code2`) VALUES
(1, 'Пока не известно', 'none'),
(2, 'Смешанный', 'xx'),
(3, 'English', 'en'),
(4, 'Русский', 'ru'),
(5, 'Қазақ', 'kz');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) UNSIGNED NOT NULL,
  `result` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `result`) VALUES
(1, 'Абай'),
(2, 'Айтеке-Би'),
(3, 'Акколь\r\n'),
(4, 'Аксай\r\n'),
(5, 'Аксу\r\n'),
(6, 'Аксукент\r\n'),
(7, 'Актау\r\n'),
(8, 'Актобе\r\n'),
(9, 'Алга\r\n'),
(10, 'Алматы\r\n'),
(11, 'Алтай\r\n'),
(12, 'Аральск\r\n'),
(13, 'Аркалык\r\n'),
(14, 'Арысь'),
(15, 'Атырау\r\n'),
(16, 'Аягоз\r\n'),
(17, 'Байконыр\r\n'),
(18, 'Балхаш\r\n'),
(19, 'Бейнеу\r\n'),
(20, 'Глубокое\r\n'),
(21, 'Есик'),
(22, 'Жанакорган\r\n'),
(23, 'Жанаозен\r\n'),
(24, 'Жаркент\r\n'),
(25, 'Жезказган\r\n'),
(26, 'Жетыбай'),
(27, 'Жетысай\r\n'),
(28, 'Житикара\r\n'),
(29, 'Зачаганск\r\n'),
(30, 'Кандыагаш\r\n'),
(31, 'Капшагай\r\n'),
(32, 'Караганда\r\n'),
(33, 'Каратау'),
(34, 'Каскелен\r\n'),
(35, 'Кентау\r\n'),
(36, 'Кокшетау\r\n'),
(37, 'Кордай\r\n'),
(38, 'Костанай\r\n'),
(39, 'Косшы'),
(40, 'Кульсары\r\n'),
(41, 'Кызылорда\r\n'),
(42, 'Ленгер\r\n'),
(43, 'Лисаковск\r\n'),
(44, 'Мерке\r\n'),
(45, 'Нур-Султан'),
(46, 'Павлодар\r\n'),
(47, 'Петропавловск\r\n'),
(48, 'Риддер\r\n'),
(49, 'Рудный\r\n'),
(50, 'Сарань\r\n'),
(51, 'Сарыагаш\r\n'),
(52, 'Сатпаев\r\n'),
(53, 'Семей'),
(54, 'Степногорск\r\n'),
(55, 'Талгар\r\n'),
(56, 'Талдыкорган\r\n'),
(57, 'Тараз\r\n'),
(58, 'Текели\r\n'),
(59, 'Темиртау'),
(60, 'Тобыл\r\n'),
(61, 'Туркестан\r\n'),
(62, 'Узынагаш\r\n'),
(63, 'Уральск\r\n'),
(64, 'Усть-Каменогорск\r\n'),
(65, 'Ушарал\r\n'),
(66, 'Уштобе\r\n'),
(67, 'Хромтау'),
(68, 'Чунджа\r\n'),
(69, 'Шардара\r\n'),
(70, 'Шахтинск\r\n'),
(71, 'Шелек\r\n'),
(72, 'Шемонаиха\r\n'),
(73, 'Шетпе'),
(74, 'Шиели\r\n'),
(75, 'Шу\r\n'),
(76, 'Шымкент\r\n'),
(77, 'Щучинск\r\n'),
(78, 'Экибастуз');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `manager` int(4) NOT NULL,
  `create` date NOT NULL,
  `lang` smallint(2) DEFAULT NULL,
  `country` smallint(2) DEFAULT NULL,
  `count_days` smallint(2) DEFAULT NULL,
  `count_pax` smallint(3) DEFAULT NULL,
  `service_class` smallint(2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `hotel_class` smallint(2) DEFAULT NULL,
  `parent_version` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `manager`, `create`, `lang`, `country`, `count_days`, `count_pax`, `service_class`, `start_date`, `hotel_class`, `parent_version`) VALUES
(1, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 123, '2022-09-22', 0, 0, 1, 0, 0, '2022-09-22', 0, 3),
(5, 123, '2022-09-22', 0, 0, 1, 0, 0, '2022-09-22', 0, 3),
(6, 123, '2022-09-22', 0, 0, 2, 0, 0, '2022-09-22', 0, 1),
(7, 123, '2022-09-22', 0, 0, 1, 0, 0, '2022-09-22', 0, 1),
(8, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 123, '2022-09-22', 3, 0, 1, 0, 0, '2022-09-22', 0, 8),
(10, 123, '2022-09-22', 0, 0, 2, 0, 0, '2022-09-22', 0, 1),
(11, 123, '2022-09-22', 0, 0, 2, 0, 0, '2022-09-22', 0, 1),
(12, 123, '2022-09-22', 0, 0, 2, 0, 0, '2022-09-22', 0, 1),
(13, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 13),
(15, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 15),
(18, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 15),
(19, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 19),
(21, 123, '2022-09-22', 0, 0, 1, 1, 2, '2022-09-22', 0, 19),
(22, 123, '2022-09-22', 0, 0, 1, 1, 3, '2022-09-22', 0, 19),
(23, 123, '2022-09-22', 0, 0, 1, 1, 3, '2022-09-22', 0, 19),
(24, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(26, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(27, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(28, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(29, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(30, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(31, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(32, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(33, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(34, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(35, 123, '2022-09-22', 0, 0, 5, 1, 0, '2022-09-22', 0, 24),
(36, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 8),
(37, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 8),
(38, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 8),
(39, 123, '2022-09-22', 0, 0, 1, 0, 0, '2022-09-22', 0, 8),
(40, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 40),
(42, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 40),
(43, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 40),
(44, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 44),
(46, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46),
(47, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 46),
(48, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 46),
(49, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49),
(50, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 49),
(51, 123, '2022-09-22', 0, 0, 5, 1, 0, '2022-09-22', 0, 24),
(52, 123, '2022-09-22', 0, 0, 5, 1, 0, '2022-09-22', 0, 24),
(53, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 24),
(54, 123, '2022-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54),
(55, 123, '2022-09-22', 0, 0, 1, 1, 0, '2022-09-22', 0, 54),
(57, 123, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 123, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 123, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59),
(60, 123, '2022-09-23', 0, 0, 14, 1, 0, '2022-09-23', 0, 59),
(61, 123, '2022-09-23', 0, 0, 1, 1, 0, '2022-09-23', 0, 59),
(62, 123, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 123, '2022-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63),
(64, 123, '2022-09-23', 0, 0, 24, 1, 0, '2022-09-23', 0, 63),
(66, 123, '2022-09-23', 0, 0, 30, 1, 0, '2022-09-23', 0, 63),
(67, 123, '2022-09-23', NULL, NULL, 4, NULL, NULL, NULL, NULL, 67),
(68, 123, '2022-09-23', 0, 0, 4, 0, 0, '2022-09-23', 0, 67);

-- --------------------------------------------------------

--
-- Table structure for table `order_days`
--

CREATE TABLE `order_days` (
  `id` int(11) UNSIGNED NOT NULL,
  `d` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locations` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_days`
--

INSERT INTO `order_days` (`id`, `d`, `order`, `locations`) VALUES
(1, '1', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pax`
--

CREATE TABLE `pax` (
  `id` int(11) UNSIGNED NOT NULL,
  `adult` int(3) DEFAULT NULL,
  `child` int(3) DEFAULT NULL,
  `small_child` int(3) DEFAULT NULL,
  `baby` int(3) DEFAULT NULL,
  `guide` int(3) DEFAULT NULL,
  `all_mans` int(4) DEFAULT NULL,
  `rumming_one` int(3) DEFAULT NULL,
  `rumming_double` int(3) DEFAULT NULL,
  `rumming_triple` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pax`
--

INSERT INTO `pax` (`id`, `adult`, `child`, `small_child`, `baby`, `guide`, `all_mans`, `rumming_one`, `rumming_double`, `rumming_triple`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(5, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(6, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(8, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(9, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(12, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(13, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(14, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(15, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(16, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(17, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(18, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(19, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(20, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(21, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(22, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(23, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(24, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(25, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(26, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(27, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(28, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(29, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(30, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(31, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(32, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(33, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(34, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(35, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(36, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(37, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(38, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(39, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(40, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(41, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(42, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(43, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(44, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(45, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(46, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(47, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(48, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(49, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(50, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(51, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(52, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(53, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(54, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(55, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(56, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(57, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(58, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(59, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(60, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(61, 1, 0, 0, 0, 0, 1, 0, 0, 0),
(62, 12, 12, 2, NULL, NULL, 26, NULL, NULL, NULL),
(63, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL),
(64, 1, 4, 4, 3, 0, 12, 1, 1, 0),
(65, 1, 4, 4, 3, 0, 12, 1, 1, 0),
(66, 1, 4, 4, 3, 0, 12, 1, 1, 0),
(67, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(68, 1, 0, 0, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `id` int(11) UNSIGNED NOT NULL,
  `result` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`id`, `result`) VALUES
(1, 'Рассчитать без точных дат'),
(2, 'Высокий сезон (март-октябрь)'),
(3, 'Низкий сезон (октябрь-март)');

-- --------------------------------------------------------

--
-- Table structure for table `service_class`
--

CREATE TABLE `service_class` (
  `id` int(9) UNSIGNED NOT NULL,
  `result` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_class`
--

INSERT INTO `service_class` (`id`, `result`) VALUES
(1, 'Эконом'),
(2, 'Стандарт (туризм)'),
(3, 'Комфорт');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `role`) VALUES
(1, '123', '123', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_stars`
--
ALTER TABLE `hotel_stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_days`
--
ALTER TABLE `order_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pax`
--
ALTER TABLE `pax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_class`
--
ALTER TABLE `service_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_stars`
--
ALTER TABLE `hotel_stars`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_days`
--
ALTER TABLE `order_days`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pax`
--
ALTER TABLE `pax`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_class`
--
ALTER TABLE `service_class`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
