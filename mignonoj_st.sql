-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 03 2022 г., 20:51
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mignonoj_st`
--

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--
-- Создание: Авг 03 2022 г., 11:38
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--
-- Создание: Авг 03 2022 г., 11:38
-- Последнее обновление: Авг 03 2022 г., 17:50
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `id_product`, `qty`) VALUES
(14, 5, 21, 1),
(15, 5, 22, 5),
(16, 5, 24, 50),
(17, 5, 23, 5),
(18, 5, 22, 1),
(19, 5, 19, 1),
(20, 5, 19, 1),
(21, 8, 22, 10),
(22, 8, 21, 1),
(23, 8, 11, 10),
(24, 8, 12, 6),
(25, 8, 16, 1),
(26, 8, 21, 4),
(27, 8, 12, 5),
(28, 8, 5, 3),
(29, 8, 6, 2),
(30, 8, 41, 1),
(31, 8, 41, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sticker`
--
-- Создание: Авг 03 2022 г., 11:38
-- Последнее обновление: Авг 03 2022 г., 17:49
--

DROP TABLE IF EXISTS `sticker`;
CREATE TABLE `sticker` (
  `sticker_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` decimal(10,0) UNSIGNED NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `categorie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `sticker`
--

INSERT INTO `sticker` (`sticker_id`, `name`, `price`, `width`, `height`, `image`, `categorie`) VALUES
(1, 'Gâteau muffin', '5', 4, 5, 'images/Stickers_Anniversaire/a1.png', 'anniversaire'),
(2, 'Gâteau Smarties', '5', 5, 5, 'images/Stickers_Anniversaire/a6.png', 'anniversaire'),
(3, 'Petits pieds', '5', 6, 4, 'images/Stickers_Bapteme/b1.png', 'bapteme'),
(4, 'Mon petit arc-en-ciel', '5', 6, 5, 'images/Stickers_Bapteme/b6.png', 'bapteme'),
(5, 'Garçon1', '5', 4, 5, 'images/Stickers_Naissance/n1.png', 'naissance'),
(6, 'Garçon2', '5', 4, 5, 'images/Stickers_Naissance/n2.png', 'naissance'),
(7, 'Sticker carré Athlète', '5', 4, 4, 'images/theme_sport/tennis_carre.png', 'sport'),
(8, 'Sticker long Athlète', '5', 6, 4, 'images/theme_sport/athletisme_long.png', 'sport'),
(9, 'Sticker carré Basket', '5', 4, 4, 'images/theme_sport/basket_carre.png', 'sport.basket'),
(10, 'Sticker long Basket', '5', 6, 4, 'images/theme_sport/basket_long.png', 'sport.basket'),
(11, 'Sticker carré Football', '5', 4, 4, 'images/theme_sport/foot_carre.png', 'sport'),
(12, 'Sticker long Football', '5', 6, 4, 'images/theme_sport/foot_long.png', 'sport'),
(13, 'Sticker carré Golf', '5', 4, 4, 'images/theme_sport/golf_carre.png', 'sport'),
(14, 'Sticker long Golf', '5', 6, 4, 'images/theme_sport/golf_long.png', 'sport'),
(15, 'Sticker carré Rugby', '5', 4, 4, 'images/theme_sport/rugby_carre.png', 'sport'),
(16, 'Sticker long Rugby', '5', 6, 4, 'images/theme_sport/rugby_long.png', 'sport'),
(17, 'Sticker carré Tennis', '5', 4, 4, 'images/theme_sport/tennis_carre.png', 'sport'),
(18, 'Sticker long Tennis', '5', 6, 4, 'images/theme_sport/tennis_long.png', 'sport'),
(19, 'Sticker carré mariage classique', '5', 4, 4, 'images/images_mariage/classicblanc.png', 'mariage'),
(20, 'Sticker coeur mariage classique ', '5', 6, 4, 'images/images_mariage/classiccoeur.png', 'mariage'),
(21, 'Sticker carré mariage romantique', '5', 4, 4, 'images/images_mariage/talons.png', 'mariage'),
(22, 'Sticker coeur mariage romantique', '5', 6, 4, 'images/images_mariage/Weddtri.png', 'mariage'),
(23, 'Sticker rectangle mariage moderne', '5', 4, 4, 'images/images_mariage/mariagerectangle.png', 'mariage'),
(24, 'Sticker coeur mariage moderne', '5', 6, 4, 'images/images_mariage/rosecoeur.png', 'mariage'),
(25, 'Sticker mariage femmes', '5', 4, 4, 'images/images_mariage/leswed.png', 'mariage'),
(26, 'Sticker mariage rectangle oriental', '5', 6, 4, 'images/images_mariage/oriental.png', 'mariage'),
(27, 'Sticker justmarried gâteau', '5', 4, 4, 'images/images_mariage/lesmaries.png', 'mariage'),
(28, 'Sticker feuille mariage', '5', 6, 4, 'images/images_mariage/feuille.png', 'mariage'),
(29, 'Sticker carré Bâtiment', '5', 4, 4, 'images/theme_metier/batiment_carre.png', 'metier'),
(30, 'Sticker long Bâtiment', '5', 6, 4, 'images/theme_metier/batiment_long.png', 'metier'),
(31, 'Sticker carré Informatique', '5', 4, 4, 'images/theme_metier/informatique_carre.png', 'metier'),
(32, 'Sticker long Informatique', '5', 6, 4, 'images/theme_metier/informatique_long.png', 'metier'),
(33, 'Sticker carré Musique', '5', 4, 4, 'images/theme_metier/musique_carre.png', 'metier'),
(34, 'Sticker long Musique', '5', 6, 4, 'images/theme_metier/musique_long.png', 'metier'),
(35, 'Sticker carré Photo', '5', 4, 4, 'images/theme_metier/photo_carre.png', 'metier'),
(36, 'Sticker long Photo', '5', 6, 4, 'images/theme_metier/photo_long.png', 'metier'),
(37, 'Sticker carré Pompier', '5', 4, 4, 'images/theme_metier/pompier_carre.png', 'metier'),
(38, 'Sticker long Pompier', '5', 6, 4, 'images/theme_metier/pompier_long.png', 'metier'),
(39, 'Sticker carré Santé', '5', 4, 4, 'images/theme_metier/sante_carre.png', 'metier'),
(40, 'Sticker long Santé', '5', 6, 4, 'images/theme_metier/sante_long.png', 'metier'),
(41, 'Test', '500', 60, 80, 'images/theme_metier/sante_long.png', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--
-- Создание: Авг 03 2022 г., 11:38
-- Последнее обновление: Авг 03 2022 г., 11:41
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `name`, `email`, `password`, `address`, `postal_code`, `city`) VALUES
(8, 'Shamil', 'Shafeev', 'test@mail.ru', '$2y$10$EwBGFawd701Cmr2jSmx/0uaTy8OmtxcewlGUuu2FRkIn9HZiP6q/2', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`sticker_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `sticker`
--
ALTER TABLE `sticker`
  MODIFY `sticker_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
