-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июн 28 2024 г., 13:28
-- Версия сервера: 5.7.39
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `happynewyear`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `image`) VALUES
(1, 'Couronne de Noëljjjg', '44.99 €', 'assets/img/product-1.jpg'),
(2, 'Père Noël en chocolat', '1.29 €', 'assets/img/product-2.png'),
(3, 'Sapin de Noël', '29.99 €', 'assets/img/product-3.jpg'),
(4, 'Boîte de bonbons', '14.99 €', 'assets/img/product-4.jpg'),
(5, 'Père Noël sur échelle', '24.99 €', 'assets/img/product-5.jpg'),
(6, 'Boule à Neige', '4.99 €', 'assets/img/product-6.jpg'),
(7, 'Boule de Noël', '1.99 €', 'assets/img/product-7.jpg'),
(8, 'Guirlande en tinsel', '2.99 €', 'assets/img/product-8.jpg'),
(9, 'Guirlande électrique', '7.99 €', 'assets/img/product-9.jpg'),
(10, 'Champagne de Nouvel An', '7.49 €', 'assets/img/product-10.jpg'),
(11, 'Boîte de bonbons Ferrero', '6.99 €', 'assets/img/product-11.jpg'),
(12, 'Cadeau \'Surprise\'', '19.99 €', 'assets/img/product-12.jpg'),
(13, 'Décoration Noël extérieur ', '133.59 €', 'assets/img/product-13.jpg'),
(14, 'Bonnet de Noël', '1.44 €', 'assets/img/product-14.jpg'),
(15, 'Feux de Bengale', '2.99 €', 'assets/img/product-15.jpg'),
(16, 'Cracker', '0.89 €', 'assets/img/product-16.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
