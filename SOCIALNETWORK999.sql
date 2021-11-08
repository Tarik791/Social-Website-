-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Июн 23 2018 г., 02:36
-- Версия сервера: 5.6.39-cll-lve
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `SOCIALNETWORK999`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Wake up!', 'john_smith', 'john_smith', '2017-09-21 01:55:34', 'no', 20),
(2, 'hi', 'ihar_petrushenka', 'john_smith', '2017-09-21 01:57:35', 'no', 20),
(3, 'ughnjmi', 'ihar_petrushenka', 'john_smith', '2017-09-21 01:59:56', 'no', 18),
(4, 'hi again', 'ihar_petrushenka', 'john_smith', '2017-09-21 04:13:36', 'no', 20),
(5, 'Nice to see ya!', 'ihar_petrushenka', 'john_smith', '2017-10-11 23:44:03', 'no', 20),
(6, 'That was my previous car, and it was me who was driving it. This stupid motherfucker scared me a lot... ', 'ihar_petrushenka', 'ihar_petrushenka', '2018-03-06 10:58:58', 'no', 42),
(7, 'Just before sad events. It was a sign from above, I suppose.', 'ihar_petrushenka', 'ihar_petrushenka', '2018-05-20 13:27:59', 'no', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(6, 'ihar_petrushenka', 15),
(9, 'ihar_petrushenka', 24),
(15, 'ihar_petrushenka', 39),
(18, 'ihar_petrushenka', 38),
(19, 'ihar_petrushenka', 36),
(20, 'ihar_petrushenka', 21),
(21, '', 42),
(22, '', 40),
(25, '', 38),
(26, 'ihar_petrushenka', 40),
(27, 'ihar_petrushenka', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'bart_simpson', 'ihar_petrushenka', 'Hi, Bart!', '2017-10-08 14:02:54', 'yes', 'yes', 'no'),
(2, 'bart_simpson', 'ihar_petrushenka', 'ewrty', '2017-10-08 14:03:46', 'yes', 'yes', 'no'),
(3, 'bart_simpson', 'ihar_petrushenka', 'wretrh', '2017-10-08 14:03:48', 'yes', 'yes', 'no'),
(4, 'bart_simpson', 'ihar_petrushenka', 'wacsfd', '2017-10-08 14:03:50', 'yes', 'yes', 'no'),
(5, 'bart_simpson', 'ihar_petrushenka', 'esrdgf', '2017-10-08 14:03:52', 'yes', 'yes', 'no'),
(6, 'bart_simpson', 'ihar_petrushenka', 'ewfrt', '2017-10-08 14:03:56', 'yes', 'yes', 'no'),
(7, 'bart_simpson', 'ihar_petrushenka', 'qr3wt4e5', '2017-10-08 14:03:58', 'yes', 'yes', 'no'),
(8, 'bart_simpson', 'ihar_petrushenka', 'ewrt', '2017-10-08 14:04:00', 'yes', 'yes', 'no'),
(9, 'bart_simpson', 'ihar_petrushenka', 'wewr', '2017-10-08 14:04:02', 'yes', 'yes', 'no'),
(10, 'ihar_petrushenka', 'bart_simpson', 'Hi, Ihar, my dear friend!', '2017-10-08 16:53:21', 'yes', 'yes', 'no'),
(11, 'ihar_petrushenka', 'bart_simpson', 'Nice to see you again!\r\n', '2017-10-08 16:53:40', 'yes', 'yes', 'no'),
(12, 'bart_simpson', 'ihar_petrushenka', 'wergf', '2017-10-08 17:01:19', 'yes', 'yes', 'no'),
(13, 'bart_simpson', 'ihar_petrushenka', 'qewreg', '2017-10-08 17:01:21', 'yes', 'yes', 'no'),
(14, 'bart_simpson', 'ihar_petrushenka', 'sdftgyhjkl;kkjuytrewertyuiolkjmnbvdswertyuikljmnbvfdertyuiol,mnnbvcdsewrtyuiolk,mnbnvvfcdsertryuikjmnbvcdsertyujikj', '2017-10-08 17:01:38', 'yes', 'yes', 'no'),
(15, 'bart_simpson', 'ihar_petrushenka', 'sdftgyhjkl;kkjuytrewertyuiolkjmnbvdswertyuikljmnbvfdertyuiol,mnnbvcdsewrtyuiolk,mnbnvvfcdsertryuikjmnbvcdsertyujikj', '2017-10-08 17:15:13', 'yes', 'yes', 'no'),
(16, 'bart_simpson', 'ihar_petrushenka', 'hei', '2017-10-08 17:15:47', 'yes', 'yes', 'no'),
(17, 'bart_simpson', 'ihar_petrushenka', 'ewrtghj', '2017-10-08 17:17:43', 'yes', 'yes', 'no'),
(18, 'john_smith', 'ihar_petrushenka', 'Hey, man!', '2017-10-08 19:03:49', 'yes', 'yes', 'no'),
(19, 'bart_simpson', 'ihar_petrushenka', 'GF', '2017-10-08 19:06:30', 'yes', 'yes', 'no'),
(20, 'bart_simpson', 'ihar_petrushenka', 'nice', '2017-10-08 23:31:09', 'yes', 'yes', 'no'),
(21, 'bart_simpson', 'ihar_petrushenka', 'ert', '2017-10-09 01:57:45', 'yes', 'yes', 'no'),
(22, 'bart_simpson', 'ihar_petrushenka', 'hi there', '2017-10-09 02:04:30', 'yes', 'yes', 'no'),
(23, 'john_smith', 'ihar_petrushenka', 'hjybjnk', '2017-10-09 23:27:15', 'yes', 'yes', 'no'),
(24, 'bart_simpson', 'ihar_petrushenka', 'ghbjnk', '2017-10-09 23:38:00', 'yes', 'yes', 'no'),
(25, 'bart_simpson', 'ihar_petrushenka', 'hi', '2017-10-12 00:15:47', 'yes', 'yes', 'no'),
(26, 'bart_simpson', 'ihar_petrushenka', 'how r u?', '2017-10-12 00:16:11', 'yes', 'yes', 'no'),
(27, 'bart_simpson', 'ihar_petrushenka', 'how r u?', '2017-10-12 00:16:30', 'yes', 'yes', 'no'),
(28, 'bart_simpson', 'ihar_petrushenka', 'how r u?', '2017-10-12 00:17:00', 'yes', 'yes', 'no'),
(29, 'bart_simpson', 'ihar_petrushenka', 'Ð©Ñ€Ð¸Ð¿Ð¾', '2018-01-26 11:09:24', 'no', 'no', 'no'),
(30, 'bart_simpson', 'ihar_petrushenka', 'Long time no see!', '2018-04-19 15:30:05', 'no', 'no', 'no'),
(31, 'bart_simpson', 'ihar_petrushenka', 'What have you been up to?', '2018-04-19 15:30:25', 'no', 'no', 'no'),
(32, 'ihar_petrushenka', 'name_surname', 'Hi there, my friend :)', '2018-05-05 14:55:55', 'yes', 'yes', 'no'),
(33, 'ihar_petrushenka', 'name_surname', 'Long time no see!\r\nWhat have you been up to lately?', '2018-05-05 14:56:59', 'yes', 'yes', 'no'),
(34, 'name_surname', 'ihar_petrushenka', 'Hi! It''s been ages, since I saw you!', '2018-05-05 15:01:03', 'yes', 'yes', 'no'),
(35, 'name_surname', 'ihar_petrushenka', 'Let''s hang out somewhere in the city!', '2018-05-05 15:02:06', 'yes', 'yes', 'no'),
(36, 'name_surname', 'ihar_petrushenka', 'Let me know when you''ll have time for it.\r\nKeep in touch!', '2018-05-05 15:03:05', 'yes', 'yes', 'no'),
(37, 'ihar_petrushenka', 'name_surname', 'Deal! See ya!', '2018-05-05 15:04:49', 'yes', 'yes', 'no'),
(38, 'bart_simpson', 'ihar_petrushenka', 'Hi\r\n', '2018-05-20 22:32:28', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'ihar_petrushenka', 'bart_simpson', 'Bart Simpson liked your post.', 'post.php?id=21', '2017-10-11 22:34:30', 'yes', 'yes'),
(2, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka posted on your profile.', 'post.php?id=28', '2017-10-11 22:43:38', 'no', 'yes'),
(3, 'john_smith', 'ihar_petrushenka', 'Ihar Petrushenka commented on your post.', 'post.php?id=20', '2017-10-11 23:44:03', 'yes', 'yes'),
(4, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka posted on your profile.', 'post.php?id=29', '2017-10-12 00:16:23', 'no', 'yes'),
(5, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka posted on your profile.', 'post.php?id=30', '2017-10-12 00:16:48', 'yes', 'yes'),
(6, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka posted on your profile.', 'post.php?id=31', '2017-10-12 00:16:58', 'yes', 'yes'),
(7, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka liked your post.', 'post.php?id=24', '2017-10-12 00:17:16', 'yes', 'yes'),
(8, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka liked your post.', 'post.php?id=39', '2018-05-06 15:09:58', 'no', 'no'),
(9, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka liked your post.', 'post.php?id=39', '2018-05-06 15:10:00', 'no', 'no'),
(10, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka liked your post.', 'post.php?id=39', '2018-05-06 15:10:05', 'no', 'no'),
(11, 'bart_simpson', 'ihar_petrushenka', 'Ihar Petrushenka liked your post.', 'post.php?id=39', '2018-05-06 15:10:07', 'no', 'no'),
(12, 'ihar_petrushenka', '', '  liked your post.', 'post.php?id=42', '2018-05-20 18:05:00', 'yes', 'yes'),
(13, 'ihar_petrushenka', '', '  liked your post.', 'post.php?id=40', '2018-05-20 18:05:06', 'yes', 'yes'),
(14, 'ihar_petrushenka', '', '  liked your post.', 'post.php?id=38', '2018-05-20 18:05:40', 'yes', 'yes'),
(15, 'ihar_petrushenka', '', '  liked your post.', 'post.php?id=38', '2018-05-20 18:14:38', 'yes', 'yes'),
(16, 'ihar_petrushenka', '', '  liked your post.', 'post.php?id=38', '2018-05-20 18:14:42', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'yeah!', 'john_smith', 'none', '2017-09-16 03:54:48', 'no', 'no', 0, ''),
(2, 'Hi, everybody!', 'john_smith', 'none', '2017-09-17 02:45:43', 'no', 'no', 0, ''),
(9, 'Hello!', 'john_smith', 'none', '2017-09-17 02:50:06', 'no', 'no', 0, ''),
(10, 'fgh', 'john_smith', 'none', '2017-09-19 00:48:21', 'no', 'no', 0, ''),
(11, 'fvghbhjnj', 'john_smith', 'none', '2017-09-19 00:48:29', 'no', 'no', 0, ''),
(12, 'gbh', 'john_smith', 'none', '2017-09-19 00:48:33', 'no', 'no', 1, ''),
(13, 'hgjb', 'john_smith', 'none', '2017-09-19 00:48:37', 'no', 'no', 1, ''),
(14, 'gbhj', 'john_smith', 'none', '2017-09-19 00:48:42', 'no', 'no', 1, ''),
(15, 'gvbhn', 'john_smith', 'none', '2017-09-19 00:48:46', 'no', 'no', 2, ''),
(16, 'gbhnj', 'john_smith', 'none', '2017-09-19 00:48:54', 'no', 'no', 0, ''),
(17, 'hjb', 'john_smith', 'none', '2017-09-19 00:48:57', 'no', 'no', 0, ''),
(18, 'hjbjn', 'john_smith', 'none', '2017-09-19 00:49:04', 'no', 'no', 0, ''),
(19, 'vyjhjb', 'john_smith', 'none', '2017-09-19 00:49:07', 'no', 'no', 0, ''),
(20, 'vyjhjb', 'john_smith', 'none', '2017-09-19 00:50:35', 'no', 'no', 0, ''),
(21, 'ybgunhimj', 'ihar_petrushenka', 'none', '2017-09-21 01:57:20', 'no', 'no', 1, ''),
(22, 'tfybgnuhj', 'ihar_petrushenka', 'none', '2017-09-21 01:57:24', 'no', 'no', 0, ''),
(23, 'tfybgnuhj', 'ihar_petrushenka', 'none', '2017-09-21 02:48:21', 'no', 'no', 0, ''),
(24, 'hi', 'bart_simpson', 'none', '2017-09-29 22:29:40', 'no', 'no', 2, ''),
(25, 'dwefrty', 'ihar_petrushenka', 'bart_simpson', '2017-10-04 01:29:13', 'no', 'no', 0, ''),
(26, 'defrg', 'ihar_petrushenka', 'none', '2017-10-04 01:29:31', 'no', 'yes', 0, ''),
(27, 'Hi, Ihar!', 'bart_simpson', 'ihar_petrushenka', '2017-10-11 22:35:21', 'no', 'no', 0, ''),
(28, 'Hi, Bart!', 'ihar_petrushenka', 'bart_simpson', '2017-10-11 22:43:38', 'no', 'yes', 0, ''),
(29, 'nice', 'ihar_petrushenka', 'bart_simpson', '2017-10-12 00:16:23', 'no', 'yes', 0, ''),
(30, 'g', 'ihar_petrushenka', 'bart_simpson', '2017-10-12 00:16:48', 'no', 'yes', 0, ''),
(31, 'g', 'ihar_petrushenka', 'bart_simpson', '2017-10-12 00:16:58', 'no', 'yes', 0, ''),
(32, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/enmed/-T_OMIeXQbo''></iframe><br>', 'bart_simpson', 'none', '2017-10-14 19:29:00', 'no', 'yes', 0, ''),
(33, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/embed/-T_OMIeXQbo''></iframe><br>', 'bart_simpson', 'none', '2017-10-14 19:32:31', 'no', 'no', 0, ''),
(34, 'hi guys i am looking forward to superbowl, too!', 'ihar_petrushenka', 'none', '2017-10-15 13:07:23', 'no', 'no', 0, ''),
(35, 'dfgjh', 'ihar_petrushenka', 'none', '2017-10-15 16:33:21', 'no', 'yes', 0, 'assets/images/posts59e363a10f6afmy own elephant))).jpg'),
(36, 'Me and my beautiful wife!', 'ihar_petrushenka', 'none', '2017-10-15 16:38:45', 'no', 'no', 1, 'assets/images/posts/59e364e513372having fun.jpg'),
(37, '<br><iframe width=''640'' height=''480'' src=''https://www.youtube.com/embed/IBDRnax7RaE''></iframe><br>', 'ihar_petrushenka', 'none', '2017-10-15 17:03:19', 'no', 'no', 0, ''),
(38, 'Good times...', 'ihar_petrushenka', 'none', '2017-10-15 22:57:27', 'no', 'no', 1, 'assets/images/posts/59e3bda71b345on the beach.jpg'),
(39, '', 'bart_simpson', 'none', '2017-10-16 00:05:17', 'no', 'no', 1, 'assets/images/posts/59e3cd8dd0c92good times....jpg'),
(40, '<br><iframe width=''640'' height=''480'' src=''https://www.youtube.com/embed/KlZv4MSF5I8''></iframe><br>', 'ihar_petrushenka', 'none', '2017-10-16 00:19:41', 'no', 'no', 2, ''),
(41, 'The site looks great! :) ', 'reece_kenney_1', 'none', '2017-10-22 21:50:12', 'no', 'no', 0, ''),
(42, '<br><iframe width=''640'' height=''480'' src=''https://www.youtube.com/embed/4KkFKx1bQPY''></iframe><br>', 'ihar_petrushenka', 'none', '2017-11-08 18:58:02', 'no', 'no', 1, ''),
(43, '<br><iframe width=''640'' height=''480'' src=''https://www.youtube.com/embed/Q1xJ4m7fPSg''></iframe><br>', 'ihar_petrushenka', 'none', '2017-11-10 22:40:41', 'no', 'yes', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `trends`
--

CREATE TABLE IF NOT EXISTS `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Guys', 2),
('Looking', 2),
('Forward', 2),
('Superbowl', 2),
('Hi', 1),
('Dfgjh', 1),
('Beautiful', 1),
('Wife', 1),
('Times', 1),
('Site', 1),
('Looks', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'name', 'yyguhj', 'reece_kenney', 'reece@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2017-08-08', 'htgf', 1, 1, 'no', ''),
(2, 'Reece', 'Good', 'reece_good', 'Reece22@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0000-00-00', 'profile_pic', 0, 0, 'no', ','),
(5, 'Ihar', 'Petrushenka', 'ihar_petrushenka', 'Petrushen@yahoo.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2017-09-10', 'assets/images/profile_pics/ihar_petrushenka5f52b88b98a9c9ebbab5a2da4da82129n.jpeg', 17, 8, 'no', ',mickey_mouse,bart_simpson,'),
(6, 'John', 'Smith', 'john_smith', 'Js@js.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2017-09-10', 'assets/images/profile_pics/defaults/head_emerald.png', 22, 5, 'no', ',bart_simpson,'),
(7, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey@gmail.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2017-09-20', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',ihar_petrushenka,'),
(8, 'Bart', 'Simpson', 'bart_simpson', 'Bart@gmail.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2017-09-20', 'assets/images/profile_pics/defaults/head_deep_blue.png', 5, 3, 'no', ',mickey_mouse,john_smith,ihar_petrushenka,'),
(9, 'Reece', 'Kenney', 'reece_kenney_1', 'Reece1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-10-22', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 0, 'no', ','),
(10, 'John', 'Lennon', 'john_lennon', 'Beatles4ever@beatles.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2017-10-24', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(11, 'Name', 'Surname', 'name_surname', 'Email@google.com', '67f78137a7c6f9cd55a4c74ebc01b4ff', '2018-05-05', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
