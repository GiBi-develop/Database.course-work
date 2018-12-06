-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 21 2018 г., 00:34
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `coursework`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'Admin', '1234'),
(2, 'admin', '1234'),
(3, 'User', '1234'),
(4, 'Host', '1234');

-- --------------------------------------------------------

--
-- Структура таблицы `club`
--

CREATE TABLE `club` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name_club` varchar(255) NOT NULL,
  `Numbers` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Клубы';

--
-- Дамп данных таблицы `club`
--

INSERT INTO `club` (`id`, `Name_club`, `Numbers`) VALUES
(1, 'Витязь', 20),
(2, 'Собачонок', 10),
(3, 'Друзья', 10),
(4, 'Дружок', 20),
(5, 'Верность', 10),
(6, 'Москвич', 30),
(7, 'Народный', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `dogsparticipants`
--

CREATE TABLE `dogsparticipants` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Индекс',
  `Host_id` int(10) UNSIGNED NOT NULL COMMENT 'Хозяин',
  `Club_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Клуб',
  `id_Pedigree` int(10) UNSIGNED DEFAULT NULL COMMENT 'Родословная ',
  `Nickname` varchar(255) NOT NULL COMMENT 'Кличка',
  `Breed` varchar(255) NOT NULL COMMENT 'Порода',
  `Old` int(20) UNSIGNED NOT NULL COMMENT 'Возраст',
  `Exhibition` int(11) NOT NULL COMMENT 'Выставка',
  `Awards` varchar(255) DEFAULT NULL COMMENT 'Награды собаки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Собаки-участники';

--
-- Дамп данных таблицы `dogsparticipants`
--

INSERT INTO `dogsparticipants` (`id`, `Host_id`, `Club_id`, `id_Pedigree`, `Nickname`, `Breed`, `Old`, `Exhibition`, `Awards`) VALUES
(1, 16, 5, 24, 'Муся', 'Лабрадор', 3, 4, '1-е место в международной выставке в г.Сыктывкар'),
(2, 4, 7, 1, 'Бальтазар', 'Лабрадор', 4, 4, '2-е место в международной выставке в г.Сыктывкар'),
(3, 19, 6, 8, 'Бобик', 'Лабрадор', 4, 4, '3-е место в международной выставке в г.Сыктывкар'),
(4, 18, 4, 4, 'Бибой', 'Лабрадор', 5, 4, 'Победу в региональных соревнованиях по Санкт-Петербургу'),
(5, 3, 2, 10, 'Ангел', 'Лабрадор', 3, 4, 'Призер олимпиады по первенству Лабрадоров'),
(6, 12, 5, 2, 'Царевна', 'Лабрадор', 2, 4, NULL),
(7, 21, 5, 23, 'Бурка', 'Лабрадор', 4, 4, NULL),
(8, 20, 1, 22, 'Валерик', 'Лабрадор', 7, 4, '1-е место в Санкт-Петербургском международной форуме \"Собака друг чловека\"'),
(9, 17, 2, 21, 'Полина', 'Лабрадор', 4, 4, NULL),
(10, 15, 7, 19, 'Басюк', 'Лабрадор', 5, 4, NULL),
(11, 1, 6, 18, 'Цибер', 'Лабрадор', 4, 4, NULL),
(12, 21, 5, 14, 'Валерик', 'Французский бульдог', 6, 5, NULL),
(13, 2, 2, 3, 'Кобальд', 'Французский бульдог', 4, 5, NULL),
(14, 5, 5, 5, 'Ангелина', 'Французский бульдог', 7, 5, NULL),
(15, 8, 3, 10, 'Убийца', 'Хаски', 3, 6, 'Призер олимпиады \"Хаски\"'),
(16, 7, 5, 12, 'Хотдог', 'Такса', 3, 1, NULL),
(17, 9, 7, 9, 'Баломут', 'Бигль', 3, 3, NULL),
(18, 6, 4, 13, 'Маркиз', 'Пудель', 4, 2, NULL),
(19, 14, 1, 11, 'Варяг', 'Пудель', 3, 2, NULL),
(20, 10, 7, 7, 'Малыш', 'Такса', 4, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `exibition`
--

CREATE TABLE `exibition` (
  `Id` int(11) NOT NULL COMMENT 'Айди',
  `Name_exibition` varchar(255) NOT NULL,
  `Place` varchar(255) NOT NULL COMMENT 'Место',
  `Time` time NOT NULL COMMENT 'Время',
  `Ring` int(10) UNSIGNED NOT NULL COMMENT 'Ринг',
  `Date` date NOT NULL COMMENT 'Дата проведения выставки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Выставка';

--
-- Дамп данных таблицы `exibition`
--

INSERT INTO `exibition` (`Id`, `Name_exibition`, `Place`, `Time`, `Ring`, `Date`) VALUES
(1, 'Олимпия', 'ТРЦ Малая Нева', '12:00:00', 5, '2019-02-06'),
(2, '1 международная выставка', 'Club \"Mosambiq\"', '17:00:00', 21, '2019-02-14'),
(3, 'Морской песик', 'Тк \"Морская звезда\"', '12:00:00', 19, '2019-01-29'),
(4, 'Технологии и песики', ' Ул. Бронная 25', '15:00:00', 17, '2018-12-12'),
(5, 'Самый лучший друг', ' ул. Ленина 24, к5', '12:00:00', 2, '2018-12-14'),
(6, 'Пес и человек', 'Трк \"Полет чайки\"', '17:00:00', 19, '2018-11-28');

-- --------------------------------------------------------

--
-- Структура таблицы `experts`
--

CREATE TABLE `experts` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Club_id` int(10) UNSIGNED DEFAULT NULL,
  `Ring_Number` int(10) UNSIGNED DEFAULT NULL,
  `Name_expert` varchar(255) NOT NULL,
  `Status` tinyint(1) DEFAULT '1' COMMENT '1 - Работает, 0 - отстранен'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Experts';

--
-- Дамп данных таблицы `experts`
--

INSERT INTO `experts` (`id`, `Club_id`, `Ring_Number`, `Name_expert`, `Status`) VALUES
(1, 1, 2, 'Бойцов Виталий Игоревич', 0),
(2, 2, 5, 'Меладце Валерий Иванович', 0),
(3, 3, 19, 'Новикова Анна Григорьевна', 1),
(4, 7, 5, 'Калькова Анна Дмитриевна', 1),
(5, 5, 16, 'Белов Валерий Андреевич', 1),
(6, 3, 18, 'Варанцов Игорь Валерьевич', 1),
(7, 7, NULL, 'Комаров Валерий Сергеевич', 0),
(8, 1, 17, 'Морозов Илья Дмитриевич', 1),
(9, NULL, 10, 'Мальцева Анна Валерьевна', 1),
(10, 1, 13, 'Макаров Иван Дмитриевич', 1),
(11, 2, 23, 'Кондратьев Натан Игоревич', 1),
(12, 5, 8, 'Фомин Виктор Игоревич', 1),
(13, 6, 1, 'Моспанова Елена Викторевна ', 1),
(14, 6, 12, 'Васильев Антон Григорьевич', 1),
(15, 3, NULL, 'Каспаров Анатолий Дмитриевич', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `host`
--

CREATE TABLE `host` (
  `Id` int(5) UNSIGNED NOT NULL COMMENT 'Код/Id',
  `Name_host` varchar(255) NOT NULL COMMENT 'Хозяин',
  `Passport` varchar(11) NOT NULL COMMENT 'Серия/номер, разделенная пробелом',
  `Phone` varchar(15) NOT NULL COMMENT 'Телефон'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Хозяин';

--
-- Дамп данных таблицы `host`
--

INSERT INTO `host` (`Id`, `Name_host`, `Passport`, `Phone`) VALUES
(1, 'Петров Игорь Павлович', '8712 677558', '89818451267'),
(2, 'Иванов Валерий Сергеевич', '9812 766558', '89826524434'),
(3, 'Куртов Валерий Степанович', '9834 566447', '98362547362'),
(4, 'Карпов Иван Сергеевич', '9273 644736', '87364856748'),
(5, 'Белов Степан Григорьевич', '7564 866773', '87463528891'),
(6, 'Быстров Степан Павлович', '8712 566447', '76867754637'),
(7, 'Осипов Борис Данилович', '7564 577664', '75648362935'),
(8, 'Бальцева Анна Павловна', '8712 657473', '87463529473'),
(9, 'Мальцева Анна Павловна', '9812 657443', '89996453726'),
(10, 'Валерьева Диана Степановна', '9273 655774', '89996574635'),
(11, 'Денисенко Юлия Сергеевна', '7564 856676', '89758564738'),
(12, 'Маленков Игорь Витальевич', '9812 655774', '89998736471'),
(13, 'Мезинцева Екатерина Анатольевна', '6473 655774', '89128636624'),
(14, 'Белоногов Игорь Иванович', '7564 655774', '89128636632'),
(15, 'Савин Андрей Павлович', '8712 544338', '89128453627'),
(16, 'Казанцева Екатерина Андреевна', '7564 577665', '75648362954'),
(17, 'Голосков Марк Игоревич', '9832 755664', '98172633544'),
(18, 'Морозова Анна Дмитриевна', '8712 645533', '89125463372'),
(19, 'Карпов Игорь Иванович', '8712 544637', '89997564888'),
(20, 'Нестерович Замир Ахметович', '7632 856645', '89818563442'),
(21, 'Малютин Игорь Павлович', '6574 657463', '89815467766');

-- --------------------------------------------------------

--
-- Структура таблицы `pedigree`
--

CREATE TABLE `pedigree` (
  `Id_Pedigree` int(5) UNSIGNED NOT NULL,
  `Female` varchar(255) DEFAULT NULL COMMENT 'Кличка Суки',
  `Male` varchar(255) DEFAULT NULL COMMENT 'Кличка Кобеля',
  `Serial` int(10) UNSIGNED NOT NULL COMMENT 'Серия/номер родословной'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Сведения о родословной';

--
-- Дамп данных таблицы `pedigree`
--

INSERT INTO `pedigree` (`Id_Pedigree`, `Female`, `Male`, `Serial`) VALUES
(1, 'Матильда', 'Рексар', 556672),
(2, 'Карона', 'Мальтиран', 645343),
(3, 'Малена', 'Валерий', 675463),
(4, 'Карина', 'Вальдемар', 345433),
(5, 'Сабрина', 'Феликс', 667755),
(6, 'Маркиза', 'Дальк', 887744),
(7, 'Кристина', 'Карен', 837493),
(8, 'Анчила', 'Мусси', 768574),
(9, 'Свизленд', 'Анкорд', 758463),
(10, 'Карина', 'Карен', 124354),
(11, 'Маша', 'Гриша', 869743),
(12, 'Таня', 'Вальемар', 768493),
(13, 'Марина', 'Данила', 657463),
(14, 'Марана', 'Каленин', 657483),
(15, 'Трампина', 'Бобик', 748633),
(16, 'Кристина', 'Миша', 768547),
(17, '\r\nМатрена ', 'Маркиз', 657483),
(18, 'Делевинь', 'Дракула', 768543),
(19, 'Марина', 'Меркури', 657499),
(20, 'Тося', 'Бося', 768688),
(21, 'Муся', 'Георгий', 342255),
(22, 'Марина', 'Карен', 657493),
(23, 'Иоана', 'Игорь', 656677),
(24, 'Анна', 'Бафомет', 768867);

-- --------------------------------------------------------

--
-- Структура таблицы `ring`
--

CREATE TABLE `ring` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Айди ринга',
  `Name_ring` varchar(255) NOT NULL COMMENT 'Название ринга'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ринг';

--
-- Дамп данных таблицы `ring`
--

INSERT INTO `ring` (`id`, `Name_ring`) VALUES
(1, 'Северный'),
(2, 'Бойцовский'),
(3, 'Краевой'),
(4, 'Случайный'),
(5, 'Морской'),
(6, 'Южный'),
(7, 'Западный'),
(8, 'Восточный'),
(9, 'Горный'),
(10, 'Милый'),
(11, 'Странный'),
(12, 'Маленький'),
(13, 'Большой'),
(14, 'Питерский'),
(15, 'Развлекательный'),
(16, 'Василеостровкий'),
(17, 'Петроградский'),
(18, 'Красногвардейский'),
(19, 'Выборгский'),
(20, 'Нарвский'),
(21, 'Приморский'),
(22, 'Дальневосточный'),
(23, 'Муринский'),
(24, 'Финляндский');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `dogsparticipants`
--
ALTER TABLE `dogsparticipants`
  ADD UNIQUE KEY `Id` (`id`),
  ADD KEY `Pedigree` (`id_Pedigree`),
  ADD KEY `Host_id` (`Host_id`),
  ADD KEY `Club` (`Club_id`),
  ADD KEY `Exhibition` (`Exhibition`);

--
-- Индексы таблицы `exibition`
--
ALTER TABLE `exibition`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Ring` (`Ring`),
  ADD KEY `Id` (`Id`);

--
-- Индексы таблицы `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Club` (`Club_id`),
  ADD KEY `Ring_Number` (`Ring_Number`);

--
-- Индексы таблицы `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Индексы таблицы `pedigree`
--
ALTER TABLE `pedigree`
  ADD PRIMARY KEY (`Id_Pedigree`),
  ADD UNIQUE KEY `Id_2` (`Id_Pedigree`),
  ADD KEY `Id` (`Id_Pedigree`);

--
-- Индексы таблицы `ring`
--
ALTER TABLE `ring`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `club`
--
ALTER TABLE `club`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `dogsparticipants`
--
ALTER TABLE `dogsparticipants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Индекс', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `exibition`
--
ALTER TABLE `exibition`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Айди', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `experts`
--
ALTER TABLE `experts`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `host`
--
ALTER TABLE `host`
  MODIFY `Id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Код/Id', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `pedigree`
--
ALTER TABLE `pedigree`
  MODIFY `Id_Pedigree` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `ring`
--
ALTER TABLE `ring`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Айди ринга', AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dogsparticipants`
--
ALTER TABLE `dogsparticipants`
  ADD CONSTRAINT `dogsparticipants_ibfk_1` FOREIGN KEY (`id_Pedigree`) REFERENCES `pedigree` (`Id_Pedigree`),
  ADD CONSTRAINT `dogsparticipants_ibfk_2` FOREIGN KEY (`Host_id`) REFERENCES `host` (`Id`),
  ADD CONSTRAINT `dogsparticipants_ibfk_3` FOREIGN KEY (`Club_id`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `dogsparticipants_ibfk_4` FOREIGN KEY (`Exhibition`) REFERENCES `exibition` (`Id`);

--
-- Ограничения внешнего ключа таблицы `exibition`
--
ALTER TABLE `exibition`
  ADD CONSTRAINT `exibition_ibfk_1` FOREIGN KEY (`Ring`) REFERENCES `ring` (`id`);

--
-- Ограничения внешнего ключа таблицы `experts`
--
ALTER TABLE `experts`
  ADD CONSTRAINT `experts_ibfk_2` FOREIGN KEY (`Ring_Number`) REFERENCES `ring` (`id`),
  ADD CONSTRAINT `experts_ibfk_3` FOREIGN KEY (`Club_id`) REFERENCES `club` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
