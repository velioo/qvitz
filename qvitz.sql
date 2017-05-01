-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time:  1 май 2017 в 20:47
-- Версия на сървъра: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qvitz`
--

-- --------------------------------------------------------

--
-- Структура на таблица `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `text` text,
  `image` varchar(128) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `question_id` int(11) NOT NULL,
  `result_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `answers`
--

INSERT INTO `answers` (`id`, `text`, `image`, `number`, `created_at`, `updated_at`, `question_id`, `result_id`) VALUES
(9, 'test answer 1', NULL, 1, '2017-04-27 23:07:26', '2017-04-27 23:07:26', 2, NULL),
(10, 'test answerr 2', NULL, 2, '2017-04-27 23:07:26', '2017-04-27 23:07:26', 2, NULL),
(11, 'tsad', NULL, 3, '2017-04-27 23:07:26', '2017-04-27 23:07:26', 2, NULL),
(12, 'sdsa', NULL, 4, '2017-04-27 23:07:26', '2017-04-27 23:07:26', 2, NULL),
(17, 'sdafda', NULL, 1, '2017-04-29 20:28:16', '2017-04-29 20:28:16', 7, NULL),
(18, 'question 1 answer', NULL, 1, '2017-04-30 13:13:01', '2017-04-30 13:13:01', 8, NULL),
(19, 'question 2 answer', NULL, 1, '2017-04-30 13:13:01', '2017-04-30 13:13:01', 9, NULL),
(20, 'Steins;Gate', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 10, NULL),
(21, 'Code Geass', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 10, NULL),
(22, 'Gintama', NULL, 3, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 10, NULL),
(23, 'Monogatari Series', NULL, 4, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 10, NULL),
(24, 'Death Note', NULL, 5, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 10, NULL),
(25, 'Yagami Light', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 11, NULL),
(26, 'Gintoki Sakata', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 11, NULL),
(27, 'Lelouch Lamperouge', NULL, 3, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 11, NULL),
(28, 'Kakashi Hatake', NULL, 4, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 11, NULL),
(29, 'Kiritsugu Emiya', NULL, 5, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 11, NULL),
(30, 'Tokisaki Kurumi', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(31, 'Kagura', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(32, 'Chiaki Nanami', NULL, 3, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(33, 'Mine', NULL, 4, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(34, 'Rem', NULL, 5, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(35, 'Emilia', NULL, 6, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(36, 'Erza Scarlet', NULL, 7, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(37, 'Black Rock Shooter', NULL, 8, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(38, 'C.C.', NULL, 9, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(39, 'Saber', NULL, 10, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(40, 'Asuna Yuuki', NULL, 11, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 12, NULL),
(41, 'Yes', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 13, NULL),
(42, 'No', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 13, NULL),
(43, 'Harry Potter', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 14, NULL),
(44, 'Star Wars', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 14, NULL),
(45, 'Lord of the Rings', NULL, 3, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 14, NULL),
(46, 'Resident Evil', NULL, 4, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 14, NULL),
(47, 'Cat', NULL, 1, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 15, NULL),
(48, 'Dog', NULL, 2, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 15, NULL),
(49, 'Parrot', NULL, 3, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 15, NULL),
(50, 'Snake', NULL, 4, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 15, NULL),
(51, 'Hamser', NULL, 5, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 15, NULL),
(52, 'yES', NULL, 1, '2017-04-30 21:13:53', '2017-04-30 21:13:53', 16, NULL),
(53, 'oF COurse ', NULL, 2, '2017-04-30 21:13:53', '2017-04-30 21:13:53', 16, NULL),
(54, 'Yeah', NULL, 3, '2017-04-30 21:13:53', '2017-04-30 21:13:53', 16, NULL),
(55, 'Dragnel', NULL, 1, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 17, NULL),
(56, 'Dragneell', NULL, 2, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 17, NULL),
(57, 'Dragneel', NULL, 3, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 17, NULL),
(58, 'Dragneell', NULL, 4, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 17, NULL),
(59, 'Yes', NULL, 1, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 18, NULL),
(60, 'No', NULL, 2, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 18, NULL),
(61, 'asdf', NULL, 1, '2017-04-30 23:26:18', '2017-04-30 23:26:18', 19, NULL),
(62, 'sadfdsaf', NULL, 2, '2017-04-30 23:26:18', '2017-04-30 23:26:18', 19, NULL),
(63, 'sdaf', NULL, 3, '2017-04-30 23:26:18', '2017-04-30 23:26:18', 19, NULL),
(64, 'asdf', NULL, 4, '2017-04-30 23:26:18', '2017-04-30 23:26:18', 19, NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Animals', ''),
(2, 'Audio', ''),
(3, 'Big Stories', ''),
(4, 'Books', ''),
(5, 'Business', ''),
(6, 'Buzz', ''),
(7, 'Celebrity', ''),
(8, 'Community', ''),
(9, 'Entertainment', ''),
(10, 'Food', ''),
(11, 'Geeky', ''),
(12, 'Health', ''),
(13, 'LGBT', ''),
(14, 'Life', ''),
(15, 'Music', ''),
(16, 'Parents', ''),
(17, 'Podcasts', ''),
(18, 'Politics', ''),
(19, 'Puzzles', ''),
(20, 'Reader', ''),
(21, 'Rewind', ''),
(22, 'Science', ''),
(23, 'Shopping', ''),
(24, 'Sports', ''),
(25, 'Style', ''),
(26, 'Tech', ''),
(27, 'Travel', ''),
(28, 'Weddings', ''),
(29, 'World', ''),
(30, 'Anime', '');

-- --------------------------------------------------------

--
-- Структура на таблица `categories_quizes`
--

CREATE TABLE `categories_quizes` (
  `category_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories_quizes`
--

INSERT INTO `categories_quizes` (`category_id`, `quiz_id`) VALUES
(1, 31),
(30, 31),
(2, 31),
(3, 31),
(4, 31),
(5, 31),
(6, 31),
(7, 31),
(8, 31),
(9, 31),
(10, 31),
(11, 31),
(12, 31),
(13, 31),
(14, 31),
(15, 31),
(16, 31),
(17, 31),
(18, 31),
(19, 31),
(20, 31),
(21, 31),
(22, 31),
(23, 31),
(24, 31),
(25, 31),
(26, 31),
(27, 31),
(28, 31),
(29, 31),
(30, 32),
(9, 33),
(1, 34),
(30, 34),
(4, 34),
(7, 34),
(14, 34),
(16, 34),
(17, 34),
(24, 34),
(26, 34),
(30, 35),
(30, 36);

-- --------------------------------------------------------

--
-- Структура на таблица `facebook_accounts`
--

CREATE TABLE `facebook_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fb_user_id` varchar(50) NOT NULL,
  `fb_email` varchar(50) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `changed_pass` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `facebook_accounts`
--

INSERT INTO `facebook_accounts` (`id`, `user_id`, `fb_user_id`, `fb_email`, `access_token`, `changed_pass`) VALUES
(17, 5, '1306104259466160', 'velioocs@mail.bg', 'EAAELelN4TOsBALwDg5pEh13JRTSWe5LJ9uym5P2IDBxhqYKzB4zB8sQNQ4GYLfJCnTKOGxUgT0anTZAsfTcbAGEUJSZBnLcuOR0qz2XRnfz1EG2w7DCT4Gx1IP06woq76Qi8YzZB3ahFZBFeBnIbyapCJDh5m5vXg39h0hRMiAZDZD', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `additional_info` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `notifications`
--

INSERT INTO `notifications` (`id`, `creator_id`, `source_id`, `description`, `type`, `created_at`, `additional_info`) VALUES
(1, 9, 9, 'You''ve reached level 2 - Newbie II', 'level', '2017-04-30 21:42:43', ''),
(2, 5, 5, 'You''ve reached level 3 - Newbie III', 'level', '2017-05-01 11:39:53', ''),
(3, 9, 33, 'commented on your quiz.', 'quiz_comment', '2017-05-01 14:36:34', '7');

-- --------------------------------------------------------

--
-- Структура на таблица `notification_users`
--

CREATE TABLE `notification_users` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `notification_users`
--

INSERT INTO `notification_users` (`id`, `notification_id`, `user_id`, `seen`) VALUES
(1, 1, 9, 1),
(2, 2, 5, 1),
(3, 3, 5, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `correct_answer` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `questions`
--

INSERT INTO `questions` (`id`, `text`, `created_at`, `updated_at`, `correct_answer`, `quiz_id`, `image`) VALUES
(2, 'test questrion', '2017-04-27 23:07:26', '2017-04-27 23:07:26', 1, 27, ''),
(7, 'fwdasfasd', '2017-04-29 20:28:16', '2017-04-29 20:28:16', 1, 31, ''),
(8, 'Question 1 name', '2017-04-30 13:13:01', '2017-04-30 13:13:01', 1, 32, ''),
(9, 'Question 2 name', '2017-04-30 13:13:01', '2017-04-30 13:13:01', 1, 32, ''),
(10, 'My favourite anime is ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 2, 33, ''),
(11, 'My favourite male anime character is ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 3, 33, ''),
(12, 'My favourite female anime character is ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 3, 33, ''),
(13, 'Have I ever cosplayed someone ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 1, 33, ''),
(14, 'My favourite Movie ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 2, 33, ''),
(15, 'What pet do I have ?', '2017-04-30 15:07:47', '2017-04-30 15:07:47', 1, 33, ''),
(16, 'arE YOu stUPED?', '2017-04-30 21:13:53', '2017-04-30 21:13:53', 1, 34, ''),
(17, 'What is Natsu''s familiy name ?', '2017-04-30 21:39:24', '2017-04-30 21:39:24', 3, 35, ''),
(18, 'Is Natsu Nigga ?', '2017-04-30 21:39:24', '2017-04-30 21:39:24', 2, 35, ''),
(19, 'asd', '2017-04-30 23:26:18', '2017-04-30 23:26:18', 2, 36, '');

-- --------------------------------------------------------

--
-- Структура на таблица `quizes`
--

CREATE TABLE `quizes` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(2) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `questions_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `quizes`
--

INSERT INTO `quizes` (`id`, `name`, `description`, `type`, `image`, `user_id`, `created_at`, `updated_at`, `questions_count`) VALUES
(27, 'Test title', 'test description', 1, '590279ae0407d.jpg', 5, '2017-04-27 23:07:26', '2017-04-27 23:07:26', 1),
(31, 'Test category', 'balbla', 1, '5904f760c90af.jpg', 5, '2017-04-29 20:28:16', '2017-04-29 20:28:16', 1),
(32, 'Test multiple questions', 'Testing...', 1, '5905e2dd20f6c.jpg', 5, '2017-04-30 13:13:01', '2017-04-30 13:13:01', 2),
(33, 'Do you really know me ?', 'I''ll check', 1, '5905fdc3a830c.jpg', 5, '2017-04-30 15:07:47', '2017-04-30 15:07:47', 6),
(34, 'fvds', 'ASCASCs', 1, '5906539122bb4.jpg', 9, '2017-04-30 21:13:53', '2017-04-30 21:13:53', 1),
(35, 'Do you know fairy tail ?', 'Test your fairy tail knoledge', 1, '5906598c093bf.jpg', 5, '2017-04-30 21:39:24', '2017-04-30 21:39:24', 2),
(36, 'Gas', 'Tast', 1, '5906729a4d51a.jpg', 9, '2017-04-30 23:26:18', '2017-04-30 23:26:18', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `quiz_comments`
--

CREATE TABLE `quiz_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `quiz_comments`
--

INSERT INTO `quiz_comments` (`id`, `user_id`, `quiz_id`, `content`, `created_at`, `updated_at`, `r_comment_id`) VALUES
(7, 9, 33, 'Nice job', '2017-05-01 14:36:34', '2017-05-01 14:36:34', NULL),
(26, 5, 33, 'afasf\na\nfad\nf', '2017-05-01 15:03:09', '2017-05-01 15:03:09', NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `quiz_id`, `text`, `name`, `image`) VALUES
(12, 27, 'test desc', 'Tets result 1', '27_r_590279ae09a57.jpg'),
(18, 31, 'sadf', 'dsafdsa', ''),
(19, 32, 'result 1 descr', 'Result 1 text', ''),
(20, 32, 'resutl 2 descr', 'result 2 text', ''),
(21, 33, '', 'You really don''t know me...', '5905e2dd20f6c.jpg'),
(22, 33, '', 'You know some things about me', '27_r_590279ae09a57.jpg'),
(23, 33, '', 'Very good my friend', '26_q_59027916ba002.jpg'),
(24, 34, '', '', ''),
(25, 35, '', '', ''),
(26, 36, '', '', '');

-- --------------------------------------------------------

--
-- Структура на таблица `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `points` int(11) NOT NULL,
  `rank_number` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `points`, `rank_number`) VALUES
(1, 'Newbie I', 0, 1),
(2, 'Newbie II', 10, 2),
(3, 'Newbie III', 30, 3),
(4, 'Veteran', 50, 4),
(5, 'Veteran II', 70, 5),
(6, 'Veteran III', 100, 6),
(7, 'Master I', 150, 7);

-- --------------------------------------------------------

--
-- Структура на таблица `score_system`
--

CREATE TABLE `score_system` (
  `quiz_id` int(11) NOT NULL,
  `bottom_limit` int(11) NOT NULL,
  `top_limit` int(11) NOT NULL,
  `result_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `score_system`
--

INSERT INTO `score_system` (`quiz_id`, `bottom_limit`, `top_limit`, `result_id`) VALUES
(27, 0, 1, 12),
(31, 0, 1, 18),
(32, 0, 1, 19),
(32, 2, 2, 20),
(33, 0, 2, 21),
(33, 2, 4, 22),
(33, 4, 6, 23),
(34, 0, 1, 24),
(35, 0, 2, 25),
(36, 0, 1, 26);

-- --------------------------------------------------------

--
-- Структура на таблица `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `sessions`
--

INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('03r42cr6m9gfulufrpurgod4r9k0236ed4157nv9k9qefhs8pc2qd54ensqfj04n9gpr2us8obt4fdh2tddg9826si99rfvgvhsc5j3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493567866;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('0glf3q8bthqjpeea53ornpj1d2bmvrvq1840hp28qtvtfsa6v181jod41skl4ptc2vr1f7rkurrd534686a5p0h62i5lbntmatsar12', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493292667;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('0mujsafgta05n6bqpjtube81q7khepk79737a01k9vul1sg7k9prjsq9gom1nalnrmojp14pn70e9ip2mnkeu64ri0mmlt7q5k93l62', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493650110;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBANKczcbNIawoEZABkUOnZC6GaVuHDYdg7pv8OEJ9PddnZBEND1GPi6tZByKG0N9ZCHu0ragSRcSilnvnLetyoZCQjskdw3btxPzxsRGD4ZAzXKKQ6JXaUoLJGNe6khSyTKSu69KHyWuOEERIQXHQmiVeVXIAUg6uAZDZD";'),
('0p3oioklh4egh8rr22dp1tgp6gacft94la7ei25kb1r1pml26a86ramp1dfarme4gf3fr5iev0hr2i663tvoslh18ir5e70j3mtvi50', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493560740;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('0se0eknfru68tpevvspbhld8ejrkm11j4flsvlv5q54c7gggj3qcdsql4rfl20pm51bcrgndjhn5ljb9rl9otv65jm994e04fjjnas2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493328215;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('15mf5n53hj7her74322aveotvrtfnebj5j502eiqe05rnapq314b18kop39j05b6dn9ke4bp5uabr2ci9qn024b5gee27odcpeqg783', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491426999;'),
('1b7ui5pi7jds13g74jp6jn610imu95gq8cfeb2hknuk3nah30ksa4ptgahnpsab25ffri2kdv16b7b5j4uospiqem1nm3rqn152vl20', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493212378;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:182:"EAAELelN4TOsBAFDNZBGTjkZC0siXG8QkPrdV8uoTizlH1Dcw7ZAbyZBEKYlO0vBr7xyZCasuwHyiZCO6PxoW7VfYFRBzthTuDVgvFksoI5lH4QinZCjgn6V9tefrkKw1ZC75032obPA4ZCMZBSw9ZAKguE9nqbn6aHjE9KiyJygPbgCTwZDZD";'),
('1c2jb6fc98n9u5levl7q14t0lnl891c6fknkbnt9cvut5ckso81cteie3mfm0hq0hv1duva39t463itacqc93kr485djk46icum2b03', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493637476;'),
('1diehvu8cfb6u4anmndip142r1h46sjdof0ldg3ca27kj0knec98q0btkm2u50vkpp1iro5nu7ugegsgrj8bvi1jld62e34gest7kb2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493215565;'),
('1epjtipgibm1tn460bd50envqvnee6o0v8jond4gifin5f8rgqhsm24810sejo3aodvcrmeim9jf8khbtfpdhkd2s2n2pp0g06ch5f3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493640342;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('1ga9vvfcj2mksmlkhb3eck4995avisvikksjd31sthedmq9rek94jqrn2oalll1m1rim46bjgukvc01tcf0cfuteqorsdvv0hgdr7c3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493641046;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('1ivlptis2qqno8uvbrefl1hll4b0uhd6ooe0ha1dh00i33mkj8992t7ujjrppunif0ml3p0sf7qi76h5asncoskpn348vm21pq7tv53', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493554061;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('1m0sfumn7c9hs01buit36qaj9j29jiv0c88fpbs9oq1h7nek3ujuchccmu1kuochqpgjs97csefgjm9283q92gcmpvmi003etio7a71', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493558965;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('1p9q43cfa8i951q1u5op883b5v2h7gvlikob4v2ofe003e1ig6n1rfaiumla3b0kd3b6cl6q50346nv2aglm551mqji8lbufsji2dv0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493316715;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('1vi8hjme1lduq95lmmqfolm1boo2cf1nmjcmfbi8v9d3881hk49nucu141416duorp3u16ijdt0s2jg1c6cmveggqsbffil08dab960', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493303357;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('2e9o21t838iv3096kgom2l4hbfr9r7m9avqteeosmq0cp56n6v1lihn5gfr48b3l281e7sjdbnil6r38qs796158t1t8b1qgibhmph1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493570924;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('2lmln04lqdjnnk7s2gug74q3k9oklp6pu5t1a9d1r9tvnf2rjqooq5mqoi61j6j0tcf5nqi45ujald8vk8v5mbm9utehea7v6elgfs1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491427998;'),
('35uo50vq0otclpcpgeqfoq75dciajqo82jqnitj4ohjq5ftbck200nnd0nifvrhc9b40jfufaoi8u7qfh2t97drqh2ou146lb5d0sl3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491306816;FBRLH_state|N;fb_info|a:3:{s:10:"fb_user_id";s:16:"1306104259466160";s:15:"fb_access_token";s:177:"EAAELelN4TOsBAKPRqpx8iVL6HWCeL9CCAlEfz3OkuBgIg80c2JmNDEl64QnttSazrfMU0uo58youQhZBvfmc4sTCPNZBHIljOatKA5EjclBbUD9e8ZBZAeG7cR4M5Mhm5ppwor23v0VrKJrskVR5iCsZC1yPr6ZCAJgXLASv2fnwZDZD";s:8:"fb_email";b:0;}__ci_vars|a:1:{s:7:"fb_info";i:1491306816;}id|s:1:"7";username|s:5:"tosho";is_logged_in|b:1;email|s:15:"tosho@gmail.com";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAKPRqpx8iVL6HWCeL9CCAlEfz3OkuBgIg80c2JmNDEl64QnttSazrfMU0uo58youQhZBvfmc4sTCPNZBHIljOatKA5EjclBbUD9e8ZBZAeG7cR4M5Mhm5ppwor23v0VrKJrskVR5iCsZC1yPr6ZCAJgXLASv2fnwZDZD";'),
('379qoug2ung8npuqqco4jhi3m4t0kvm25dnn3sfgtjt609oph3ae9175nhdm9e2squ6sej7fafu8ll9sv3jfr99sr4o91hon53s9ft1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493319250;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('3dkr4n0c5stevem0281a504v6j08d00mpc6sh3v4c8nt76ketijj9gml6am3iku8jac0qae3pepaleutim0qse04gidma20ou4ji3a3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493212072;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('3f36jukahd3fd5ipc8a2nc8k39hcb2jloj5hbol0ulqnu91v2klcsf7ib2af81lbigu465ejsfiqlfk91u68peqosbunla760cpgbo2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493327885;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('3p8ao5vvfqbsp90d6bevkek6ruq29h5q49lfa6beljsfr6bar2n512i4ca91qf8imsmblm4n88nrfq8m6ngnbdp4v8s15jmiv8j52f3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493326194;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('3qqatdqhiorrktrb8fgpvn4a5qh9tntk3b893b36741npiurqujs4c838nit0mf3ji8ku8f9qasulk6adp5t7beo9baifqmea8irc01', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493332422;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('3sfeqi4popiq9i9skeb7uao2io6vlc5ao9u9otdt5cdmstmhgp30cu90sdp6jruji4bb1atjm284o0578m63lfktg6j9n96loje3qc1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493306242;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('3tn359n8qpr27113dpb6shs503si09e0u9na7sugpgr41pg24q8s4gtn718qrschpdvau78bg72744mktsgrkp03c3n96vlno9rt082', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493316292;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('3v8hp6pb7aderfllu561qit7thno2s6526l06u211d5m12ou6bokqk4erm51l2uoid4i0kpjljntdlol83ab7r2i0g65vr62lhr9ar1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493578652;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('43jmma2cao0939eglbobhqeal45ugkr2vp81bn58grenvsr2nm1di101s3lu469tgthsgh0tmengufjhvnem4fh8bgr57nq6e97j3j2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493322221;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('43p6t6d95bost87ni3995400j4bjkgs415su28idtcqp1gsmj44d9pa90kmba7vdhr2gt17p3vvtmsag2o856moafgupkbr0hm2aah3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491307025;'),
('45c22teo247r4jbvhnmau4jtlkgb6rjfa4c0f2vsf8l0ccmdmu5k0jn8pif02ns4vf44hvmtpp214jtm5b4a8a1gresnskk422nliu0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493590845;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('45maqa3u57h86f7crcti6fs9f6s44kv7m07gg6ve79avame0qsbbg93q5jfa7e026u4opstknuoou8mtvva6b4c193nbkmakdjvu2n2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493559593;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('4720nhn9oeggmbd7ug182igo6s935oklc8so67vpdva9mje3077kks580dt7912cb2p0bufadj2h6nnau9inug5vli0hbmadi28k7k2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493562918;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('4b1i1r11aq3gdl77pvvdalg61tt1rin84gacj8l3otreb8od4clmmsoi89nmsqs6v6h8gmo47tnjjfpobdsvocuaf2p4r8sgqn0tbl1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493638744;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('4bk73og1aq7dpfh75kksfe8s828mf13b14rl5uaigdqmj2pduo47ddjs6ah4ec3qfuajr6hjmgtvjojeagfee2scoh24j9iljdiqiq3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491427635;'),
('4k53s0q7mjv007tbj0alsu7lsh7kuaq5lg05lc0e1f2gqusvik81vjs46i4v8vjm3aeddkil2s4v9tu3bkcqo5u7h6nlc5emb8otch3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493642335;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:183:"EAAELelN4TOsBAEZCxNoJ89quyj49ZBXg7neQMRlBbRW3DvfrkYo6gTcoUWefhgn8wbOpLl0bVxDQ8VNIZCibuZCcPJnEDn2Bl5WBayTsZCbhB6iO8ZB9gZAaRmd27O2rJarMZC8upsf5RigHQeJZBUHZCZBntjysVrxZBLmBIizdRLWXNwZDZD";'),
('4km3l8m8fesavq12er1hk3d8equbq8bmesb13cb7sgg9novuete0u3tjr3lt234facdpqvi1p4q2daho1i3l8fanv63b5gmim4usn51', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493561782;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('4n3vbjqop4kk4rake2lkajfb455osdtr8fkonv4fm3kh0nrjgeihrbholbmr93svgo92kalnshc6tuq2r6vtsg3r0j9ktelqsuhtdb0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493290853;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('4vehm1lovli995kdv8co4p0vo0ebr3egicn4b2u6vnikrdo3oi965uvtv3jm35tr6jqmurg05n9hgka8i8k238e7og26knql4r1e7r3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493308121;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('50acgc24vb2992b7mteralrivqbra308tn2u3vgs8m2b1n4pbl84r3tk3svmufa2qqc6ro4np7r2p2v8jnt9veu7adehe3nfqt21h23', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493568279;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('55tka036bgbekr6oi31l6nohaosn4rlvj7j5le83mvb5u4528in390gi5kdriiiop0jsuecm8i024oie17saere7t84ugpn63kf2gp1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493319906;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('5a2ipp51atm84h1drgg0p6mtkjf3u2q46lr1n4r29pulvr7q1hlapgl2hhptc582gjdsmk78fr4hggk86djd7lcs15enccdr1qtala2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493502379;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:175:"EAAELelN4TOsBALwDg5pEh13JRTSWe5LJ9uym5P2IDBxhqYKzB4zB8sQNQ4GYLfJCnTKOGxUgT0anTZAsfTcbAGEUJSZBnLcuOR0qz2XRnfz1EG2w7DCT4Gx1IP06woq76Qi8YzZB3ahFZBFeBnIbyapCJDh5m5vXg39h0hRMiAZDZD";'),
('5app84rarjed7njk93e7c4ga2k5st7lhqfl2mb391910hd7v7qeatptjf0lvq0v75lkn265b4v57ifr25hajqahjtond80oe5pjpmt3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493650765;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBANKczcbNIawoEZABkUOnZC6GaVuHDYdg7pv8OEJ9PddnZBEND1GPi6tZByKG0N9ZCHu0ragSRcSilnvnLetyoZCQjskdw3btxPzxsRGD4ZAzXKKQ6JXaUoLJGNe6khSyTKSu69KHyWuOEERIQXHQmiVeVXIAUg6uAZDZD";'),
('5hnlbluor0a8r2hert3mvmjgfir7sqlfidl9pf64tj5igshj66ci5pbrcdlt50n9v5nkun59tjdv940f9v17jcp53vftdv8jk192041', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493557633;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('5jej7bhjdsvqca9ce71mvvid6o0lrf2r8bnvlef79ntbqstq31dcss2ltnnf36kddtpgm4a9j2q5tkvtn0s69o1akeaj5tprffiqpa2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493212718;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:182:"EAAELelN4TOsBAFDNZBGTjkZC0siXG8QkPrdV8uoTizlH1Dcw7ZAbyZBEKYlO0vBr7xyZCasuwHyiZCO6PxoW7VfYFRBzthTuDVgvFksoI5lH4QinZCjgn6V9tefrkKw1ZC75032obPA4ZCMZBSw9ZAKguE9nqbn6aHjE9KiyJygPbgCTwZDZD";'),
('5k972vpvmoequnijvlip1dvls841ch89akmrkuga3125tlm69geo6hp7bpg6ie9dfum09u6fp86msbkbhoujdh4a1p0sdbatprhrl22', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493635345;'),
('5q22e093sumfn8td18gtff5vr5kl30s3d6jt7cd2spbbh72h7ba5mmbq739cj981pdqar8ko68vjgcoue41op3e71cdrrc5ji2npou1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493304573;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('5sr8togod8scfg17scnu6b6fr3bh7ne0ed7e1lvicodd5sup7odb6kbb1j9o1k2a71f82s303eo6feiebi2qrn7sbb38e2ufkl0grc1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493567146;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('5uqt6b0hqif2ic26ki7cmuv0gnvb09dboo9l3u8f550guo29jdu662c3kupusv8bv2lhpfog6l40ie03kfqlmhbjpkk79t7nukuhta3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493333638;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('5vs9f9leiqamgchsps01vig7aeejomn2o2gaik1ljarspbi97igjis4oudsqket4ca8jgcl0msh925ufe4voers6uo5oq72rh6lnj31', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493321408;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('61qnn7r2pi9lckp2ftckm9o9dkjvtji0b9p4klqrm4n08o7adlapengmrud4vjncfnacr66akk86850kortpjj6aluhu1vmhgqchg63', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491425931;'),
('64q510pk64ab3tee12nuafk0vslth1uu5b7ikmhql5l86f24qml3735d2g7f013dak220pnegel78mphb5poi2c17cpl0af0csdfmg3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493549099;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('6bog3ehi8ehsei468aav692absqnign6oouj9q83o7o9kaibkm4u5iqj8sd8ivafgnjmjsat62ji6sj4sc9q2netgfjh9m9ffce5gt3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493291171;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('6c99345253evg19l46uffhea9pq88vkklm9djhuu714irn0cefuuhuq7lgtqp5skrrn336q365mlvobe9d7e027i6pi6hueh928khf1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491235004;'),
('6cjoiu16a43empef2kdl6i7hhm2ohv3glrffu43ibc9nm66vhk6scak3tenvs2ead8qljef5gk7nm7irv2q4c3for6obsudnatnjas2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493630474;'),
('6eidhq4k1ussjdj255m2s8cqini390ej3m6ce4ojcg2h0lu4shmftajd9le0r4nuf3t08f8ev7dqoqrtbf7k60qj9ndlla90127tf73', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493646105;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('6gh0od1lic7i1eojssdbmupt0f1ic0f2d1fs4bamf8bg9eubiprr8ihriosukk9amajrc5mpn2j37higlk1a32137ccj3uo19sbu813', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493309230;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('6ifh58bdqok0vibpvqf9qpodd8jp5k47lc171vd3fj6a3h7cd2i69slie8b0n9p3ovcj2ip6esfrcps3q9gg235ee47ec6ir6n27mu1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493289776;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('6mk5p6qi4p79rn7aucfl6977f0ig8l4omlcco55lsfss5209ojgcqth3ejcrqd87vtri004bqe9trk5m2kjdsk37qte1hucgiahvq50', '192.168.0.103', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493588543;FBRLH_state|s:32:"2d4f86af9317a6128e2527e4b151cb54";id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('6nfs33nja7bmj1a7spthm31u8o2ncht62sma6k966r8jrqbioqa8mhrc141fvp738eo0fivbenj11612lgotgpg5c9om2fognqdb3q3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493593709;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('6q0kf3nlv97n3p4nd615o9idaome91oiiqg4nsp902ekir76kt842n5qu0g2fsei7cpabsmqmb6bu2jh3d5t56oe94o5aacujthk7l2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490891213;FBRLH_state|N;'),
('6t2n21tealj5qc0ek1g8sfhlrr7a1j3lo1a3652qrsqlk898sjv6pm76kb4iavu1i8voft0epfpgjfijs30qff3vs7ssu1g3vt8k1m3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493319556;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('6ueh4o9s99kfo2ilvppo3s6duhpd4e1af97n1q2hb5vngrel5urqtdd8iv0mt14joorvluf0g694g1kotq9t1avfs4blcqmmmnnthe0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493331927;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('725n0actlcp75naav7gqesccvuonkiva7f7dbtar43roglhja0htta94ofvdmvphtrlo6q1n4j9u6ov37sos1ievqaiqulr54li1v03', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490892209;FBRLH_state|N;'),
('750t3cb0v0eau68vghg5pjq2lgt2q486h02ukc2vi3nq4f1postf0k4s9ok63tcam5jircbhm30oibgv0p7l2531afg1afqkcan7572', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493633358;'),
('7b4oehq6u5mvi62i4qvpq0khu25v00tu305843l6m0cj8i96ekbm9uk7aqv7es69p6j1bjvokjvp5nphggfb6ceple9n0l0vkcsllj3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493634821;'),
('7ekmb4vcvb0pnoheab71ksrml7jrhj7vmq02ii30ljupva1tmh7k9rq88rv3jh2irj0v8q0201jmb4gciamr13bio6qscf2qv8qm4b3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493649154;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('7febcts24jc5bjn6qtuv5e9cp366vmku4fusvktr4q5k5617lt1j7lmb7p3rf68auovt6mnuvtpjrq9emv9gkvkmltb58so0jkgrr90', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493645273;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('7nvdasauqt3e4kuru3ea843tk58bi2ctpmin2hard5f6l3veshj3uqovo6vm9foobr15tubr9rc49tjvb8632j6mv00juu228klru23', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493497261;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('7r2g36j55124oilk4kep4r7k4rvvasad46m3rorjp9qack8tgu5uq1broivfalsm7n37rb6jj368jud3k3ed084k4ckcna484tehus0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493332773;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('7se4ku75pv3skgkfvmaamfig2tf06qvu554p10utvlkui90ij9o477q31kp564dn47aqtagjecqp6rr5j4fm1dlh760nicidur6c7v2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493576498;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('7tmmvdp99tqfelmfeiju2t7t9bs9caiqbi903986ndbng0c7nfomuufblrs294kmlmooldqbaqcaa7p8ki7u4k0kl1glovit1qffmm3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493310030;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('828a2jnoflon9jsdgrdflv4agfoej2vmqpgeab797p0qa1r3ivs7e4kj08dr5c80vmu39ki528s08nci41bs073l3su2q0t6700cdn1', '192.168.0.103', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493588543;FBRLH_state|s:32:"2d4f86af9317a6128e2527e4b151cb54";id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('82rm84c9c4fotdc6nvpd9oeof2se710ta5khpppbersov3aiesu3bnhc144ber12u8be9um81ts9j01acuvn3032p876c6t4cc1i972', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493572689;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('87or0btpqs0ph1ci59rjn5dqnojqmi04to3p95d7m876ful1s2l2bl8a2lg8h5kqudklj3nvto2b0409131tnu454ab539pkqcufol0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493315770;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('88b1h77srpbimr04pqb5bhkq7q50h10j0ardsl3s8tc6heffeqr4a9f3cb3gvv1ic7p7r9uumm8c652vfc93s1r11ma82ltbkgtf5s0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493322598;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('89hk1dloqqg8s4fhh5tcsi6trr6gqi4mu7fbn5g2ajked1t6getkrlou4ee137v8ebu61eiv4k7d8k7fv5tedo98ooctnqsst30nl62', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493329105;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('8c88eeev7umeeep3fpf9od7l2cbqmdosvbpk8cjonm69a2p45r0lvp57chkb4t0qld1m7qvvk8nkh12u75tna6h40jrpd8b4lk7ari0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493291646;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('8dglmtv077cegv7u781vgpfnqhhed3sdb6643sah5kmkqg22eaeqc847rcj06umluvig22q1r4otritfi7f7dl0kb29om9ml7m7njk0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493562605;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('8hdp9t22751j2vcauqvp12tuiemhicf0b4luumjimbms8cpt5gfvasi0dv4uatqui5jtimjc6a0bom3k0l55faic2sd42vgvhp9i1a3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493645587;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('8kbnn15m7gl7ea08b21k8qb70iu15qg9adhr72c4t9trcr2ku3sroqid3hn55rvs688prshefmp88dpugvlvl0h1oscarhrdk2h0d82', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493292987;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('8ngshheqlcvrcmmlm6v8h1r1k2qb7vrgc84786ucas9o2vm30m67ql8c8ms7hj06713o9k7nevki8jvnunnvqutvt0qpp49u2d7bna0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493325522;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('8reuj6hvkfv6cqfj75kr07nroa3q3pdqqevvbb71hijqggivohu29msbvdt5a2kujc53c9emdefftg5qi1s615hqqs4phb9ad208vv1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493571545;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('8sh4ce3259dp6a56qaminbd2v748e355l43fe7vtj7ur5t1gipq46akeuda8aifu7uk4dov4tlsr7t70dnfsusa8egrihtifa81p9s0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493501427;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('96amcnj39dhdpq1h7k2rn1lpnk881of0unej449qs79km0csnd9afb8g6hos5rgoioj2rgevkea3lqabeh2tkcj1r7lue986vkhm1a0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491426260;'),
('99khcic7tf00vb0h6s14okmj4tugv4f79j1p4fo997j9k1vv562nnhoqu1esuo1amc554eh9j7g61qpkdhdq9lsqvvd7sjf553p0940', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493632039;'),
('9ablhrnn43sif346lcj43vqdthi7iqj5il454hutepot6gqss9bd58pt9rvhgov9krj6072v6ii2pbvqea0gjosv1kong6jqjnn9860', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493287159;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('9afolucboul7h5q67vht0mtc28gvoe7masqu1uqo4m1g1i1h00465q03fcgbft5jrgjqi5j9o9754irdjblu9dpp11jahvnlqmu4b43', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493578224;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('9ed67mkb9o3bdnd9mtrjosnnhdhme5ql4hgbel9r4qoa0nr5rok9j4c16l52dpbpsm9m1obhkt1i9vvfnvm6lprsd047h04nkidep91', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490890114;FBRLH_state|N;'),
('9gjl2ok91ts9k69isguv7su4gs4cmr1jfmtqmq8f2e4dhbio2ohn8vttvpn9n11qt7hclptsa0u0ivoeb4oo795vjnt2kepfrugpv41', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493638423;'),
('9kdvrh065p1m1l27u5mntpjkls5rs3i2qgu84a1fhhgjd1lj16uihu42sum4r3lv02l24cb4egnn2ngdum3pe01854rm7org8t4m7j2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493576170;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('9kl2qr0e03hdeiqh6k7jaebtmedscoo0jtmffl0mv6q5q2ai8ke6d7ht7gdkng2v4c301sjlslmffueq02vt8b2jm84isnc78vmdfl0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493573711;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('9mhfv5bofe01kgib5nggq7j08ocd6fhevklvdn4p66kli20c9d8uoc815v6rt0e3mn373pm5dj01r6b9cqf5cdcen7p0ctdbh4pgps3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493213314;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:182:"EAAELelN4TOsBAFDNZBGTjkZC0siXG8QkPrdV8uoTizlH1Dcw7ZAbyZBEKYlO0vBr7xyZCasuwHyiZCO6PxoW7VfYFRBzthTuDVgvFksoI5lH4QinZCjgn6V9tefrkKw1ZC75032obPA4ZCMZBSw9ZAKguE9nqbn6aHjE9KiyJygPbgCTwZDZD";'),
('9oo905n9urj76cj6h0gr0ui01hk68cblkj6mfvjf0guv02qmbooer2jfnaesa5f12acb00cemnhbjojpdvvu8faqgjoasbrcqjmrr40', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493322960;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('9u3065mk5k2kbasmjmfj1749h538657kr047iet8p28201e9snvsc0813b8ae06u7mm6ibfe90f86jda24r78atlgk8ouhdh8aib1o0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493296682;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('a1tqmuf5o5b2g9t2jqeuhvs83dl59625indng0kffu3nlclel59iv5igjo4hicp09g8701j0nsn2loa4hj5jjld433e5n4sqgsqttv1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493636680;'),
('a3pdjvbbvbva4a4r640sji42r7qjf4o7cnk5g5djitnovealdkidtgj12ggvslq844p0j64hlo25tq1he2s2oodah8d6i3mdp479g92', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493589526;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('aa5paqf3i3a35788kmv8ndr2ng5sqts7f8l14oekl7gq567gpi98qk50jogrmmun7uc39rttkb3kmm2smufe3ce1gdssse6md8glco2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493634517;'),
('afb5lseh1304ojoob2ru79buhrkitok1rbdtmukar82fefk4lcntj7a6a2imsjipdp9dhrna6aqkvpuvln5pt320d7tkpt0cq7sg800', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490892897;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBAAGCBotPouFoq1ruG5SuAvlpzHOxbUMbUxdGI5YxASZAl8m5b7dcVPkbUUcZBQ0JyVwXCWZCE7BWieMd94nMKYv2dcLm0ZCKWf6MTfMytOoDz9odtVy0kOSZBopGJG46IA9ZCQOZBJwnv9rxzeVfhtmLIv45aqVUgZDZD";'),
('ao5faoil1i7ev27sgmgvfpgnfkbgmckrr9ql4j9hc6gian40jn0l6s42smna070b8bcno4nhv5b1sifq9gpgq24uum2upjvqk0v4hc1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493318909;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('asaedqlgigtib9b8u0t5vorcc6cdpta60ut3kqjjpbvtcrlk5gsq8mffrm8tsmt39n45j464sljratfl5uhh49toq97vukdc5s82cj2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493633687;'),
('avd671ib915sfu12qmv16h8l2o172lu49027193e6fdq2nb27tod4i2qep3m34u1slo63q25bfd7va91s8auah710ehufd0uj48gh81', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491428609;'),
('bceirlfqs79pta6bn40getejlpk9qtm0p9bfjlpcq142jc3dt1vtmm5doq598ar696rp4p2mltnnpnp7f1s7f9a565mvtt0q40a57o1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491425121;'),
('be2i5jb75p32sl4dtre1plh7l9f0gahlp113c7fucgauj8vegk165bgk1op3o380qc4bp0vki6lduh08dmjpsvjiqlnu8pkd8fliev1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493557331;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('bmad52bvgbj0fehdhotmqfe2opk04vjjjjgqi0b5kofpivjchgfnrpp30u20h8r2urd7dqp153jgknqj5o8sok5i0liq87bdsrvd2i0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493284980;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('bmsii4c65aoj181hm6tu9q0j2p5m46hsf68o7keho06lac2eod8u8u79jlasqr58rjl67kn5lfs0hjqho36o9mun6ku4nd2d4p3aei0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493632669;'),
('bovk8g07upbkj40tlertfcc4hdf9n5uiu57lhsh6f1h8537s1tprl31bbv6ju7k1f1iiop51ur97ls52fo68lqfvvar2cls7jbiq3c3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493284349;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('bpidkkbj1sj12rrkhoenvrebuic5kiti74dti9gvgtm21dudl79h35q2qdl832f135omvf5sqqt0gihumqfbaelj04sslqdggifqng1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490891691;FBRLH_state|N;'),
('bsj00etpgsb8veas221adhcu3bcnm83pdvfcgcq6rvbdv8r492vr7kpjin6cgkrj81ob6tfp9jn10pq9cjipee18bf4gvt5e5rage70', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493329540;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('c9j9d4p6qal56t5vp3s3h4u0k8k9tni8elppf42an8073n3muj4e3hr0ki7ia1ei39lq9rnjtnq429gg9eorljidnj4i4nlhja4j6i2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493216851;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBAFlKsS1SxkR9tWWZAW62hT7wPoN7ZAEsP6ZBe5jOohPM3UVQsK30BpiH0IMudGg0ZAYQRZCewvUvEM6jw8xCDEmCK7L8aTUzJJdZAnK18FwQkHBt3zsKOQ4o7bGQmFRhiGaCTJS4OGVaMshPEZBG48gOlzJxWvFLwZDZD";'),
('cfe1ev2aacdahjqpk3csmi1jh4228d95qr1gnsctr0anvgql0k6gmf0malhd02ujfbp8fu1278g9cj1c3om969b93nngoq0goi5m021', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493558344;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('cofq3vkshkroccnk7aumud74tnp5grsumqp4r1hg4f80sj59r5jnn8g4i3jdkddbhvsh77jid07ho8hrc9je7thpe7o2g5cs3q02en3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493642673;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:183:"EAAELelN4TOsBAEZCxNoJ89quyj49ZBXg7neQMRlBbRW3DvfrkYo6gTcoUWefhgn8wbOpLl0bVxDQ8VNIZCibuZCcPJnEDn2Bl5WBayTsZCbhB6iO8ZB9gZAaRmd27O2rJarMZC8upsf5RigHQeJZBUHZCZBntjysVrxZBLmBIizdRLWXNwZDZD";'),
('d18khgdkndefv3kes9j4fr2uot2snm1l15b2tfhi08l61js6arepemk15t67p4sgibsq3n1h6dmqtub713upslj0ulf34lul3b5efi0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493334294;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('d1dnmusnfif2po15lv7en2rs4huflqn9tjr1s14f8de3qsdr9b4svuc08tfu1ioq44epnrh5bhl39e8f1brcrtasnl7ojdia6hdtr82', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493571855;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('d29tbtc95q3u9tg6keahso93oc3v6kkv2vvvni98rt3od2u18l11gcrc97gno6dmjub1re908a33umcq38dhetiavb3a27eaviqsmq3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493220989;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBANpuUw2RPVF5UiNHZCKsQAASEj8Yi2OELqWLSB5iAy5aODgjCS5RedG1z4ExYeayDLe7AOMwHwBL7IvcVPLZBYELOGcQr7JbEJx9ZCXC1He03fH0eLUUZBUgRogCSqoW8VaZBJtNSzfusLZC8ChfRTIWg4XWD30AZDZD";'),
('d2ns74m0v7b0verrm1daoh05q25ck2mmgsljekmkfmc730mglqu0b75hd0ogkftgun5q2rdll03vn6h55biq0q4gkcefg7jgapckim1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493307474;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('d83t33gn6sb8u09v8fdlf56vdg10be4intdl1rvmf8vmhin1cp8afi8plsj0kiss0nh3nfab662qsfch3aqjsimqrdn3gub7f7g8ks1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493594025;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('dh2qjdgfc3o4usjq59nrcp4qv7qnomjseqd9keip5jupbi0rs7jfcg0efr7p9vho54q5nrureule0763mlh8arhv67i9o6k1u98ok22', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493292296;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('dkmueoraiof8s3h1oqru90oaa10hitmggbdabos370ee79gpni8bb60d1og34820nv6bauv1ukohe572qa0bg5j66u8cfh7c6laljc2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491425613;'),
('docirf71phm2tibkkchegegt011tprlboagt5uanpsra73eq1si942pr5b3hui2idq7n1g1efr5prvi7bo898ihtkctc1gotr9a64p1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493557981;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('dt4iqv4pon0poak8mmaab04kjkp7lltbbcortvu43epeclm7t4qr50dptcnsldvf5skv2m55nh5fvscm4q2cjp3b8asg952hnmr4a40', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493221413;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:176:"EAAELelN4TOsBAAHRFQ8zEuf3NG8zL8gzRxB6Y3hEAZAhYLAgcXwkC94Sj7jrCRgAqX5A85VOriBMjZBZAKIzg6cWCsVlvUx8971WajiyhOfcCFkUujvZCqmldOaSiUAeHqzLBN92DjGhvgGlXbKSSYZCXPkdYuOb0cOPHzoUOaAZDZD";'),
('du2ke2pcg2ah9jmt7868ktcu106sq1ipioh1ql2lm697es80iqcn55rt7k3jtq7o7nvte13auu1ojmd75cfjupq5m5fd9q61vhtu8r1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493502722;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:175:"EAAELelN4TOsBALwDg5pEh13JRTSWe5LJ9uym5P2IDBxhqYKzB4zB8sQNQ4GYLfJCnTKOGxUgT0anTZAsfTcbAGEUJSZBnLcuOR0qz2XRnfz1EG2w7DCT4Gx1IP06woq76Qi8YzZB3ahFZBFeBnIbyapCJDh5m5vXg39h0hRMiAZDZD";'),
('duoi4pitcjs7snvv9l8bol7jlihu42n0i9uu8pbpnp07th1ast2c15f1codtgb9d090ko1qcvnpej8m9j8mhp76g42rflhtqsbmvtj3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491429242;'),
('dvq08egg3b1g0m52h3dp6u1tfp4e4dj7djihc9meeu9bqqvdoliqii7aaf1aib67otq6tc1qcrgq29datiffh02b6k74cuik244ni73', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493216538;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBADCV9Ry9VSv6HcQ3oASf25xRwW6WdS2vwmzok0JhPYnFQDpZBDCb2c0zDKBcoIs2vnf2K4I0AkQNZAyF13BAB7VCUECEnYCiTdkqbL6XFA44wZBdFg3PjLEZA7RgoZBXl7DRam0w2vQ1JFIKfbYb4Hn5VgaZBlUgZDZD";'),
('e0fad5vhvs13duvectr3tek10l5hev7hgcroq11bafse4ievmrnviv5g5d4gcasdkkc30f38aov5b6cg4o3kach7fc81jng67o715f1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493552292;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('e4b7q1l8rn6msjca31ke0l9eijr2uu6kp22rsnosmfqjuldjjhl2cqut52jnrbmrhdp1j5l30tod07ukt98omogq8cmo9v8p4oajhj0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493551976;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('e4bta11knpfjd9kjsfpeiu9r9h02bf8ihm0212lc7p27googm4n61c28hef4odmebugcj38sdsj8ll2sftudhvs9vf90mamtk6k0qk0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493223412;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('e4fc0085kqbjjo03qfu6ek5gsq5hl5m4vrd07e9qcavff3fe6q4ib7asq150a9h24sd0mm5fb6d366db6lsj2k4f4ttce95f4k537r0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493211325;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('e6mfs7sm3e1o3kujbrt7d1ofd3caftqqtueqto8c2c229rfc23t8ii99nt3g1vf02l2hk5lvsdvfgs9nlq0c64h5c9hj6nodlek0s22', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493550107;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";');
INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('e746l6cdrkc0n8g468ohp6p3smfijs32ib4foqaoj8mtu3dumiall465ql57q179da2dnr3gskbs9t0fqlopoeti9n21c9c6h4hdqt0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493311479;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('e838ukh24bpq7ogmr88hi2cul2eb1775m0po9n4f1mivbvvv74g59u41du9m3agfegdnqa82uh7mfke9m5h0ahkp265ihjrlu6psn01', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493286836;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('e8o6iv02s4vecobaqfuvs0a6h6c8aaq5tg2an687drk7dmout56jg9hvhsgaji4o8m362kms1ebnfn9eec8qc45q17qrs38duru02a2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493323870;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('eg1nslb92n2g1c587bv6s0ijf5dn6vlhn4gfoj5rdbdepn8vrhdh8q5dc0hv163sagqscb7kgf1glv2e21b56i00uq3ltidao05mth2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493312970;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('eie4nq9lrm10b5ailfvvalsf1tvko4da01m73kgg7okqfdechrtt35r1u2oal61rsndrd1gqatidqvcpitrq7bv5qj8mt0vd0t1aj82', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493556388;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('ejq73nov8fum3l5c09p8cghs9fkrtab7anlasvu3ha45hv195qagpks7ms6bv302hd8igqbt96s0vb5b4php3jr4k00shaham1rjsh3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493297391;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('ekfu5bfj7llo3d0mijm7v1b3sd37l59r7lhba9neqnmumrf4986hqkja167pjgtn57j2so6ndc3c3ckeka0tge52bpb3irudnthu3s2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493297844;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('esido7i4c62q4idcmhv3gcm61ngdsppptt25k73ii93pdkb2bnv7tsivecg5vhiijp2cdr1uuhvep8k4mip5r5quh5v54fq0kqgtrj2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493299054;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('eu0ts7m498i5jh64q56m6ah4l090vmgm3oh65utlr33c3c88aifjm7mpa9phrqai1ntl4oa1j84ns8oftc52jhjikk38deo2jk1qqm3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491235012;'),
('f49u6eqg0ap9hta2058uogaekv1s5j36r3f57c8aip7fubc00ou39jtahsnfflq8s1ihcvkoaj3419a0od104snrcu257valkgp0ne3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493492906;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('f99ncfas1n6elae22jhoq91naj032r71q7qg4iet77kkjn9uk23efm1hbpg53binarifri83cob0pg0jeo7ci52ai4i78uturi06360', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493284046;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('fb3659hneslh3lg4om75s4hhnu2vkn8emli1q49m1j0pg93gam44e01ucl2e4l8t7gk1shbb936ltkm9vnk9otsnhrvkc3779j2rpm2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493497651;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('fgis3nq7qvpkj20vjbi862flknol7qlm4lfq487vhsdukg6aidhau7tatvnlc06cvse087g9p42tds9pg53amcdk29s9ln6gknj97b0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493311164;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('fo2fgfr0oo0gli6d36vut4aqqed7ju44ns7o5l2s5rug3o754nnpjfshcqtqqta6h27one2f8ifl3ladg5pbdemoe3spid097qvarg0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493295553;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('fo6ijs384s8j4sim5d6b11hqggbd7311ltl1epdja6tt47p6huad080meg8a6cf67o7qu798ie955uotumb7e70qfbp77cscq01lun0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493314041;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('fqharbva6to1mido6h055l8u0l3ubga64d18ns7mkhm25ej3l0212mtkv4g4dqt6dq0kfmpiloeqa8pcer4ardoaknff1003cnt4ig3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493330232;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('fraseb1jv0tpn85u4rveoptoaqv90j70peagiasig6hak2u54i0sdoe0l2e13475n8a2996k6klpmup4k5ck46lungtlqcljqjugm00', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493590522;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('g0tpbn3utf3oueiq0n8hi5jrsauafebuviirutqqfi729k9jdtdqrmaq0pcujk153n3beldluoaak90mpv02nu8s3focfa32ehgadt2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490894148;FBRLH_state|N;fb_info|a:3:{s:10:"fb_user_id";s:16:"1306104259466160";s:15:"fb_access_token";s:175:"EAAELelN4TOsBAOZBVvCBJssjQmhtOL5JBkRVZAqwlIIAwx4slm0G2RcRgqvjsVcwIGsVdE53MSeZBmdt8dpoEuCskEgacIU5w0liukrikwPn8UoC6Pkz0CJQ2dENmyoQ9rlEP1o7DbuHfZCEInuFASfxwwrdkTPgOSh8t9sKwQZDZD";s:8:"fb_email";b:0;}__ci_vars|a:1:{s:7:"fb_info";i:1490894182;}id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;fb_access_token|s:176:"EAAELelN4TOsBANpBxLqDQ7rvFtrMlyoTjzPwSoZCVkh5FX25SwGgAWujleCnqZAkJ7UUq74SwwhYZACbHV5PV3SYZAKHSRmonNoGlEk7r22pGyU3ej9Ei40JBf1E9Oy6CRNtqqzvOKs3y26Nnk4Cw4mkF9TJX4Fw8dpwjuZAX3AZDZD";'),
('g34aflos16pn4fep4j9p9vko2r7ah45r8v4oh1b651v7ochlpntf6hkr570njio1f72q7p7rk7v4sejge0k63lm825qv9gr6ovauih3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493310532;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('g59s9g55olhtqe4s4oantqfeh1e0ibroq6kpjaq54hnldnb0u60i15ref8tu1jvtfiuuaiqaa6ru9cmhotepl6jovvr8urnh72hrk31', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493240619;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAJAZAig4vuoxNMGWitksEx3OgjSaG2hZAFpWfUW7rkFA0zK2w3vcVGTUZCWvlgNcBoSyyBwYSGxZBsMoTqNKg1jISJ8ZAKmWjXBEqJGixrLQRBliHZCQUZAAtDVFZC6wmWJneKIxsw1HVvMhMhCGMCdBQ1ZANgulhawZDZD";'),
('gbv9asgvc2c1clff9ubnv4auuokbat3eat12dm9namggkp89f1di25m0i5u2f14bu2iuuqvtuode683mues0rhr9v0vc77rke66o120', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493305737;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('gha0d71asklnskttkktj5273ilveb3fed2fsd6583unk2ar1dq0tnks6blnhtbhllpm0vcr4f4q90vpmh1takdql286ttjfjivjaba2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493224282;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('ghvd9047h618dv6um6a99c76a427b072i8hcj2q86fg789hm82ci4tbdoflp5ivnio4dggumm0hosheuu2etsdgc7q6b9tvnv5jv591', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493216124;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBADCV9Ry9VSv6HcQ3oASf25xRwW6WdS2vwmzok0JhPYnFQDpZBDCb2c0zDKBcoIs2vnf2K4I0AkQNZAyF13BAB7VCUECEnYCiTdkqbL6XFA44wZBdFg3PjLEZA7RgoZBXl7DRam0w2vQ1JFIKfbYb4Hn5VgaZBlUgZDZD";'),
('gkcva3s1ck475j61g1ogug4ejmr6vrjme34n5vhdopf4icp8kugkjabunmfue0un7tcu3690idu1gj8tfjg4o1okq49k7qoffm5qkk0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490893448;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBAAGCBotPouFoq1ruG5SuAvlpzHOxbUMbUxdGI5YxASZAl8m5b7dcVPkbUUcZBQ0JyVwXCWZCE7BWieMd94nMKYv2dcLm0ZCKWf6MTfMytOoDz9odtVy0kOSZBopGJG46IA9ZCQOZBJwnv9rxzeVfhtmLIv45aqVUgZDZD";'),
('gmlvd13moabhf7b77a6jmb4f746atf5k1caj15kb8hng9ts4g9rou0pqv54gdsrnfeq902mlairsf7272suhpvpjsih8sl85ti7e990', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493647826;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('gr0dso8da5radr0ajit59kj7sarapn52ke01d3an1s1dl7ot0nc3jqtlu194hi1p83pg3ak27rep5sb4ib1rhmpri87103p01oih1e0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493314418;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('gr9fpjqei036n9i5mu4d2hh5pko6rf7ffbf4asvdjvgq928c2ql4pu05jmtal8mtqcoa448j6j7i8dqq0vdrb68h4m72p0ij4kkbdc0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493551049;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('grcm5ejqbh5qon5kaaqqcmu4tugf3t089v56pdkmejun116qkdl9qomt9u4b0d80k5avbkf3usfrgvckoa7poai3gji6es2tq57btk0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493657755;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBANKczcbNIawoEZABkUOnZC6GaVuHDYdg7pv8OEJ9PddnZBEND1GPi6tZByKG0N9ZCHu0ragSRcSilnvnLetyoZCQjskdw3btxPzxsRGD4ZAzXKKQ6JXaUoLJGNe6khSyTKSu69KHyWuOEERIQXHQmiVeVXIAUg6uAZDZD";'),
('grmai6htt19qjhrclhs1uihki32mhd7ka8t4no1l3pdc89ku1l3cr19j1a8ttlii90rtc86l080hutcv6l7u59h011rhh2m8dbavgv0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493225043;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('guqgf3fffankj2bmk800qjde1vlehauj6o3rm15q6qdsb32cn8btm4ars1pav7rfmol4f083ko0g20c72lvltvoptvbrnbfj58r1n11', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491233157;'),
('h0l4dq0gvticeuoqukjob153mbdb0v3dut1e0r1nd4421ukt0vvvnct51d78u7mca4kbpaol22e7bnqtosc4sqvscm1okf4sggha333', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493223014;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('h71h81rc80p8fjivg4vkf9g4tti43kvjjuknn9bmodmup1kiorcdcl3b21bkcvm76muh9v8pkac6jt49ctchod6bto1gf7n6um2uge2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493590217;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('h84f26jqupve9vk0o7ht9e32v6k5hcs6pv90pe8dqsf6demlev9a7jhm99gpd5ug280ksftot1hssgnqotn2hau3eh7sf5ihr5d8o81', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491426687;'),
('haut87q4sh9rkeu2kela4l3v04700hjkgi21717rkgoj085b1i4h6obt7toohsfefl902b5o4nohovfmok5fdbbqkq9ecmddk1sl3g1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493327571;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('hcfdmb7ni9slkdrb9sjk4kieofolq6j32rj7fk0tcb0bpfg8gd2nafvkcpk64uhv14ejjfkd2pou3ontjp2e703e72tvapmffpgsn62', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493575770;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('hr26i38fikn1995gs0eshi3va4rvjce47mmlppod6l2ao9o6es4evlcd802u4s4sh8e3nvkpdltg8a93df0du1ck70hjfimdesfglm1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493300642;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('ibvvvr2q9t38evq2dsdm2sual6os1rblrectd9vtomecgrucqejtgnbd7jgcqd4oh8pbg7naadp2q1fi0f2tuvifoa0dlnq4ukb6470', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493502078;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('ij9qg9ajkjkgpqrsu4sm10ab2gaoibok85lhdt6be0081rgpe0tehel2lcnq861spjrr922pg00j3h49o7diujkqi5kvcv1nm2139i0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493570105;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('illmuvd420q7ebl0tmmnhuu5oaf99et1t99k9eccj5jkgip8bm8fqdirb3e21er5q740m5i729bsaqk3tteoq37m5teannava3jppm2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491429242;'),
('iloc44jfqis7ha4v9t9pcmmmtpgqec4hdcn36vojlse857n2p9ptc8c8di0k3r784t38tr6fdefrfe9ofct1pv8t792jea37qe3cqe1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493570614;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('ip33nps1771fsvdbos6570ujl4iabk8cc6ot4i52d6gv99dqpjpodq7a48umnk9e8mv4n7h4ohe7p1tredg32dq7h4ncam9glbj79u0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493564427;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('iqa0g35ab00d6920rh6k2fbbjjrrf8beep2gbskagbuibrqadl1moata0vrlrjkmjt6tde4vq6ijtp1nrd168llr3j16ncm7gc9kl81', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493595059;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:182:"EAAELelN4TOsBAEoGKMWiXzd0PsNhUeg2ys6tKFju6ZBpL4UNWMVZANZCoZCvpI4KWyZBdgQgcl6y66S5buCuoFFaPcZAGhp1ZCrWS8bUMyhRtsYLxVsbxcALZCZCkX3dcUWPmDiOpmWWbcmn5PTBkpP9zvonCAEd715KcnhzQZCZBuAUwZDZD";'),
('ir0lk08d25vqsdu17m8o5mggqn2rhshbcu7h1cmam1g379q2r20bgd3dlmj61kv6geclhjts8lg9es1cb7f4gg75so9r4pu723jpap0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493577844;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('j2o1n6haupb99vrfc0uto5e63ofapeklp159mclve97udi61oijdc2oekl9m2fagn0rke7fdfcq3n7atm174b2b3vsjqfuv065eleb1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493650435;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBANKczcbNIawoEZABkUOnZC6GaVuHDYdg7pv8OEJ9PddnZBEND1GPi6tZByKG0N9ZCHu0ragSRcSilnvnLetyoZCQjskdw3btxPzxsRGD4ZAzXKKQ6JXaUoLJGNe6khSyTKSu69KHyWuOEERIQXHQmiVeVXIAUg6uAZDZD";'),
('j3493fp54le9okt450aavbom7l8m6tkop4ne2dmekdc987rjftapkt1cefcno39c768phprvhup73jnqb46iirlps7f0srm267mrc50', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493310836;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('j793u8ijs8b7p8qgo12bg28slpgpu0fal3a82c4880jjeo9h7gtpqnht5rcjt7g0iv19p1mqslmhkml3d3646bv8sirv1cfq54usq22', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493213618;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:182:"EAAELelN4TOsBAFDNZBGTjkZC0siXG8QkPrdV8uoTizlH1Dcw7ZAbyZBEKYlO0vBr7xyZCasuwHyiZCO6PxoW7VfYFRBzthTuDVgvFksoI5lH4QinZCjgn6V9tefrkKw1ZC75032obPA4ZCMZBSw9ZAKguE9nqbn6aHjE9KiyJygPbgCTwZDZD";'),
('jeo7vrgv5fk2v3i6898okcu7ll3svpu1grnc7nqgtt6kvlb6isq4g2eav39n59bdlcud20qfafg25v0htd544m7o37h6lrh5vh1l1l2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493305299;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('jgvacg3h9l436t1542iorg6m73jiu168hntt6nhiasnc25do38ji14896ejuj15ef71p8456mqb3qep33rv5knvi8qsedev17qk4cp0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493588363;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAPnc7gxnaaSMJ1UYhpxBc96HRMSStR16eZA8UNbnozWj5lbUU6ys5d9YXQh7eykFZCOUhqA91w3J2LqqqnravZCSqr1E5saQZC0MfzFuLERKsUqCQ7qMVMCflzWkhYt9mYXazK3C0CcQm2oQsR7yajvelWB2RgZDZD";'),
('jlkpklv5ics4oipbf1hgebem98ncqf2pml3fl1qc30ud6l150jc5me40v8tr0klkhor11olffctjb5ugfon5oasglcgtsum1l01abr2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493288656;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('joevlsn2ijo3u7cjpfk2allk11oigappu9mfdddvfqv7veppcu6ig2joc3l95kuvqfdmuabnqeec41cp37j6tqimov9keufm026ssi2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493296997;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('jph5kcggqedaqvg89guq5c9dgile5mimvi37nq6nrr0cmp9hucrn3b9tcdfdrc61i53o266vemu4m3crp8fukp3rdg1eacbsi5q83u0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493648195;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('k0ng0c53ugktkg695furk30mbmhalhkkd3rk42g0hr3vv6gn05gk9ekuq5j49vgu36sjjkd9rbk6ag8qlkkbvdmdmbdue4tokp99ef3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493331588;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('k19637ogkf9oifc99ienk1o4eg2mr0v03acncdn6vciu5vt7dpa8apeu2j9d2e0eul1s6hbo0lhit0jk1kj8mrahushuf764se7b7c0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493220573;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:181:"EAAELelN4TOsBAIVza6t4lm47MJ6v6yAuMOZA1wMqokZAIT5LSfLWZCdxz39nGtGoURI90MHut2HYd75oe6AzwFZCLZAzNZCyQi16etSOPArAgv9QLqJdXZCM6b6hQZCb3ly6ZAcdQ2HSc8a3tdDJiDfnyWit0rLrSRtW5tabUT4ZBu8AZDZD";'),
('k43bjoci966mbk9krq0gud0bclbhgrcn113s9n2e5l3jri0rluhc56vt8j93p4hrkerve6954c0vjc9h9idpjgqst8b86gnn62ua0c1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493286521;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('k4lm1ph7qgrqjlukfgbld866mpq6roctv8khsmsqm67r5ekgclcbdco3rl4h8g7r3aqc0gtp8tmd9arif2jj33s6lrl900l82jj1b40', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493320301;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('k4na08u5e6ih1u9i5rl9d29s4m0o4am14i63l2i4jja65dn2ffjo3b752a4ukvlep7mc07qa3ubh3oj0mo8q3053hvpo8f779kjaak1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493559950;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('k62t1ne8hbmonub4nj4857s52p7ti99gaqfel2j61ng83q7jpc6bcdvad5kivqkiah2qt460op3lsq6bhg4v0c63c94f4aapk2q3go0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493629770;'),
('k6cgd86rph9dnh6nnjh4bjc8l8mg1hncvhj5s67lh29ap8u5f3n2hti5tjbf2f7e07rhqph8g5ihudsjrpa96b40d0ohqagj1qtnf22', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493331286;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('kbio3ladk0h6vbs329gscf1c5asjer77ecftqrojrhprtu7jurlsg1eihlefktm1ebkv9b69f2qi9mbtn0vhoclb42hdb8ch9goq831', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493323342;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('kgjgo15n9k81dqp8v2o6m3ug7rpq37osfejpt29bccp33k1rlkm4agf35ho6iq39unc744clp886guhl79u0techfm34m79laijsnh2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493567563;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('kgnhu87i7f4tndm1psftq5q8fhr6altl0ltimp8t5ircub9pa1kpoak9rqen5rqj2ic91k4ii6pvkuv0cmph9aes6v57vscfqve6983', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493572232;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('kj4e4d9kth22b9tbq75qaiqhp9ddfiieak063p8v1d2te77lt12u5k2fu3dovfqg8gts35q71lvnadqkufdag7up22jtciuto1ncmi1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493324874;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('kjrlrff8766fh1586afongouf952dqtmd0ms43if6i36n2ghp41dgku7k9giphustvt2gh9uvtl0be3bnsqpl5onu85d2i93btf1m93', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493312225;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('kqn0kbr021cf1pitf02votkvblj51r1okvpcufp4sn4nrfg7pb4pbdgoq8oa7u1p8t3atgclepl79dd36kavjrak1p01sdrdo21nng1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493307787;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('kqrp1qvqb8ln008m5cdhr2oou0n5t2djuip15ok0e0mfhm2kircu2r3a6odvdg0kr8se2l24fa5n29uhval48lhkthhmt0o9abaoa70', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493225043;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('ksq4kvu0uakvjo7k1hui29dk7hqndg6kvgf2lg0hehrfr96qldpmlgsmu06634e1804hmrafirrfiem63a762mliujcflfvnau1ul72', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493561450;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('kuf23ba29c39mt2m71j1sl3rci05tk35fal1gsrfhobeindf4lu6man549pmvdvgmqk223ks9unuqkf0vf26r8av06eb3bfumq9ost1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493592674;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('l9jk24a9g7roprfctob3andibpthh1iv2qte9cliiarf12eljosdcsusta5a1qrec13jnlvt2pj7euckbsmlgdldggs9pbgsi67r963', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493549728;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('lbd4h8h0j21flb0sqpd4cd7d9q0ap9b060vfnpopif0c4g58bbr4amcg28mrq2ohk7aie0u57poa7dr7d3rjqf8lsdl9h6o9i5t7jp3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493330867;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('lgsh6kc6o631p5sb0tamqcu2fbirpaccl48h9np1riomrgka3ott7880uu56s04euilibkdasjtndlk5njkpmic95glquj1mijvsev2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491234111;'),
('lkt1vbhs77cavb4rstpl8n183j5maak2o8vhpjqgmqlkeiq5qfv4khsau9q91sdds9nv8d5ig0cd9u2c10kdfbhmfffmtbpc9gf6lt0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493549406;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('lmdieomh71l4fsvooq3kg0f7v8si2es9j6t7726h8n70bas49hu6rqjm8pddd03t5vrnedr9ak1nf2rg7fp9pbogt97jfvar9nqtio2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493566401;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('lqbcv4bl0d4tbdor612aomsbb1s19ts2aegphog8bat3k06eudso74oil24toklsct2u37deq7ujmpdv6k52jfke1k5kp0d26nrbf21', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493308468;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('lrd68mbts72n0h43lklrv6covvg8ptsj0tei9bhtectq41simo79ss7eu6n9bt29spg9959mvqrpe5mthpi0nf3q3biv6oub4v1vgi2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493325177;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('lukh76o8kgvihtorpvlboc6llmsaha2vfpo986ajq5tocsikaeviaa0n6ct7hgh3fsbiv1m0sp66he54e65tbdbgor8u6dg8leld5f2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493304961;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('m0756ihsuk0btnp5imrjtcheamsmlvuoqi7sj77a2v5r510als5c6drprllio4i1drt4qjce2qot9k7qk6vvdopddh1hnj9b4d90qe1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491431578;'),
('m1ktsv85tgtg13rhmj5jfmj3kl88rghjr3q4tql79fpuque9g2gt01u1794mispe7jgs39irhse72i4l19bpigfgpntn0i4cpd5lt52', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491428307;'),
('m9u0qg4nj4bulsu5a3f3nmt3nj3j2anq1srpm7ip0ffvu6ok13ajs88594app16bc705norsosjvst3eq08j6a62vqg08hq887ipf93', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493551372;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('mam6o184n2ju90d7nal1vv18bg2dk9mb95h52pffdpmm8nupvu5fvba4bb42586n4smlsvr8mt3gf0uh1ll9h31iq7d3ueij6eeiul0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493291959;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('mc1gclphv2ma2rfmao4r8lfnr1iusk282l5qtkuh7gb6ibq2r3d0sjqn76105ur9c0suj7rq0pvs5erecj7retuu0njp0gcjfh75lg3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493556013;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('mcp69n5i32kvbed9mevqtpedoou9st6nei47ol21lg2tad18543f5s148svjmke4bnrhr1m29d2u9454go5clda0ckadidesuu4naj2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493324379;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('mju69j4970cnaum52heha823a6nj3k769hg9qpllbbt2k8c2194jpng4ejpbq611r3l5tiv40v2hpbbhlqj5671nnev8eled2mepou1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490890802;FBRLH_state|N;'),
('mn2gskt3o8b5a41p8c5j2qkee4frs1teioj2eep5o6pr4nll3sepmp9j2hqrfumkv4pn0eipjuqtij9njospi93g1hc0765if1och33', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493290278;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('mq064lp11sq24bsr8iujjajpojsrt2qg89t4p7kbfs301opguqqo93gi0mh4s5m1pi0fgjalopss4pni7kj3ifqj883mpmr4b02rkn2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493658037;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('msvdqkv96antr9b56ho50mhtu3elo9birbrqgi5uhi0r22m5lm19fj75tfjpm57otlibolttvi97qm8cag7uodlihdcbhrd9nkgc7c1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493223968;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:173:"EAAELelN4TOsBAEo2eCBSy1IqgLXh7dFU9DizoQ2AriJH6SHwxAyOJmPqzalqduYuJJ216zx4aeltYaxjaZBdJME1ocFu5MXX4oKX1P7Kl075ej7yw7TOE13BeTmevzog1gbBdpTMkHyxBjD1K4uZATkpKYEiMIn4mN8xC0igZDZD";'),
('n6dtaqphdt6ltv3bkcp5v9gvgvcr04upvgmankf75lc4fe54k56s3vk8r994hb7357sn00mnme6ossdnu317kbuq60tq76ntg60ljc0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493639057;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('n8itsb135871u8r27d128e7oiav8je6ld2cukpfpd1udtfnhtkumghbtf8l9v18atd18tkcdbsievc0fc7t1aerisp1s7i33qt4oj83', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493552914;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('n8tund2qp79kgnoo28a3p9k12pdock0jso7qs78a5eglpigi2d7stbilqf0r9akgstn6e2lr5gbj74alg0q5ta56dje6pse2t13aji1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493632995;'),
('n96sllfkblpg8nl6me7itqhusehfduruauvjsfh4n203t8h9jur8v7r5sngjt4l9soerjr4t7kvst97rlqvo2sf958tuvdp2j4hkcr2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493641378;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('nanhp8hla906ckbb6979crq2v3esh6htf109n555mn7pijbpki5liaa3pro1ovvnmitgk3q43lv792pq0itmvlukrt60qpj1ccfijv1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493648507;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('nokedoafec6vrpt7ugmrp4t0njnl0l16lulh4ljkhr54m2f9vm48lne7qq535dc5du58040q3qurmngqup3eab9nrn3gjotiu59j8q2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493299355;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('nptv2thqglgab1dv6klcplpe018d0f168pefi11abh6r90p7v5on0t9kk811ovpd5asg45vvl4sfff426v5j3sgsj29vhsd72gjk400', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493587640;'),
('nui8tf6d8sf5cck5cge9gul9jg0d2kjevhrqviv8fd3gcis7up8mg8152b9vbvdf6gngta403fo06sopodt23neqr7bi14u1v5s48c2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493327110;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('o3uefda9lr60lsijlo5mj2uvnkb1p7v4v5hd63n711jducrb1r7o8pb714f4a254figt9qpitnetuhrirp3n5lt8qt5nnuclk9vffp1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493298186;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('oclp2t5k74i268qjmh9nf5asaf7b30bjr4ts1c6u0aoru2boo7vnd7j5o2nvr8eop2bhlekr0b889qfdh65lroi6btrf9j2egr205i1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493594337;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('odmnuk0nbmo3osovo6dq07jut0ojk9uhbgftutoko270icu19e7cit5u4m1050bi1h7t6ftl2l396skm15irvf224h8cuqnbbs5dp11', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491428917;'),
('of52lhsp5vvnqv9pvjt10c8bvrudbs3jm6619ja8b74mdij7lchsg3gop46l3i6gi1cqa3meqvmaf9sns47111m6o9m3nmmbctso791', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493631106;'),
('oji99vc15gp0jq5an045oq7freggdpbpi4nrari78u0go05g699g4uhr0l388dguujbdmn2lnje7tdvcgtqdebvm2o1s1ru1gd43673', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493647194;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('ophaantduapk5totc1jf73h6h7tti3tr51fnqbvtfp2jorna17h0s0knnfjvmnucc7gtvnct4jm20ls8ee56r09vm2d1mjnsidlilg1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493502722;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;FBRLH_state|N;fb_access_token|s:175:"EAAELelN4TOsBALwDg5pEh13JRTSWe5LJ9uym5P2IDBxhqYKzB4zB8sQNQ4GYLfJCnTKOGxUgT0anTZAsfTcbAGEUJSZBnLcuOR0qz2XRnfz1EG2w7DCT4Gx1IP06woq76Qi8YzZB3ahFZBFeBnIbyapCJDh5m5vXg39h0hRMiAZDZD";'),
('oqf413d2lukgm4grv8kmq4l5kmiftfpt16hj0c49vf4nlgbic84jgtrf7hnch13mfcqfs8ak76d97n0pcanrqs2n537jl9g80qkg712', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493578652;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('ord14ddq25253hb5b8f1nt30phiujb0fj1hhu80vphv5l1m3tmqk83b9cittd0chrtjaurhj6vofbeo5kpp7eo6ltj32egfu5d0laq1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493299682;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('p3nvti811iinmvgu4kl9svuclss80os5d78s8s6mdt59e62f3m6o5r07q61e52l3dnt54g73vjf9i0a4jvv50qoluagv1bb8l1fb2d3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493552598;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('p57n8a0k08p9upufffajrcamohjmj1enkod11buuna9ib98anidg61th2pc72lfathvbvkamtkjlttlp2mqk033jms74qfm16e2s760', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493631630;'),
('p72666pjq1t0fplns5hojgctlqhm96vu7dvukfs5lursgkqu15o2qmn6iv10ki9rnpcu6nfoov8ut0fqp8mfol1ctckpkkp29v1dav3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491232603;'),
('p7irspa872l99oe8vtlv2p0r1vp8b9cd6mkc2ijqbt25c1re5s77uoic3teo9jkf863hajvhcbidnabv44ggvk7kbt81j02861r3sc3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493313283;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('p9tsbsf3r9md9u20c7rhja79kth9ugbv2h67pcq7u8gkc1h6vgnst1lnpffkgjoun1ii7r7tgmamg4baktm1fu5eo0krjvt7fgefsg0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493307163;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('paulfulc075eral3ulgpisej9tqv1emq7je7320hi9a2l95fkdkmimr6llk6at8spgnf6bdo1ebhbm09bra7nmljnblhncab2eub193', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493317222;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('pbrci7tq7k6bklq87q5cm293bitscr1idk869j4gca7ovv20ahkn852e1tqe6u7mg7ugfebrtbl68rhujh8npns6c8bobihl0j7j471', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493560267;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('pckmute1rn93den5lo95lmr2kn1bed9mutkgmdus5papusr8r5u984i9cltnu8l15kmg08bn1mcu79has4fkbkdit5oa7c4pekh81o0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493594730;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('picgrtj0e2jpc4s6r8rc9citg3s0s9t5m1vshtlbn8q5o5plqhlinnvb2b99g3bo2hlei91vh6cge9vs43ndlga4p22gkcotvc67e23', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493298517;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('pm953u1g9sh81bqk8a1736rlv686bqqr0691qudrn3dkaloj9rqgvnhdf21a40djs7dc68hekjnn7cqfsd3orervnhlcni54iodfa70', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493559288;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('pmifbij401thfe6g15omntkm2saqi157i9rlja8t4k0jg11e3e4d8vbs00brem5cfjv6vouk1p49phn63ctut7d781talvmkmvjlhu3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493639937;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('pvplmtkeqouovgn932f1ta72rjctaqlu4m0e886iis16a556nhqsjaq3s5iu1vihom0lgd7niq5ktl8b7cfkuhac4ajgrgtu8teatv3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493553748;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('q5825edj6n6jifnqu1nvjn232vm7tdo269uu8em7nqh8hclto8cj7nnmsnfvjni826risvr6u3d3i4uh8en7v0kef8bkuc55pqt9ja3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493302603;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('q59fq4d4t0jqde1hlj7rp1dg899uic2c6l2jcekvfokp4eqtvrnjn79m71kb0lopuq3jh7m2bfqso92sdbt6da0gobp7d91mhm3fa83', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493330557;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('q855og5nbm82ubk3e5utnqpgg36h9tqs7lsqbmmp72fcj43utvenv2l67sl0i79vhtdoggcjfeu65k8rccqgpuio0k6da4npbunu202', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493285287;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('q9o0phd467iqalsin59m1lndpo8otjmqoib671pgi43bsq04vc0iusifig2r45hm34d0l5aiecbe1udr71258nmd3qm79i18e3nfc70', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493333971;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('qb40thmqqsh6670e2pmd9v4cogm1abal1ninksqocllghovuhi5v5ab6gkfakdbqi4sil398bc447emgtg79tq77vnqts5r1si7qid3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493651151;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBANKczcbNIawoEZABkUOnZC6GaVuHDYdg7pv8OEJ9PddnZBEND1GPi6tZByKG0N9ZCHu0ragSRcSilnvnLetyoZCQjskdw3btxPzxsRGD4ZAzXKKQ6JXaUoLJGNe6khSyTKSu69KHyWuOEERIQXHQmiVeVXIAUg6uAZDZD";'),
('qcflonkqefgfk5ppmmha78hga6is0c7hlirrb7r40616923r8v6c65qlfvijm0fttcrrv6p9kkbhovkh9g3vk7otecn9fsormt4ku83', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493571233;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";');
INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('qcrheqan6pqgs9ha4vf8fn37r05pdpu3r5pmg4fiiouhbnfa6ohmb705lb7j7usls5ue2ge2bfvbgmitrvgtoq9g938o7ss74ljam00', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493644618;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:183:"EAAELelN4TOsBAEZCxNoJ89quyj49ZBXg7neQMRlBbRW3DvfrkYo6gTcoUWefhgn8wbOpLl0bVxDQ8VNIZCibuZCcPJnEDn2Bl5WBayTsZCbhB6iO8ZB9gZAaRmd27O2rJarMZC8upsf5RigHQeJZBUHZCZBntjysVrxZBLmBIizdRLWXNwZDZD";'),
('qds31d88rpd9ahhsdeubtuk1ih924psaake58v27t0l7cuk751av9aun2eiiqsm8cambiu771q995sb4ukfr4gop9v37ftm5drgc4h1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493565984;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('qe5ded7i3mn6qrvgqj6m7d4putpts4nnddamtrttrabltg9mu6mebkkovkd81bqieuqd7m7h6eu96b6fokcffpvoh3hqdcor2la1c23', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493555703;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('qepoj3nmlfrh4ou2566d4jve5q9mh4id834ddl3d1t5a4v57jgjevgpu7h0qdo7l3la33ciu4s6b9pa9kj2tun8jgf2cup689pb6g62', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490889607;'),
('qf0u4h0qkg8ouho4disg2f49boovft37n4sbb3prta7it1hhhktl97pauimeo02u3kbmkdvg5p551ec5ps7qek6fd4ferfha6smcmj1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491427328;'),
('qfdo1t7k6li0i7aksrcjne5trfp832qtkdqn42o3prb6ur0ta7dourju25ke5f9veksu4nfp7essi4fp0a4spq95ih8hd2rrhc9h9t1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493639608;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('qj3ki7vibcvs2e5ho4dnbs9c5gf97i3hfvuuo4oie619jfprei25droqvdahcq8v7idogodjbd8ghrqgmopvjei4o3ah6h96bgh5tv2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493285628;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('qrog3dfjrsvibcirvalrjdqt6b674p210b1k1o22o5tpcpgivvsq65nnonqr2ta1oip0q6ngopo1u989149fj33uu394lfcp00lp0a3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493595043;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('r4ra705ejl355t3g7fmsv77punrjri83tgspsh7fj080ftihuodtu8todq57da0e19lpcnunikua45651qeuujut1q520rn071q11d3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493326808;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('r9p2ahqrh8fcr3ee6sglq2gotqjaakcljoiabvij0bjmne85fo59tl3d3aubmfhk9g4ogqnmivigif5b5lqtfmbjs7sevt072a4csb0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493636379;'),
('rb2hq1m3uva2n4c3im9ngehdbjh7kueuvs8g80t0vujvfskj9av4c5v2er4ls1t5ff00l72kvlgs4610lohuv08miljfjoo0gncbrc2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493204473;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBANMPt20KMfMMtNl8qdmnzws93GqhY2aEvHV9zxXtaZAKiziwZAby5xX3qjplndDuOzdTe82a2qrZCk5QBlDWIDlGrgfKmfIIw43Tug6Lt9YEYklxHUQmGZBxQodG1zN5ZCb7btDxjO6XZCSagFOpfSvANCsu4OYwZDZD";'),
('rk8rq3c4bpr6ajbo5ucsinf59751hcs9mo882mqucpq49bep39nq9mi9745nlt71a00bn0jp9c07779f95akklc0e4frbuu9aq3gt51', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493648817;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:180:"EAAELelN4TOsBAORTZCH8XM74GQvnALc1Nr75C57EKSNB8yp5BGTmTr33MMW4Ss1FUwMR9x5Otw6KutpDQoQreZBqMQHPPbgb8IQBHko6aXbG9I0t4W2qXIDJ0638DJVZAgRYM69bLKr24BM9V4vKIDZA5JAZBZBbgZAbBfDIOZBKZBAZDZD";'),
('rvet0545ohka0er52c6f4m28o87gs982fpr5ag4hnjricv9kidqhhdupvg9ajp4054fsqim56vcaeu9s58rio4pmtdkjsd43tsa86g3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493641692;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('s1orukla2u17plsb8voivqh56auk6atlv3mns3gcv0ft9ha29tmq43ni468vs6eqdats37ghtq2bcm1ce5j1gtg4spojennkc442742', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493500571;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('s6v07k02cdinj616o03kbg9k7f7veuke0l5m016364erc0nmigfcnciavdpkukjvedfgiiqoounke45t7tufhrh1p6mmu3u0fqn0p13', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493550737;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('sbmi0uamong8a7od3td8rfd1jt3h986h93du5jevnftqc4243v355a5hl4o6o3sins35hr4kgifshlji0e2v9undqvvll7c5080vgv1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493317566;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('se74sdi0sg4nd2admfr5r0ql3idh82fud7qisstdog3gv0gjpl334rl9lo35nvudvu2ntsbib16pg688n61058i9hb67tvlpspoamc2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493550418;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('sja93mehc9blecjb5rad7e541sr7d1279tp5b4843ejhjvnna8ij831cd6dsf6anglobn8i222lov7g6kgrcpfk7lffrdg3ejot08p2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493329894;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('slkaq0f8ufuql37p3mmfog13bh37k9l8u9su13io1n199k6ud343qa101ic82u0uvvm7n26md5nglpdnb2gle68ln6soajdop49u083', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1490893985;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:178:"EAAELelN4TOsBAAGCBotPouFoq1ruG5SuAvlpzHOxbUMbUxdGI5YxASZAl8m5b7dcVPkbUUcZBQ0JyVwXCWZCE7BWieMd94nMKYv2dcLm0ZCKWf6MTfMytOoDz9odtVy0kOSZBopGJG46IA9ZCQOZBJwnv9rxzeVfhtmLIv45aqVUgZDZD";'),
('splgvbptdh7lformuthm64ato4j3k270ruk3u0qm01hiurmje59lrgi7l0po6gmga8emeorgsmaml5p666fcdjjoaufns8tp7bhefc1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493551675;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('t3m9ivjdadgdqqd6cnc00605k09c1s4a19pdnli97rmlb49d4ulaombjigt5otp7f8s3npluanqe9u2h6arkgqp8o4ia8art0dd63g2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493296047;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('t4ujvaq2ct725hbgtc62rcabpgtsedejbcv10ojsps6t2kbqujq0ithldagg7nb6toj01he2jq0jvgcei1qqrkroonbda386fdpslf2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493296377;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('t8gb6blkjbsu657etaabe1nh0i3fnfufqi8b5ppl0810qicnb38eacs9f43cv35dj0t3lvk5vdfkppbfkgvrmksiakjn3edhrgdkoc0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493317964;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('t9ipe1puools3kdk1k29lt4es4qc3ojbdb6dfl0eau6kfo8i0d2m9gqtgn9nesfe5a7re3iv1ovbpr0sdooc96tli6d74s2sgggdbu0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493308894;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('tdpm90nha0oaobt1higiof89prbpdfc0v0d23nog8hid5fkbsrrulimdre9mb4aljd57hmnp0tddtoftbapvfvcikmp1c1rv4a7r6v0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493640701;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:175:"EAAELelN4TOsBAMItcRlGZCenJYVcVIkr2MyTWp61bE0E7KhLlgTIOcOPIP2D0BBVeFi9qYpXwaTCwsKu3T5AECrtpDhf3fORRNRvHuARMuccTAvprz5PuIZAfODd8Vs1w1ukFxnXFv4iDRZAZAr5bSdpKdsJQjRfVzy8MT6VnwZDZD";'),
('tj53of633k566h2md54iqbksb3gkj4ao3ad684c8j1oq95aevip9hsh7359ktetqop94vidpic2994225im5o2l6u96dfkr2u99n5q0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493215072;'),
('tnvm5uv9doopd8njbndupl56bmgbf9ik2povm0nb4ro47i71imt515m3t9u7aji4ui03q65ib6s94n1ctq423eqhrpn201j9t2fvnf1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493301996;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('tqj4o07509dptpsad8uda7fsn4534473g82286s0aje36qfmlmb1utl6gadnr8pkfkijr2vvtne11hd1g3ooc95a5h3uvpevv865v41', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493576925;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('tscb4m7fqf3hjbs02uqqjrq8viq7vc8dvosgv140dke2qoms2a7bavl516stenobift1eu0p11v7uibp5e4q8ggplm3id1gjk32d0e2', '192.168.0.103', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493586833;FBRLH_state|s:32:"2d4f86af9317a6128e2527e4b151cb54";id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('u7ekoqa488q1imhfe1e67bhr8mtme50uigf9j3i14c6s7035bu8dlpqkr10th11c6qslqc20r08vp6k7eike87ibibrhtcmord0lcl2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493284652;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('ugbm53puths4u2o4qmm86kcjl8ruklfjoob9kf4gphg4vlkkh6rqf4ut8qffcue5chn7orois9m4cqeahbdnjqla02nt0kfjit7o8f2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493325824;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('uuj6kkkthm7ckfh1ofn42u4jgm5tpkfl3spv0scca4r6h11hdavjf2tiqrtm6sramhsfo6mdaoskrcnc9gf7850u3s1g0n31e84bim2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1491227972;'),
('uuntrk97urpjqoaij8maap1r756mofnuuffvil6a7hi9cj0m23041uon96nrsuas4vtimcc3vm4vrvef1lqgsg53ieok0894cgsohg2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493572995;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('v5d9gin4usd9qsh58s55n875pmrfqqntbjttaqqgis9m4c5m15f637oed4i81j24mbhke8tr1nf8b7124jcj6h5e3u1bf03t4b8cin1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493286102;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('v5mg6dhlu6i01bc5ua7kk92ien52q05eik42v7jkbnbigbdrfgbh3f10rm7tl9odaas434o5p58r6rhmf8t2ofaqd3sa2k1cj6qaeg2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493321726;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('v6lalfv8avhl2h6gcdimoqf9r1aao74ng48gj7hbiv6u3nu3vc1svc1adnp6n2v91cod68khheql1p71lvp5l5dedcd0g9f903njnt1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493334294;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('v8vm1sto0juk1a2uko3cle4gl84p9afso1kt57q4mpnvcehitqj5hf55699904bu2levnnre8qi5s4uutdll0813ge3641unjdrn0m2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493564867;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('va9v6rn4dhumto75qtl8oa0v5s26aphl6f1gb352pqmpicbfsekbipju5pjr4qjs0f2gfp87hd9dk3e2jam78se3ut2ils0f0pqo5e3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493589909;id|s:1:"9";username|s:5:"Marti";email|s:17:"myavorska@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('vagpklffi1a11tua33fk1nu2md9ugllbms3vh9ivl5rbjvd8b2q0vln1f9qb63t88lc87qdhdainfbv4lk02ddlvr6egq683on6vrn0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493565246;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('vdtfsappus3gi1hlpo3mmqosanotnunvjrojiit8mksoi6evstse47fcg1vq7b0auiu0mcgb6e25mu6pcp3d49elhppf9iev8cfgpq3', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493302302;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:174:"EAAELelN4TOsBAE0sx9TW85dQ6ZAy8zTlM6xPUdazezL8SIISY5kMUlZCGKXOmoFzYiqUxVKY9sOvkE8hfsTo1MsMzW54Iblk9OXlhGFlN8bgw1VZAxIiEt8xo72c4LL03XSIiMeOBOPWul8mA8e2oNrw5rrqoHSNx5Hzwus7AZDZD";'),
('ve340fet5thbjkat9igquc5cpokl2u4igpn61alia4i2qmqcs8rptakkaqn0735jo4vtajp6jl5net16onemd195udirvpqtnd8aed2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493333090;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('vejueq8amihrgpcpg1h57mdt8dlr9i933kpicfe30lgl5l0oeaj5jq4qbdkglfuie3jp95q0fh8icavnkpn5eqss7fuf8hm9j7fomk2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493500949;id|s:1:"5";username|s:6:"Velioo";email|s:16:"velioocs@mail.bg";user_avatar|N;is_logged_in|b:1;'),
('vgmfqs2pgg2qh4rhcf0bnepsap7uojerise7d2ofv6q6c1ibin8ib4iavsudj1b06rldkvbue38r54bbbkhsnopfh9jcnakoa5ml3b0', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493562280;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('vld7iebnk461guvg52ecium8tdhcn4g2fvlrn1p3jki0o3ugdj90763s6809g3q6m4st8kkttom3jie5picv7fvgss7dok8rgrocfq1', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493587253;'),
('vouu3r9jqmkq60a64su1l2p6ctrbftocd353u9c7772muople7amme1gr4sai0te3vvmilsi108rbl6mgbp23n9j7jf2fdummtq6lo2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493558658;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";'),
('vuujbig9su6pudr4ov8h7pu9lc8idp0hs1arf0pl3ujhcok9t698taoeejm4uhdn3rhrdnuksh6egb20f5hd6k2s3043qiespabj5t2', '::1', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1493573371;FBRLH_state|N;id|s:1:"5";username|s:6:"Velioo";is_logged_in|b:1;email|s:16:"velioocs@mail.bg";user_avatar|N;fb_access_token|s:177:"EAAELelN4TOsBAIK7FbcF6dZCAvl95FwFP3CAyqlkESEw41c5HL7w7Rod6MQzyKAOhR7BUSZATwT9ScCFaRQw73mwV7eHwKA4IGjXWAEHwdomEufuAZBOeWEBUi6ZAvY8oLRFcfKptqGRIUz0V1Wr1HxZAJccRkGvHm40eWxsZAHgZDZD";');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(64) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `birthdate`, `avatar`, `created_at`, `updated_at`, `points`) VALUES
(5, 'Velioo', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 'velioocs@mail.bg', NULL, NULL, '2017-03-30 16:43:48', '2017-05-01 11:39:53', 31),
(6, 'velinoo', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 'eveva@das.bg', NULL, NULL, '2017-03-30 17:15:34', '2017-03-30 17:15:45', 0),
(7, 'tosho', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 'tosho@gmail.com', NULL, NULL, '2017-04-04 11:53:30', '2017-04-04 11:53:36', 0),
(8, 'test_user1', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 'test_email@gmail.com', NULL, NULL, '2017-04-26 13:34:05', '2017-04-26 13:34:18', 0),
(9, 'Marti', '2a1b436cf78fb27e5326e5d07286ff19d083e8ff0b9dcde6b46cdedc69dbd12158c18171446d15e9fdcca1b9ea55cae70d5e1401ce025c825d611196cd40125c', 'myavorska@mail.bg', NULL, NULL, '2017-04-30 21:10:51', '2017-04-30 23:26:23', 16);

-- --------------------------------------------------------

--
-- Структура на таблица `users_history`
--

CREATE TABLE `users_history` (
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `result` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users_history`
--

INSERT INTO `users_history` (`user_id`, `quiz_id`, `result`, `created_at`, `score`) VALUES
(5, 33, '', '2017-04-30 18:22:39', 6),
(5, 33, '', '2017-04-30 18:24:11', 1),
(5, 33, '', '2017-04-30 18:24:51', 4),
(5, 33, '', '2017-04-30 18:31:15', 1),
(5, 33, '', '2017-04-30 18:31:23', 2),
(5, 31, '', '2017-04-30 18:44:13', 1),
(5, 31, '', '2017-04-30 18:57:35', 1),
(5, 31, '', '2017-04-30 18:57:37', 1),
(9, 33, '', '2017-04-30 21:11:16', 6),
(9, 34, '', '2017-04-30 21:14:03', 1),
(9, 34, '', '2017-04-30 21:14:12', 1),
(9, 34, '', '2017-04-30 21:14:21', 1),
(5, 34, '', '2017-04-30 21:27:50', 1),
(5, 35, '', '2017-04-30 21:39:38', 2),
(9, 35, '', '2017-04-30 21:42:43', 2),
(9, 35, '', '2017-04-30 21:43:21', 2),
(9, 34, '', '2017-04-30 21:59:25', 1),
(9, 34, '', '2017-04-30 21:59:28', 0),
(9, 34, '', '2017-04-30 21:59:29', 0),
(9, 36, '', '2017-04-30 23:26:23', 1),
(9, 36, '', '2017-04-30 23:26:26', 1),
(9, 36, '', '2017-04-30 23:26:28', 0),
(9, 35, '', '2017-04-30 23:30:34', 0),
(5, 36, '', '2017-05-01 11:39:06', 0),
(5, 35, '', '2017-05-01 11:39:29', 2),
(5, 34, '', '2017-05-01 11:39:35', 0),
(5, 33, '', '2017-05-01 11:39:45', 3),
(5, 32, '', '2017-05-01 11:39:53', 2),
(5, 31, '', '2017-05-01 11:39:57', 1),
(5, 36, '', '2017-05-01 12:26:43', 1),
(5, 36, '', '2017-05-01 14:24:14', 0),
(5, 34, '', '2017-05-01 16:56:18', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `user_category_likes`
--

CREATE TABLE `user_category_likes` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура на таблица `user_quiz_likes`
--

CREATE TABLE `user_quiz_likes` (
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `result_id` (`result_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_quizes`
--
ALTER TABLE `categories_quizes`
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `facebook_accounts`
--
ALTER TABLE `facebook_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fb_user_id` (`fb_user_id`),
  ADD UNIQUE KEY `fb_email` (`fb_email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`);

--
-- Indexes for table `notification_users`
--
ALTER TABLE `notification_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);
ALTER TABLE `quizes` ADD FULLTEXT KEY `description_i` (`description`);

--
-- Indexes for table `quiz_comments`
--
ALTER TABLE `quiz_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzer_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `r_comment_id` (`r_comment_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score_system`
--
ALTER TABLE `score_system`
  ADD PRIMARY KEY (`quiz_id`,`result_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `result_id` (`result_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_history`
--
ALTER TABLE `users_history`
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_category_likes`
--
ALTER TABLE `user_category_likes`
  ADD KEY `user_id` (`user_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user_quiz_likes`
--
ALTER TABLE `user_quiz_likes`
  ADD KEY `quiz_id` (`quiz_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `facebook_accounts`
--
ALTER TABLE `facebook_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notification_users`
--
ALTER TABLE `notification_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `quiz_comments`
--
ALTER TABLE `quiz_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`result_id`) REFERENCES `quiz_results` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `categories_quizes`
--
ALTER TABLE `categories_quizes`
  ADD CONSTRAINT `categories_quizes_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_quizes_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `facebook_accounts`
--
ALTER TABLE `facebook_accounts`
  ADD CONSTRAINT `facebook_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `notification_users`
--
ALTER TABLE `notification_users`
  ADD CONSTRAINT `notification_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_users_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `quizes`
--
ALTER TABLE `quizes`
  ADD CONSTRAINT `quizes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения за таблица `quiz_comments`
--
ALTER TABLE `quiz_comments`
  ADD CONSTRAINT `quiz_comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_comments_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_comments_ibfk_3` FOREIGN KEY (`r_comment_id`) REFERENCES `quiz_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `score_system`
--
ALTER TABLE `score_system`
  ADD CONSTRAINT `score_system_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `score_system_ibfk_2` FOREIGN KEY (`result_id`) REFERENCES `quiz_results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `users_history`
--
ALTER TABLE `users_history`
  ADD CONSTRAINT `users_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_history_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения за таблица `user_category_likes`
--
ALTER TABLE `user_category_likes`
  ADD CONSTRAINT `user_category_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_category_likes_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения за таблица `user_quiz_likes`
--
ALTER TABLE `user_quiz_likes`
  ADD CONSTRAINT `user_quiz_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_quiz_likes_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
