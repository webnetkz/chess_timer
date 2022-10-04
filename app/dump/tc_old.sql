-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2022 at 09:23 AM
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
  `ver` smallint(3) NOT NULL DEFAULT '1',
  `create` date NOT NULL,
  `lang` smallint(2) DEFAULT NULL,
  `country` smallint(2) DEFAULT NULL,
  `count_days` smallint(2) DEFAULT NULL,
  `count_pax` smallint(3) DEFAULT NULL,
  `service_class` smallint(2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `hotel_class` smallint(2) DEFAULT NULL,
  `rumming` smallint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `manager`, `ver`, `create`, `lang`, `country`, `count_days`, `count_pax`, `service_class`, `start_date`, `hotel_class`, `rumming`) VALUES
(1, 123, 1, '2022-09-05', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL),
(2, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(4, 123, 1, '2022-09-05', 5, 4, 8, NULL, 1, '1999-01-01', 5, NULL),
(5, 123, 1, '2022-09-05', 4, NULL, 7, NULL, NULL, '2001-01-01', NULL, NULL),
(6, 123, 1, '2022-09-05', NULL, NULL, 6, NULL, 2, '2022-09-23', NULL, 1),
(7, 123, 1, '2022-09-05', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL),
(8, 123, 1, '2022-09-05', 3, 2, 29, NULL, NULL, NULL, NULL, NULL),
(9, 123, 1, '2022-09-05', 4, 4, 28, NULL, 3, NULL, 3, NULL),
(10, 123, 1, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 123, 1, '2022-09-05', NULL, NULL, 10, NULL, NULL, '1999-01-01', NULL, NULL),
(12, 123, 1, '2022-09-05', NULL, NULL, 2, NULL, NULL, '2001-01-01', NULL, NULL),
(13, 123, 1, '2022-09-05', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL),
(14, 123, 1, '2022-09-05', NULL, NULL, NULL, NULL, 1, '1999-01-01', NULL, NULL),
(15, 123, 1, '2022-09-05', 5, NULL, 8, NULL, NULL, NULL, NULL, NULL),
(16, 123, 1, '2022-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 123, 1, '2022-09-05', 2, 2, 19, NULL, 2, NULL, 4, NULL),
(19, 123, 1, '2022-09-06', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(20, 123, 1, '2022-09-06', 1, 1, 1, NULL, 1, NULL, 1, NULL),
(21, 123, 1, '2022-09-07', NULL, 1, NULL, NULL, NULL, NULL, 4, NULL),
(22, 123, 1, '2022-09-07', 1, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(23, 123, 1, '2022-09-07', NULL, 1, NULL, NULL, NULL, NULL, 4, NULL),
(24, 123, 1, '2022-09-07', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 123, 1, '2022-09-07', 1, 1, NULL, NULL, 1, '1999-01-01', 1, NULL),
(26, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, NULL),
(27, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 123, 1, '2022-09-07', 2, 4, 8, NULL, 2, '2001-01-01', 3, NULL),
(29, 123, 1, '2022-09-07', 5, 5, 3, NULL, 3, '1999-01-01', 5, NULL),
(30, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL),
(31, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(32, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(33, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(34, 123, 1, '2022-09-05', 5, 2, 9, NULL, 1, '1999-01-01', 4, NULL),
(35, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(36, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(37, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(38, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(39, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL),
(40, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(41, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(42, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(43, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(44, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(45, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(46, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(47, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(48, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(49, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(50, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL),
(51, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(52, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(53, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(54, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(55, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(56, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(57, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(58, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(59, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(60, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(61, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(62, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(63, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(64, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(65, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(66, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(67, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, '2001-01-01', NULL, NULL),
(68, 123, 1, '2022-09-05', 4, 3, 8, NULL, 1, '2001-01-01', 1, NULL),
(69, 123, 1, '2022-09-05', 5, 2, 8, NULL, 1, '1999-01-01', 4, NULL),
(70, 123, 1, '2022-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 123, 1, '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 123, 1, '2022-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 123, 1, '2022-09-10', 2, NULL, 14, NULL, NULL, NULL, 3, NULL),
(104, 123, 1, '2022-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 123, 1, '2022-09-10', 3, 2, 8, NULL, NULL, '1999-01-01', NULL, NULL),
(106, 123, 1, '2022-09-10', 3, 3, 19, NULL, NULL, '2001-01-01', NULL, NULL),
(107, 123, 1, '2022-09-10', NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
(108, 123, 1, '2022-09-10', 4, 2, 8, NULL, 3, NULL, 4, NULL),
(109, 123, 1, '2022-09-10', 5, 2, 25, NULL, 3, '2001-01-01', 5, NULL),
(110, 123, 1, '2022-09-10', 3, 2, 13, NULL, 2, NULL, NULL, NULL),
(111, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 123, 1, '2022-09-12', NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL),
(125, 123, 1, '2022-09-12', 3, 3, 14, NULL, NULL, NULL, NULL, NULL),
(126, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 123, 1, '2022-09-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 123, 1, '2022-09-16', NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL),
(129, 123, 1, '2022-09-16', NULL, NULL, NULL, NULL, NULL, '1992-01-01', NULL, NULL),
(130, 123, 1, '2022-09-16', 4, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 123, 1, '2022-09-16', NULL, 5, NULL, NULL, 2, NULL, NULL, NULL),
(132, 123, 1, '2022-09-16', NULL, NULL, NULL, NULL, 2, NULL, 5, NULL),
(133, 123, 1, '2022-09-16', 3, 2, 14, NULL, NULL, '2001-01-01', 4, NULL),
(134, 123, 1, '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pax`
--

CREATE TABLE `pax` (
  `id` int(11) UNSIGNED NOT NULL,
  `old_mans` int(3) DEFAULT NULL,
  `child_mans` int(3) DEFAULT NULL,
  `small_child_mans` int(3) DEFAULT NULL,
  `small_child_mans_new` int(3) DEFAULT NULL,
  `guide_mans` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pax`
--

INSERT INTO `pax` (`id`, `old_mans`, `child_mans`, `small_child_mans`, `small_child_mans_new`, `guide_mans`) VALUES
(124, 1, NULL, NULL, NULL, NULL),
(125, 1, NULL, NULL, NULL, NULL),
(126, 1, NULL, NULL, NULL, NULL),
(127, 1, NULL, NULL, NULL, NULL),
(128, 1, NULL, NULL, NULL, NULL),
(129, 1, NULL, NULL, NULL, NULL),
(130, 1, NULL, NULL, NULL, NULL),
(131, 1, NULL, NULL, NULL, NULL),
(132, 1, NULL, NULL, NULL, NULL),
(133, 1, NULL, NULL, NULL, NULL),
(134, 1, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `pax`
--
ALTER TABLE `pax`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

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
