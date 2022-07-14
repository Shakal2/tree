-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2022 г., 00:27
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tree`
--

-- --------------------------------------------------------

--
-- Структура таблицы `1`
--

CREATE TABLE `1` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `branch_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1`
--

INSERT INTO `1` (`id`, `name`, `branch_id`) VALUES
(1, '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `1.1`
--

CREATE TABLE `1.1` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `branch_1.1_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1.1`
--

INSERT INTO `1.1` (`id`, `name`, `branch_1.1_id`) VALUES
(1, '1.1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `1.1.1`
--

CREATE TABLE `1.1.1` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1.1.1`
--

INSERT INTO `1.1.1` (`id`, `name`) VALUES
(1, '1.1.1');

-- --------------------------------------------------------

--
-- Структура таблицы `1.2`
--

CREATE TABLE `1.2` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `branch_1.2_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1.2`
--

INSERT INTO `1.2` (`id`, `name`, `branch_1.2_id`) VALUES
(1, '1.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `1.2.1`
--

CREATE TABLE `1.2.1` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1.2.1`
--

INSERT INTO `1.2.1` (`id`, `name`) VALUES
(1, '1.2.1');

-- --------------------------------------------------------

--
-- Структура таблицы `1.2.2`
--

CREATE TABLE `1.2.2` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `1.2.2`
--

INSERT INTO `1.2.2` (`id`, `name`) VALUES
(1, '1.2.2');

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `1.1_id` int NOT NULL,
  `1.2_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `1.1_id`, `1.2_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `branch_1.1`
--

CREATE TABLE `branch_1.1` (
  `id` int NOT NULL,
  `1.1.1_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `branch_1.1`
--

INSERT INTO `branch_1.1` (`id`, `1.1.1_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `branch_1.2`
--

CREATE TABLE `branch_1.2` (
  `id` int NOT NULL,
  `1.2.1_id` int NOT NULL,
  `1.2.2_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `branch_1.2`
--

INSERT INTO `branch_1.2` (`id`, `1.2.1_id`, `1.2.2_id`) VALUES
(1, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `1`
--
ALTER TABLE `1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Индексы таблицы `1.1`
--
ALTER TABLE `1.1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_1.1_id` (`branch_1.1_id`);

--
-- Индексы таблицы `1.1.1`
--
ALTER TABLE `1.1.1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `1.2`
--
ALTER TABLE `1.2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_1.2_id` (`branch_1.2_id`);

--
-- Индексы таблицы `1.2.1`
--
ALTER TABLE `1.2.1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `1.2.2`
--
ALTER TABLE `1.2.2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1.1_id` (`1.1_id`),
  ADD KEY `1.2_id` (`1.2_id`);

--
-- Индексы таблицы `branch_1.1`
--
ALTER TABLE `branch_1.1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1.1.1_id` (`1.1.1_id`);

--
-- Индексы таблицы `branch_1.2`
--
ALTER TABLE `branch_1.2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1.2.1_id` (`1.2.1_id`),
  ADD KEY `1.2.2_id` (`1.2.2_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `1`
--
ALTER TABLE `1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `1.1`
--
ALTER TABLE `1.1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `1.1.1`
--
ALTER TABLE `1.1.1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `1.2`
--
ALTER TABLE `1.2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `1.2.1`
--
ALTER TABLE `1.2.1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `1.2.2`
--
ALTER TABLE `1.2.2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `branch_1.1`
--
ALTER TABLE `branch_1.1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `branch_1.2`
--
ALTER TABLE `branch_1.2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `1`
--
ALTER TABLE `1`
  ADD CONSTRAINT `1_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `1.1`
--
ALTER TABLE `1.1`
  ADD CONSTRAINT `1.1_ibfk_1` FOREIGN KEY (`branch_1.1_id`) REFERENCES `branch_1.1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `1.2`
--
ALTER TABLE `1.2`
  ADD CONSTRAINT `1.2_ibfk_1` FOREIGN KEY (`branch_1.2_id`) REFERENCES `branch_1.2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`1.1_id`) REFERENCES `1.1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `branch_ibfk_2` FOREIGN KEY (`1.2_id`) REFERENCES `1.2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `branch_1.1`
--
ALTER TABLE `branch_1.1`
  ADD CONSTRAINT `branch_1.1_ibfk_1` FOREIGN KEY (`1.1.1_id`) REFERENCES `1.1.1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `branch_1.2`
--
ALTER TABLE `branch_1.2`
  ADD CONSTRAINT `branch_1.2_ibfk_1` FOREIGN KEY (`1.2.1_id`) REFERENCES `1.2.1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `branch_1.2_ibfk_2` FOREIGN KEY (`1.2.2_id`) REFERENCES `1.2.2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
