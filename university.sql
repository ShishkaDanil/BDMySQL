-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 27 2023 г., 14:42
-- Версия сервера: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- Версия PHP: 7.2.34-38+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `university`
--

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(5, 'Анализ данных'),
(1, 'Дискретная математика'),
(2, 'Инженерное программирование'),
(3, 'Теория вероятностей'),
(6, 'Физическая культура'),
(4, 'Философия');

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `number`) VALUES
(7, '202'),
(3, '207'),
(2, '216'),
(5, '304'),
(6, '212'),
(1, '309'),
(4, '312'),
(8, '403'),
(9, '406'),
(10, '408'),
(11, '409'),
(12, '410'),
(13, '411'),
(14, '413'),
(15, '414'),
(16, '415'),
(17, '416'),
(18, '417'),
(19, '501'),
(20, '502'),
(21, '503');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `day_of_week` varchar(10) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `week_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`id`, `group_id`, `course_id`, `teacher_id`, `room_id`, `day_of_week`, `start_time`, `end_time`, `week_type`) VALUES
(1, 1, 1, 1, 1, 'Понедельник', '08:30:00', '10:00:00', 'Нечёт'),
(2, 1, 2, 2, 2, 'Вторник', '10:10:00', '11:40:00', 'Нечёт'),
(3, 3, 1, 3, 6, 'Среда', '12:10:00', '13:40:00', 'Нечёт'),
(4, 3, 2, 4, 4, 'Четверг', '14:00:00', '15:30:00', 'Нечёт'),
(5, 5, 1, 5, 5, 'Пятница', '08:30:00', '10:00:00', 'Нечёт'),
(6, 5, 2, 6, 6, 'Понедельник', '10:10:00', '11:40:00', 'Чёт'),
(7, 7, 1, 7, 7, 'Вторник', '12:10:00', '13:40:00', 'Чёт'),
(8, 7, 2, 1, 8, 'Среда', '14:00:00', '15:30:00', 'Чёт'),
(9, 2, 1, 9, 9, 'Четверг', '08:30:00', '10:00:00', 'Чёт'),
(10, 2, 2, 10, 10, 'Пятница', '10:10:00', '11:40:00', 'Чёт'),
(11, 4, 1, 1, 11, 'Понедельник', '12:10:00', '13:40:00', 'Нечёт'),
(12, 4, 2, 2, 12, 'Вторник', '14:00:00', '15:30:00', 'Нечёт'),
(13, 5, 1, 3, 6, 'Среда', '08:30:00', '10:00:00', 'Нечёт'),
(14, 6, 2, 4, 14, 'Четверг', '10:10:00', '11:40:00', 'Нечёт'),
(15, 8, 1, 5, 15, 'Пятница', '12:10:00', '13:40:00', 'Нечёт'),
(16, 8, 2, 6, 16, 'Понедельник', '14:00:00', '15:30:00', 'Чёт');

-- --------------------------------------------------------

--
-- Структура таблицы `student_groups`
--

CREATE TABLE `student_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`) VALUES
(1, 'ИСТ-311'),
(2, 'ИСТ-312'),
(3, 'ИСТ-321'),
(4, 'ИСТ-322'),
(5, 'ПРИ-311'),
(6, 'ПРИ-312'),
(7, 'ПРИ-321'),
(8, 'ПРИ-322');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(8, 'Арапова'),
(1, 'Долженко'),
(4, 'Жилина'),
(11, 'Кудрявцев'),
(3, 'Лозина'),
(9, 'Мисиченко'),
(2, 'Николенко'),
(7, 'Прохоров'),
(6, 'Рудяга'),
(10, 'Самыгин'),
(5, 'Трегубова');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `day_of_week` (`day_of_week`,`start_time`,`end_time`,`room_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Индексы таблицы `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `student_groups` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `schedule_ibfk_4` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

SELECT `schedule`.`start_time`, `schedule`.`end_time`, `courses`.`name`, `teachers`.`name`, `rooms`.`number`
FROM `schedule`
JOIN `courses` ON `schedule`.`course_id` = `courses`.`id`
JOIN `teachers` ON `schedule`.`teacher_id` = `teachers`.`id`
JOIN `rooms` ON `schedule`.`room_id` = `rooms`.`id`
JOIN `student_groups` ON `schedule`.`group_id` = `student_groups`.`id`
WHERE `student_groups`.`name` = 'ИСТ-311'
AND `schedule`.`day_of_week` = 'Понедельник'
AND `schedule`.`week_type` = 'Нечёт';

SELECT `student_groups`.`name`
FROM `schedule`
JOIN `courses` ON `schedule`.`course_id` = `courses`.`id`
JOIN `teachers` ON `schedule`.`teacher_id` = `teachers`.`id`
JOIN `rooms` ON `schedule`.`room_id` = `rooms`.`id`
JOIN `student_groups` ON `schedule`.`group_id` = `student_groups`.`id`
WHERE `rooms`.`number` = '212' and `schedule`.`day_of_week` = 'Среда';


SELECT `schedule`.`start_time`, `schedule`.`end_time`, `courses`.`name`, `rooms`.`number`, `student_groups`.`name`, `schedule`.`day_of_week`
FROM `schedule`
JOIN `courses` ON `schedule`.`course_id` = `courses`.`id`
JOIN `teachers` ON `schedule`.`teacher_id` = `teachers`.`id`
JOIN `rooms` ON `schedule`.`room_id` = `rooms`.`id`
JOIN `student_groups` ON `schedule`.`group_id` = `student_groups`.`id`
WHERE `teachers`.`name` = 'Долженко';
