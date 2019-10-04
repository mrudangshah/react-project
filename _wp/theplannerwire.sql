-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2019 at 06:42 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.1.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theplannerwire`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity`
--

CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `primary_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-30 09:57:25', 0, 0, 0, 0),
(2, 2, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 14:42:33', 0, 0, 0, 0),
(3, 3, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-30 07:22:33', 0, 0, 0, 0),
(4, 4, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-28 04:25:59', 0, 0, 0, 0),
(5, 5, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-29 23:28:15', 0, 0, 0, 0),
(6, 6, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-28 06:06:54', 0, 0, 0, 0),
(7, 7, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-26 04:00:11', 0, 0, 0, 0),
(8, 8, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 21:38:40', 0, 0, 0, 0),
(9, 9, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-30 03:37:36', 0, 0, 0, 0),
(10, 10, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-26 15:36:45', 0, 0, 0, 0),
(11, 11, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-27 07:11:31', 0, 0, 0, 0),
(12, 12, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-29 14:41:43', 0, 0, 0, 0),
(13, 13, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-29 15:44:58', 0, 0, 0, 0),
(14, 14, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-26 15:22:15', 0, 0, 0, 0),
(15, 15, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-29 08:36:41', 0, 0, 0, 0),
(16, 16, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 14:58:40', 0, 0, 0, 0),
(17, 17, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-26 17:57:12', 0, 0, 0, 0),
(18, 18, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-29 02:37:06', 0, 0, 0, 0),
(19, 19, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-26 19:33:27', 0, 0, 0, 0),
(20, 20, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-28 22:02:34', 0, 0, 0, 0),
(21, 21, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 12:00:55', 0, 0, 0, 0),
(22, 22, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 20:17:41', 0, 0, 0, 0),
(23, 23, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-28 06:50:53', 0, 0, 0, 0),
(24, 24, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-27 13:04:45', 0, 0, 0, 0),
(25, 25, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 19:00:33', 0, 0, 0, 0),
(26, 26, 'members', 'last_activity', '', '', '', 0, NULL, '2019-01-25 10:34:44', 0, 0, 0, 0),
(27, 3, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/\">Chynna Phillips</a> posted an update', 'I do not feel obliged to believe that the same God who has endowed us with sense, reason, and intellect has intended us to forgo their use. (Galileo Galilei)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/', 0, 0, '2018-12-31 04:54:55', 0, 0, 0, 0),
(28, 17, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/john/\">John Caius</a> posted an update', 'I find that the harder I work, the more luck I seem to have. (Thomas Jefferson)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/john/', 0, 0, '2018-12-17 12:23:57', 0, 0, 0, 0),
(29, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'Black holes are where God divided by zero. (Steven Wright)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2018-12-23 22:08:53', 0, 0, 0, 0),
(30, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'I can write better than anybody who can write faster, and I can write faster than anybody who can write better. (A. J. Liebling)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-20 16:49:55', 0, 0, 0, 0),
(31, 11, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/ralph/\">Ralph Fiennes</a> posted an update', 'The fundamental cause of trouble in the world is that the stupid are cocksure while the intelligent are full of doubt. (Bertrand Russell)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/ralph/', 0, 0, '2018-12-18 11:46:27', 0, 0, 0, 0),
(32, 16, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/\">Wynonna Judd</a> posted an update', 'Women might be able to fake orgasms. But men can fake a whole relationship. (Sharon Stone)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/', 0, 0, '2019-01-22 05:10:40', 0, 0, 0, 0),
(33, 4, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/\">Kiki Cuyler</a> posted an update', 'In theory, there is no difference between theory and practice. But in practice, there is. (Yogi Berra)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/', 0, 0, '2019-01-25 07:19:04', 0, 0, 0, 0),
(34, 16, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/\">Wynonna Judd</a> posted an update', 'http://www.youtube.com/watch?v=t4CUNVYxxZM', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/', 0, 0, '2019-01-20 07:29:05', 0, 0, 0, 0),
(35, 8, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/\">Michellie Jones</a> posted an update', 'The difference between \'involvement\' and \'commitment\' is like an eggs-and-ham breakfast: the chicken was \'involved\' - the pig was \'committed\'. (unknown)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/', 0, 0, '2019-01-27 21:11:52', 0, 0, 0, 0),
(36, 24, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/\">Andre Dubus</a> posted an update', 'When one person suffers from a delusion it is called insanity; when many people suffer from a delusion it is called religion. (Robert Pirsig)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/', 0, 0, '2018-12-30 11:26:22', 0, 0, 0, 0),
(37, 8, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/\">Michellie Jones</a> posted an update', 'Victory goes to the player who makes the next-to-last mistake. (Chessmaster Savielly Grigorievitch Tartakower)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/', 0, 0, '2019-01-21 09:13:19', 0, 0, 0, 0),
(38, 14, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/siobhan/\">Siobhan</a> posted an update', 'Black holes are where God divided by zero. (Steven Wright)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/siobhan/', 0, 0, '2019-01-21 05:21:02', 0, 0, 0, 0),
(39, 9, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/monta/\">Monta Ellis</a> posted an update', 'http://vimeo.com/24724866', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/monta/', 0, 0, '2018-12-25 15:23:04', 0, 0, 0, 0),
(40, 10, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/\">Picabo Street</a> posted an update', 'Once you eliminate the impossible, whatever remains, no matter how improbable, must be the truth. (Sherlock Holmes (by Sir Arthur Conan Doyle, 1859-1930))', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/', 0, 0, '2018-12-18 09:19:09', 0, 0, 0, 0),
(41, 19, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/jason/\">Jason Chaffetz</a> posted an update', 'Once is happenstance. Twice is coincidence. Three times is enemy action. (Auric Goldfinger, in Goldfinger by Ian L. Fleming)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/jason/', 0, 0, '2018-12-28 04:53:28', 0, 0, 0, 0),
(42, 7, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/ron/\">Ron Faucheux</a> posted an update', 'C makes it easy to shoot yourself in the foot; C++ makes it harder, but when you do, it blows away your whole leg. (Bjarne Stroustrup)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/ron/', 0, 0, '2018-12-29 08:05:04', 0, 0, 0, 0),
(43, 21, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/\">Cecelia Cichan</a> posted an update', 'http://vimeo.com/19658300', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/', 0, 0, '2019-01-23 14:43:15', 0, 0, 0, 0),
(44, 12, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/seamus/\">Seamus</a> posted an update', 'I\'m all in favor of keeping dangerous weapons out of the hands of fools.Let\'s start with typewriters. (Frank Lloyd Wright)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/seamus/', 0, 0, '2019-01-22 06:54:50', 0, 0, 0, 0),
(45, 16, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/\">Wynonna Judd</a> posted an update', 'Victory goes to the player who makes the next-to-last mistake. (Chessmaster Savielly Grigorievitch Tartakower)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/wynonna/', 0, 0, '2018-12-28 12:37:25', 0, 0, 0, 0),
(46, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'Whether you think that you can, or that you can\'t, you are usually right. (Henry Ford)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2018-12-24 01:15:19', 0, 0, 0, 0),
(47, 18, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/\">Thomas Carew</a> posted an update', 'Life is pleasant.Death is peaceful.It\'s the transition that\'s troublesome. (Isaac Asimov)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/', 0, 0, '2019-01-14 10:00:30', 0, 0, 0, 0),
(48, 10, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/\">Picabo Street</a> posted an update', 'You can avoid reality, but you cannot avoid the consequences of avoiding reality. (Ayn Rand)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/', 0, 0, '2018-12-19 07:50:25', 0, 0, 0, 0),
(49, 17, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/john/\">John Caius</a> posted an update', 'I have not failed. I\'ve just found 10,000 ways that won\'t work. (Thomas Alva Edison)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/john/', 0, 0, '2019-01-15 20:53:09', 0, 0, 0, 0),
(50, 8, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/\">Michellie Jones</a> posted an update', 'Talent does what it can; genius does what it must. (Edward George Bulwer-Lytton)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/michellie/', 0, 0, '2019-01-16 07:26:48', 0, 0, 0, 0),
(51, 6, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/\">Matraca Berg</a> posted an update', 'Problems worthy of attack prove their worth by fighting back. (Paul Erdos)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/', 0, 0, '2019-01-03 14:27:19', 0, 0, 0, 0),
(52, 4, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/\">Kiki Cuyler</a> posted an update', 'http://www.youtube.com/watch?v=1rjoQ-knMGU', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/', 0, 0, '2019-01-12 21:58:53', 0, 0, 0, 0),
(53, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'I shall not waste my days in trying to prolong them. (Ian L. Fleming)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2019-01-27 14:12:46', 0, 0, 0, 0),
(54, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'WordPress is web software you can use to create a beautiful website or blog. We like to say that WordPress is both free and priceless at the same time.', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2019-01-20 10:19:16', 0, 0, 0, 0),
(55, 24, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/\">Andre Dubus</a> posted an update', 'He who has a \'why\' to live, can bear with almost any \'how\'. (Friedrich Nietzsche)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/', 0, 0, '2018-12-28 18:12:53', 0, 0, 0, 0),
(56, 23, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/\">Vernon Dahmer</a> posted an update', 'I have come to believe that the whole world is an enigma, a harmless enigma that is made terrible by our own mad attempt to interpret it as though it had an underlying truth. (Umberto Eco)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/', 0, 0, '2018-12-27 19:31:05', 0, 0, 0, 0),
(57, 2, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/\">Antawn Jamison</a> posted an update', 'http://vimeo.com/28926706', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/', 0, 0, '2019-01-06 21:54:43', 0, 0, 0, 0),
(58, 7, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/ron/\">Ron Faucheux</a> posted an update', 'The use of COBOL cripples the mind; its teaching should, therefore, be regarded as a criminal offense. (Edsgar Dijkstra)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/ron/', 0, 0, '2018-12-28 18:38:45', 0, 0, 0, 0),
(59, 18, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/\">Thomas Carew</a> posted an update', 'http://www.youtube.com/watch?v=wGwyf1t0OCU', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/', 0, 0, '2018-12-21 02:39:20', 0, 0, 0, 0),
(60, 22, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/\">Dan Cortese</a> posted an update', 'WordPress is web software you can use to create a beautiful website or blog. We like to say that WordPress is both free and priceless at the same time.', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/', 0, 0, '2018-12-17 19:30:34', 0, 0, 0, 0),
(61, 13, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/shan/\">Shan Foster</a> posted an update', 'An inconvenience is only an adventure wrongly considered; an adventure is an inconvenience rightly considered. (Gilbert Keith Chesterton)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/shan/', 0, 0, '2019-01-26 15:37:50', 0, 0, 0, 0),
(62, 6, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/\">Matraca Berg</a> posted an update', 'http://www.youtube.com/watch?v=kh29_SERH0Y', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/', 0, 0, '2018-12-29 18:42:56', 0, 0, 0, 0),
(63, 21, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/\">Cecelia Cichan</a> posted an update', 'If you want to make an apple pie from scratch, you must first create the universe. (Carl Sagan)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/', 0, 0, '2018-12-31 21:24:05', 0, 0, 0, 0),
(64, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'In theory, there is no difference between theory and practice. But in practice, there is. (Yogi Berra)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2019-01-22 18:05:08', 0, 0, 0, 0),
(65, 24, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/\">Andre Dubus</a> posted an update', 'All truth passes through three stages. First, it is ridiculed.Second, it is violently opposed. Third, it is accepted as beingself-evident. (Arthur Schopenhauer)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/', 0, 0, '2019-01-12 12:53:45', 0, 0, 0, 0),
(66, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'Nothing in the world is more dangerous than sincere ignorance and conscientious stupidity. (Martin Luther King Jr.)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-15 23:28:56', 0, 0, 0, 0),
(67, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'The full use of your powers along lines of excellence. (definition of happiness by John F. Kennedy)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-04 13:34:36', 0, 0, 0, 0),
(68, 18, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/\">Thomas Carew</a> posted an update', 'Black holes are where God divided by zero. (Steven Wright)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/thomas/', 0, 0, '2019-01-29 03:17:26', 0, 0, 0, 0),
(69, 4, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/\">Kiki Cuyler</a> posted an update', 'Many a man\'s reputation would not know his character if they met onthe street. (Elbert Hubbard)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/kiki/', 0, 0, '2018-12-18 21:05:15', 0, 0, 0, 0),
(70, 2, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/\">Antawn Jamison</a> posted an update', 'http://vimeo.com/6282052', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/', 0, 0, '2019-01-10 11:30:00', 0, 0, 0, 0),
(71, 3, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/\">Chynna Phillips</a> posted an update', 'Sex and religion are closer to each other than either might prefer. (Saint Thomas Moore)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/', 0, 0, '2019-01-12 09:26:31', 0, 0, 0, 0),
(72, 6, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/\">Matraca Berg</a> posted an update', 'http://vimeo.com/24724866', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/', 0, 0, '2018-12-17 20:40:45', 0, 0, 0, 0),
(73, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'We are all atheists about most of the gods humanity has ever believed in.Some of us just go one god further. (Richard Dawkins)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2019-01-07 22:19:33', 0, 0, 0, 0),
(74, 23, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/\">Vernon Dahmer</a> posted an update', 'Many wealthy people are little more than janitors of their possessions. (Frank Lloyd Wright)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/', 0, 0, '2018-12-18 04:33:19', 0, 0, 0, 0),
(75, 2, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/\">Antawn Jamison</a> posted an update', 'Dancing is silent poetry. (Simonides)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/', 0, 0, '2018-12-26 14:37:22', 0, 0, 0, 0),
(76, 5, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/\">MaliVai Washington</a> posted an update', 'I begin by taking.I shall find scholars later to demonstrate my perfect right. (Frederick (II) the Great)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/', 0, 0, '2018-12-28 05:55:56', 0, 0, 0, 0),
(77, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'We are all atheists about most of the gods humanity has ever believed in.Some of us just go one god further. (Richard Dawkins)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-10 03:59:08', 0, 0, 0, 0),
(78, 21, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/\">Cecelia Cichan</a> posted an update', 'When you do the common things in life in an uncommon way, you will command the attention of the world. (George Washington Carver)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/', 0, 0, '2019-01-13 23:07:33', 0, 0, 0, 0),
(79, 22, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/\">Dan Cortese</a> posted an update', 'An inconvenience is only an adventure wrongly considered; an adventure is an inconvenience rightly considered. (Gilbert Keith Chesterton)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/', 0, 0, '2018-12-18 06:06:59', 0, 0, 0, 0),
(80, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'http://www.youtube.com/watch?v=kh29_SERH0Y', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-05 20:12:46', 0, 0, 0, 0),
(81, 25, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/\">Justin Duchscherer</a> posted an update', 'A lie gets halfway around the world before the truth has a chance to get its pants on. (Sir Winston Churchill)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/justin/', 0, 0, '2018-12-27 23:32:05', 0, 0, 0, 0),
(82, 19, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/jason/\">Jason Chaffetz</a> posted an update', 'http://vimeo.com/22694972', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/jason/', 0, 0, '2018-12-29 20:23:55', 0, 0, 0, 0),
(83, 3, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/\">Chynna Phillips</a> posted an update', 'If you are going through hell, keep going. (Sir Winston Churchill)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/', 0, 0, '2019-01-04 10:54:25', 0, 0, 0, 0),
(84, 14, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/siobhan/\">Siobhan</a> posted an update', 'Don\'t stay in bed, unless you can make money in bed. (George Burns)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/siobhan/', 0, 0, '2018-12-18 23:06:53', 0, 0, 0, 0),
(85, 15, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/stephen/\">Stephen Curry</a> posted an update', 'The full use of your powers along lines of excellence. (definition of happiness by John F. Kennedy)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/stephen/', 0, 0, '2019-01-17 18:43:01', 0, 0, 0, 0),
(86, 10, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/\">Picabo Street</a> posted an update', 'Good people do not need laws to tell them to act responsibly, while bad people will find a way around the laws. (Plato)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/picabo/', 0, 0, '2018-12-30 19:56:07', 0, 0, 0, 0),
(87, 5, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/\">MaliVai Washington</a> posted an update', 'But at my back I always hear Time\'s winged chariot hurrying near. (Andrew Marvell)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/', 0, 0, '2018-12-18 14:49:01', 0, 0, 0, 0),
(88, 23, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/\">Vernon Dahmer</a> posted an update', 'Maybe this world is another planet\'s Hell. (Aldous Huxley)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/vernon/', 0, 0, '2019-01-03 06:05:26', 0, 0, 0, 0),
(89, 13, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/shan/\">Shan Foster</a> posted an update', 'A friendship founded on business is better than a business founded on friendship. (John D. Rockefeller)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/shan/', 0, 0, '2018-12-18 12:05:01', 0, 0, 0, 0),
(90, 12, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/seamus/\">Seamus</a> posted an update', 'The only way to get rid of a temptation is to yield to it. (Oscar Wilde)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/seamus/', 0, 0, '2018-12-20 19:28:44', 0, 0, 0, 0),
(91, 22, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/\">Dan Cortese</a> posted an update', 'In theory, there is no difference between theory and practice. But in practice, there is. (Yogi Berra)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/dan/', 0, 0, '2019-01-11 06:17:37', 0, 0, 0, 0),
(92, 5, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/\">MaliVai Washington</a> posted an update', 'http://www.youtube.com/watch?v=jiM6XIoW6ZY&amp;feature=feedfbc', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/', 0, 0, '2019-01-05 11:32:10', 0, 0, 0, 0),
(93, 15, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/stephen/\">Stephen Curry</a> posted an update', 'Some cause happiness wherever they go; others, whenever they go. (Oscar Wilde)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/stephen/', 0, 0, '2019-01-29 19:12:29', 0, 0, 0, 0),
(94, 21, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/\">Cecelia Cichan</a> posted an update', 'http://www.youtube.com/watch?v=wGwyf1t0OCU', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/cecelia/', 0, 0, '2018-12-30 00:55:28', 0, 0, 0, 0),
(95, 2, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/\">Antawn Jamison</a> posted an update', 'The use of COBOL cripples the mind; its teaching should, therefore, be regarded as a criminal offense. (Edsgar Dijkstra)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/antawn/', 0, 0, '2019-01-29 07:15:08', 0, 0, 0, 0),
(96, 6, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/\">Matraca Berg</a> posted an update', 'http://vimeo.com/19658300', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/matraca/', 0, 0, '2019-01-22 04:54:21', 0, 0, 0, 0),
(97, 9, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/monta/\">Monta Ellis</a> posted an update', 'Some cause happiness wherever they go; others, whenever they go. (Oscar Wilde)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/monta/', 0, 0, '2019-01-02 21:47:54', 0, 0, 0, 0),
(98, 24, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/\">Andre Dubus</a> posted an update', 'Victory goes to the player who makes the next-to-last mistake. (Chessmaster Savielly Grigorievitch Tartakower)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/andre/', 0, 0, '2019-01-12 01:49:25', 0, 0, 0, 0),
(99, 26, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/\">Keir Dullea</a> posted an update', 'Moral indignation is jealousy with a halo. (H. G. Wells)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/keir/', 0, 0, '2019-01-06 06:17:13', 0, 0, 0, 0),
(100, 5, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/\">MaliVai Washington</a> posted an update', 'The difference between \'involvement\' and \'commitment\' is like an eggs-and-ham breakfast: the chicken was \'involved\' - the pig was \'committed\'. (unknown)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/malivai/', 0, 0, '2019-01-11 04:27:52', 0, 0, 0, 0),
(101, 3, 'activity', 'activity_update', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/\">Chynna Phillips</a> posted an update', 'Victory goes to the player who makes the next-to-last mistake. (Chessmaster Savielly Grigorievitch Tartakower)', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/chynna/', 0, 0, '2018-12-30 10:02:20', 0, 0, 0, 0),
(102, 1, 'groups', 'created_group', '<a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/members/admin/\">admin</a> created the group <a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/groups/drc/\">DRC</a>', '', 'http://172.10.29.111/wordpress-projects/theplannerwire/members/admin/', 1, 0, '2019-01-30 09:28:59', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity_meta`
--

CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_activity_meta`
--

INSERT INTO `wp_bp_activity_meta` (`id`, `activity_id`, `meta_key`, `meta_value`) VALUES
(1, 43, '_oembed_a18c0dce0e499ca227a0e5228c9b6c44', '<iframe src=\"https://player.vimeo.com/video/19658300?app_id=122963\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"Raining Again\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>'),
(2, 43, '_oembed_response_a18c0dce0e499ca227a0e5228c9b6c44', 'O:8:\"stdClass\":21:{s:4:\"type\";s:5:\"video\";s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:5:\"Vimeo\";s:12:\"provider_url\";s:18:\"https://vimeo.com/\";s:5:\"title\";s:13:\"Raining Again\";s:11:\"author_name\";s:4:\"Moby\";s:10:\"author_url\";s:22:\"https://vimeo.com/moby\";s:7:\"is_plus\";s:1:\"0\";s:12:\"account_type\";s:5:\"basic\";s:4:\"html\";s:185:\"<iframe src=\"https://player.vimeo.com/video/19658300?app_id=122963\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"Raining Again\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:8:\"duration\";i:228;s:11:\"description\";s:0:\"\";s:13:\"thumbnail_url\";s:46:\"https://i.vimeocdn.com/video/124796234_640.jpg\";s:15:\"thumbnail_width\";i:640;s:16:\"thumbnail_height\";i:360;s:30:\"thumbnail_url_with_play_button\";s:164:\"https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F124796234_640.jpg&src1=http%3A%2F%2Ff.vimeocdn.com%2Fp%2Fimages%2Fcrawler_play.png\";s:11:\"upload_date\";s:19:\"2011-02-07 08:25:11\";s:8:\"video_id\";i:19658300;s:3:\"uri\";s:16:\"/videos/19658300\";}'),
(3, 96, '_oembed_a18c0dce0e499ca227a0e5228c9b6c44', '<iframe src=\"https://player.vimeo.com/video/19658300?app_id=122963\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"Raining Again\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>'),
(4, 96, '_oembed_response_a18c0dce0e499ca227a0e5228c9b6c44', 'O:8:\"stdClass\":21:{s:4:\"type\";s:5:\"video\";s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:5:\"Vimeo\";s:12:\"provider_url\";s:18:\"https://vimeo.com/\";s:5:\"title\";s:13:\"Raining Again\";s:11:\"author_name\";s:4:\"Moby\";s:10:\"author_url\";s:22:\"https://vimeo.com/moby\";s:7:\"is_plus\";s:1:\"0\";s:12:\"account_type\";s:5:\"basic\";s:4:\"html\";s:185:\"<iframe src=\"https://player.vimeo.com/video/19658300?app_id=122963\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"Raining Again\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:8:\"duration\";i:228;s:11:\"description\";s:0:\"\";s:13:\"thumbnail_url\";s:46:\"https://i.vimeocdn.com/video/124796234_640.jpg\";s:15:\"thumbnail_width\";i:640;s:16:\"thumbnail_height\";i:360;s:30:\"thumbnail_url_with_play_button\";s:164:\"https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F124796234_640.jpg&src1=http%3A%2F%2Ff.vimeocdn.com%2Fp%2Fimages%2Fcrawler_play.png\";s:11:\"upload_date\";s:19:\"2011-02-07 08:25:11\";s:8:\"video_id\";i:19658300;s:3:\"uri\";s:16:\"/videos/19658300\";}'),
(5, 34, '_oembed_e7b892a199dc7c7d8846cd8d9df42918', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/t4CUNVYxxZM?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 34, '_oembed_response_e7b892a199dc7c7d8846cd8d9df42918', 'O:8:\"stdClass\":13:{s:5:\"title\";s:37:\"The Art of FLIGHT - The Metal Trailer\";s:11:\"author_name\";s:8:\"Red Bull\";s:4:\"html\";s:217:\"<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/t4CUNVYxxZM?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\";s:6:\"height\";i:360;s:13:\"provider_name\";s:7:\"YouTube\";s:4:\"type\";s:5:\"video\";s:16:\"thumbnail_height\";i:360;s:12:\"provider_url\";s:24:\"https://www.youtube.com/\";s:13:\"thumbnail_url\";s:48:\"https://i.ytimg.com/vi/t4CUNVYxxZM/hqdefault.jpg\";s:5:\"width\";i:640;s:15:\"thumbnail_width\";i:480;s:10:\"author_url\";s:36:\"https://www.youtube.com/user/redbull\";s:7:\"version\";s:3:\"1.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_friends`
--

CREATE TABLE `wp_bp_friends` (
  `id` bigint(20) NOT NULL,
  `initiator_user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT '0',
  `is_limited` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups`
--

CREATE TABLE `wp_bp_groups` (
  `id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `enable_forum` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_groups`
--

INSERT INTO `wp_bp_groups` (`id`, `creator_id`, `name`, `slug`, `description`, `status`, `parent_id`, `enable_forum`, `date_created`) VALUES
(1, 1, 'DRC', 'drc', 'Drc Development', 'public', 0, 0, '2019-01-30 09:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups_groupmeta`
--

CREATE TABLE `wp_bp_groups_groupmeta` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_groups_groupmeta`
--

INSERT INTO `wp_bp_groups_groupmeta` (`id`, `group_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'total_member_count', '1'),
(2, 1, 'last_activity', '2019-01-30 09:56:32'),
(3, 1, 'invite_status', 'members');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups_members`
--

CREATE TABLE `wp_bp_groups_members` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_mod` tinyint(1) NOT NULL DEFAULT '0',
  `user_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_modified` datetime NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_groups_members`
--

INSERT INTO `wp_bp_groups_members` (`id`, `group_id`, `user_id`, `inviter_id`, `is_admin`, `is_mod`, `user_title`, `date_modified`, `comments`, `is_confirmed`, `is_banned`, `invite_sent`) VALUES
(1, 1, 1, 0, 1, 0, 'Group Admin', '2019-01-30 09:27:58', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_messages`
--

CREATE TABLE `wp_bp_messages_messages` (
  `id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_meta`
--

CREATE TABLE `wp_bp_messages_meta` (
  `id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_notices`
--

CREATE TABLE `wp_bp_messages_notices` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_sent` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_recipients`
--

CREATE TABLE `wp_bp_messages_recipients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT '0',
  `sender_only` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications`
--

CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `component_action` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications_meta`
--

CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_user_blogs`
--

CREATE TABLE `wp_bp_user_blogs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_user_blogs`
--

INSERT INTO `wp_bp_user_blogs` (`id`, `user_id`, `blog_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_user_blogs_blogmeta`
--

CREATE TABLE `wp_bp_user_blogs_blogmeta` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_user_blogs_blogmeta`
--

INSERT INTO `wp_bp_user_blogs_blogmeta` (`id`, `blog_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'url', 'http://172.10.29.111/wordpress-projects/theplannerwire'),
(2, 1, 'name', 'The Planner Wire'),
(3, 1, 'description', ''),
(4, 1, 'last_activity', '2019-01-30 09:27:25'),
(5, 1, 'close_comments_for_old_posts', '0'),
(6, 1, 'close_comments_days_old', '14'),
(7, 1, 'thread_comments_depth', '5'),
(8, 1, 'comment_moderation', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_data`
--

CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 1, 'admin', '2019-01-23 11:23:51'),
(2, 1, 2, 'Antawn Jamison', '2019-01-30 09:24:45'),
(3, 1, 3, 'Chynna Phillips', '2019-01-30 09:24:46'),
(4, 1, 4, 'Kiki Cuyler', '2019-01-30 09:24:48'),
(5, 1, 5, 'MaliVai Washington', '2019-01-30 09:24:49'),
(6, 1, 6, 'Matraca Berg', '2019-01-30 09:24:50'),
(7, 1, 7, 'Ron Faucheux', '2019-01-30 09:24:51'),
(8, 1, 8, 'Michellie Jones', '2019-01-30 09:24:53'),
(9, 1, 9, 'Monta Ellis', '2019-01-30 09:24:54'),
(10, 1, 10, 'Picabo Street', '2019-01-30 09:24:55'),
(11, 1, 11, 'Ralph Fiennes', '2019-01-30 09:24:56'),
(12, 1, 12, 'Seamus', '2019-01-30 09:24:58'),
(13, 1, 13, 'Shan Foster', '2019-01-30 09:24:59'),
(14, 1, 14, 'Siobhan', '2019-01-30 09:25:00'),
(15, 1, 15, 'Stephen Curry', '2019-01-30 09:25:01'),
(16, 1, 16, 'Wynonna Judd', '2019-01-30 09:25:02'),
(17, 1, 17, 'John Caius', '2019-01-30 09:25:03'),
(18, 1, 18, 'Thomas Carew', '2019-01-30 09:25:05'),
(19, 1, 19, 'Jason Chaffetz', '2019-01-30 09:25:06'),
(20, 1, 20, 'Mamah Cheney', '2019-01-30 09:25:07'),
(21, 1, 21, 'Cecelia Cichan', '2019-01-30 09:25:08'),
(22, 1, 22, 'Dan Cortese', '2019-01-30 09:25:09'),
(23, 1, 23, 'Vernon Dahmer', '2019-01-30 09:25:11'),
(24, 1, 24, 'Andre Dubus', '2019-01-30 09:25:12'),
(25, 1, 25, 'Justin Duchscherer', '2019-01-30 09:25:13'),
(26, 1, 26, 'Keir Dullea', '2019-01-30 09:25:14'),
(27, 2, 2, '2009-10-10 00:00:00', '2019-01-30 09:25:17'),
(28, 3, 2, 'Life can only be understood backwards, but it must be lived forward.', '2019-01-30 09:25:17'),
(29, 4, 2, '2002', '2019-01-30 09:25:17'),
(30, 5, 2, 'Do not confine your children to your own learning, for they were born in another time', '2019-01-30 09:25:17'),
(31, 6, 2, 'https://buddypress.org', '2019-01-30 09:25:17'),
(32, 7, 2, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 2\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:17'),
(33, 12, 2, 'selectbox 1', '2019-01-30 09:25:17'),
(34, 16, 2, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:17'),
(35, 20, 2, 'radio 1', '2019-01-30 09:25:17'),
(36, 2, 3, '2005-06-06 00:00:00', '2019-01-30 09:25:17'),
(37, 3, 3, 'Teachers open the door but you must walk through it yourself.', '2019-01-30 09:25:17'),
(38, 4, 3, '2006', '2019-01-30 09:25:17'),
(39, 5, 3, 'One day your life will flash before your eyes. Make sure its worth watching.', '2019-01-30 09:25:17'),
(40, 6, 3, 'https://wordpress.com', '2019-01-30 09:25:17'),
(41, 7, 3, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 2\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:17'),
(42, 12, 3, 'selectbox 3', '2019-01-30 09:25:17'),
(43, 16, 3, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:17'),
(44, 20, 3, 'radio 3', '2019-01-30 09:25:17'),
(45, 2, 4, '2005-06-06 00:00:00', '2019-01-30 09:25:18'),
(46, 3, 4, 'One day your life will flash before your eyes. Make sure its worth watching.', '2019-01-30 09:25:18'),
(47, 4, 4, '2000', '2019-01-30 09:25:18'),
(48, 5, 4, 'Love is a serious mental disease.', '2019-01-30 09:25:18'),
(49, 6, 4, 'https://wikipedia.org', '2019-01-30 09:25:18'),
(50, 7, 4, 'a:2:{i:0;s:10:\"checkbox 2\";i:1;s:10:\"checkbox 4\";}', '2019-01-30 09:25:18'),
(51, 12, 4, 'selectbox 3', '2019-01-30 09:25:18'),
(52, 16, 4, 'a:1:{i:0;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:18'),
(53, 20, 4, 'radio 3', '2019-01-30 09:25:18'),
(54, 2, 5, '2010-11-11 00:00:00', '2019-01-30 09:25:18'),
(55, 3, 5, 'Life is not a problem to be solved, but a reality to be experienced.', '2019-01-30 09:25:18'),
(56, 4, 5, '2012', '2019-01-30 09:25:18'),
(57, 5, 5, 'Either write something worth reading or do something worth writing.', '2019-01-30 09:25:18'),
(58, 6, 5, 'https://wordpress.org', '2019-01-30 09:25:18'),
(59, 7, 5, 'a:1:{i:0;s:10:\"checkbox 2\";}', '2019-01-30 09:25:18'),
(60, 12, 5, 'selectbox 1', '2019-01-30 09:25:18'),
(61, 16, 5, 'a:1:{i:0;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:18'),
(62, 20, 5, 'radio 2', '2019-01-30 09:25:18'),
(63, 2, 6, '2008-09-09 00:00:00', '2019-01-30 09:25:18'),
(64, 3, 6, 'Love is the beauty of the soul.', '2019-01-30 09:25:18'),
(65, 4, 6, '2004', '2019-01-30 09:25:18'),
(66, 5, 6, 'Sex alleviates tension. Love causes it.', '2019-01-30 09:25:18'),
(67, 6, 6, 'https://buddypress.org', '2019-01-30 09:25:19'),
(68, 7, 6, 'a:2:{i:0;s:10:\"checkbox 2\";i:1;s:10:\"checkbox 3\";}', '2019-01-30 09:25:19'),
(69, 12, 6, 'selectbox 3', '2019-01-30 09:25:19'),
(70, 16, 6, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:19'),
(71, 20, 6, 'radio 3', '2019-01-30 09:25:19'),
(72, 2, 7, '2001-02-02 00:00:00', '2019-01-30 09:25:19'),
(73, 3, 7, 'Teachers open the door but you must walk through it yourself.', '2019-01-30 09:25:19'),
(74, 4, 7, '2012', '2019-01-30 09:25:19'),
(75, 5, 7, 'Follow love and it will flee, flee love and it will follow.', '2019-01-30 09:25:19'),
(76, 6, 7, 'https://wordpress.com', '2019-01-30 09:25:19'),
(77, 7, 7, 'a:4:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";i:2;s:10:\"checkbox 2\";i:3;s:10:\"checkbox 3\";}', '2019-01-30 09:25:19'),
(78, 12, 7, 'selectbox 3', '2019-01-30 09:25:19'),
(79, 16, 7, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:19'),
(80, 20, 7, 'radio 3', '2019-01-30 09:25:19'),
(81, 2, 8, '2004-05-05 00:00:00', '2019-01-30 09:25:19'),
(82, 3, 8, 'Learn from yesterday, live for today, hope for tomorrow.', '2019-01-30 09:25:19'),
(83, 4, 8, '2012', '2019-01-30 09:25:19'),
(84, 5, 8, 'Life is not a problem to be solved, but a reality to be experienced.', '2019-01-30 09:25:19'),
(85, 6, 8, 'https://cosydale.com', '2019-01-30 09:25:19'),
(86, 7, 8, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 2\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:19'),
(87, 12, 8, 'selectbox 1', '2019-01-30 09:25:19'),
(88, 16, 8, 'a:2:{i:0;s:16:\"multiselectbox 2\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:19'),
(89, 20, 8, 'radio 2', '2019-01-30 09:25:19'),
(90, 2, 9, '2008-09-09 00:00:00', '2019-01-30 09:25:19'),
(91, 3, 9, 'And in the end, it\\\'s not the years in your life that count. It\\\'s the life in your years.', '2019-01-30 09:25:19'),
(92, 4, 9, '2000', '2019-01-30 09:25:20'),
(93, 5, 9, 'There is no remedy for love than to love more.', '2019-01-30 09:25:20'),
(94, 6, 9, 'https://wordpress.com', '2019-01-30 09:25:20'),
(95, 7, 9, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:20'),
(96, 12, 9, 'selectbox 2', '2019-01-30 09:25:20'),
(97, 16, 9, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:20'),
(98, 20, 9, 'radio 3', '2019-01-30 09:25:20'),
(99, 2, 10, '2009-10-10 00:00:00', '2019-01-30 09:25:20'),
(100, 3, 10, 'Chose a job you love, and you will never have to work a day in your life.', '2019-01-30 09:25:20'),
(101, 4, 10, '2010', '2019-01-30 09:25:20'),
(102, 5, 10, 'Love is a serious mental disease.', '2019-01-30 09:25:20'),
(103, 6, 10, 'https://cosydale.com', '2019-01-30 09:25:20'),
(104, 7, 10, 'a:2:{i:0;s:10:\"checkbox 1\";i:1;s:10:\"checkbox 2\";}', '2019-01-30 09:25:20'),
(105, 12, 10, 'selectbox 1', '2019-01-30 09:25:20'),
(106, 16, 10, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:20'),
(107, 20, 10, 'radio 3', '2019-01-30 09:25:20'),
(108, 2, 11, '2002-03-03 00:00:00', '2019-01-30 09:25:20'),
(109, 3, 11, 'Be not afraid of going slowly, be afraid only of standing still.', '2019-01-30 09:25:20'),
(110, 4, 11, '2002', '2019-01-30 09:25:20'),
(111, 5, 11, 'Be not afraid of going slowly, be afraid only of standing still.', '2019-01-30 09:25:20'),
(112, 6, 11, 'https://wordpress.org', '2019-01-30 09:25:20'),
(113, 7, 11, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 2\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:20'),
(114, 12, 11, 'selectbox 1', '2019-01-30 09:25:20'),
(115, 16, 11, 'a:1:{i:0;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:20'),
(116, 20, 11, 'radio 2', '2019-01-30 09:25:20'),
(117, 2, 12, '2001-02-02 00:00:00', '2019-01-30 09:25:21'),
(118, 3, 12, 'Words are easy, like the wind; Faithful friends are hard to find.', '2019-01-30 09:25:21'),
(119, 4, 12, '2012', '2019-01-30 09:25:21'),
(120, 5, 12, 'One day your life will flash before your eyes. Make sure its worth watching.', '2019-01-30 09:25:21'),
(121, 6, 12, 'https://google.com', '2019-01-30 09:25:21'),
(122, 7, 12, 'a:2:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";}', '2019-01-30 09:25:21'),
(123, 12, 12, 'selectbox 1', '2019-01-30 09:25:21'),
(124, 16, 12, 'a:2:{i:0;s:16:\"multiselectbox 2\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:21'),
(125, 20, 12, 'radio 3', '2019-01-30 09:25:21'),
(126, 2, 13, '2000-01-01 00:00:00', '2019-01-30 09:25:21'),
(127, 3, 13, 'All our words from loose using have lost their edge', '2019-01-30 09:25:21'),
(128, 4, 13, '2004', '2019-01-30 09:25:21'),
(129, 5, 13, 'Love is an act of endless forgiveness, a tender look which becomes a habit.', '2019-01-30 09:25:21'),
(130, 6, 13, 'https://wikipedia.org', '2019-01-30 09:25:21'),
(131, 7, 13, 'a:2:{i:0;s:10:\"checkbox 2\";i:1;s:10:\"checkbox 3\";}', '2019-01-30 09:25:21'),
(132, 12, 13, 'selectbox 2', '2019-01-30 09:25:21'),
(133, 16, 13, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:21'),
(134, 20, 13, 'radio 1', '2019-01-30 09:25:21'),
(135, 2, 14, '2008-09-09 00:00:00', '2019-01-30 09:25:21'),
(136, 3, 14, 'True love is like ghosts, which everybody talks about and few have seen.', '2019-01-30 09:25:21'),
(137, 4, 14, '2006', '2019-01-30 09:25:22'),
(138, 5, 14, 'Without His love I can do nothing, with His love there is nothing I cannot do.', '2019-01-30 09:25:22'),
(139, 6, 14, 'https://wordpress.org', '2019-01-30 09:25:22'),
(140, 7, 14, 'a:2:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";}', '2019-01-30 09:25:22'),
(141, 12, 14, 'selectbox 1', '2019-01-30 09:25:22'),
(142, 16, 14, 'a:2:{i:0;s:16:\"multiselectbox 2\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:22'),
(143, 20, 14, 'radio 1', '2019-01-30 09:25:22'),
(144, 2, 15, '2004-05-05 00:00:00', '2019-01-30 09:25:22'),
(145, 3, 15, 'All our words from loose using have lost their edge', '2019-01-30 09:25:22'),
(146, 4, 15, '2010', '2019-01-30 09:25:22'),
(147, 5, 15, 'In teaching others we teach ourselves.', '2019-01-30 09:25:22'),
(148, 6, 15, 'https://wordpress.com', '2019-01-30 09:25:22'),
(149, 7, 15, 'a:2:{i:0;s:10:\"checkbox 3\";i:1;s:10:\"checkbox 4\";}', '2019-01-30 09:25:22'),
(150, 12, 15, 'selectbox 1', '2019-01-30 09:25:22'),
(151, 16, 15, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:22'),
(152, 20, 15, 'radio 1', '2019-01-30 09:25:22'),
(153, 2, 16, '2005-06-06 00:00:00', '2019-01-30 09:25:22'),
(154, 3, 16, 'Where there is love there is life.', '2019-01-30 09:25:23'),
(155, 4, 16, '2008', '2019-01-30 09:25:23'),
(156, 5, 16, 'Be not afraid of going slowly, be afraid only of standing still.', '2019-01-30 09:25:23'),
(157, 6, 16, 'https://wikipedia.org', '2019-01-30 09:25:23'),
(158, 7, 16, 'a:4:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";i:2;s:10:\"checkbox 2\";i:3;s:10:\"checkbox 3\";}', '2019-01-30 09:25:23'),
(159, 12, 16, 'selectbox 1', '2019-01-30 09:25:23'),
(160, 16, 16, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:23'),
(161, 20, 16, 'radio 1', '2019-01-30 09:25:23'),
(162, 2, 17, '2002-03-03 00:00:00', '2019-01-30 09:25:23'),
(163, 3, 17, 'Sex alleviates tension. Love causes it.', '2019-01-30 09:25:23'),
(164, 4, 17, '2002', '2019-01-30 09:25:23'),
(165, 5, 17, 'Follow love and it will flee, flee love and it will follow.', '2019-01-30 09:25:23'),
(166, 6, 17, 'https://wordpress.com', '2019-01-30 09:25:23'),
(167, 7, 17, 'a:2:{i:0;s:10:\"checkbox 3\";i:1;s:10:\"checkbox 4\";}', '2019-01-30 09:25:23'),
(168, 12, 17, 'selectbox 1', '2019-01-30 09:25:23'),
(169, 16, 17, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:23'),
(170, 20, 17, 'radio 2', '2019-01-30 09:25:23'),
(171, 2, 18, '2008-09-09 00:00:00', '2019-01-30 09:25:23'),
(172, 3, 18, 'Love is a serious mental disease.', '2019-01-30 09:25:23'),
(173, 4, 18, '2000', '2019-01-30 09:25:23'),
(174, 5, 18, 'Breakdowns can create breakthroughs. Things fall apart so things can fall together.', '2019-01-30 09:25:23'),
(175, 6, 18, 'https://wikipedia.org', '2019-01-30 09:25:23'),
(176, 7, 18, 'a:1:{i:0;s:10:\"checkbox 1\";}', '2019-01-30 09:25:23'),
(177, 12, 18, 'selectbox 1', '2019-01-30 09:25:23'),
(178, 16, 18, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:23'),
(179, 20, 18, 'radio 1', '2019-01-30 09:25:23'),
(180, 2, 19, '2007-08-08 00:00:00', '2019-01-30 09:25:24'),
(181, 3, 19, 'There is only one happiness in life -- to love and to be loved.', '2019-01-30 09:25:24'),
(182, 4, 19, '2012', '2019-01-30 09:25:24'),
(183, 5, 19, 'Love is the beauty of the soul.', '2019-01-30 09:25:24'),
(184, 6, 19, 'https://wikipedia.org', '2019-01-30 09:25:24'),
(185, 7, 19, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 2\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:24'),
(186, 12, 19, 'selectbox 3', '2019-01-30 09:25:24'),
(187, 16, 19, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:24'),
(188, 20, 19, 'radio 2', '2019-01-30 09:25:24'),
(189, 2, 20, '2003-04-04 00:00:00', '2019-01-30 09:25:24'),
(190, 3, 20, 'Happiness consists of three things; Someone to love, work to do, and a clear conscience.', '2019-01-30 09:25:24'),
(191, 4, 20, '2014', '2019-01-30 09:25:24'),
(192, 5, 20, 'Words are easy, like the wind; Faithful friends are hard to find.', '2019-01-30 09:25:24'),
(193, 6, 20, 'https://ovirium.com', '2019-01-30 09:25:24'),
(194, 7, 20, 'a:1:{i:0;s:10:\"checkbox 2\";}', '2019-01-30 09:25:24'),
(195, 12, 20, 'selectbox 2', '2019-01-30 09:25:24'),
(196, 16, 20, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:24'),
(197, 20, 20, 'radio 3', '2019-01-30 09:25:24'),
(198, 2, 21, '2004-05-05 00:00:00', '2019-01-30 09:25:24'),
(199, 3, 21, 'Love is an act of endless forgiveness, a tender look which becomes a habit.', '2019-01-30 09:25:24'),
(200, 4, 21, '2002', '2019-01-30 09:25:24'),
(201, 5, 21, 'There is a natural aristocracy among men. The grounds of this are virtue and talents.', '2019-01-30 09:25:24'),
(202, 6, 21, 'https://buddypress.org', '2019-01-30 09:25:24'),
(203, 7, 21, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:24'),
(204, 12, 21, 'selectbox 3', '2019-01-30 09:25:25'),
(205, 16, 21, 'a:2:{i:0;s:16:\"multiselectbox 2\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:25'),
(206, 20, 21, 'radio 3', '2019-01-30 09:25:25'),
(207, 2, 22, '2000-01-01 00:00:00', '2019-01-30 09:25:25'),
(208, 3, 22, 'Life is not a problem to be solved, but a reality to be experienced.', '2019-01-30 09:25:25'),
(209, 4, 22, '2002', '2019-01-30 09:25:25'),
(210, 5, 22, 'One day your life will flash before your eyes. Make sure its worth watching.', '2019-01-30 09:25:25'),
(211, 6, 22, 'https://wordpress.com', '2019-01-30 09:25:25'),
(212, 7, 22, 'a:3:{i:0;s:10:\"checkbox 4\";i:1;s:10:\"checkbox 1\";i:2;s:10:\"checkbox 3\";}', '2019-01-30 09:25:25'),
(213, 12, 22, 'selectbox 2', '2019-01-30 09:25:25'),
(214, 16, 22, 'a:1:{i:0;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:25'),
(215, 20, 22, 'radio 1', '2019-01-30 09:25:25'),
(216, 2, 23, '2006-07-07 00:00:00', '2019-01-30 09:25:25'),
(217, 3, 23, 'The true sign of intelligence is not knowledge but imagination.', '2019-01-30 09:25:25'),
(218, 4, 23, '2000', '2019-01-30 09:25:25'),
(219, 5, 23, 'Follow love and it will flee, flee love and it will follow.', '2019-01-30 09:25:25'),
(220, 6, 23, 'https://wikipedia.org', '2019-01-30 09:25:25'),
(221, 7, 23, 'a:2:{i:0;s:10:\"checkbox 3\";i:1;s:10:\"checkbox 4\";}', '2019-01-30 09:25:25'),
(222, 12, 23, 'selectbox 3', '2019-01-30 09:25:25'),
(223, 16, 23, 'a:3:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 2\";i:2;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:25'),
(224, 20, 23, 'radio 2', '2019-01-30 09:25:25'),
(225, 2, 24, '2011-12-12 00:00:00', '2019-01-30 09:25:25'),
(226, 3, 24, 'A friend walks in when everyone else walks out', '2019-01-30 09:25:25'),
(227, 4, 24, '2014', '2019-01-30 09:25:25'),
(228, 5, 24, 'And in the end, it\\\'s not the years in your life that count. It\\\'s the life in your years.', '2019-01-30 09:25:26'),
(229, 6, 24, 'https://ovirium.com', '2019-01-30 09:25:26'),
(230, 7, 24, 'a:2:{i:0;s:10:\"checkbox 1\";i:1;s:10:\"checkbox 2\";}', '2019-01-30 09:25:26'),
(231, 12, 24, 'selectbox 2', '2019-01-30 09:25:26'),
(232, 16, 24, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:26'),
(233, 20, 24, 'radio 1', '2019-01-30 09:25:26'),
(234, 2, 25, '2009-10-10 00:00:00', '2019-01-30 09:25:26'),
(235, 3, 25, 'In three words I can sum up everything I\\\'ve learned about life. It goes on.', '2019-01-30 09:25:26'),
(236, 4, 25, '2006', '2019-01-30 09:25:26'),
(237, 5, 25, 'In teaching others we teach ourselves.', '2019-01-30 09:25:26'),
(238, 6, 25, 'https://wordpress.com', '2019-01-30 09:25:26'),
(239, 7, 25, 'a:2:{i:0;s:10:\"checkbox 2\";i:1;s:10:\"checkbox 3\";}', '2019-01-30 09:25:26'),
(240, 12, 25, 'selectbox 2', '2019-01-30 09:25:26'),
(241, 16, 25, 'a:2:{i:0;s:16:\"multiselectbox 1\";i:1;s:16:\"multiselectbox 3\";}', '2019-01-30 09:25:26'),
(242, 20, 25, 'radio 3', '2019-01-30 09:25:26'),
(243, 2, 26, '2006-07-07 00:00:00', '2019-01-30 09:25:26'),
(244, 3, 26, 'Life is not a problem to be solved, but a reality to be experienced.', '2019-01-30 09:25:26'),
(245, 4, 26, '2000', '2019-01-30 09:25:26'),
(246, 5, 26, 'And in the end, it\\\'s not the years in your life that count. It\\\'s the life in your years.', '2019-01-30 09:25:26'),
(247, 6, 26, 'https://wordpress.org', '2019-01-30 09:25:26'),
(248, 7, 26, 'a:2:{i:0;s:10:\"checkbox 1\";i:1;s:10:\"checkbox 2\";}', '2019-01-30 09:25:26'),
(249, 12, 26, 'selectbox 3', '2019-01-30 09:25:26'),
(250, 16, 26, 'a:1:{i:0;s:16:\"multiselectbox 2\";}', '2019-01-30 09:25:26'),
(251, 20, 26, 'radio 1', '2019-01-30 09:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_fields`
--

CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0),
(2, 2, 0, 'datebox', 'DateBox', 'Any kind of date', 0, 0, 0, 0, 'custom', 1),
(3, 2, 0, 'textarea', 'Textarea', 'Long text in textarea', 1, 0, 0, 0, 'custom', 1),
(4, 2, 0, 'number', 'Number', 'Some number only field', 0, 0, 0, 0, 'custom', 1),
(5, 2, 0, 'textbox', 'Textbox', 'Rather short one-line text', 1, 0, 0, 0, 'custom', 1),
(6, 2, 0, 'url', 'URL', 'Link to any web-page or site', 0, 0, 0, 0, 'custom', 1),
(7, 3, 0, 'checkbox', 'Checkboxes', 'Several checkboxes to select', 1, 0, 0, 0, 'custom', 1),
(8, 3, 7, 'option', 'checkbox 1', '', 0, 1, 0, 1, '', 1),
(9, 3, 7, 'option', 'checkbox 2', '', 0, 1, 0, 2, '', 1),
(10, 3, 7, 'option', 'checkbox 3', '', 0, 0, 0, 3, '', 1),
(11, 3, 7, 'option', 'checkbox 4', '', 0, 0, 0, 4, '', 1),
(12, 3, 0, 'selectbox', 'Selectbox', 'One selected value in selectbox', 0, 0, 0, 0, 'custom', 1),
(13, 3, 12, 'option', 'selectbox 1', '', 0, 0, 0, 1, '', 1),
(14, 3, 12, 'option', 'selectbox 2', '', 0, 1, 0, 2, '', 1),
(15, 3, 12, 'option', 'selectbox 3', '', 0, 0, 0, 3, '', 1),
(16, 3, 0, 'multiselectbox', 'Multiselectbox', 'Several selected values in selectbox', 1, 0, 0, 0, 'custom', 1),
(17, 3, 16, 'option', 'multiselectbox 1', '', 0, 1, 0, 1, '', 1),
(18, 3, 16, 'option', 'multiselectbox 2', '', 0, 0, 0, 2, '', 1),
(19, 3, 16, 'option', 'multiselectbox 3', '', 0, 1, 0, 3, '', 1),
(20, 3, 0, 'radio', 'Radios', 'One radio button to select', 0, 0, 0, 0, 'custom', 1),
(21, 3, 20, 'option', 'radio 1', '', 0, 1, 0, 1, '', 1),
(22, 3, 20, 'option', 'radio 2', '', 0, 0, 0, 2, '', 1),
(23, 3, 20, 'option', 'radio 3', '', 0, 0, 0, 3, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_groups`
--

CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0),
(2, 'Single Fields', 'All fields with a single value possible', 0, 1),
(3, 'Multi Fields', 'All fields with several possible values', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_meta`
--

CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_bp_xprofile_meta`
--

INSERT INTO `wp_bp_xprofile_meta` (`id`, `object_id`, `object_type`, `meta_key`, `meta_value`) VALUES
(1, 2, 'field', 'default_visibility', 'public'),
(2, 2, 'field', 'allow_custom_visibility', 'allowed'),
(3, 3, 'field', 'default_visibility', 'adminsonly'),
(4, 3, 'field', 'allow_custom_visibility', 'disabled'),
(5, 4, 'field', 'default_visibility', 'loggedin'),
(6, 4, 'field', 'allow_custom_visibility', 'allowed'),
(7, 5, 'field', 'default_visibility', 'friends'),
(8, 5, 'field', 'allow_custom_visibility', 'disabled'),
(9, 6, 'field', 'default_visibility', 'public'),
(10, 6, 'field', 'allow_custom_visibility', 'allowed'),
(11, 7, 'field', 'default_visibility', 'adminsonly'),
(12, 7, 'field', 'allow_custom_visibility', 'disabled'),
(13, 12, 'field', 'default_visibility', 'loggedin'),
(14, 12, 'field', 'allow_custom_visibility', 'allowed'),
(15, 16, 'field', 'default_visibility', 'friends'),
(16, 16, 'field', 'allow_custom_visibility', 'disabled'),
(17, 20, 'field', 'default_visibility', 'public'),
(18, 20, 'field', 'allow_custom_visibility', 'allowed');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-23 08:51:40', '2019-01-23 08:51:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_answer`
--

CREATE TABLE `wp_esp_answer` (
  `ANS_ID` int(10) UNSIGNED NOT NULL,
  `REG_ID` int(10) UNSIGNED NOT NULL,
  `QST_ID` int(10) UNSIGNED NOT NULL,
  `ANS_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_attendee_meta`
--

CREATE TABLE `wp_esp_attendee_meta` (
  `ATTM_ID` int(10) UNSIGNED NOT NULL,
  `ATT_ID` bigint(20) UNSIGNED NOT NULL,
  `ATT_fname` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ATT_lname` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ATT_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ATT_address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ATT_city` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `STA_ID` int(10) DEFAULT NULL,
  `CNT_ISO` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ATT_zip` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ATT_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ATT_phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_checkin`
--

CREATE TABLE `wp_esp_checkin` (
  `CHK_ID` int(10) UNSIGNED NOT NULL,
  `REG_ID` int(10) UNSIGNED NOT NULL,
  `DTT_ID` int(10) UNSIGNED NOT NULL,
  `CHK_in` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `CHK_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_country`
--

CREATE TABLE `wp_esp_country` (
  `CNT_ISO` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CNT_ISO3` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `RGN_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `CNT_name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CNT_cur_code` varchar(6) COLLATE utf8mb4_unicode_520_ci DEFAULT 'USD',
  `CNT_cur_single` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT 'dollar',
  `CNT_cur_plural` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT 'dollars',
  `CNT_cur_sign` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT '$',
  `CNT_cur_sign_b4` tinyint(1) DEFAULT '1',
  `CNT_cur_dec_plc` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `CNT_cur_dec_mrk` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '.',
  `CNT_cur_thsnds` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ',',
  `CNT_tel_code` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `CNT_is_EU` tinyint(1) DEFAULT '0',
  `CNT_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_country`
--

INSERT INTO `wp_esp_country` (`CNT_ISO`, `CNT_ISO3`, `RGN_ID`, `CNT_name`, `CNT_cur_code`, `CNT_cur_single`, `CNT_cur_plural`, `CNT_cur_sign`, `CNT_cur_sign_b4`, `CNT_cur_dec_plc`, `CNT_cur_dec_mrk`, `CNT_cur_thsnds`, `CNT_tel_code`, `CNT_is_EU`, `CNT_active`) VALUES
('AD', 'AND', 0, 'Andorra', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+376', 0, 0),
('AE', 'ARE', 0, 'United Arab Emirates', 'AED', 'Dirham', 'Dirhams', 'د.إ', 1, 2, '.', ',', '+971', 0, 0),
('AF', 'AFG', 0, 'Afghanistan', 'AFN', 'Afghani', 'Afghanis', '؋', 1, 2, '.', ',', '+93', 0, 0),
('AG', 'ATG', 0, 'Antigua and Barbuda', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-268', 0, 0),
('AI', 'AIA', 0, 'Anguilla', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-264', 0, 0),
('AL', 'ALB', 0, 'Albania', 'ALL', 'Lek', 'Leks', 'Lek', 1, 2, '.', ',', '+355', 0, 0),
('AM', 'ARM', 0, 'Armenia', 'AMD', 'Dram', 'Dram', 'Դրամ', 1, 2, '.', ',', '+374', 0, 0),
('AN', 'ANT', 0, 'Netherlands Antilles', 'ANG', 'Guilder', 'Guilders', 'ƒ', 1, 2, '.', ',', '+599', 0, 0),
('AO', 'AGO', 0, 'Angola', 'AOA', 'Kwanza', 'Kwanzas', '', 1, 2, '.', ',', '+244', 0, 0),
('AR', 'ARG', 0, 'Argentina', 'ARS', 'Peso', 'Pesos', '$', 1, 2, '.', ',', '+54', 0, 0),
('AS', 'ASM', 0, 'American Samoa', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-684', 0, 0),
('AT', 'AUT', 0, 'Austria', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+43', 1, 0),
('AU', 'AUS', 0, 'Australia', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+61', 0, 0),
('AW', 'ABW', 0, 'Aruba', 'AWG', 'Guilder', 'Guilders', 'ƒ', 1, 2, '.', ',', '+297', 0, 0),
('AX', 'ALA', 0, 'Åland Islands', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+358', 1, 0),
('AZ', 'AZE', 0, 'Azerbaijan', 'AMD', 'Dram', 'Dram', 'Դրամ', 1, 2, '.', ',', '+374-97', 0, 0),
('BA', 'BIH', 0, 'Bosnia and Herzegovina', 'BAM', 'Marka', 'Markas', 'KM', 1, 2, '.', ',', '+387', 0, 0),
('BB', 'BRB', 0, 'Barbados', 'BBD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-246', 0, 0),
('BD', 'BGD', 0, 'Bangladesh', 'BDT', 'Taka', 'Takas', '৳', 1, 2, '.', ',', '+880', 0, 0),
('BE', 'BEL', 0, 'Belgium', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+32', 1, 0),
('BF', 'BFA', 0, 'Burkina Faso', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+226', 0, 0),
('BG', 'BGR', 0, 'Bulgaria', 'BGN', 'Lev', 'Levs', 'лв', 1, 2, '.', ',', '+359', 1, 0),
('BH', 'BHR', 0, 'Bahrain', 'BHD', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+973', 0, 0),
('BI', 'BDI', 0, 'Burundi', 'BIF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+257', 0, 0),
('BJ', 'BEN', 0, 'Benin', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+229', 0, 0),
('BL', 'BLM', 0, 'Saint Barthelemy', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+590', 1, 0),
('BM', 'BMU', 0, 'Bermuda', 'BMD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-441', 0, 0),
('BN', 'BRN', 0, 'Brunei Darussalam', 'BND', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+673', 0, 0),
('BO', 'BOL', 0, 'Bolivia', 'BOB', 'Boliviano', 'Bolivianos', '$b', 1, 2, '.', ',', '+591', 0, 0),
('BQ', 'BES', 0, 'Bonaire, Saint Eustatius and Saba', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+599', 0, 0),
('BR', 'BRA', 0, 'Brazil', 'BRL', 'Real', 'Reals', 'R$', 1, 2, '.', ',', '+55', 0, 0),
('BS', 'BHS', 0, 'Bahamas', 'BSD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-242', 0, 0),
('BT', 'BTN', 0, 'Bhutan', 'BTN', 'Ngultrum', 'Ngultrums', '', 1, 2, '.', ',', '+975', 0, 0),
('BV', 'BVT', 0, 'Bouvet Island', 'NOK', 'Krone', 'Krones', 'kr', 1, 2, '.', ',', '+47', 0, 0),
('BW', 'BWA', 0, 'Botswana', 'BWP', 'Pula', 'Pulas', 'P', 1, 2, '.', ',', '+267', 0, 0),
('BY', 'BLR', 0, 'Belarus', 'BYR', 'Ruble', 'Rubles', 'p.', 1, 0, '.', ',', '+375', 0, 0),
('BZ', 'BLZ', 0, 'Belize', 'BZD', 'Dollar', 'Dollars', 'BZ$', 1, 2, '.', ',', '+501', 0, 0),
('CA', 'CAN', 0, 'Canada', 'CAD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1', 0, 1),
('CC', 'CCK', 0, 'Cocos (Keeling) Islands', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+891', 0, 0),
('CD', 'COD', 0, 'Congo, the Democratic Republic of the', 'CDF', 'Franc', 'Francs', '₣', 1, 2, '.', ',', '+243', 0, 0),
('CF', 'CAF', 0, 'Central African Republic', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+236', 0, 0),
('CG', 'COG', 0, 'Congo', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+242', 0, 0),
('CH', 'CHE', 0, 'Switzerland', 'CHF', 'Franc', 'Francs', '₣', 1, 2, '.', ',', '+41', 0, 0),
('CI', 'CIV', 0, 'Cote D\'Ivoire', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+225', 0, 0),
('CK', 'COK', 0, 'Cook Islands', 'NZD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+682', 0, 0),
('CL', 'CHL', 0, 'Chile', 'CLP', 'Peso', 'Pesos', '$', 1, 0, '.', ',', '+56', 0, 0),
('CM', 'CMR', 0, 'Cameroon', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+237', 0, 0),
('CN', 'CHN', 0, 'China', 'CNY', 'Yuan Renminbi', 'Yuan Renminbis', '¥', 1, 2, '.', ',', '+86', 0, 0),
('CO', 'COL', 0, 'Colombia', 'COP', 'Peso', 'Pesos', '$', 1, 2, '.', ',', '+57', 0, 0),
('CR', 'CRI', 0, 'Costa Rica', 'CRC', 'Colon', 'Colons', '₡', 1, 2, '.', ',', '+506', 0, 0),
('CU', 'CUB', 0, 'Cuba', 'CUP', 'Peso', 'Pesos', '₱', 1, 2, '.', ',', '+53', 0, 0),
('CV', 'CPV', 0, 'Cape Verde', 'CVE', 'Escudo', 'Escudos', '', 1, 2, '.', ',', '+238', 0, 0),
('CW', 'CUW', 0, 'Curacao', 'ANG', 'Guilder', 'Guilders', 'ƒ', 1, 2, '.', ',', '+599', 1, 0),
('CX', 'CXR', 0, 'Christmas Island', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+61', 0, 0),
('CY', 'CYP', 0, 'Cyprus', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+357', 1, 0),
('CZ', 'CZE', 0, 'Czech Republic', 'CZK', 'Koruna', 'Korunas', 'Kč', 1, 2, '.', ',', '+420', 1, 0),
('DE', 'DEU', 0, 'Germany', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+49', 1, 0),
('DJ', 'DJI', 0, 'Djibouti', 'DJF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+253', 0, 0),
('DK', 'DNK', 0, 'Denmark', 'DKK', 'Krone', 'Kroner', 'kr', 1, 2, '.', ',', '+45', 1, 0),
('DM', 'DMA', 0, 'Dominica', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-767', 0, 0),
('DO', 'DOM', 0, 'Dominican Republic', 'DOP', 'Peso', 'Pesos', 'RD$', 1, 2, '.', ',', '+849', 0, 0),
('DZ', 'DZA', 0, 'Algeria', 'DZD', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+213', 0, 0),
('EC', 'ECU', 0, 'Ecuador', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+593', 0, 0),
('EE', 'EST', 0, 'Estonia', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+372', 1, 0),
('EG', 'EGY', 0, 'Egypt', 'EGP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+20', 0, 0),
('EH', 'ESH', 0, 'Western Sahara', 'MAD', 'Dirham', 'Dirhams', '', 1, 2, '.', ',', '+212', 0, 0),
('ER', 'ERI', 0, 'Eritrea', 'ERN', 'Nakfa', 'Nakfas', '', 1, 2, '.', ',', '+291', 0, 0),
('ES', 'ESP', 0, 'Spain', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+34', 1, 0),
('ET', 'ETH', 0, 'Ethiopia', 'ETB', 'Birr', 'Birrs', '', 1, 2, '.', ',', '+251', 0, 0),
('FI', 'FIN', 0, 'Finland', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+358', 1, 0),
('FJ', 'FJI', 0, 'Fiji', 'FJD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+679', 0, 0),
('FK', 'FLK', 0, 'Falkland Islands (Malvinas)', 'FKP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+500', 0, 0),
('FM', 'FSM', 0, 'Micronesia, Federated States of', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+691', 0, 0),
('FO', 'FRO', 0, 'Faroe Islands', 'DKK', 'Krone', 'Krones', 'kr', 1, 2, '.', ',', '+298', 0, 0),
('FR', 'FRA', 0, 'France', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+33', 1, 0),
('GA', 'GAB', 0, 'Gabon', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+241', 0, 0),
('GB', 'GBR', 0, 'United Kingdom', 'GBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+44', 1, 0),
('GD', 'GRD', 0, 'Grenada', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-473', 0, 0),
('GE', 'GEO', 0, 'Georgia', 'RUB', 'Ruble', 'Rubles', 'руб', 1, 2, '.', ',', '+995', 0, 0),
('GF', 'GUF', 0, 'French Guiana', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+594', 0, 0),
('GG', 'GGY', 0, 'Guernsey', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+44', 0, 0),
('GH', 'GHA', 0, 'Ghana', 'GHS', 'Cedi', 'Cedis', '', 1, 2, '.', ',', '+233', 0, 0),
('GI', 'GIB', 0, 'Gibraltar', 'GIP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+350', 0, 0),
('GL', 'GRL', 0, 'Greenland', 'DKK', 'Krone', 'Krones', 'kr', 1, 2, '.', ',', '+299', 0, 0),
('GM', 'GMB', 0, 'Gambia', 'GMD', 'Dalasi', 'Dalasis', '', 1, 2, '.', ',', '+220', 0, 0),
('GN', 'GIN', 0, 'Guinea', 'GNF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+224', 0, 0),
('GP', 'GLP', 0, 'Guadeloupe', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+590', 0, 0),
('GQ', 'GNQ', 0, 'Equatorial Guinea', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+240', 0, 0),
('GR', 'GRC', 0, 'Greece', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+30', 1, 0),
('GS', 'SGS', 0, 'South Georgia and the South Sandwich Islands', 'GBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+500', 0, 0),
('GT', 'GTM', 0, 'Guatemala', 'GTQ', 'Quetzal', 'Quetzals', 'Q', 1, 2, '.', ',', '+502', 0, 0),
('GU', 'GUM', 0, 'Guam', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-671', 0, 0),
('GW', 'GNB', 0, 'Guinea-Bissau', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+245', 0, 0),
('GY', 'GUY', 0, 'Guyana', 'GYD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+592', 0, 0),
('HK', 'HKG', 0, 'Hong Kong', 'HKD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+852', 0, 0),
('HM', 'HMD', 0, 'Heard Island and McDonald Islands', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+891', 0, 0),
('HN', 'HND', 0, 'Honduras', 'HNL', 'Lempira', 'Lempiras', 'L', 1, 2, '.', ',', '+504', 0, 0),
('HR', 'HRV', 0, 'Croatia', 'HRK', 'Kuna', 'Kunas', 'kn', 1, 2, '.', ',', '+385', 0, 0),
('HT', 'HTI', 0, 'Haiti', 'HTG', 'Gourde', 'Gourdes', '', 1, 2, '.', ',', '+509', 0, 0),
('HU', 'HUN', 0, 'Hungary', 'HUF', 'Forint', 'Forints', 'Ft', 1, 2, '.', ',', '+36', 1, 0),
('ID', 'IDN', 0, 'Indonesia', 'IDR', 'Rupiah', 'Rupiahs', 'Rp', 1, 2, '.', ',', '+62', 0, 0),
('IE', 'IRL', 0, 'Ireland', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+353', 1, 0),
('IL', 'ISR', 0, 'Israel', 'ILS', 'Shekel', 'Shekels', '₪', 1, 2, '.', ',', '+972', 0, 0),
('IM', 'IMN', 0, 'Isle of Man', 'GBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+44', 0, 0),
('IN', 'IND', 0, 'India', 'INR', 'Rupee', 'Rupees', '$', 1, 2, '.', ',', '+91', 0, 0),
('IO', 'IOT', 0, 'British Indian Ocean Territory', 'GBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+246', 0, 0),
('IQ', 'IRQ', 0, 'Iraq', 'IQD', 'Dinar', 'Dinars', 'د.ع', 1, 3, '.', ',', '+964', 0, 0),
('IR', 'IRN', 0, 'Iran, Islamic Republic of', 'IRR', 'Rial', 'Rials', '﷼', 1, 2, '.', ',', '+98', 0, 0),
('IS', 'ISL', 0, 'Iceland', 'ISK', 'Króna', 'krónur', 'kr', 1, 0, '.', ',', '+354', 0, 0),
('IT', 'ITA', 0, 'Italy', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+39', 1, 0),
('JE', 'JEY', 0, 'Jersey', 'GBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+44', 0, 0),
('JM', 'JAM', 0, 'Jamaica', 'JMD', 'Dollar', 'Dollars', 'J$', 1, 2, '.', ',', '+1-876', 0, 0),
('JO', 'JOR', 0, 'Jordan', 'JOD', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+962', 0, 0),
('JP', 'JPN', 0, 'Japan', 'JPY', 'Yen', 'Yens', '¥', 1, 0, '.', ',', '+81', 0, 0),
('KE', 'KEN', 0, 'Kenya', 'KES', 'Shilling', 'Shillings', 'S', 1, 2, '.', ',', '+254', 0, 0),
('KG', 'KGZ', 0, 'Kyrgyzstan', 'KGS', 'Som', 'Soms', 'лв', 1, 2, '.', ',', '+996', 0, 0),
('KH', 'KHM', 0, 'Cambodia', 'KHR', 'Riels', 'Rielss', '៛', 1, 2, '.', ',', '+855', 0, 0),
('KI', 'KIR', 0, 'Kiribati', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+686', 0, 0),
('KM', 'COM', 0, 'Comoros', 'KMF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+269', 0, 0),
('KN', 'KNA', 0, 'Saint Kitts and Nevis', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-869', 0, 0),
('KP', 'PRK', 0, 'Korea, Democratic People\'s Republic of', 'KPW', 'Won', 'Wons', '₩', 1, 2, '.', ',', '+850', 0, 0),
('KR', 'KOR', 0, 'Korea, Republic of', 'KRW', 'Won', 'Wons', '₩', 1, 0, '.', ',', '+82', 0, 0),
('KW', 'KWT', 0, 'Kuwait', 'KWD', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+965', 0, 0),
('KY', 'CYM', 0, 'Cayman Islands', 'KYD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-345', 0, 0),
('KZ', 'KAZ', 0, 'Kazakhstan', 'KZT', 'Tenge', 'Tenges', 'лв', 1, 2, '.', ',', '+7', 0, 0),
('LA', 'LAO', 0, 'Lao People\'s Democratic Republic', 'LAK', 'Kip', 'Kips', '₭', 1, 2, '.', ',', '+856', 0, 0),
('LB', 'LBN', 0, 'Lebanon', 'LBP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+961', 0, 0),
('LC', 'LCA', 0, 'Saint Lucia', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-758', 0, 0),
('LI', 'LIE', 0, 'Liechtenstein', 'CHF', 'Franc', 'Francs', '₣', 1, 2, '.', ',', '+423', 0, 0),
('LK', 'LKA', 0, 'Sri Lanka', 'LKR', 'Rupee', 'Rupees', '₨', 1, 2, '.', ',', '+94', 0, 0),
('LR', 'LBR', 0, 'Liberia', 'LRD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+231', 0, 0),
('LS', 'LSO', 0, 'Lesotho', 'LSL', 'Loti', 'Lotis', '', 1, 2, '.', ',', '+266', 0, 0),
('LT', 'LTU', 0, 'Lithuania', 'LTL', 'Litas', 'Litass', 'Lt', 1, 2, '.', ',', '+370', 1, 0),
('LU', 'LUX', 0, 'Luxembourg', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+352', 1, 0),
('LV', 'LVA', 0, 'Latvia', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+371', 1, 0),
('LY', 'LBY', 0, 'Libyan Arab Jamahiriya', 'LYD', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+218', 0, 0),
('MA', 'MAR', 0, 'Morocco', 'MAD', 'Dirham', 'Dirhams', '', 1, 2, '.', ',', '+212', 0, 0),
('MC', 'MCO', 0, 'Monaco', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+377', 0, 0),
('MD', 'MDA', 0, 'Moldova, Republic of', 'MDL', 'Leu', 'Leus', '', 1, 2, '.', ',', '+373', 0, 0),
('ME', 'MNE', 0, 'Montenegro', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+382', 0, 0),
('MF', 'MAF', 0, 'Saint Martin', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+590', 1, 0),
('MG', 'MDG', 0, 'Madagascar', 'MGA', 'Ariary', 'Ariarys', '', 1, 2, '.', ',', '+261', 0, 0),
('MH', 'MHL', 0, 'Marshall Islands', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+692', 0, 0),
('MK', 'MKD', 0, 'Macedonia, the Former Yugoslav Republic of', 'MKD', 'Denar', 'Denars', 'ден', 1, 2, '.', ',', '+389', 0, 0),
('ML', 'MLI', 0, 'Mali', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+223', 0, 0),
('MM', 'MMR', 0, 'Myanmar', 'MMK', 'Kyat', 'Kyats', '', 1, 2, '.', ',', '+95', 0, 0),
('MN', 'MNG', 0, 'Mongolia', 'MNT', 'Tugrik', 'Tugriks', '₮', 1, 2, '.', ',', '+976', 0, 0),
('MO', 'MAC', 0, 'Macao', 'MOP', 'Pataca', 'Patacas', '', 1, 2, '.', ',', '+853', 0, 0),
('MP', 'MNP', 0, 'Northern Mariana Islands', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-670', 0, 0),
('MQ', 'MTQ', 0, 'Martinique', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+596', 0, 0),
('MR', 'MRT', 0, 'Mauritania', 'MRO', 'Ouguiya', 'Ouguiyas', '', 1, 2, '.', ',', '+222', 0, 0),
('MS', 'MSR', 0, 'Montserrat', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-664', 0, 0),
('MT', 'MLT', 0, 'Malta', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+356', 1, 0),
('MU', 'MUS', 0, 'Mauritius', 'MUR', 'Rupee', 'Rupees', '₨', 1, 2, '.', ',', '+230', 0, 0),
('MV', 'MDV', 0, 'Maldives', 'MVR', 'Rufiyaa', 'Rufiyaas', '', 1, 2, '.', ',', '+960', 0, 0),
('MW', 'MWI', 0, 'Malawi', 'MWK', 'Kwacha', 'Kwachas', '', 1, 2, '.', ',', '+265', 0, 0),
('MX', 'MEX', 0, 'Mexico', 'MXN', 'Peso', 'Pesos', '$', 1, 2, '.', ',', '+52', 0, 0),
('MY', 'MYS', 0, 'Malaysia', 'MYR', 'Ringgit', 'Ringgits', 'RM', 1, 2, '.', ',', '+60', 0, 0),
('MZ', 'MOZ', 0, 'Mozambique', 'MZM', 'Meticail', 'Meticails', '', 1, 2, '.', ',', '+258', 0, 0),
('NA', 'NAM', 0, 'Namibia', 'NAD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+264', 0, 0),
('NC', 'NCL', 0, 'New Caledonia', 'XPF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+687', 0, 0),
('NE', 'NER', 0, 'Niger', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+227', 0, 0),
('NF', 'NFK', 0, 'Norfolk Island', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+672', 0, 0),
('NG', 'NGA', 0, 'Nigeria', 'NGN', 'Naira', 'Nairas', '₦', 1, 2, '.', ',', '+234', 0, 0),
('NI', 'NIC', 0, 'Nicaragua', 'NIO', 'Cordoba', 'Cordobas', 'C$', 1, 2, '.', ',', '+505', 0, 0),
('NL', 'NLD', 0, 'Netherlands', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+31', 1, 0),
('NO', 'NOR', 0, 'Norway', 'NOK', 'Krone', 'Krones', 'kr', 1, 2, '.', ',', '+47', 0, 0),
('NP', 'NPL', 0, 'Nepal', 'NPR', 'Rupee', 'Rupees', '₨', 1, 2, '.', ',', '+977', 0, 0),
('NR', 'NRU', 0, 'Nauru', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+674', 0, 0),
('NU', 'NIU', 0, 'Niue', 'NZD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+683', 0, 0),
('NZ', 'NZL', 0, 'New Zealand', 'NZD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+64', 0, 0),
('OM', 'OMN', 0, 'Oman', 'OMR', 'Rial', 'Rials', '﷼', 1, 3, '.', ',', '+968', 0, 0),
('PA', 'PAN', 0, 'Panama', 'PAB', 'Balboa', 'Balboas', 'B/.', 1, 2, '.', ',', '+507', 0, 0),
('PE', 'PER', 0, 'Peru', 'PEN', 'Sol', 'Sols', 'S/.', 1, 2, '.', ',', '+51', 0, 0),
('PF', 'PYF', 0, 'French Polynesia', 'XPF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+689', 0, 0),
('PG', 'PNG', 0, 'Papua New Guinea', 'PGK', 'Kina', 'Kinas', '', 1, 2, '.', ',', '+675', 0, 0),
('PH', 'PHL', 0, 'Philippines', 'PHP', 'Peso', 'Pesos', '₱', 1, 2, '.', ',', '+63', 0, 0),
('PK', 'PAK', 0, 'Pakistan', 'PKR', 'Rupee', 'Rupees', '₨', 1, 2, '.', ',', '+92', 0, 0),
('PL', 'POL', 0, 'Poland', 'PLN', 'Zloty', 'Zlotys', 'zł', 1, 2, '.', ',', '+48', 1, 0),
('PM', 'SPM', 0, 'Saint Pierre and Miquelon', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+508', 0, 0),
('PN', 'PCN', 0, 'Pitcairn', 'NZD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '', 0, 0),
('PR', 'PRI', 0, 'Puerto Rico', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1', 0, 0),
('PS', 'PSE', 0, 'Palestinian Territory', 'ILS', 'Shekel', 'Shekels', '₪', 1, 2, '.', ',', '+970', 0, 0),
('PT', 'PRT', 0, 'Portugal', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+351', 1, 0),
('PW', 'PLW', 0, 'Palau', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+680', 0, 0),
('PY', 'PRY', 0, 'Paraguay', 'PYG', 'Guarani', 'Guaranis', 'Gs', 1, 0, '.', ',', '+595', 0, 0),
('QA', 'QAT', 0, 'Qatar', 'QAR', 'Rial', 'Rials', '﷼', 1, 2, '.', ',', '+974', 0, 0),
('RE', 'REU', 0, 'Reunion', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+262', 0, 0),
('RO', 'ROM', 0, 'Romania', 'RON', 'Leu', 'Leus', 'lei', 1, 2, '.', ',', '+40', 1, 0),
('RS', 'SRB', 0, 'Serbia', 'RSD', 'Dinar', 'Dinars', '', 0, 2, '.', ',', '+381', 1, 0),
('RU', 'RUS', 0, 'Russian Federation', 'RUB', 'Ruble', 'Rubles', 'руб', 1, 2, '.', ',', '+7', 0, 0),
('RW', 'RWA', 0, 'Rwanda', 'RWF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+250', 0, 0),
('SA', 'SAU', 0, 'Saudi Arabia', 'SAR', 'Rial', 'Rials', '﷼', 1, 2, '.', ',', '+966', 0, 0),
('SB', 'SLB', 0, 'Solomon Islands', 'SBD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+677', 0, 0),
('SC', 'SYC', 0, 'Seychelles', 'SCR', 'Rupee', 'Rupees', '₨', 1, 2, '.', ',', '+248', 0, 0),
('SD', 'SDN', 0, 'Sudan', 'SDG', 'Pound', 'Pounds', '', 1, 2, '.', ',', '+249', 0, 0),
('SE', 'SWE', 0, 'Sweden', 'SEK', 'Krona', 'Kronor', 'kr', 1, 2, '.', ',', '+46', 1, 0),
('SG', 'SGP', 0, 'Singapore', 'SGD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+65', 0, 0),
('SH', 'SHN', 0, 'Saint Helena', 'SHP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+290', 0, 0),
('SI', 'SVN', 0, 'Slovenia', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+386', 1, 0),
('SJ', 'SJM', 0, 'Svalbard and Jan Mayen', 'NOK', 'Krone', 'Krones', 'kr', 1, 2, '.', ',', '+47', 0, 0),
('SK', 'SVK', 0, 'Slovakia', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+421', 1, 0),
('SL', 'SLE', 0, 'Sierra Leone', 'SLL', 'Leone', 'Leones', '', 1, 2, '.', ',', '+232', 0, 0),
('SM', 'SMR', 0, 'San Marino', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+378', 0, 0),
('SN', 'SEN', 0, 'Senegal', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+221', 0, 0),
('SO', 'SOM', 0, 'Somalia', 'SOS', 'Shilling', 'Shillings', 'S', 1, 2, '.', ',', '+252', 0, 0),
('SR', 'SUR', 0, 'Suriname', 'SRD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+597', 0, 0),
('SS', 'SSD', 0, 'South Sudan', 'SSP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+211', 0, 0),
('ST', 'STP', 0, 'Sao Tome and Principe', 'STD', 'Dobra', 'Dobras', '', 1, 2, '.', ',', '+239', 0, 0),
('SV', 'SLV', 0, 'El Salvador', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+503', 0, 0),
('SX', 'SXM', 0, 'Sint Maarten', 'ANG', 'Guilder', 'Guilders', 'ƒ', 1, 2, '.', ',', '+1', 1, 0),
('SY', 'SYR', 0, 'Syrian Arab Republic', 'SYP', 'Pound', 'Pounds', '£', 1, 2, '.', ',', '+963', 0, 0),
('SZ', 'SWZ', 0, 'Swaziland', 'SZL', 'Lilangeni', 'Lilangenis', '', 1, 2, '.', ',', '+268', 0, 0),
('TC', 'TCA', 0, 'Turks and Caicos Islands', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-649', 0, 0),
('TD', 'TCD', 0, 'Chad', 'XAF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+235', 0, 0),
('TF', 'ATF', 0, 'French Southern Territories', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+262', 0, 0),
('TG', 'TGO', 0, 'Togo', 'XOF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+228', 0, 0),
('TH', 'THA', 0, 'Thailand', 'THB', 'Baht', 'Bahts', '฿', 1, 2, '.', ',', '+66', 0, 0),
('TJ', 'TJK', 0, 'Tajikistan', 'TJS', 'Somoni', 'Somonis', '', 1, 2, '.', ',', '+992', 0, 0),
('TK', 'TKL', 0, 'Tokelau', 'NZD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+690', 0, 0),
('TL', 'TLS', 0, 'Timor-Leste', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+670', 0, 0),
('TM', 'TKM', 0, 'Turkmenistan', 'TMM', 'Manat', 'Manats', '', 1, 2, '.', ',', '+993', 0, 0),
('TN', 'TUN', 0, 'Tunisia', 'TND', 'Dinar', 'Dinars', '', 1, 3, '.', ',', '+216', 0, 0),
('TO', 'TON', 0, 'Tonga', 'TOP', 'Pa\'anga', 'Pa\'angas', '', 1, 2, '.', ',', '+676', 0, 0),
('TR', 'TUR', 0, 'Turkey', 'TRY', 'Lira', 'Liras', '$', 1, 2, '.', ',', '+90', 0, 0),
('TT', 'TTO', 0, 'Trinidad and Tobago', 'TTD', 'Dollar', 'Dollars', 'TT$', 1, 2, '.', ',', '+1-868', 0, 0),
('TV', 'TUV', 0, 'Tuvalu', 'AUD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+688', 0, 0),
('TW', 'TWN', 0, 'Taiwan, Province of China', 'TWD', 'Dollar', 'Dollars', 'NT$', 1, 2, '.', ',', '+886', 0, 0),
('TZ', 'TZA', 0, 'Tanzania, United Republic of', 'TZS', 'Shilling', 'Shillings', 'S', 1, 2, '.', ',', '+255', 0, 0),
('UA', 'UKR', 0, 'Ukraine', 'UAH', 'Hryvnia', 'Hryvnias', '₴', 1, 2, '.', ',', '+380', 0, 0),
('UG', 'UGA', 0, 'Uganda', 'UGX', 'Shilling', 'Shillings', 'S', 1, 2, '.', ',', '+256', 0, 0),
('UM', 'UMI', 0, 'United States Minor Outlying Islands', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1', 0, 0),
('US', 'USA', 0, 'United States', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1', 0, 1),
('UY', 'URY', 0, 'Uruguay', 'UYU', 'Peso', 'Pesos', '$U', 1, 2, '.', ',', '+598', 0, 0),
('UZ', 'UZB', 0, 'Uzbekistan', 'UZS', 'Som', 'Soms', 'лв', 1, 2, '.', ',', '+998', 0, 0),
('VA', 'VAT', 0, 'Holy See (Vatican City State)', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+379', 0, 0),
('VC', 'VCT', 0, 'Saint Vincent and the Grenadines', 'XCD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-784', 0, 0),
('VE', 'VEN', 0, 'Venezuela', 'VEB', 'Bolivar', 'Bolivars', '', 1, 2, '.', ',', '+58', 0, 0),
('VG', 'VGB', 0, 'Virgin Islands, British', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-284', 0, 0),
('VI', 'VIR', 0, 'Virgin Islands, US', 'USD', 'Dollar', 'Dollars', '$', 1, 2, '.', ',', '+1-340', 0, 0),
('VN', 'VNM', 0, 'Viet Nam', 'VND', 'Dong', 'Dongs', '₫', 1, 2, '.', ',', '+84', 0, 0),
('VU', 'VUT', 0, 'Vanuatu', 'VUV', 'Vatu', 'Vatus', '', 1, 0, '.', ',', '+678', 0, 0),
('WF', 'WLF', 0, 'Wallis and Futuna', 'XPF', 'Franc', 'Francs', '₣', 1, 0, '.', ',', '+681', 0, 0),
('WS', 'WSM', 0, 'Samoa', 'WST', 'Tala', 'Talas', '', 1, 2, '.', ',', '+685', 0, 0),
('XK', 'XKX', 0, 'Kosovo', 'EUR', 'Euro', 'Euros', '€', 1, 2, '.', ',', '+383', 0, 0),
('YE', 'YEM', 0, 'Yemen', 'YER', 'Rial', 'Rials', '﷼', 1, 2, '.', ',', '+967', 0, 0),
('YT', 'MYT', 0, 'Mayotte', 'EUR', 'Euro', 'Euros', '€', 0, 2, '.', ',', '+262', 1, 0),
('ZA', 'ZAF', 0, 'South Africa', 'ZAR', 'Rand', 'Rands', 'R', 1, 2, '.', ',', '+27', 0, 0),
('ZM', 'ZMB', 0, 'Zambia', 'ZMK', 'Kwacha', 'Kwachas', '', 1, 2, '.', ',', '+260', 0, 0),
('ZW', 'ZWE', 0, 'Zimbabwe', 'ZWD', 'Dollar', 'Dollars', 'Z$', 1, 2, '.', ',', '+263', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_currency`
--

CREATE TABLE `wp_esp_currency` (
  `CUR_code` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CUR_single` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT 'dollar',
  `CUR_plural` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT 'dollars',
  `CUR_sign` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT '$',
  `CUR_dec_plc` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '2',
  `CUR_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_currency`
--

INSERT INTO `wp_esp_currency` (`CUR_code`, `CUR_single`, `CUR_plural`, `CUR_sign`, `CUR_dec_plc`, `CUR_active`) VALUES
('AED', 'Dirham', 'Dirhams', 'د.إ', '2', 1),
('AFN', 'Afghani', 'Afghanis', '؋', '2', 1),
('ALL', 'Lek', 'Leks', 'Lek', '2', 1),
('AMD', 'Dram', 'Dram', 'Դրամ', '2', 1),
('ANG', 'Guilder', 'Guilders', 'ƒ', '2', 1),
('AOA', 'Kwanza', 'Kwanzas', '', '2', 1),
('ARS', 'Peso', 'Pesos', '$', '2', 1),
('AUD', 'Dollar', 'Dollars', '$', '2', 1),
('AWG', 'Guilder', 'Guilders', 'ƒ', '2', 1),
('BAM', 'Marka', 'Markas', 'KM', '2', 1),
('BBD', 'Dollar', 'Dollars', '$', '2', 1),
('BDT', 'Taka', 'Takas', '৳', '2', 1),
('BGN', 'Lev', 'Levs', 'лв', '2', 1),
('BHD', 'Dinar', 'Dinars', '', '3', 1),
('BIF', 'Franc', 'Francs', '₣', '0', 1),
('BMD', 'Dollar', 'Dollars', '$', '2', 1),
('BND', 'Dollar', 'Dollars', '$', '2', 1),
('BOB', 'Boliviano', 'Bolivianos', '$b', '2', 1),
('BRL', 'Real', 'Reals', 'R$', '2', 1),
('BSD', 'Dollar', 'Dollars', '$', '2', 1),
('BTN', 'Ngultrum', 'Ngultrums', '', '2', 1),
('BWP', 'Pula', 'Pulas', 'P', '2', 1),
('BYR', 'Ruble', 'Rubles', 'p.', '0', 1),
('BZD', 'Dollar', 'Dollars', 'BZ$', '2', 1),
('CAD', 'Dollar', 'Dollars', '$', '2', 1),
('CDF', 'Franc', 'Francs', '₣', '2', 1),
('CHF', 'Franc', 'Francs', '₣', '2', 1),
('CLP', 'Peso', 'Pesos', '$', '0', 1),
('CNY', 'Yuan Renminbi', 'Yuan Renminbis', '¥', '2', 1),
('COP', 'Peso', 'Pesos', '$', '2', 1),
('CRC', 'Colon', 'Colons', '₡', '2', 1),
('CUP', 'Peso', 'Pesos', '₱', '2', 1),
('CVE', 'Escudo', 'Escudos', '', '2', 1),
('CZK', 'Koruna', 'Korunas', 'Kč', '2', 1),
('DJF', 'Franc', 'Francs', '₣', '0', 1),
('DKK', 'Krone', 'Kroner', 'kr', '2', 1),
('DOP', 'Peso', 'Pesos', 'RD$', '2', 1),
('DZD', 'Dinar', 'Dinars', '', '3', 1),
('EGP', 'Pound', 'Pounds', '£', '2', 1),
('ERN', 'Nakfa', 'Nakfas', '', '2', 1),
('ETB', 'Birr', 'Birrs', '', '2', 1),
('EUR', 'Euro', 'Euros', '€', '2', 1),
('FJD', 'Dollar', 'Dollars', '$', '2', 1),
('FKP', 'Pound', 'Pounds', '£', '2', 1),
('GBP', 'Pound', 'Pounds', '£', '2', 1),
('GHS', 'Cedi', 'Cedis', '', '2', 1),
('GIP', 'Pound', 'Pounds', '£', '2', 1),
('GMD', 'Dalasi', 'Dalasis', '', '2', 1),
('GNF', 'Franc', 'Francs', '₣', '0', 1),
('GTQ', 'Quetzal', 'Quetzals', 'Q', '2', 1),
('GYD', 'Dollar', 'Dollars', '$', '2', 1),
('HKD', 'Dollar', 'Dollars', '$', '2', 1),
('HNL', 'Lempira', 'Lempiras', 'L', '2', 1),
('HRK', 'Kuna', 'Kunas', 'kn', '2', 1),
('HTG', 'Gourde', 'Gourdes', '', '2', 1),
('HUF', 'Forint', 'Forints', 'Ft', '2', 1),
('IDR', 'Rupiah', 'Rupiahs', 'Rp', '2', 1),
('ILS', 'Shekel', 'Shekels', '₪', '2', 1),
('INR', 'Rupee', 'Rupees', '$', '2', 1),
('IQD', 'Dinar', 'Dinars', 'د.ع', '3', 1),
('IRR', 'Rial', 'Rials', '﷼', '2', 1),
('ISK', 'Króna', 'krónur', 'kr', '0', 1),
('JMD', 'Dollar', 'Dollars', 'J$', '2', 1),
('JOD', 'Dinar', 'Dinars', '', '3', 1),
('JPY', 'Yen', 'Yens', '¥', '0', 1),
('KES', 'Shilling', 'Shillings', 'S', '2', 1),
('KGS', 'Som', 'Soms', 'лв', '2', 1),
('KHR', 'Riels', 'Rielss', '៛', '2', 1),
('KMF', 'Franc', 'Francs', '₣', '0', 1),
('KPW', 'Won', 'Wons', '₩', '2', 1),
('KRW', 'Won', 'Wons', '₩', '0', 1),
('KWD', 'Dinar', 'Dinars', '', '3', 1),
('KYD', 'Dollar', 'Dollars', '$', '2', 1),
('KZT', 'Tenge', 'Tenges', 'лв', '2', 1),
('LAK', 'Kip', 'Kips', '₭', '2', 1),
('LBP', 'Pound', 'Pounds', '£', '2', 1),
('LKR', 'Rupee', 'Rupees', '₨', '2', 1),
('LRD', 'Dollar', 'Dollars', '$', '2', 1),
('LSL', 'Loti', 'Lotis', '', '2', 1),
('LTL', 'Litas', 'Litass', 'Lt', '2', 1),
('LYD', 'Dinar', 'Dinars', '', '3', 1),
('MAD', 'Dirham', 'Dirhams', '', '2', 1),
('MDL', 'Leu', 'Leus', '', '2', 1),
('MGA', 'Ariary', 'Ariarys', '', '2', 1),
('MKD', 'Denar', 'Denars', 'ден', '2', 1),
('MMK', 'Kyat', 'Kyats', '', '2', 1),
('MNT', 'Tugrik', 'Tugriks', '₮', '2', 1),
('MOP', 'Pataca', 'Patacas', '', '2', 1),
('MRO', 'Ouguiya', 'Ouguiyas', '', '2', 1),
('MUR', 'Rupee', 'Rupees', '₨', '2', 1),
('MVR', 'Rufiyaa', 'Rufiyaas', '', '2', 1),
('MWK', 'Kwacha', 'Kwachas', '', '2', 1),
('MXN', 'Peso', 'Pesos', '$', '2', 1),
('MYR', 'Ringgit', 'Ringgits', 'RM', '2', 1),
('MZM', 'Meticail', 'Meticails', '', '2', 1),
('NAD', 'Dollar', 'Dollars', '$', '2', 1),
('NGN', 'Naira', 'Nairas', '₦', '2', 1),
('NIO', 'Cordoba', 'Cordobas', 'C$', '2', 1),
('NOK', 'Krone', 'Krones', 'kr', '2', 1),
('NPR', 'Rupee', 'Rupees', '₨', '2', 1),
('NZD', 'Dollar', 'Dollars', '$', '2', 1),
('OMR', 'Rial', 'Rials', '﷼', '3', 1),
('PAB', 'Balboa', 'Balboas', 'B/.', '2', 1),
('PEN', 'Sol', 'Sols', 'S/.', '2', 1),
('PGK', 'Kina', 'Kinas', '', '2', 1),
('PHP', 'Peso', 'Pesos', '₱', '2', 1),
('PKR', 'Rupee', 'Rupees', '₨', '2', 1),
('PLN', 'Zloty', 'Zlotys', 'zł', '2', 1),
('PYG', 'Guarani', 'Guaranis', 'Gs', '0', 1),
('QAR', 'Rial', 'Rials', '﷼', '2', 1),
('RON', 'Leu', 'Leus', 'lei', '2', 1),
('RSD', 'Dinar', 'Dinars', '', '3', 1),
('RUB', 'Ruble', 'Rubles', 'руб', '2', 1),
('RWF', 'Franc', 'Francs', '₣', '0', 1),
('SAR', 'Rial', 'Rials', '﷼', '2', 1),
('SBD', 'Dollar', 'Dollars', '$', '2', 1),
('SCR', 'Rupee', 'Rupees', '₨', '2', 1),
('SDG', 'Pound', 'Pounds', '', '2', 1),
('SEK', 'Krona', 'Kronor', 'kr', '2', 1),
('SGD', 'Dollar', 'Dollars', '$', '2', 1),
('SHP', 'Pound', 'Pounds', '£', '2', 1),
('SLL', 'Leone', 'Leones', '', '2', 1),
('SOS', 'Shilling', 'Shillings', 'S', '2', 1),
('SRD', 'Dollar', 'Dollars', '$', '2', 1),
('STD', 'Dobra', 'Dobras', '', '2', 1),
('SYP', 'Pound', 'Pounds', '£', '2', 1),
('SZL', 'Lilangeni', 'Lilangenis', '', '2', 1),
('THB', 'Baht', 'Bahts', '฿', '2', 1),
('TJS', 'Somoni', 'Somonis', '', '2', 1),
('TMM', 'Manat', 'Manats', '', '2', 1),
('TND', 'Dinar', 'Dinars', '', '3', 1),
('TOP', 'Pa\'anga', 'Pa\'angas', '', '2', 1),
('TRY', 'Lira', 'Liras', '$', '2', 1),
('TTD', 'Dollar', 'Dollars', 'TT$', '2', 1),
('TWD', 'Dollar', 'Dollars', 'NT$', '2', 1),
('TZS', 'Shilling', 'Shillings', 'S', '2', 1),
('UAH', 'Hryvnia', 'Hryvnias', '₴', '2', 1),
('UGX', 'Shilling', 'Shillings', 'S', '2', 1),
('USD', 'Dollar', 'Dollars', '$', '2', 1),
('UYU', 'Peso', 'Pesos', '$U', '2', 1),
('UZS', 'Som', 'Soms', 'лв', '2', 1),
('VEB', 'Bolivar', 'Bolivars', '', '2', 1),
('VND', 'Dong', 'Dongs', '₫', '2', 1),
('VUV', 'Vatu', 'Vatus', '', '0', 1),
('WST', 'Tala', 'Talas ', '', '2', 1),
('XAF', 'Franc', 'Francs', '₣', '0', 1),
('XCD', 'Dollar', 'Dollars', '$', '2', 1),
('XOF', 'Franc', 'Francs', '₣', '0', 1),
('XPF', 'Franc', 'Francs', '₣', '0', 1),
('YER', 'Rial', 'Rials', '﷼', '2', 1),
('ZAR', 'Rand', 'Rands', 'R', '2', 1),
('ZMK', 'Kwacha', 'Kwachas', '', '2', 1),
('ZWD', 'Dollar', 'Dollars', 'Z$', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_currency_payment_method`
--

CREATE TABLE `wp_esp_currency_payment_method` (
  `CPM_ID` int(11) NOT NULL,
  `CUR_code` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PMD_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_datetime`
--

CREATE TABLE `wp_esp_datetime` (
  `DTT_ID` int(10) UNSIGNED NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL,
  `DTT_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `DTT_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `DTT_EVT_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DTT_EVT_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DTT_reg_limit` mediumint(8) DEFAULT '-1',
  `DTT_sold` mediumint(8) UNSIGNED DEFAULT '0',
  `DTT_reserved` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `DTT_is_primary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `DTT_order` mediumint(3) UNSIGNED DEFAULT '0',
  `DTT_parent` int(10) UNSIGNED DEFAULT '0',
  `DTT_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_datetime_ticket`
--

CREATE TABLE `wp_esp_datetime_ticket` (
  `DTK_ID` int(10) UNSIGNED NOT NULL,
  `DTT_ID` int(10) UNSIGNED NOT NULL,
  `TKT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_event_message_template`
--

CREATE TABLE `wp_esp_event_message_template` (
  `EMT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `GRP_ID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_event_meta`
--

CREATE TABLE `wp_esp_event_meta` (
  `EVTM_ID` int(10) NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL,
  `EVT_display_desc` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `EVT_display_ticket_selector` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `EVT_visible_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EVT_default_registration_status` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EVT_phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EVT_additional_limit` tinyint(2) UNSIGNED DEFAULT NULL,
  `EVT_member_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EVT_allow_overflow` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EVT_timezone_string` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EVT_external_URL` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EVT_donations` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_event_question_group`
--

CREATE TABLE `wp_esp_event_question_group` (
  `EQG_ID` int(10) UNSIGNED NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL,
  `QSG_ID` int(10) UNSIGNED NOT NULL,
  `EQG_primary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_event_venue`
--

CREATE TABLE `wp_esp_event_venue` (
  `EVV_ID` int(11) NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL,
  `VNU_ID` bigint(20) UNSIGNED NOT NULL,
  `EVV_primary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_extra_join`
--

CREATE TABLE `wp_esp_extra_join` (
  `EXJ_ID` int(11) NOT NULL,
  `EXJ_first_model_id` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `EXJ_first_model_name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `EXJ_second_model_id` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `EXJ_second_model_name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_extra_meta`
--

CREATE TABLE `wp_esp_extra_meta` (
  `EXM_ID` int(11) NOT NULL,
  `OBJ_ID` int(11) DEFAULT NULL,
  `EXM_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EXM_key` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `EXM_value` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_extra_meta`
--

INSERT INTO `wp_esp_extra_meta` (`EXM_ID`, `OBJ_ID`, `EXM_type`, `EXM_key`, `EXM_value`) VALUES
(1, 6, 'Payment_Method', 'pdf_payee_name', NULL),
(2, 6, 'Payment_Method', 'pdf_payee_email', NULL),
(3, 6, 'Payment_Method', 'pdf_payee_tax_number', NULL),
(4, 6, 'Payment_Method', 'pdf_payee_address', NULL),
(5, 6, 'Payment_Method', 'pdf_instructions', 'Please send this invoice with payment attached to the address above, or use the payment link below. Payment must be received within 48 hours of event date.'),
(6, 6, 'Payment_Method', 'pdf_logo_image', NULL),
(7, 6, 'Payment_Method', 'page_confirmation_text', 'Payment must be received within 48 hours of event date. Details about where to send the payment are included on the invoice.'),
(8, 6, 'Payment_Method', 'page_extra_info', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_line_item`
--

CREATE TABLE `wp_esp_line_item` (
  `LIN_ID` int(11) NOT NULL,
  `LIN_code` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `TXN_ID` int(11) DEFAULT NULL,
  `LIN_name` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `LIN_desc` text COLLATE utf8mb4_unicode_520_ci,
  `LIN_unit_price` decimal(12,3) DEFAULT NULL,
  `LIN_percent` decimal(12,3) DEFAULT NULL,
  `LIN_is_taxable` tinyint(1) DEFAULT '0',
  `LIN_order` int(10) DEFAULT '0',
  `LIN_parent` int(10) DEFAULT '0',
  `LIN_type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `LIN_total` decimal(12,3) DEFAULT NULL,
  `LIN_quantity` int(10) DEFAULT NULL,
  `OBJ_ID` int(11) DEFAULT NULL,
  `OBJ_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `LIN_timestamp` datetime NOT NULL DEFAULT '2019-01-23 09:10:10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_log`
--

CREATE TABLE `wp_esp_log` (
  `LOG_ID` int(11) NOT NULL,
  `LOG_time` datetime DEFAULT NULL,
  `OBJ_ID` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `OBJ_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `LOG_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `LOG_message` text COLLATE utf8mb4_unicode_520_ci,
  `LOG_wp_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_message`
--

CREATE TABLE `wp_esp_message` (
  `MSG_ID` bigint(20) UNSIGNED NOT NULL,
  `GRP_ID` int(10) UNSIGNED DEFAULT NULL,
  `MSG_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TXN_ID` int(10) UNSIGNED DEFAULT NULL,
  `MSG_messenger` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MSG_message_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MSG_context` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MSG_recipient_ID` bigint(20) DEFAULT NULL,
  `MSG_recipient_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MSG_content` longtext COLLATE utf8mb4_unicode_520_ci,
  `MSG_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MSG_from` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MSG_subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MSG_priority` tinyint(1) NOT NULL DEFAULT '3',
  `STS_ID` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'MIC',
  `MSG_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MSG_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_message_template`
--

CREATE TABLE `wp_esp_message_template` (
  `MTP_ID` int(10) UNSIGNED NOT NULL,
  `GRP_ID` int(10) UNSIGNED NOT NULL,
  `MTP_context` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MTP_template_field` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MTP_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_message_template`
--

INSERT INTO `wp_esp_message_template` (`MTP_ID`, `GRP_ID`, `MTP_context`, `MTP_template_field`, `MTP_content`) VALUES
(1, 1, 'admin', 'to', ''),
(2, 1, 'admin', 'cc', ''),
(3, 1, 'admin', 'from', '[CO_EMAIL]'),
(4, 1, 'admin', 'subject', 'Event Payment Details'),
(5, 1, 'admin', 'content', 'a:5:{s:4:\"main\";s:2992:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h1>Payment Notification</h1>\n                                    The following message was sent to the Primary Registrant of this transaction:                                    <h3>Payment Details:</h3>\n                                    <ul>\n                                        <li>\n                                            <strong>Payment Status:</strong> [PAYMENT_STATUS]\n                                        </li>\n                                        <li><strong>Transaction ID:</strong>\n                                            <a href=\"[TRANSACTION_ADMIN_URL]\">[TXN_ID]</a></li>\n                                        <li>\n                                            <strong>Payment Gateway:</strong> [PAYMENT_GATEWAY]\n                                        </li>\n                                        <li>\n                                            <strong>Total Cost:</strong> [TOTAL_COST]\n                                        </li>\n                                        <li>\n                                            <strong>Payment Amount:</strong> [AMOUNT_PAID]\n                                        </li>\n                                        <li>\n                                            <strong>Amount Due:</strong> [TOTAL_OWING]\n                                        </li>\n                                    </ul>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n                <div class=\"content\">\n                    <h2>Registrant Details:</h2>\n                    <p class=\"callout\">\n                        <strong>[PRIMARY_REGISTRANT_FNAME] [PRIMARY_REGISTRANT_LNAME]:</strong>\n                        <a href=\"mailto:[PRIMARY_REGISTRANT_EMAIL]\">[PRIMARY_REGISTRANT_EMAIL]</a>\n                    </p>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:0:\"\";s:13:\"attendee_list\";s:0:\"\";s:11:\"ticket_list\";s:0:\"\";s:13:\"datetime_list\";s:0:\"\";}'),
(6, 1, 'primary_attendee', 'to', '[PRIMARY_REGISTRANT_EMAIL]'),
(7, 1, 'primary_attendee', 'cc', ''),
(8, 1, 'primary_attendee', 'from', '[CO_EMAIL]'),
(9, 1, 'primary_attendee', 'subject', 'Event Payment Details'),
(10, 1, 'primary_attendee', 'content', 'a:5:{s:4:\"main\";s:4535:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h2>Hello, [PRIMARY_REGISTRANT_FNAME] [PRIMARY_REGISTRANT_LNAME]:</h2>\n                                    <p class=\"lead\">We\'re just notifying you of a successful payment made for the following transaction and tickets:</p>\n                                    <h3>Payment Details:</h3>\n                                    <ul>\n                                        <li>\n                                            <strong>Payment Status:</strong> [PAYMENT_STATUS]\n                                        </li>\n                                        <li>\n                                            <strong>Transaction ID:</strong> [TXN_ID]\n                                        </li>\n                                        <li>\n                                            <strong>Total Cost:</strong> [TOTAL_COST]\n                                        </li>\n                                        <li>\n                                            <strong>Payment Amount:</strong> [AMOUNT_PAID]\n                                        </li>\n                                        <li>\n                                            <strong>Amount Due:</strong> [TOTAL_OWING]\n                                        </li>\n                                    </ul>\n                                    [EVENT_LIST]\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h3>Connect with Us:</h3>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h3>Contact Info:</h3>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                                &nbsp;\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:112:\"<p class=\"callout\">\n    <strong>Event: [EVENT_LINK]</strong>\n</p>\n<div class=\"content\">\n    [TICKET_LIST]\n</div>\";s:13:\"attendee_list\";s:0:\"\";s:11:\"ticket_list\";s:262:\"<ul>\n    <li class=\"ticket-name\">\n        <strong>Ticket Name:</strong> [TICKET_NAME]<br><em>[TICKET_DESCRIPTION]</em>\n    </li>\n    <li><strong>Price:</strong> [TICKET_PRICE]</li>\n    <li><strong>Quantity Purchased:</strong> [TKT_QTY_PURCHASED]</li>\n</ul>\n<hr/>\";s:13:\"datetime_list\";s:0:\"\";}'),
(11, 2, 'admin', 'to', ''),
(12, 2, 'admin', 'cc', ''),
(13, 2, 'admin', 'from', '[CO_EMAIL]'),
(14, 2, 'admin', 'subject', 'Event Refund Details'),
(15, 2, 'admin', 'content', 'a:5:{s:4:\"main\";s:2765:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h1>Refund Notification</h1>\n                                    The following message was sent to the Primary Registrant of this transaction:                                    <h3>Refund Details:</h3>\n                                    <ul>\n                                        <li>\n                                            <strong>Payment Status:</strong> [PAYMENT_STATUS]\n                                        </li>\n                                        <li><strong>Transaction ID:</strong>\n                                            <a href=\"[TRANSACTION_ADMIN_URL]\">[TXN_ID]</a></li>\n                                        <li>\n                                            <strong>Payment Gateway:</strong> [PAYMENT_GATEWAY]\n                                        </li>\n                                        <li>\n                                            <strong>Total Cost:</strong> [TOTAL_COST]\n                                        </li>\n                                        <li>\n                                            <strong>Refund Amount:</strong> [AMOUNT_PAID]\n                                        </li>\n                                    </ul>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n                <div class=\"content\">\n                    <h2>Registrant Details:</h2>\n                    <p class=\"callout\"><strong>[PRIMARY_REGISTRANT_FNAME] [PRIMARY_REGISTRANT_LNAME]:</strong>\n                        <a href=\"mailto:[PRIMARY_REGISTRANT_EMAIL]\">[PRIMARY_REGISTRANT_EMAIL]</a></p>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:0:\"\";s:13:\"attendee_list\";s:0:\"\";s:11:\"ticket_list\";s:0:\"\";s:13:\"datetime_list\";s:0:\"\";}'),
(16, 2, 'primary_attendee', 'to', '[PRIMARY_REGISTRANT_EMAIL]'),
(17, 2, 'primary_attendee', 'cc', ''),
(18, 2, 'primary_attendee', 'from', '[CO_EMAIL]'),
(19, 2, 'primary_attendee', 'subject', 'Event Refund Details'),
(20, 2, 'primary_attendee', 'content', 'a:5:{s:4:\"main\";s:4345:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h2>Hello, [PRIMARY_REGISTRANT_FNAME] [PRIMARY_REGISTRANT_LNAME]:</h2>\n                                    <p class=\"lead\">We\'re just notifying you of a refund issued for the following transaction and tickets:</p>\n                                    <h3>Refund Details:</h3>\n                                    <ul>\n                                        <li>\n                                            <strong>Payment Status:</strong> [PAYMENT_STATUS]\n                                        </li>\n                                        <li>\n                                            <strong>Transaction ID:</strong> [TXN_ID]\n                                        </li>\n                                        <li>\n                                            <strong>Total Cost:</strong> [TOTAL_COST]\n                                        </li>\n                                        <li>\n                                            <strong>Refund Amount:</strong> [AMOUNT_PAID]\n                                        </li>\n                                    </ul>\n                                    [EVENT_LIST]\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h3>Connect with Us:</h3>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h3>Contact Info:</h3>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                                &nbsp;\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:112:\"<p class=\"callout\">\n    <strong>Event: [EVENT_LINK]</strong>\n</p>\n<div class=\"content\">\n    [TICKET_LIST]\n</div>\";s:13:\"attendee_list\";s:0:\"\";s:11:\"ticket_list\";s:262:\"<ul>\n    <li class=\"ticket-name\">\n        <strong>Ticket Name:</strong> [TICKET_NAME]<br><em>[TICKET_DESCRIPTION]</em>\n    </li>\n    <li><strong>Price:</strong> [TICKET_PRICE]</li>\n    <li><strong>Quantity Purchased:</strong> [TKT_QTY_PURCHASED]</li>\n</ul>\n<hr/>\";s:13:\"datetime_list\";s:0:\"\";}'),
(21, 3, 'admin', 'to', '[EVENT_AUTHOR_EMAIL]'),
(22, 3, 'admin', 'cc', ''),
(23, 3, 'admin', 'from', '[CO_EMAIL]'),
(24, 3, 'admin', 'subject', 'Event Registration Details'),
(25, 3, 'admin', 'content', 'a:5:{s:4:\"main\";s:1336:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <h1>Registration Notification</h1>\n                    The following attendee(s) have registered for the following event:                    <table>\n                        <tbody>\n                            <tr>\n                                <td>[EVENT_LIST]</td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:232:\"<p class=\"callout\">\n    <strong>\n        Event: [EVENT_LINK]\n        Venue:        <a href=\"[VENUE_URL]\" target=\"_blank\">[VENUE_TITLE]</a> ([VENUE_CITY], [VENUE_STATE])\n    </strong>\n</p>\n<h2>Registrant Details:</h2>\n[ATTENDEE_LIST]\";s:13:\"attendee_list\";s:286:\"<h4><a href=\"[EDIT_ATTENDEE_LINK]\">[FNAME] [LNAME]</a></h4>\n<ul>\n    <li>\n        <strong>Registration Code:</strong>\n        <a href=\"[EDIT_ATTENDEE_LINK]\">[REGISTRATION_CODE]</a>\n    </li>\n    <li>\n        <strong>Tickets:</strong>\n        <ul>[TICKET_LIST]</ul>\n    </li>\n</ul>\n<hr/>\";s:11:\"ticket_list\";s:107:\"<li>\n    <strong>[TICKET_NAME]</strong>\n</li>\n<li>\n    Dates/Times:</br>\n    <ul>[DATETIME_LIST]</ul>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(26, 3, 'primary_attendee', 'to', ''),
(27, 3, 'primary_attendee', 'cc', ''),
(28, 3, 'primary_attendee', 'from', '[CO_EMAIL]'),
(29, 3, 'primary_attendee', 'subject', 'Group Event Registration Details'),
(30, 3, 'primary_attendee', 'content', 'a:5:{s:4:\"main\";s:3463:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h2>Hello, [PRIMARY_REGISTRANT_FNAME]:</h2>\n                                    <p class=\"lead\">This is a copy of your registration details!</p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n                <div>\n                    [EVENT_LIST]\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Connect with Us:</h5>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Contact Info:</h5>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                                &nbsp;\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:3022:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <p class=\"callout\"><strong>Event: [EVENT_LINK]\n                            Venue:                            <a href=\"[VENUE_URL]\" target=\"_blank\">[VENUE_TITLE]</a> ([VENUE_CITY], [VENUE_STATE])</strong>\n                    </p>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n\n<div class=\"column-wrap\">\n    <div class=\"column\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h3>Registrant(s):</h3>\n                        [ATTENDEE_LIST]\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"column\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <ul class=\"sidebar\">\n                            <li><h5>Venue »</h5></li>\n                            <li>[VENUE_IMAGE]</li>\n                            <li>[VENUE_TITLE]</li>\n                            <li>[VENUE_ADDRESS]</li>\n                            <li>[VENUE_CITY]</li>\n                            <li>[VENUE_STATE], [VENUE_ZIP]</li>\n                            <li><a href=\"[GOOGLE_MAP_URL]\">Map and Directions</a></li>\n                        </ul>\n                        <table class=\"social\" width=\"100%\" bgcolor=\"\">\n                            <tbody>\n                                <tr>\n                                    <td>\n                                        <table width=\"100%\" align=\"left\">\n                                            <tbody>\n                                                <tr>\n                                                    <td>\n                                                        <h6>Connect with this Event:</h6>\n                                                        <a class=\"soc-btn fb\" href=\"[EVENT_FACEBOOK_URL]\">Facebook</a>\n                                                        <a class=\"soc-btn tw\" href=\"[EVENT_TWITTER_URL]\">Twitter</a>\n                                                        <h6>Contact Info:</h6>\n                                                        Phone:                                                        <strong>[EVENT_PHONE]</strong>\n                                                        Email:                                                        <strong><a href=\"mailto:[EVENT_AUTHOR_EMAIL]\">[EVENT_AUTHOR_EMAIL]</a></strong>\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:179:\"<h4>[FNAME] [LNAME]</h4>\n<ul>\n    <li><strong>Registration Code:</strong> [REGISTRATION_CODE]</li>\n    <li><strong>Tickets:</strong></li>\n</ul>\n<ul>\n    [TICKET_LIST]\n</ul>\n<hr />\";s:11:\"ticket_list\";s:107:\"<li>\n    <strong>[TICKET_NAME]</strong>\n</li>\n<li>\n    Dates/Times:</br>\n    <ul>[DATETIME_LIST]</ul>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(31, 3, 'attendee', 'to', '[RECIPIENT_EMAIL]'),
(32, 3, 'attendee', 'cc', ''),
(33, 3, 'attendee', 'from', '[CO_EMAIL]'),
(34, 3, 'attendee', 'subject', 'Your Event Registration Details'),
(35, 3, 'attendee', 'content', 'a:5:{s:4:\"main\";s:3453:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h2>Hello, [RECIPIENT_FNAME]:</h2>\n                                    <p class=\"lead\">Here\'s a copy of your registration details!</p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n                <div>\n                    [EVENT_LIST]\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Connect with Us:</h5>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Contact Info:</h5>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                                &nbsp;\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:3499:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <p class=\"callout\"><strong>Event: [EVENT_LINK]\n                            Venue:                            <a href=\"[VENUE_URL]\" target=\"_blank\">[VENUE_TITLE]</a> ([VENUE_CITY], [VENUE_STATE])</strong>\n                    </p>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n\n<div class=\"column-wrap\">\n    <div class=\"column\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h3>Registration:</h3>\n                        <h4>[RECIPIENT_FNAME] [RECIPIENT_LNAME]</h4>\n                        <ul>\n                            <li>\n                                <strong>Registration Code:</strong> [RECIPIENT_REGISTRATION_CODE]\n                            </li>\n                            <li><strong>Tickets:</strong></li>\n                            <li>\n                                <ul>[RECIPIENT_TICKET_LIST]</ul>\n                            </li>\n                        </ul>\n                        <hr/>\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"column\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <ul class=\"sidebar\">\n                            <li><h5>Venue »</h5></li>\n                            <li>[VENUE_IMAGE]</li>\n                            <li>[VENUE_TITLE]</li>\n                            <li>[VENUE_ADDRESS]</li>\n                            <li>[VENUE_CITY]</li>\n                            <li>[VENUE_STATE], [VENUE_ZIP]</li>\n                            <li><a href=\"[GOOGLE_MAP_URL]\">Map and Directions</a></li>\n                        </ul>\n                        <table class=\"social\" width=\"100%\" bgcolor=\"\">\n                            <tbody>\n                                <tr>\n                                    <td>\n                                        <table width=\"100%\" align=\"left\">\n                                            <tbody>\n                                                <tr>\n                                                    <td>\n                                                        <h6>Connect with this Event:</h6>\n                                                        <a class=\"soc-btn fb\" href=\"[EVENT_FACEBOOK_URL]\">Facebook</a>\n                                                        <a class=\"soc-btn tw\" href=\"[EVENT_TWITTER_URL]\">Twitter</a>\n                                                        <h6>Contact Info:</h6>\n                                                        Phone:                                                        <strong>[EVENT_PHONE]</strong>\n                                                        Email:                                                        <strong><a href=\"mailto:[EVENT_AUTHOR_EMAIL]\">[EVENT_AUTHOR_EMAIL]</a></strong>\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:0:\"\";s:11:\"ticket_list\";s:107:\"<li>\n    <strong>[TICKET_NAME]</strong>\n</li>\n<li>\n    Dates/Times:</br>\n    <ul>[DATETIME_LIST]</ul>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(36, 4, 'admin', 'to', ''),
(37, 4, 'admin', 'cc', ''),
(38, 4, 'admin', 'from', '[CO_EMAIL]'),
(39, 4, 'admin', 'subject', 'Registration Not Approved'),
(40, 4, 'admin', 'content', 'a:5:{s:4:\"main\";s:1329:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <h1>Registration(s) Require Approval</h1>\n                    The following registration(s) require your approval:                    <table>\n                        <tbody>\n                            <tr>\n                                <td>[EVENT_LIST]</td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:582:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <h2>Event: [EVENT]</h2>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n<div class=\"column-wrap\">\n    <div class=\"column-large\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h2>Registrant(s):</h2>\n                        [ATTENDEE_LIST]\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:286:\"<h5><a href=\"[EDIT_ATTENDEE_LINK]\">[FNAME] [LNAME]</a></h5>\n<ul>\n    <li>\n        <strong>Registration Code:</strong>\n        <a href=\"[EDIT_ATTENDEE_LINK]\">[REGISTRATION_CODE]</a>\n    </li>\n    <li>\n        <strong>Tickets:</strong>\n        <ul>[TICKET_LIST]</ul>\n    </li>\n</ul>\n<hr/>\";s:11:\"ticket_list\";s:81:\"<li>\n	<p>\n		<strong>[TICKET_NAME]</strong>\n		<ul>[DATETIME_LIST]</ul>\n	</p>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(41, 4, 'primary_attendee', 'to', '[PRIMARY_REGISTRANT_EMAIL]'),
(42, 4, 'primary_attendee', 'cc', ''),
(43, 4, 'primary_attendee', 'from', '[CO_EMAIL]'),
(44, 4, 'primary_attendee', 'subject', 'Registration Not Approved'),
(45, 4, 'primary_attendee', 'content', 'a:5:{s:4:\"main\";s:3463:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h2>Hello, [PRIMARY_REGISTRANT_FNAME]:</h2>\n\n                                    <p class=\"lead\">Your registration(s) are awaiting approval by the event manager. You will be notified when the status of your registration changes.</p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n                [EVENT_LIST]\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Connect with Us:</h5>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Contact Info:</h5>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:715:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <p class=\"callout\">\n                        <strong>Event Name:</strong>\n                        <a href=\"[EVENT_URL]\">[EVENT]</a>\n                    </p>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n\n<div class=\"column-wrap\">\n    <div class=\"column-large\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h2>Registrant(s):</h2>\n                        [ATTENDEE_LIST]\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:187:\"<h5>[FNAME] [LNAME]</h5>\n<ul>\n    <li><strong>Registration Code:</strong> [REGISTRATION_CODE]</li>\n    <li><strong>Tickets:</strong></li>\n</ul>\n<ul>\n    <li>[TICKET_LIST]</li>\n</ul>\n<hr/>\";s:11:\"ticket_list\";s:81:\"<li>\n	<p>\n		<strong>[TICKET_NAME]</strong>\n		<ul>[DATETIME_LIST]</ul>\n	</p>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(46, 5, 'admin', 'to', '[EVENT_AUTHOR_EMAIL]'),
(47, 5, 'admin', 'cc', ''),
(48, 5, 'admin', 'from', '[CO_EMAIL]'),
(49, 5, 'admin', 'subject', 'Registration Pending Payment'),
(50, 5, 'admin', 'content', 'a:5:{s:4:\"main\";s:1006:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tr>\n        <td></td>\n        <td class=\"header container\">\n            <div class=\"content\">\n            <table bgcolor=\"#999999\" class=\"\">\n                <tr>\n                    <td>[CO_LOGO]</td>\n                    <td align=\"right\"><h6 class=\"collapse\">[COMPANY]</h6></td>\n                </tr>\n            </table>\n            </div>\n        </td>\n        <td></td>\n    </tr>\n</table>\n\n<table class=\"body-wrap\">\n    <tr>\n        <td></td>\n        <td class=\"container\" bgcolor=\"#FFFFFF\">\n            <div class=\"content\">\n                <h1>Registration(s) Pending Payment</h1>\n                <p>The following registration(s) are awaiting payment for the following event(s).</p>\n                <table>\n                    <tr>\n                        <td>\n                           [EVENT_LIST]\n                        </td>\n                    </tr>\n                </table>\n            </div>\n        </td>\n        <td></td>\n    </tr>\n</table>\";s:10:\"event_list\";s:619:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <p class=\"callout\"><strong>Event: [EVENT_LINK]</strong></p>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n\n<div class=\"column-wrap\">\n    <div class=\"column-large\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h3>Registrant(s):</h3>\n                        [ATTENDEE_LIST]\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:286:\"<h4><a href=\"[EDIT_ATTENDEE_LINK]\">[FNAME] [LNAME]</a></h4>\n<ul>\n    <li>\n        <strong>Registration Code:</strong>\n        <a href=\"[EDIT_ATTENDEE_LINK]\">[REGISTRATION_CODE]</a>\n    </li>\n    <li>\n        <strong>Tickets:</strong>\n        <ul>[TICKET_LIST]</ul>\n    </li>\n</ul>\n<hr/>\";s:11:\"ticket_list\";s:107:\"<li>\n    <strong>[TICKET_NAME]</strong>\n</li>\n<li>\n    Dates/Times:</br>\n    <ul>[DATETIME_LIST]</ul>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(51, 5, 'primary_attendee', 'to', '[PRIMARY_REGISTRANT_EMAIL]'),
(52, 5, 'primary_attendee', 'cc', ''),
(53, 5, 'primary_attendee', 'from', '[CO_EMAIL]'),
(54, 5, 'primary_attendee', 'subject', 'Registration Pending Payment');
INSERT INTO `wp_esp_message_template` (`MTP_ID`, `GRP_ID`, `MTP_context`, `MTP_template_field`, `MTP_content`) VALUES
(55, 5, 'primary_attendee', 'content', 'a:5:{s:4:\"main\";s:3607:\"<table class=\"head-wrap\" bgcolor=\"#999999\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"header container\">\n                <div class=\"content\">\n                    <table bgcolor=\"#999999\">\n                        <tbody>\n                            <tr>\n                                <td>[CO_LOGO]</td>\n                                <td align=\"right\">\n                                    <h6 class=\"collapse\">[COMPANY]</h6>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"body-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\" bgcolor=\"#FFFFFF\">\n                <div class=\"content\">\n                    <table>\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <h1>Hello, [PRIMARY_REGISTRANT_FNAME]:</h1>\n                                    Your registration(s) is/are pending payment for the following events:                                    <div>\n                                        [EVENT_LIST]\n                                    </div>\n                                    <p class=\"callout\">You can <a href=\"[PAYMENT_URL]\">make a payment here »</a>.</p>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </div>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\n\n<table class=\"footer-wrap\">\n    <tbody>\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <table class=\"social\" width=\"100%\">\n                    <tbody>\n                        <tr>\n                            <td>\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Connect with Us:</h5>\n                                                <a class=\"soc-btn fb\" href=\"[CO_FACEBOOK_URL]\">Facebook</a>\n                                                <a class=\"soc-btn tw\" href=\"[CO_TWITTER_URL]\">Twitter</a>\n                                                <a class=\"soc-btn gp\" href=\"[CO_GOOGLE_URL]\">Google+</a>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n\n                                <table class=\"column\" align=\"left\">\n                                    <tbody>\n                                        <tr>\n                                            <td>\n                                                <h5>Contact Info:</h5>\n                                                Phone: <strong>[CO_PHONE]</strong>\n                                                Email:                                                <strong><a href=\"mailto:[CO_EMAIL]\" target=\"_blank\">[CO_EMAIL]</a></strong>\n                                            </td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                    </tbody>\n                </table>\n            </td>\n            <td></td>\n        </tr>\n    </tbody>\n</table>\";s:10:\"event_list\";s:619:\"<div class=\"content\">\n    <table>\n        <tbody>\n            <tr>\n                <td>\n                    <p class=\"callout\"><strong>Event: [EVENT_LINK]</strong></p>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n\n<div class=\"column-wrap\">\n    <div class=\"column-large\">\n        <table align=\"left\">\n            <tbody>\n                <tr>\n                    <td>\n                        <h3>Registrant(s):</h3>\n                        [ATTENDEE_LIST]\n                    </td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"clear\"></div>\n</div>\";s:13:\"attendee_list\";s:179:\"<h4>[FNAME] [LNAME]</h4>\n<ul>\n    <li><strong>Registration Code:</strong> [REGISTRATION_CODE]</li>\n    <li><strong>Tickets:</strong></li>\n</ul>\n<ul>\n    [TICKET_LIST]\n</ul>\n<hr />\";s:11:\"ticket_list\";s:107:\"<li>\n    <strong>[TICKET_NAME]</strong>\n</li>\n<li>\n    Dates/Times:</br>\n    <ul>[DATETIME_LIST]</ul>\n</li>\";s:13:\"datetime_list\";s:42:\"<li>[DATETIME_START] - [DATETIME_END]</li>\";}'),
(56, 6, 'purchaser', 'subject', '[COMPANY] Receipt for Transaction: [TXN_ID]'),
(57, 6, 'purchaser', 'content', 'a:11:{s:4:\"main\";s:5173:\"<div class=\"print_button_div noPrint\">\n    [INVOICE_RECEIPT_SWITCHER_BUTTON] [DISPLAY_PDF_BUTTON]\n    <div class=\"clear\"></div>\n</div>\n<div id=\"invoice\">\n    <table id=\"invoice-header\" class=\"not-really-a-table\">\n        <tr>\n            <td id=\"logo-dv\">\n                [INVOICE_LOGO]\n                <div class=\"vcard\" id=\"company-address\">\n                    <div class=\"fn org\"><strong>[INVOICE_PAYEE_NAME]</strong></div>\n                    <div class=\"adr\">\n                        [INVOICE_PAYEE_ADDRESS]\n                    </div>\n                    <div class=\"email\">[INVOICE_PAYEE_EMAIL]</div>\n                    <div class=\"vat\">[INVOICE_PAYEE_TAX_NUMBER_*]</div>\n                </div>\n            </td>\n            <td>\n                <div id=\"invoice-info\">\n                    <h2 id=\"invoice-hdr\">Order Confirmation</h2>\n\n                    <h3 id=\"invoice-date\">Date:                        <span class=\"plain-text\">[PRIMARY_REGISTRANT_REGISTRATION_DATE]</span></h3>\n\n                    <h3 id=\"invoice-txn-id\">Transaction ID:                        <span class=\"plain-text\">[TXN_ID]</span></h3>\n\n                    <h3 id=\"invoice-txn-status\">Status:                        <span class=\"[TXN_STATUS_ID] plain-text\">[TXN_STATUS]</span></h3>\n                </div>\n            </td>\n        </tr>\n    </table>\n    <div class=\"events\">\n        [EVENT_LIST]\n    </div>\n    <div class=\"taxes\">\n        <h3 class=\"section-title\">Additional Charges/Discounts</h3>\n        <table class=\"invoice-amount\">\n            <thead>\n                <tr class=\"header_row\">\n                    <th class=\"left ticket_th\">Name</th>\n                    <th class=\"left\">Description</th>\n                    <th class=\"event_th item_c\">Quantity</th>\n                    <th class=\"event_th item_c\">Unit Price</th>\n                    <th class=\"subtotal_th\">Total</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <td colspan=\"5\">[ADDITIONAL_LINE_ITEM_LIST]</td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"taxes\">\n        <h3 class=\"section-title\">Taxes</h3>\n        <p><strong>*</strong> Taxable items. The total amount collected for taxes is reflected in the total(s) below.</p>\n        <table class=\"invoice-amount\">\n            <thead>\n                <tr class=\"header_row\">\n                    <th class=\"left ticket_th\">Tax Name</th>\n                    <th class=\"left\">Description</th>\n                    <th class=\"event_th item_c\">Rate</th>\n                    <th class=\"subtotal_th\">Tax Amount</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <td colspan=\"4\">[TAX_LINE_ITEM_LIST]</td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n    <div class=\"grand-total-dv\">\n        <h2 class=\"grand-total\">Grand Total: [TOTAL_COST]</h2>\n    </div>\n    <div class=\"payment-dv\">\n        <h3 class=\"section-title\">Payments</h3>\n        <table class=\"invoice-amount\">\n            <thead>\n                <tr class=\"header_row\">\n                    <th><span class=\"\">Payment Method</span></th>\n                    <th class=\'left datetime_th\'>Date</th>\n                    <th><span class=\"\">Transaction Id / Cheque #</span></th>\n                    <th><span class=\"\">P.O. / S.O.#</span></th>\n                    <th><span class=\"\">Status</span></th>\n                    <th>Amount</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <td colspan=\"6\">[PAYMENT_LIST_*]</td>\n                </tr>\n                <tr class=\"item\">\n                    <td class=\'aln-cntr\' colspan=\"6\">[OWING_STATUS_MESSAGE_*]</td>\n                </tr>\n            </tbody>\n            <tfoot>\n                <tr class=\'total_tr\'>\n                    <td colspan=\"4\">&nbsp;</td>\n                    <td class=\"item_r\">Total Paid</td>\n                    <td class=\"item_r\">[TOTAL_AMOUNT_PAID]</td>\n                </tr>\n                <tr class=\"total_tr odd\">\n                    <td colspan=\"4\">&nbsp;</td>\n                    <td class=\"total\" id=\"total_currency\">Amount Owed:</td>\n                    <td class=\"total\">[TOTAL_OWING]</td>\n                </tr>\n            </tfoot>\n        </table>\n    </div>\n    <div class=\"additional-info-dv\">\n        <h3 class=\"section-title\">Additional Information:</h3>\n        <div class=\"additional-info\">\n            <h2>Venue Details:</h2>\n            <table class=\"venue-list\">\n                <tr class=\"venue-details\">\n                    <td class=\"venue-details-part venue-address-dv\">\n                        <h3><a href=\"[VENUE_URL]\">[VENUE_TITLE]</a></h3>\n\n                        <p>[VENUE_DESCRIPTION]</p>\n                        [VENUE_FORMATTED_ADDRESS]\n                    </td>\n                    <td class=\"venue-details-part venue-image-dv\">[GOOGLE_MAP_IMAGE]</td>\n                </tr>\n            </table>\n        </div>\n    </div>\n</div>\n<div class=\"print_button_div noPrint\">\n    [INVOICE_RECEIPT_SWITCHER_BUTTON] [DISPLAY_PDF_BUTTON]\n    <div class=\"clear\"></div>\n</div>\";s:10:\"event_list\";s:472:\"<h3 class=\"section-title event-name\">\n    <img class=\"icon\" src=\"http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/plugins/event-espresso-decaf/core/templates/global_assets/images/calendar_year-24x24.png\">Event Name:    <span class=\"plain-text\">[EVENT_NAME]</span>\n    <span class=\"small-text link\">( <a href=\"[EVENT_URL]\">view</a> )</span>\n</h3>\n<p class=\"event-description\">\n    [EVENT_EXCERPT]\n</p>\n<ul class=\"tickets-per-event\">\n    [TICKET_LIST]\n</ul>\";s:11:\"ticket_list\";s:2266:\"<li class=\"event-ticket\">\n    <div class=\"ticket-details\">\n        <table class=\"invoice-amount\">\n            <thead>\n                <tr class=\"header_row\">\n                    <th class=\"name-column\">Ticket</th>\n                    <th colspan=\"2\" class=\"desc-column\">Description</th>\n                    <th class=\"number-column item_c\">Quantity</th>\n                    <th class=\"number-column item_c\">Price</th>\n                    <th class=\"number-column item_r\">Total</th>\n                </tr>\n            </thead>\n            <tbody>[TICKET_LINE_ITEM_LIST]</tbody>\n        </table>\n    </div>\n    <div class=\"reg-details-for-ticket\">\n        <div class=\"ticket-time-and-place-details\">\n            <div class=\"ticket-time-details\">\n                <h4 class=\"sub-section-title no-bottom-margin\">\n                    <img class=\"icon\" src=\"http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/plugins/event-espresso-decaf/core/templates/global_assets/images/clock-16x16.png\">Date/Time:                </h4>\n                <ul class=\"event-dates\">[DATETIME_LIST]</ul>\n            </div>\n            <div class=\"ticket-place-details\">\n                <h4 class=\"sub-section-title no-bottom-margin\">\n                    <img class=\"icon\" src=\"http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/plugins/event-espresso-decaf/core/templates/global_assets/images/location-pin-16x16.png\">Venue                </h4>\n                <ul class=\"event-venues\">\n                    <li>[VENUE_TITLE]\n                        <span class=\"small-text\">( <a href=\"[VENUE_URL]\">view</a> )</span>\n                    </li>\n                </ul>\n            </div>\n        </div>\n        <div class=\"ticket-registrations-area\">\n            <h4 class=\"sub-section-title\">\n                <img class=\"icon\" src=\"http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/plugins/event-espresso-decaf/core/templates/global_assets/images/users-16x16.png\">Registration Details                <span class=\"small-text link\">( <a class=\"print_button noPrint\" href=\"[PRIMARY_REGISTRANT_FRONTEND_EDIT_REG_LINK]\">edit</a> )</span>\n            </h4>\n            <ul class=\"ticket-registrations-list\">[ATTENDEE_LIST]</ul>\n        </div>\n    </div>\n</li>\";s:23:\"ticket_line_item_no_pms\";s:387:\"<tr class=\"item\">\n    <td>[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td colspan=\"2\">[LINE_ITEM_DESCRIPTION]\n        <p class=\"ticket-note\">This ticket can be used once at [TKT_USES_* schema=any] of the dates/times below.</p>\n    </td>\n    <td class=\"item_c\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\";s:20:\"ticket_line_item_pms\";s:580:\"<tr class=\"item\">\n    <td>[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td colspan=\"2\">[LINE_ITEM_DESCRIPTION]\n        <p class=\"ticket-note\">This ticket can be used once at [TKT_USES_* schema=any] of the dates/times below.</p>\n    </td>\n    <td class=\"item_c\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n[PRICE_MODIFIER_LINE_ITEM_LIST]\n<tr class=\"total_tr odd\">\n    <td colspan=\"4\"></td>\n    <td class=\"total\" nowrap=\"nowrap\">Ticket Total:</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\";s:29:\"price_modifier_line_item_list\";s:247:\"<tr class=\"subitem-row\">\n    <td class=\"subitem\">[LINE_ITEM_NAME]</td>\n    <td colspan=\"2\">[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_c\"></td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\";s:13:\"datetime_list\";s:70:\"<li>\n    [DATETIME_START] - [DATETIME_END] ([DATETIME_TIMEZONE])\n</li>\";s:13:\"attendee_list\";s:401:\"<li class=\"ticket-registration\">\n    <table class=\"registration-details\">\n        <tr class=\"odd\">\n            <th>Attendee</th>\n            <td>[FNAME] [LNAME] ([ATTENDEE_EMAIL])</td>\n        </tr>\n        <tr>\n            <th>Registration Code:</th>\n            <td>[REGISTRATION_CODE] - <span class=\"[REGISTRATION_STATUS_ID]\">[REGISTRATION_STATUS_LABEL]</span></td>\n        </tr>\n    </table>\n</li>\";s:18:\"tax_line_item_list\";s:208:\"</td>\n</tr>\n<tr>\n    <td>[LINE_ITEM_NAME]</td>\n    <td>[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n<tr>\n    <td colspan=\"4\">\";s:25:\"additional_line_item_list\";s:291:\"</td>\n</tr>\n<tr class=\"item\">\n    <td>[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td>[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_c\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n<tr>\n    <td colspan=\"5\">\";s:12:\"payment_list\";s:270:\"</td></tr>\n<tr class=\'item\'>\n    <td>[PAYMENT_GATEWAY]</td>\n    <td>[PAYMENT_TIMESTAMP]</td>\n    <td>[PAYMENT_GATEWAY_TXN_ID]</td>\n    <td>[PAYMENT_PO_NUMBER]</td>\n    <td>[PAYMENT_STATUS]</td>\n    <td class=\'item_r\'>[PAYMENT_AMOUNT]</td>\n</tr>\n<tr>\n    <td colspan=\"6\">\";}'),
(58, 7, 'purchaser', 'subject', '[COMPANY] Invoice for Transaction: [TXN_ID]'),
(59, 7, 'purchaser', 'content', 'a:11:{s:4:\"main\";s:4272:\"<div class=\"print_button_div noPrint\">\n    [INVOICE_RECEIPT_SWITCHER_BUTTON] [DISPLAY_PDF_BUTTON]\n    <div class=\"clear\"></div>\n</div>\n<div id=\"invoice\">\n    <table id=\"invoice-header\" class=\"not-really-a-table\">\n        <tr>\n            <td id=\"logo-dv\">\n                [INVOICE_LOGO]\n                <div class=\"vcard\" id=\"company-address\">\n                    <div class=\"fn org\"><strong>[INVOICE_PAYEE_NAME]</strong></div>\n                    <div class=\"adr\">\n                        [INVOICE_PAYEE_ADDRESS]\n                    </div>\n                    <div class=\"email\">[INVOICE_PAYEE_EMAIL]</div>\n                    <div class=\"vat\">[INVOICE_PAYEE_TAX_NUMBER_*]</div>\n                </div>\n            </td>\n            <td>\n                <div id=\"invoice-info\">\n                    <h2 id=\"invoice-hdr\">Invoice</h2>\n                    <h3>\n                        Date: <span>[PRIMARY_REGISTRANT_REGISTRATION_DATE]</span>\n                    </h3>\n                    <h3>Registration Code:                        <span>[PRIMARY_REGISTRANT_REGISTRATION_CODE]</span></h3>\n\n                    <h3>Transaction ID: <span>[TXN_ID]</span></h3>\n                </div>\n            </td>\n        </tr>\n        <tr>\n            <td id=\"instructions\" colspan=\"2\">\n                <p>[INVOICE_PAYMENT_INSTRUCTIONS]</p>\n            </td>\n        </tr>\n    </table>\n\n    <h2>Bill To:</h2>\n    <div class=\"vcard\" id=\"client-details\">\n        <div class=\"fn\">[PRIMARY_REGISTRANT_FNAME] [PRIMARY_REGISTRANT_LNAME]</div>\n        <div class=\"adr\">\n            <div class=\"street-address\">\n                [PRIMARY_REGISTRANT_ADDRESS] <br>\n                [PRIMARY_REGISTRANT_ADDRESS2]\n            </div>\n            <div class=\"locality\">[PRIMARY_REGISTRANT_CITY], [PRIMARY_REGISTRANT_ADDRESS_STATE]</div>\n            <div id=\"client-postcode\">[PRIMARY_REGISTRANT_COUNTRY]</div>\n        </div>\n    </div>\n\n    <h2>Purchases</h2>\n    <table class=\"invoice-amount\">\n        <thead>\n            <tr class=\"header_row\">\n                <th class=\"left ticket_th\">Item</th>\n                <th class=\"left event_th\">Description</th>\n                <th class=\"quantity_th\">Qty</th>\n                <th class=\"left event_th\">Price</th>\n                <th class=\"subtotal_th item_r\">Total</th>\n            </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <td colspan=\"5\">[TICKET_LIST]</td>\n            </tr>\n            <tr class=\"total_tr odd\">\n                <td colspan=\"2\">&nbsp;</td>\n                <td colspan=\"2\" class=\"total\" id=\"total_currency\">Sub-Total</td>\n                <td class=\"total\">[TXN_SUBTOTAL]</td>\n            </tr>\n            <tr>\n                <td colspan=\"5\">[ADDITIONAL_LINE_ITEM_LIST][TAX_LINE_ITEM_LIST]</td>\n            </tr>\n\n            <tr class=\"total_tr odd\">\n                <td colspan=\"2\">&nbsp;</td>\n                <td colspan=\"2\" class=\"total\" id=\"total_currency\">Total</td>\n                <td class=\"total\">[TOTAL_COST]</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>* taxable items</p>\n\n    <h2>Payments</h2>\n    <table class=\"invoice-amount\">\n        <thead>\n            <tr class=\"header_row\">\n                <th><span class=\"\">Payment Method</span></th>\n                <th class=\'left datetime_th\'>Date</th>\n                <th><span class=\"\">Transaction Id / Cheque #</span></th>\n                <th><span class=\"\">P.O. / S.O.#</span></th>\n                <th><span class=\"\">Status</span></th>\n                <th>Amount</th>\n            </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <td colspan=\"6\">[PAYMENT_LIST_*]</td>\n            </tr>\n        </tbody>\n        <tfoot>\n            <tr class=\'total_tr\'>\n                <td colspan=\"4\"></td>\n                <td class=\"item_r\">Total Paid</td>\n                <td class=\"item_r\">[TOTAL_AMOUNT_PAID]</td>\n            </tr>\n            <tr class=\"total_tr\">\n                <td colspan=\"4\"></td>\n                <td class=\"total\" id=\"total_currency\">Amount Owed</td>\n                <td class=\"total\">[TOTAL_OWING]</td>\n            </tr>\n        </tfoot>\n    </table>\n</div>\n<div class=\"print_button_div noPrint\">\n    [INVOICE_RECEIPT_SWITCHER_BUTTON] [DISPLAY_PDF_BUTTON]\n    <div class=\"clear\"></div>\n</div>\";s:10:\"event_list\";s:0:\"\";s:11:\"ticket_list\";s:61:\"</td>\n</tr>\n[TICKET_LINE_ITEM_LIST]\n<tr>\n    <td colspan=\"5\">\";s:23:\"ticket_line_item_no_pms\";s:288:\"<tr class=\"item\">\n    <td class=\"item_I\">[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td class=\"item_I\">[LINE_ITEM_DESCRIPTION]\n    </td>\n    <td class=\"item_I\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\";s:20:\"ticket_line_item_pms\";s:329:\"<tr class=\"item\">\n    <td class=\"item_I\">[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td class=\"item_I\">\n        [LINE_ITEM_DESCRIPTION]\n    </td>\n    <td class=\"item_I\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n[PRICE_MODIFIER_LINE_ITEM_LIST]\";s:29:\"price_modifier_line_item_list\";s:277:\"<tr class=\"subitem-row\">\n    <td class=\"item_I subitem\">[LINE_ITEM_NAME]</td>\n    <td class=\"item_I\">[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_r\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_r\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\";s:13:\"datetime_list\";s:0:\"\";s:13:\"attendee_list\";s:0:\"\";s:18:\"tax_line_item_list\";s:298:\"</td></tr>\n<tr class=\"item sub-item tax-total\">\n    <td class=\"item_I\">[LINE_ITEM_NAME]</td>\n    <td class=\"item_I\">[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_I\"></td>\n    <td class=\"item_r\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n<tr>\n    <td colspan=\"5\">\";s:25:\"additional_line_item_list\";s:321:\"</td>\n</tr>\n<tr class=\"item\">\n    <td class=\"item_I\">[LINE_ITEM_NAME][LINE_ITEM_TAXABLE_*]</td>\n    <td class=\"item_I\">[LINE_ITEM_DESCRIPTION]</td>\n    <td class=\"item_I\">[LINE_ITEM_QUANTITY]</td>\n    <td class=\"item_c\">[LINE_ITEM_AMOUNT]</td>\n    <td class=\"item_r\">[LINE_ITEM_TOTAL]</td>\n</tr>\n<tr>\n    <td colspan=\"5\">\";s:12:\"payment_list\";s:270:\"</td></tr>\n<tr class=\'item\'>\n    <td>[PAYMENT_GATEWAY]</td>\n    <td>[PAYMENT_TIMESTAMP]</td>\n    <td>[PAYMENT_GATEWAY_TXN_ID]</td>\n    <td>[PAYMENT_PO_NUMBER]</td>\n    <td>[PAYMENT_STATUS]</td>\n    <td class=\'item_r\'>[PAYMENT_AMOUNT]</td>\n</tr>\n<tr>\n    <td colspan=\"6\">\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_message_template_group`
--

CREATE TABLE `wp_esp_message_template_group` (
  `GRP_ID` int(10) UNSIGNED NOT NULL,
  `MTP_user_id` int(10) NOT NULL DEFAULT '1',
  `MTP_name` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `MTP_description` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `MTP_messenger` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MTP_message_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MTP_is_global` tinyint(1) NOT NULL DEFAULT '0',
  `MTP_is_override` tinyint(1) NOT NULL DEFAULT '0',
  `MTP_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `MTP_is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_message_template_group`
--

INSERT INTO `wp_esp_message_template_group` (`GRP_ID`, `MTP_user_id`, `MTP_name`, `MTP_description`, `MTP_messenger`, `MTP_message_type`, `MTP_is_global`, `MTP_is_override`, `MTP_deleted`, `MTP_is_active`) VALUES
(1, 1, '', '', 'email', 'payment', 1, 0, 0, 1),
(2, 1, '', '', 'email', 'payment_refund', 1, 0, 0, 1),
(3, 1, '', '', 'email', 'registration', 1, 0, 0, 1),
(4, 1, '', '', 'email', 'not_approved_registration', 1, 0, 0, 1),
(5, 1, '', '', 'email', 'pending_approval', 1, 0, 0, 1),
(6, 1, '', '', 'html', 'receipt', 1, 0, 0, 1),
(7, 1, '', '', 'html', 'invoice', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_payment`
--

CREATE TABLE `wp_esp_payment` (
  `PAY_ID` int(10) UNSIGNED NOT NULL,
  `TXN_ID` int(10) UNSIGNED DEFAULT NULL,
  `STS_ID` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PAY_source` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_amount` decimal(12,3) DEFAULT NULL,
  `PMD_ID` int(11) DEFAULT NULL,
  `PAY_gateway_response` text COLLATE utf8mb4_unicode_520_ci,
  `PAY_txn_id_chq_nmbr` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_po_number` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_extra_accntng` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_details` text COLLATE utf8mb4_unicode_520_ci,
  `PAY_redirect_url` varchar(300) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PAY_redirect_args` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_payment_method`
--

CREATE TABLE `wp_esp_payment_method` (
  `PMD_ID` int(11) NOT NULL,
  `PMD_type` varchar(124) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_desc` text COLLATE utf8mb4_unicode_520_ci,
  `PMD_admin_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_admin_desc` text COLLATE utf8mb4_unicode_520_ci,
  `PMD_slug` varchar(124) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_order` int(11) DEFAULT NULL,
  `PMD_debug_mode` tinyint(1) NOT NULL DEFAULT '0',
  `PMD_wp_user` int(11) NOT NULL DEFAULT '0',
  `PMD_open_by_default` tinyint(1) NOT NULL DEFAULT '0',
  `PMD_button_url` varchar(1012) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_scope` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT 'frontend'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_payment_method`
--

INSERT INTO `wp_esp_payment_method` (`PMD_ID`, `PMD_type`, `PMD_name`, `PMD_desc`, `PMD_admin_name`, `PMD_admin_desc`, `PMD_slug`, `PMD_order`, `PMD_debug_mode`, `PMD_wp_user`, `PMD_open_by_default`, `PMD_button_url`, `PMD_scope`) VALUES
(1, 'Admin_Only', 'Bank', NULL, 'Bank', 'Bank Draft', 'bank', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(2, 'Admin_Only', 'Cash', NULL, 'Cash', 'Cash Delivered Physically', 'cash', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(3, 'Admin_Only', 'Check', NULL, 'Check', 'Paper Check', 'check', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(4, 'Admin_Only', 'Credit Card', NULL, 'Credit Card', 'Offline Credit Card Payment', 'creditcard', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(5, 'Admin_Only', 'Debit Card', NULL, 'Debit Card', 'Offline Debit Payment', 'debitcard', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(6, 'Invoice', 'Invoice', 'After clicking &quot;Finalize Registration&quot;, you will be given instructions on how to access your invoice and complete your payment.<br />Please note that event spaces will not be reserved until payment is received in full, and any remaining tickets could be sold to others in the meantime.', 'Invoice', 'Invoice received with monies included', 'invoice', 0, 0, 1, 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/plugins/event-espresso-decaf/payment_methods/Invoice/lib/invoice-logo.png', 'a:2:{i:0;s:4:\"CART\";i:1;s:5:\"ADMIN\";}'),
(7, 'Admin_Only', 'Money Order', NULL, 'Money Order', '', 'moneyorder', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(8, 'Admin_Only', 'Paypal', NULL, 'Paypal', 'Paypal eCheck, Invoice, etc', 'paypal', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}'),
(9, 'Admin_Only', 'Other', NULL, 'Other', 'Other method of payment', 'other', NULL, 0, 1, 0, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_price`
--

CREATE TABLE `wp_esp_price` (
  `PRC_ID` int(10) UNSIGNED NOT NULL,
  `PRT_ID` tinyint(3) UNSIGNED NOT NULL,
  `PRC_amount` decimal(12,3) NOT NULL DEFAULT '0.000',
  `PRC_name` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PRC_desc` text COLLATE utf8mb4_unicode_520_ci,
  `PRC_is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `PRC_overrides` int(10) UNSIGNED DEFAULT NULL,
  `PRC_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `PRC_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PRC_wp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `PRC_parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_price`
--

INSERT INTO `wp_esp_price` (`PRC_ID`, `PRT_ID`, `PRC_amount`, `PRC_name`, `PRC_desc`, `PRC_is_default`, `PRC_overrides`, `PRC_deleted`, `PRC_order`, `PRC_wp_user`, `PRC_parent`) VALUES
(1, 1, '0.000', 'Free Admission', '', 1, NULL, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_price_type`
--

CREATE TABLE `wp_esp_price_type` (
  `PRT_ID` tinyint(3) UNSIGNED NOT NULL,
  `PRT_name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PBT_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `PRT_is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `PRT_order` tinyint(2) UNSIGNED DEFAULT NULL,
  `PRT_wp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `PRT_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_price_type`
--

INSERT INTO `wp_esp_price_type` (`PRT_ID`, `PRT_name`, `PBT_ID`, `PRT_is_percent`, `PRT_order`, `PRT_wp_user`, `PRT_deleted`) VALUES
(1, 'Base Price', 1, 0, 0, 1, 0),
(2, 'Percent Discount', 2, 1, 20, 1, 0),
(3, 'Dollar Discount', 2, 0, 30, 1, 0),
(4, 'Percent Surcharge', 3, 1, 40, 1, 0),
(5, 'Dollar Surcharge', 3, 0, 50, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_question`
--

CREATE TABLE `wp_esp_question` (
  `QST_ID` int(10) UNSIGNED NOT NULL,
  `QST_display_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QST_admin_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QST_system` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `QST_type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'TEXT',
  `QST_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `QST_required_text` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `QST_order` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `QST_admin_only` tinyint(1) NOT NULL DEFAULT '0',
  `QST_max` smallint(5) NOT NULL DEFAULT '-1',
  `QST_wp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `QST_deleted` tinyint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_question`
--

INSERT INTO `wp_esp_question` (`QST_ID`, `QST_display_text`, `QST_admin_label`, `QST_system`, `QST_type`, `QST_required`, `QST_required_text`, `QST_order`, `QST_admin_only`, `QST_max`, `QST_wp_user`, `QST_deleted`) VALUES
(1, 'First Name', 'First Name - System Question', 'fname', 'TEXT', 1, 'This field is required', 1, 0, 45, 1, 0),
(2, 'Last Name', 'Last Name - System Question', 'lname', 'TEXT', 1, 'This field is required', 2, 0, 45, 1, 0),
(3, 'Email Address', 'Email Address - System Question', 'email', 'EMAIL', 1, 'This field is required', 3, 0, 255, 1, 0),
(4, 'Address', 'Address - System Question', 'address', 'TEXT', 0, 'This field is required', 4, 0, 255, 1, 0),
(5, 'Address2', 'Address2 - System Question', 'address2', 'TEXT', 0, 'This field is required', 5, 0, 255, 1, 0),
(6, 'City', 'City - System Question', 'city', 'TEXT', 0, 'This field is required', 6, 0, 45, 1, 0),
(7, 'Country', 'Country - System Question', 'country', 'COUNTRY', 0, 'This field is required', 7, 0, -1, 1, 0),
(8, 'State/Province', 'State/Province - System Question', 'state', 'STATE', 0, 'This field is required', 8, 0, -1, 1, 0),
(9, 'Zip/Postal Code', 'Zip/Postal Code - System Question', 'zip', 'TEXT', 0, 'This field is required', 9, 0, 12, 1, 0),
(10, 'Phone Number', 'Phone Number - System Question', 'phone', 'TEXT', 0, 'This field is required', 10, 0, 45, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_question_group`
--

CREATE TABLE `wp_esp_question_group` (
  `QSG_ID` int(10) UNSIGNED NOT NULL,
  `QSG_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QSG_identifier` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QSG_desc` text COLLATE utf8mb4_unicode_520_ci,
  `QSG_order` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `QSG_show_group_name` tinyint(1) NOT NULL,
  `QSG_show_group_desc` tinyint(1) NOT NULL,
  `QSG_system` tinyint(2) DEFAULT NULL,
  `QSG_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `QSG_wp_user` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_question_group`
--

INSERT INTO `wp_esp_question_group` (`QSG_ID`, `QSG_name`, `QSG_identifier`, `QSG_desc`, `QSG_order`, `QSG_show_group_name`, `QSG_show_group_desc`, `QSG_system`, `QSG_deleted`, `QSG_wp_user`) VALUES
(1, 'Personal Information', 'personal-information-1548234627', '', 1, 1, 1, 1, 0, NULL),
(2, 'Address Information', 'address-information-1548234627', '', 2, 1, 1, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_question_group_question`
--

CREATE TABLE `wp_esp_question_group_question` (
  `QGQ_ID` int(10) UNSIGNED NOT NULL,
  `QSG_ID` int(10) UNSIGNED NOT NULL,
  `QST_ID` int(10) UNSIGNED NOT NULL,
  `QGQ_order` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_question_group_question`
--

INSERT INTO `wp_esp_question_group_question` (`QGQ_ID`, `QSG_ID`, `QST_ID`, `QGQ_order`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 2, 4, 1),
(5, 2, 5, 2),
(6, 2, 6, 3),
(7, 2, 7, 4),
(8, 2, 8, 5),
(9, 2, 9, 6),
(10, 2, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_question_option`
--

CREATE TABLE `wp_esp_question_option` (
  `QSO_ID` int(10) UNSIGNED NOT NULL,
  `QSO_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QSO_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `QST_ID` int(10) UNSIGNED NOT NULL,
  `QSO_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `QSO_system` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `QSO_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_registration`
--

CREATE TABLE `wp_esp_registration` (
  `REG_ID` int(10) UNSIGNED NOT NULL,
  `EVT_ID` bigint(20) UNSIGNED NOT NULL,
  `ATT_ID` bigint(20) UNSIGNED NOT NULL,
  `TXN_ID` int(10) UNSIGNED NOT NULL,
  `TKT_ID` int(10) UNSIGNED NOT NULL,
  `STS_ID` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'RPP',
  `REG_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_final_price` decimal(12,3) NOT NULL DEFAULT '0.000',
  `REG_paid` decimal(12,3) NOT NULL DEFAULT '0.000',
  `REG_session` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `REG_code` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `REG_url_link` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `REG_count` tinyint(2) UNSIGNED DEFAULT '1',
  `REG_group_size` tinyint(2) UNSIGNED DEFAULT '1',
  `REG_att_is_going` tinyint(1) DEFAULT '0',
  `REG_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_registration_payment`
--

CREATE TABLE `wp_esp_registration_payment` (
  `RPY_ID` int(10) UNSIGNED NOT NULL,
  `REG_ID` int(10) UNSIGNED NOT NULL,
  `PAY_ID` int(10) UNSIGNED DEFAULT NULL,
  `RPY_amount` decimal(12,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_state`
--

CREATE TABLE `wp_esp_state` (
  `STA_ID` smallint(5) UNSIGNED NOT NULL,
  `CNT_ISO` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STA_abbrev` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STA_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STA_active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_state`
--

INSERT INTO `wp_esp_state` (`STA_ID`, `CNT_ISO`, `STA_abbrev`, `STA_name`, `STA_active`) VALUES
(1, 'US', 'AK', 'Alaska', 1),
(2, 'US', 'AL', 'Alabama', 1),
(3, 'US', 'AS', 'American Samoa', 1),
(4, 'US', 'AZ', 'Arizona', 1),
(5, 'US', 'AR', 'Arkansas', 1),
(6, 'US', 'CA', 'California', 1),
(7, 'US', 'CO', 'Colorado', 1),
(8, 'US', 'CT', 'Connecticut', 1),
(9, 'US', 'DE', 'Delaware', 1),
(10, 'US', 'DC', 'District of Columbia', 1),
(11, 'US', 'FM', 'Federated States of Micronesia', 1),
(12, 'US', 'FL', 'Florida', 1),
(13, 'US', 'GA', 'Georgia', 1),
(14, 'US', 'GU', 'Guam', 1),
(15, 'US', 'HI', 'Hawaii', 1),
(16, 'US', 'ID', 'Idaho', 1),
(17, 'US', 'IL', 'Illinois', 1),
(18, 'US', 'IN', 'Indiana', 1),
(19, 'US', 'IA', 'Iowa', 1),
(20, 'US', 'KS', 'Kansas', 1),
(21, 'US', 'KY', 'Kentucky', 1),
(22, 'US', 'LA', 'Louisiana', 1),
(23, 'US', 'ME', 'Maine', 1),
(24, 'US', 'MH', 'Marshall Islands', 1),
(25, 'US', 'MD', 'Maryland', 1),
(26, 'US', 'MA', 'Massachusetts', 1),
(27, 'US', 'MI', 'Michigan', 1),
(28, 'US', 'MN', 'Minnesota', 1),
(29, 'US', 'MS', 'Mississippi', 1),
(30, 'US', 'MO', 'Missouri', 1),
(31, 'US', 'MT', 'Montana', 1),
(32, 'US', 'NE', 'Nebraska', 1),
(33, 'US', 'NV', 'Nevada', 1),
(34, 'US', 'NH', 'New Hampshire', 1),
(35, 'US', 'NJ', 'New Jersey', 1),
(36, 'US', 'NM', 'New Mexico', 1),
(37, 'US', 'NY', 'New York', 1),
(38, 'US', 'NC', 'North Carolina', 1),
(39, 'US', 'ND', 'North Dakota', 1),
(40, 'US', 'MP', 'Northern Mariana Islands', 1),
(41, 'US', 'OH', 'Ohio', 1),
(42, 'US', 'OK', 'Oklahoma', 1),
(43, 'US', 'OR', 'Oregon', 1),
(44, 'US', 'PW', 'Palau', 1),
(45, 'US', 'PA', 'Pennsylvania', 1),
(46, 'US', 'PR', 'Puerto Rico', 1),
(47, 'US', 'RI', 'Rhode Island', 1),
(48, 'US', 'SC', 'South Carolina', 1),
(49, 'US', 'SD', 'South Dakota', 1),
(50, 'US', 'TN', 'Tennessee', 1),
(51, 'US', 'TX', 'Texas', 1),
(52, 'US', 'UT', 'Utah', 1),
(53, 'US', 'VT', 'Vermont', 1),
(54, 'US', 'VI', 'Virgin Islands', 1),
(55, 'US', 'VA', 'Virginia', 1),
(56, 'US', 'WA', 'Washington', 1),
(57, 'US', 'WV', 'West Virginia', 1),
(58, 'US', 'WI', 'Wisconsin', 1),
(59, 'US', 'WY', 'Wyoming', 1),
(60, 'CA', 'AB', 'Alberta', 1),
(61, 'CA', 'BC', 'British Columbia', 1),
(62, 'CA', 'MB', 'Manitoba', 1),
(63, 'CA', 'NB', 'New Brunswick', 1),
(64, 'CA', 'NL', 'Newfoundland and Labrador', 1),
(65, 'CA', 'NS', 'Nova Scotia', 1),
(66, 'CA', 'ON', 'Ontario', 1),
(67, 'CA', 'PE', 'Prince Edward Island', 1),
(68, 'CA', 'QC', 'Quebec', 1),
(69, 'CA', 'SK', 'Saskatchewan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_status`
--

CREATE TABLE `wp_esp_status` (
  `STS_ID` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STS_code` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STS_type` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `STS_can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `STS_desc` tinytext COLLATE utf8mb4_unicode_520_ci,
  `STS_open` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_status`
--

INSERT INTO `wp_esp_status` (`STS_ID`, `STS_code`, `STS_type`, `STS_can_edit`, `STS_desc`, `STS_open`) VALUES
('ACT', 'ACTIVE', 'event', 0, NULL, 1),
('CLS', 'REGISTRATION_CLOSED', 'event', 0, NULL, 0),
('DEL', 'DELETED', 'event', 0, NULL, 0),
('DEN', 'DENIED', 'event', 0, NULL, 0),
('DRF', 'DRAFT', 'event', 0, NULL, 0),
('EDR', 'DRAFT', 'email', 0, NULL, 0),
('ESN', 'SENT', 'email', 0, NULL, 1),
('EXP', 'EXPIRED', 'event', 0, NULL, 0),
('MDO', 'DEBUG_ONLY', 'message', 0, NULL, 0),
('MEX', 'MESSENGER_EXECUTING', 'message', 0, NULL, 0),
('MFL', 'FAIL', 'message', 0, NULL, 0),
('MIC', 'INCOMPLETE', 'message', 0, NULL, 0),
('MID', 'IDLE', 'message', 0, NULL, 1),
('MRS', 'RESEND', 'message', 0, NULL, 1),
('MSN', 'SENT', 'message', 0, NULL, 0),
('NAC', 'NOT_ACTIVE', 'event', 0, NULL, 0),
('NOP', 'REGISTRATION_NOT_OPEN', 'event', 0, NULL, 1),
('ONG', 'ONGOING', 'event', 0, NULL, 1),
('OPN', 'REGISTRATION_OPEN', 'event', 0, NULL, 1),
('PAP', 'APPROVED', 'payment', 0, NULL, 1),
('PCN', 'CANCELLED', 'payment', 0, NULL, 0),
('PDC', 'DECLINED', 'payment', 0, NULL, 0),
('PFL', 'FAILED', 'payment', 0, NULL, 0),
('PND', 'PENDING', 'event', 0, NULL, 1),
('PPN', 'PENDING', 'payment', 0, NULL, 1),
('RAP', 'APPROVED', 'registration', 0, NULL, 1),
('RCN', 'CANCELLED', 'registration', 0, NULL, 0),
('RDC', 'DECLINED', 'registration', 0, NULL, 0),
('RIC', 'INCOMPLETE', 'registration', 0, NULL, 1),
('RNA', 'NOT_APPROVED', 'registration', 0, NULL, 1),
('RPP', 'PENDING_PAYMENT', 'registration', 0, NULL, 1),
('RWL', 'WAIT_LIST', 'registration', 0, NULL, 1),
('SEC', 'SECONDARY', 'event', 0, NULL, 1),
('TAB', 'ABANDONED', 'transaction', 0, NULL, 0),
('TCM', 'COMPLETE', 'transaction', 0, NULL, 1),
('TFL', 'FAILED', 'transaction', 0, NULL, 0),
('TIN', 'INCOMPLETE', 'transaction', 0, NULL, 1),
('TOP', 'OVERPAID', 'transaction', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_ticket`
--

CREATE TABLE `wp_esp_ticket` (
  `TKT_ID` int(10) UNSIGNED NOT NULL,
  `TTM_ID` int(10) UNSIGNED NOT NULL,
  `TKT_name` varchar(245) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `TKT_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `TKT_qty` mediumint(8) DEFAULT NULL,
  `TKT_sold` mediumint(8) NOT NULL DEFAULT '0',
  `TKT_reserved` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_uses` tinyint(2) NOT NULL DEFAULT '-1',
  `TKT_required` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_min` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_max` tinyint(2) NOT NULL DEFAULT '-1',
  `TKT_price` decimal(12,3) NOT NULL DEFAULT '0.000',
  `TKT_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TKT_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TKT_taxable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_row` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `TKT_wp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `TKT_parent` int(10) UNSIGNED DEFAULT '0',
  `TKT_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_ticket`
--

INSERT INTO `wp_esp_ticket` (`TKT_ID`, `TTM_ID`, `TKT_name`, `TKT_description`, `TKT_qty`, `TKT_sold`, `TKT_reserved`, `TKT_uses`, `TKT_required`, `TKT_min`, `TKT_max`, `TKT_price`, `TKT_start_date`, `TKT_end_date`, `TKT_taxable`, `TKT_order`, `TKT_row`, `TKT_is_default`, `TKT_wp_user`, `TKT_parent`, `TKT_deleted`) VALUES
(1, 0, 'Free Ticket', '', 100, 0, 0, -1, 0, 0, -1, '0.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_ticket_price`
--

CREATE TABLE `wp_esp_ticket_price` (
  `TKP_ID` int(10) UNSIGNED NOT NULL,
  `TKT_ID` int(10) UNSIGNED NOT NULL,
  `PRC_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_esp_ticket_price`
--

INSERT INTO `wp_esp_ticket_price` (`TKP_ID`, `TKT_ID`, `PRC_ID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_ticket_template`
--

CREATE TABLE `wp_esp_ticket_template` (
  `TTM_ID` int(10) UNSIGNED NOT NULL,
  `TTM_name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `TTM_description` text COLLATE utf8mb4_unicode_520_ci,
  `TTM_file` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_transaction`
--

CREATE TABLE `wp_esp_transaction` (
  `TXN_ID` int(10) UNSIGNED NOT NULL,
  `TXN_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TXN_total` decimal(12,3) DEFAULT '0.000',
  `TXN_paid` decimal(12,3) NOT NULL DEFAULT '0.000',
  `STS_ID` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'TOP',
  `TXN_session_data` text COLLATE utf8mb4_unicode_520_ci,
  `TXN_hash_salt` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PMD_ID` int(11) DEFAULT NULL,
  `TXN_reg_steps` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_esp_venue_meta`
--

CREATE TABLE `wp_esp_venue_meta` (
  `VNUM_ID` int(11) NOT NULL,
  `VNU_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `VNU_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_city` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `STA_ID` int(11) DEFAULT NULL,
  `CNT_ISO` varchar(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_zip` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_capacity` int(11) DEFAULT NULL,
  `VNU_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_virtual_phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_virtual_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `VNU_enable_for_gmap` tinyint(1) DEFAULT '0',
  `VNU_google_map_link` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://172.10.29.111/wordpress-projects/theplannerwire', 'yes'),
(2, 'home', 'http://172.10.29.111/wordpress-projects/theplannerwire', 'yes'),
(3, 'blogname', 'The Planner Wire', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@test.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"bp_member_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?bp_member_type=$matches[1]&feed=$matches[2]\";s:50:\"bp_member_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?bp_member_type=$matches[1]&feed=$matches[2]\";s:31:\"bp_member_type/([^/]+)/embed/?$\";s:47:\"index.php?bp_member_type=$matches[1]&embed=true\";s:43:\"bp_member_type/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?bp_member_type=$matches[1]&paged=$matches[2]\";s:25:\"bp_member_type/([^/]+)/?$\";s:36:\"index.php?bp_member_type=$matches[1]\";s:54:\"bp_group_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?bp_group_type=$matches[1]&feed=$matches[2]\";s:49:\"bp_group_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?bp_group_type=$matches[1]&feed=$matches[2]\";s:30:\"bp_group_type/([^/]+)/embed/?$\";s:46:\"index.php?bp_group_type=$matches[1]&embed=true\";s:42:\"bp_group_type/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?bp_group_type=$matches[1]&paged=$matches[2]\";s:24:\"bp_group_type/([^/]+)/?$\";s:35:\"index.php?bp_group_type=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:19:\"BP-REST/bp-rest.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:35:\"bp-default-data/bp-default-data.php\";i:3;s:24:\"buddypress/bp-loader.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:57:\"reveal-ids-for-wp-admin-25/reveal-ids-for-wp-admin-25.php\";i:6;s:21:\"safe-svg/safe-svg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'theplannerwire', 'yes'),
(41, 'stylesheet', 'theplannerwire', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:170:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:28:\"ee_payment_method_admin_only\";b:1;s:22:\"ee_payment_method_bank\";b:1;s:23:\"ee_payment_method_check\";b:1;s:25:\"ee_payment_method_invoice\";b:1;s:32:\"ee_payment_method_paypal_express\";b:1;s:33:\"ee_payment_method_paypal_standard\";b:1;s:10:\"ee_read_ee\";b:1;s:18:\"ee_manage_gateways\";b:1;s:23:\"ee_read_payment_methods\";b:1;s:30:\"ee_read_others_payment_methods\";b:1;s:23:\"ee_edit_payment_methods\";b:1;s:30:\"ee_edit_others_payment_methods\";b:1;s:25:\"ee_delete_payment_methods\";b:1;s:17:\"ee_publish_events\";b:1;s:22:\"ee_read_private_events\";b:1;s:21:\"ee_read_others_events\";b:1;s:14:\"ee_read_events\";b:1;s:14:\"ee_edit_events\";b:1;s:24:\"ee_edit_published_events\";b:1;s:21:\"ee_edit_others_events\";b:1;s:22:\"ee_edit_private_events\";b:1;s:26:\"ee_delete_published_events\";b:1;s:24:\"ee_delete_private_events\";b:1;s:16:\"ee_delete_events\";b:1;s:23:\"ee_delete_others_events\";b:1;s:26:\"ee_manage_event_categories\";b:1;s:22:\"ee_edit_event_category\";b:1;s:24:\"ee_delete_event_category\";b:1;s:24:\"ee_assign_event_category\";b:1;s:17:\"ee_publish_venues\";b:1;s:14:\"ee_read_venues\";b:1;s:21:\"ee_read_others_venues\";b:1;s:22:\"ee_read_private_venues\";b:1;s:14:\"ee_edit_venues\";b:1;s:21:\"ee_edit_others_venues\";b:1;s:24:\"ee_edit_published_venues\";b:1;s:22:\"ee_edit_private_venues\";b:1;s:16:\"ee_delete_venues\";b:1;s:23:\"ee_delete_others_venues\";b:1;s:24:\"ee_delete_private_venues\";b:1;s:26:\"ee_delete_published_venues\";b:1;s:26:\"ee_manage_venue_categories\";b:1;s:22:\"ee_edit_venue_category\";b:1;s:24:\"ee_delete_venue_category\";b:1;s:24:\"ee_assign_venue_category\";b:1;s:16:\"ee_read_contacts\";b:1;s:16:\"ee_edit_contacts\";b:1;s:18:\"ee_delete_contacts\";b:1;s:21:\"ee_read_registrations\";b:1;s:28:\"ee_read_others_registrations\";b:1;s:21:\"ee_edit_registrations\";b:1;s:28:\"ee_edit_others_registrations\";b:1;s:23:\"ee_delete_registrations\";b:1;s:23:\"ee_read_others_checkins\";b:1;s:16:\"ee_read_checkins\";b:1;s:16:\"ee_edit_checkins\";b:1;s:23:\"ee_edit_others_checkins\";b:1;s:18:\"ee_delete_checkins\";b:1;s:25:\"ee_delete_others_checkins\";b:1;s:19:\"ee_read_transaction\";b:1;s:20:\"ee_read_transactions\";b:1;s:16:\"ee_edit_payments\";b:1;s:18:\"ee_delete_payments\";b:1;s:16:\"ee_read_messages\";b:1;s:23:\"ee_read_others_messages\";b:1;s:23:\"ee_read_global_messages\";b:1;s:23:\"ee_edit_global_messages\";b:1;s:16:\"ee_edit_messages\";b:1;s:23:\"ee_edit_others_messages\";b:1;s:18:\"ee_delete_messages\";b:1;s:25:\"ee_delete_others_messages\";b:1;s:25:\"ee_delete_global_messages\";b:1;s:15:\"ee_send_message\";b:1;s:23:\"ee_read_default_tickets\";b:1;s:30:\"ee_read_others_default_tickets\";b:1;s:23:\"ee_edit_default_tickets\";b:1;s:30:\"ee_edit_others_default_tickets\";b:1;s:25:\"ee_delete_default_tickets\";b:1;s:32:\"ee_delete_others_default_tickets\";b:1;s:21:\"ee_edit_default_price\";b:1;s:22:\"ee_edit_default_prices\";b:1;s:23:\"ee_delete_default_price\";b:1;s:24:\"ee_delete_default_prices\";b:1;s:26:\"ee_edit_default_price_type\";b:1;s:27:\"ee_edit_default_price_types\";b:1;s:28:\"ee_delete_default_price_type\";b:1;s:29:\"ee_delete_default_price_types\";b:1;s:22:\"ee_read_default_prices\";b:1;s:27:\"ee_read_default_price_types\";b:1;s:17:\"ee_edit_questions\";b:1;s:24:\"ee_edit_system_questions\";b:1;s:17:\"ee_read_questions\";b:1;s:19:\"ee_delete_questions\";b:1;s:23:\"ee_edit_question_groups\";b:1;s:23:\"ee_read_question_groups\";b:1;s:30:\"ee_edit_system_question_groups\";b:1;s:25:\"ee_delete_question_groups\";b:1;s:20:\"ee_assign_event_type\";b:1;s:21:\"ee_manage_event_types\";b:1;s:18:\"ee_edit_event_type\";b:1;s:20:\"ee_delete_event_type\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:23:\"ee_events_administrator\";a:2:{s:4:\"name\";s:20:\"Events Administrator\";s:12:\"capabilities\";a:128:{s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:7:\"level_1\";b:1;s:10:\"ee_read_ee\";b:1;s:17:\"ee_publish_events\";b:1;s:22:\"ee_read_private_events\";b:1;s:21:\"ee_read_others_events\";b:1;s:13:\"ee_read_event\";b:1;s:14:\"ee_read_events\";b:1;s:13:\"ee_edit_event\";b:1;s:14:\"ee_edit_events\";b:1;s:24:\"ee_edit_published_events\";b:1;s:21:\"ee_edit_others_events\";b:1;s:22:\"ee_edit_private_events\";b:1;s:26:\"ee_delete_published_events\";b:1;s:24:\"ee_delete_private_events\";b:1;s:15:\"ee_delete_event\";b:1;s:16:\"ee_delete_events\";b:1;s:23:\"ee_delete_others_events\";b:1;s:26:\"ee_manage_event_categories\";b:1;s:22:\"ee_edit_event_category\";b:1;s:24:\"ee_delete_event_category\";b:1;s:24:\"ee_assign_event_category\";b:1;s:17:\"ee_publish_venues\";b:1;s:13:\"ee_read_venue\";b:1;s:14:\"ee_read_venues\";b:1;s:21:\"ee_read_others_venues\";b:1;s:22:\"ee_read_private_venues\";b:1;s:13:\"ee_edit_venue\";b:1;s:14:\"ee_edit_venues\";b:1;s:21:\"ee_edit_others_venues\";b:1;s:24:\"ee_edit_published_venues\";b:1;s:22:\"ee_edit_private_venues\";b:1;s:15:\"ee_delete_venue\";b:1;s:16:\"ee_delete_venues\";b:1;s:23:\"ee_delete_others_venues\";b:1;s:24:\"ee_delete_private_venues\";b:1;s:26:\"ee_delete_published_venues\";b:1;s:26:\"ee_manage_venue_categories\";b:1;s:22:\"ee_edit_venue_category\";b:1;s:24:\"ee_delete_venue_category\";b:1;s:24:\"ee_assign_venue_category\";b:1;s:16:\"ee_read_contacts\";b:1;s:16:\"ee_edit_contacts\";b:1;s:18:\"ee_delete_contacts\";b:1;s:21:\"ee_read_registrations\";b:1;s:28:\"ee_read_others_registrations\";b:1;s:20:\"ee_edit_registration\";b:1;s:21:\"ee_edit_registrations\";b:1;s:28:\"ee_edit_others_registrations\";b:1;s:22:\"ee_delete_registration\";b:1;s:23:\"ee_delete_registrations\";b:1;s:23:\"ee_read_others_checkins\";b:1;s:16:\"ee_read_checkins\";b:1;s:16:\"ee_edit_checkins\";b:1;s:23:\"ee_edit_others_checkins\";b:1;s:18:\"ee_delete_checkins\";b:1;s:25:\"ee_delete_others_checkins\";b:1;s:19:\"ee_read_transaction\";b:1;s:20:\"ee_read_transactions\";b:1;s:16:\"ee_edit_payments\";b:1;s:18:\"ee_delete_payments\";b:1;s:16:\"ee_read_messages\";b:1;s:23:\"ee_read_others_messages\";b:1;s:23:\"ee_read_global_messages\";b:1;s:23:\"ee_edit_global_messages\";b:1;s:16:\"ee_edit_messages\";b:1;s:23:\"ee_edit_others_messages\";b:1;s:18:\"ee_delete_messages\";b:1;s:25:\"ee_delete_others_messages\";b:1;s:25:\"ee_delete_global_messages\";b:1;s:15:\"ee_send_message\";b:1;s:23:\"ee_read_default_tickets\";b:1;s:30:\"ee_read_others_default_tickets\";b:1;s:23:\"ee_edit_default_tickets\";b:1;s:30:\"ee_edit_others_default_tickets\";b:1;s:25:\"ee_delete_default_tickets\";b:1;s:32:\"ee_delete_others_default_tickets\";b:1;s:21:\"ee_edit_default_price\";b:1;s:22:\"ee_edit_default_prices\";b:1;s:23:\"ee_delete_default_price\";b:1;s:24:\"ee_delete_default_prices\";b:1;s:26:\"ee_edit_default_price_type\";b:1;s:27:\"ee_edit_default_price_types\";b:1;s:28:\"ee_delete_default_price_type\";b:1;s:29:\"ee_delete_default_price_types\";b:1;s:22:\"ee_read_default_prices\";b:1;s:27:\"ee_read_default_price_types\";b:1;s:17:\"ee_edit_questions\";b:1;s:24:\"ee_edit_system_questions\";b:1;s:17:\"ee_read_questions\";b:1;s:19:\"ee_delete_questions\";b:1;s:23:\"ee_edit_question_groups\";b:1;s:23:\"ee_read_question_groups\";b:1;s:30:\"ee_edit_system_question_groups\";b:1;s:25:\"ee_delete_question_groups\";b:1;s:20:\"ee_assign_event_type\";b:1;s:21:\"ee_manage_event_types\";b:1;s:18:\"ee_edit_event_type\";b:1;s:20:\"ee_delete_event_type\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:26:\"sidebar-buddypress-members\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:25:\"sidebar-buddypress-groups\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', '<+u.C&5aT(:p|N:b57GhW-X?zjMA/+r! :N|s=h#^I3R3%HFyLrvWNN]&shIj2h`', 'no'),
(109, 'nonce_salt', '{PW*jt+n*Q<S1UM/SR=!V8t@_Ei^i^Wm:je]Y+!_F6/C<z2,MSUk22azZ*1_]dJM', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:10:{i:1548853832;a:1:{s:47:\"AHEE__EE_Cron_Tasks__clean_up_junk_transactions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548856302;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548881502;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548892800;a:1:{s:36:\"AHEE__EE_Messages_Scheduler__cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548912001;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548924852;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548924853;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548925796;a:1:{s:46:\"check_plugin_updates-event-espresso-core-decaf\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548925832;a:1:{s:46:\"AHEE_EE_Cron_Tasks__clean_out_old_gateway_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548234315;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1548840180;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548849247;s:7:\"checked\";a:3:{s:14:\"theplannerwire\";s:3:\"0.1\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"wordpress-react\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, 'auth_key', 'tsyTvY~CbD/&1WZ@q? b8?kz78$8%M362uyVpv4lxF-%1~LF~CKR]v{>9OfB3i$F', 'no'),
(123, 'auth_salt', '!B-mnw@BMRKC5#m829)_6kTSd.=%otZWh$7RMZhsT<M[Fvqn{7zM|fJI+G:r=,G;', 'no'),
(124, 'logged_in_key', '_hq3A[*UUdl2MIvU5zAf%G)_(CxP9[q]Q]PgF|5Y4c 4IFo#Myxe 9X> @giR/Q*', 'no'),
(125, 'logged_in_salt', '>onZ7(TRS@.z<*Uj0MAhb)SJ]I(.]}i6<ri. .t*<1y<|^DU_SYzZMww:]);RcVb', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(143, 'recently_activated', 'a:6:{s:37:\"user-role-editor/user-role-editor.php\";i:1548304598;s:39:\"super-progressive-web-apps/superpwa.php\";i:1548304594;s:41:\"post-views-counter/post-views-counter.php\";i:1548304589;s:25:\"hashtagger/hashtagger.php\";i:1548304580;s:33:\"event-espresso-decaf/espresso.php\";i:1548304572;s:41:\"bp-better-messages/bp-better-messages.php\";i:1548304540;}', 'yes'),
(148, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(149, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(150, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(151, 'bp-blogs-first-install', '', 'yes'),
(152, 'bp-disable-profile-sync', '', 'yes'),
(153, 'hide-loggedout-adminbar', '', 'yes'),
(154, 'bp-disable-avatar-uploads', '', 'yes'),
(155, 'bp-disable-cover-image-uploads', '', 'yes'),
(156, 'bp-disable-group-avatar-uploads', '', 'yes'),
(157, 'bp-disable-group-cover-image-uploads', '', 'yes'),
(158, 'bp-disable-account-deletion', '', 'yes'),
(159, 'bp-disable-blogforum-comments', '1', 'yes'),
(160, '_bp_theme_package_id', 'nouveau', 'yes'),
(161, 'bp-emails-unsubscribe-salt', 'b0NPTiZwODwoKiBkYTsxWiZYRHk/YGleWU1RLFkhVlQobnlDenFhcFtDOz1UNi9FakRdI25DQjRaRnRyVEJQZQ==', 'yes'),
(162, 'bp_restrict_group_creation', '', 'yes'),
(163, '_bp_enable_akismet', '1', 'yes'),
(164, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(165, '_bp_force_buddybar', '', 'yes'),
(166, '_bp_retain_bp_default', '', 'yes'),
(167, '_bp_ignore_deprecated_code', '1', 'yes'),
(168, 'widget_bp_core_login_widget', '', 'yes'),
(169, 'widget_bp_core_members_widget', '', 'yes'),
(170, 'widget_bp_core_whos_online_widget', '', 'yes'),
(171, 'widget_bp_core_recently_active_widget', '', 'yes'),
(172, 'widget_bp_groups_widget', '', 'yes'),
(173, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(178, 'widget_bp_nouveau_sidebar_object_nav_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'bp-active-components', 'a:9:{s:8:\"xprofile\";s:1:\"1\";s:8:\"settings\";s:1:\"1\";s:7:\"friends\";s:1:\"1\";s:8:\"messages\";s:1:\"1\";s:8:\"activity\";s:1:\"1\";s:13:\"notifications\";s:1:\"1\";s:6:\"groups\";s:1:\"1\";s:5:\"blogs\";s:1:\"1\";s:7:\"members\";s:1:\"1\";}', 'yes'),
(181, 'bp-pages', 'a:3:{s:8:\"activity\";i:7;s:7:\"members\";i:8;s:6:\"groups\";i:65;}', 'yes'),
(182, '_bp_db_version', '11105', 'yes'),
(183, 'widget_bp_latest_activities', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'current_theme', 'theplannerwire', 'yes'),
(187, 'theme_mods_theplannerwire', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:18;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548849844;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:26:\"sidebar-buddypress-members\";a:0:{}}}}', 'yes'),
(188, 'theme_switched', '', 'yes'),
(191, 'espresso_db_update', 'a:1:{s:12:\"4.9.77.decaf\";a:1:{i:0;s:19:\"2019-01-23 09:09:56\";}}', 'no'),
(192, 'external_updates-event-espresso-core-decaf', 'O:8:\"stdClass\":3:{s:14:\"checkedVersion\";s:12:\"4.9.77.decaf\";s:6:\"update\";O:19:\"PluginUpdateUtility\":7:{s:2:\"id\";s:6:\"116825\";s:4:\"slug\";s:25:\"event-espresso-core-decaf\";s:7:\"version\";s:12:\"4.9.77.decaf\";s:8:\"homepage\";s:45:\"https://eventespresso.com/pricing/?ee_ver=ee4\";s:12:\"download_url\";s:213:\"https://eventespresso.com?pu_request_plugin=event-espresso-core-decaf&pu_get_download=1&pue_active_version=4.9.77.decaf&site_domain=172.10.29.111%2Fwordpress-projects%2Ftheplannerwire&pu_plugin_api&new_pue_check=1\";s:8:\"sections\";O:8:\"stdClass\":3:{s:11:\"description\";s:110:\"Manage your events from your WordPress dashboard. Reduce your admin, reduce your costs, make your life easier!\";s:12:\"installation\";s:0:\"\";s:9:\"changelog\";s:0:\"\";}s:14:\"upgrade_notice\";s:0:\"\";}s:9:\"lastCheck\";i:1548234596;}', 'no'),
(193, 'pue_special_notices_4.9.77.decaf', 'a:0:{}', 'yes'),
(194, 'widget_ee-upcoming-events-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'ee_caps_initialized', 'a:2:{s:13:\"administrator\";a:101:{i:0;s:28:\"ee_payment_method_admin_only\";i:1;s:22:\"ee_payment_method_bank\";i:2;s:23:\"ee_payment_method_check\";i:3;s:25:\"ee_payment_method_invoice\";i:4;s:32:\"ee_payment_method_paypal_express\";i:5;s:33:\"ee_payment_method_paypal_standard\";i:6;s:10:\"ee_read_ee\";i:7;s:18:\"ee_manage_gateways\";i:8;s:23:\"ee_read_payment_methods\";i:9;s:30:\"ee_read_others_payment_methods\";i:10;s:23:\"ee_edit_payment_methods\";i:11;s:30:\"ee_edit_others_payment_methods\";i:12;s:25:\"ee_delete_payment_methods\";i:13;s:17:\"ee_publish_events\";i:14;s:22:\"ee_read_private_events\";i:15;s:21:\"ee_read_others_events\";i:16;s:14:\"ee_read_events\";i:17;s:14:\"ee_edit_events\";i:18;s:24:\"ee_edit_published_events\";i:19;s:21:\"ee_edit_others_events\";i:20;s:22:\"ee_edit_private_events\";i:21;s:26:\"ee_delete_published_events\";i:22;s:24:\"ee_delete_private_events\";i:23;s:16:\"ee_delete_events\";i:24;s:23:\"ee_delete_others_events\";i:25;s:26:\"ee_manage_event_categories\";i:26;s:22:\"ee_edit_event_category\";i:27;s:24:\"ee_delete_event_category\";i:28;s:24:\"ee_assign_event_category\";i:29;s:17:\"ee_publish_venues\";i:30;s:14:\"ee_read_venues\";i:31;s:21:\"ee_read_others_venues\";i:32;s:22:\"ee_read_private_venues\";i:33;s:14:\"ee_edit_venues\";i:34;s:21:\"ee_edit_others_venues\";i:35;s:24:\"ee_edit_published_venues\";i:36;s:22:\"ee_edit_private_venues\";i:37;s:16:\"ee_delete_venues\";i:38;s:23:\"ee_delete_others_venues\";i:39;s:24:\"ee_delete_private_venues\";i:40;s:26:\"ee_delete_published_venues\";i:41;s:26:\"ee_manage_venue_categories\";i:42;s:22:\"ee_edit_venue_category\";i:43;s:24:\"ee_delete_venue_category\";i:44;s:24:\"ee_assign_venue_category\";i:45;s:16:\"ee_read_contacts\";i:46;s:16:\"ee_edit_contacts\";i:47;s:18:\"ee_delete_contacts\";i:48;s:21:\"ee_read_registrations\";i:49;s:28:\"ee_read_others_registrations\";i:50;s:21:\"ee_edit_registrations\";i:51;s:28:\"ee_edit_others_registrations\";i:52;s:23:\"ee_delete_registrations\";i:53;s:23:\"ee_read_others_checkins\";i:54;s:16:\"ee_read_checkins\";i:55;s:16:\"ee_edit_checkins\";i:56;s:23:\"ee_edit_others_checkins\";i:57;s:18:\"ee_delete_checkins\";i:58;s:25:\"ee_delete_others_checkins\";i:59;s:19:\"ee_read_transaction\";i:60;s:20:\"ee_read_transactions\";i:61;s:16:\"ee_edit_payments\";i:62;s:18:\"ee_delete_payments\";i:63;s:16:\"ee_read_messages\";i:64;s:23:\"ee_read_others_messages\";i:65;s:23:\"ee_read_global_messages\";i:66;s:23:\"ee_edit_global_messages\";i:67;s:16:\"ee_edit_messages\";i:68;s:23:\"ee_edit_others_messages\";i:69;s:18:\"ee_delete_messages\";i:70;s:25:\"ee_delete_others_messages\";i:71;s:25:\"ee_delete_global_messages\";i:72;s:15:\"ee_send_message\";i:73;s:23:\"ee_read_default_tickets\";i:74;s:30:\"ee_read_others_default_tickets\";i:75;s:23:\"ee_edit_default_tickets\";i:76;s:30:\"ee_edit_others_default_tickets\";i:77;s:25:\"ee_delete_default_tickets\";i:78;s:32:\"ee_delete_others_default_tickets\";i:79;s:21:\"ee_edit_default_price\";i:80;s:22:\"ee_edit_default_prices\";i:81;s:23:\"ee_delete_default_price\";i:82;s:24:\"ee_delete_default_prices\";i:83;s:26:\"ee_edit_default_price_type\";i:84;s:27:\"ee_edit_default_price_types\";i:85;s:28:\"ee_delete_default_price_type\";i:86;s:29:\"ee_delete_default_price_types\";i:87;s:22:\"ee_read_default_prices\";i:88;s:27:\"ee_read_default_price_types\";i:89;s:17:\"ee_edit_questions\";i:90;s:24:\"ee_edit_system_questions\";i:91;s:17:\"ee_read_questions\";i:92;s:19:\"ee_delete_questions\";i:93;s:23:\"ee_edit_question_groups\";i:94;s:23:\"ee_read_question_groups\";i:95;s:30:\"ee_edit_system_question_groups\";i:96;s:25:\"ee_delete_question_groups\";i:97;s:20:\"ee_assign_event_type\";i:98;s:21:\"ee_manage_event_types\";i:99;s:18:\"ee_edit_event_type\";i:100;s:20:\"ee_delete_event_type\";}s:23:\"ee_events_administrator\";a:128:{i:0;s:4:\"read\";i:1;s:18:\"read_private_pages\";i:2;s:18:\"read_private_posts\";i:3;s:10:\"edit_users\";i:4;s:10:\"edit_posts\";i:5;s:10:\"edit_pages\";i:6;s:20:\"edit_published_posts\";i:7;s:20:\"edit_published_pages\";i:8;s:18:\"edit_private_pages\";i:9;s:18:\"edit_private_posts\";i:10;s:17:\"edit_others_posts\";i:11;s:17:\"edit_others_pages\";i:12;s:13:\"publish_posts\";i:13;s:13:\"publish_pages\";i:14;s:12:\"delete_posts\";i:15;s:12:\"delete_pages\";i:16;s:20:\"delete_private_pages\";i:17;s:20:\"delete_private_posts\";i:18;s:22:\"delete_published_pages\";i:19;s:22:\"delete_published_posts\";i:20;s:19:\"delete_others_posts\";i:21;s:19:\"delete_others_pages\";i:22;s:17:\"manage_categories\";i:23;s:12:\"manage_links\";i:24;s:17:\"moderate_comments\";i:25;s:15:\"unfiltered_html\";i:26;s:12:\"upload_files\";i:27;s:6:\"export\";i:28;s:6:\"import\";i:29;s:10:\"list_users\";i:30;s:7:\"level_1\";i:31;s:10:\"ee_read_ee\";i:32;s:17:\"ee_publish_events\";i:33;s:22:\"ee_read_private_events\";i:34;s:21:\"ee_read_others_events\";i:35;s:13:\"ee_read_event\";i:36;s:14:\"ee_read_events\";i:37;s:13:\"ee_edit_event\";i:38;s:14:\"ee_edit_events\";i:39;s:24:\"ee_edit_published_events\";i:40;s:21:\"ee_edit_others_events\";i:41;s:22:\"ee_edit_private_events\";i:42;s:26:\"ee_delete_published_events\";i:43;s:24:\"ee_delete_private_events\";i:44;s:15:\"ee_delete_event\";i:45;s:16:\"ee_delete_events\";i:46;s:23:\"ee_delete_others_events\";i:47;s:26:\"ee_manage_event_categories\";i:48;s:22:\"ee_edit_event_category\";i:49;s:24:\"ee_delete_event_category\";i:50;s:24:\"ee_assign_event_category\";i:51;s:17:\"ee_publish_venues\";i:52;s:13:\"ee_read_venue\";i:53;s:14:\"ee_read_venues\";i:54;s:21:\"ee_read_others_venues\";i:55;s:22:\"ee_read_private_venues\";i:56;s:13:\"ee_edit_venue\";i:57;s:14:\"ee_edit_venues\";i:58;s:21:\"ee_edit_others_venues\";i:59;s:24:\"ee_edit_published_venues\";i:60;s:22:\"ee_edit_private_venues\";i:61;s:15:\"ee_delete_venue\";i:62;s:16:\"ee_delete_venues\";i:63;s:23:\"ee_delete_others_venues\";i:64;s:24:\"ee_delete_private_venues\";i:65;s:26:\"ee_delete_published_venues\";i:66;s:26:\"ee_manage_venue_categories\";i:67;s:22:\"ee_edit_venue_category\";i:68;s:24:\"ee_delete_venue_category\";i:69;s:24:\"ee_assign_venue_category\";i:70;s:16:\"ee_read_contacts\";i:71;s:16:\"ee_edit_contacts\";i:72;s:18:\"ee_delete_contacts\";i:73;s:21:\"ee_read_registrations\";i:74;s:28:\"ee_read_others_registrations\";i:75;s:20:\"ee_edit_registration\";i:76;s:21:\"ee_edit_registrations\";i:77;s:28:\"ee_edit_others_registrations\";i:78;s:22:\"ee_delete_registration\";i:79;s:23:\"ee_delete_registrations\";i:80;s:23:\"ee_read_others_checkins\";i:81;s:16:\"ee_read_checkins\";i:82;s:16:\"ee_edit_checkins\";i:83;s:23:\"ee_edit_others_checkins\";i:84;s:18:\"ee_delete_checkins\";i:85;s:25:\"ee_delete_others_checkins\";i:86;s:19:\"ee_read_transaction\";i:87;s:20:\"ee_read_transactions\";i:88;s:16:\"ee_edit_payments\";i:89;s:18:\"ee_delete_payments\";i:90;s:16:\"ee_read_messages\";i:91;s:23:\"ee_read_others_messages\";i:92;s:23:\"ee_read_global_messages\";i:93;s:23:\"ee_edit_global_messages\";i:94;s:16:\"ee_edit_messages\";i:95;s:23:\"ee_edit_others_messages\";i:96;s:18:\"ee_delete_messages\";i:97;s:25:\"ee_delete_others_messages\";i:98;s:25:\"ee_delete_global_messages\";i:99;s:15:\"ee_send_message\";i:100;s:23:\"ee_read_default_tickets\";i:101;s:30:\"ee_read_others_default_tickets\";i:102;s:23:\"ee_edit_default_tickets\";i:103;s:30:\"ee_edit_others_default_tickets\";i:104;s:25:\"ee_delete_default_tickets\";i:105;s:32:\"ee_delete_others_default_tickets\";i:106;s:21:\"ee_edit_default_price\";i:107;s:22:\"ee_edit_default_prices\";i:108;s:23:\"ee_delete_default_price\";i:109;s:24:\"ee_delete_default_prices\";i:110;s:26:\"ee_edit_default_price_type\";i:111;s:27:\"ee_edit_default_price_types\";i:112;s:28:\"ee_delete_default_price_type\";i:113;s:29:\"ee_delete_default_price_types\";i:114;s:22:\"ee_read_default_prices\";i:115;s:27:\"ee_read_default_price_types\";i:116;s:17:\"ee_edit_questions\";i:117;s:24:\"ee_edit_system_questions\";i:118;s:17:\"ee_read_questions\";i:119;s:19:\"ee_delete_questions\";i:120;s:23:\"ee_edit_question_groups\";i:121;s:23:\"ee_read_question_groups\";i:122;s:30:\"ee_edit_system_question_groups\";i:123;s:25:\"ee_delete_question_groups\";i:124;s:20:\"ee_assign_event_type\";i:125;s:21:\"ee_manage_event_types\";i:126;s:18:\"ee_edit_event_type\";i:127;s:20:\"ee_delete_event_type\";}}', 'yes'),
(196, 'ee_flush_rewrite_rules', '', 'yes'),
(197, 'ee_verified_db_collations', '1', 'no'),
(198, 'ee_verified_db_collations_again', '1', 'no'),
(199, 'ee_data_migration_current_db_state', 'a:1:{s:4:\"Core\";s:12:\"4.9.77.decaf\";}', 'yes'),
(200, 'ee_active_messengers', 'a:3:{s:5:\"email\";a:1:{s:8:\"settings\";a:1:{s:19:\"email-message_types\";a:5:{s:7:\"payment\";a:1:{s:8:\"settings\";a:0:{}}s:14:\"payment_refund\";a:1:{s:8:\"settings\";a:0:{}}s:12:\"registration\";a:1:{s:8:\"settings\";a:0:{}}s:25:\"not_approved_registration\";a:1:{s:8:\"settings\";a:0:{}}s:16:\"pending_approval\";a:1:{s:8:\"settings\";a:0:{}}}}}s:4:\"html\";a:1:{s:8:\"settings\";a:1:{s:18:\"html-message_types\";a:2:{s:7:\"receipt\";a:1:{s:8:\"settings\";a:0:{}}s:7:\"invoice\";a:1:{s:8:\"settings\";a:0:{}}}}}s:3:\"pdf\";a:1:{s:8:\"settings\";a:0:{}}}', 'yes'),
(201, 'ee_has_activated_messenger', 'a:2:{s:5:\"email\";a:5:{i:0;s:7:\"payment\";i:1;s:14:\"payment_refund\";i:2;s:12:\"registration\";i:3;s:25:\"not_approved_registration\";i:4;s:16:\"pending_approval\";}s:4:\"html\";a:2:{i:0;s:7:\"receipt\";i:1;s:7:\"invoice\";}}', 'yes'),
(202, 'ee_no_ticket_prices', 'a:0:{}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(203, 'ee_config', 'O:9:\"EE_Config\":14:{s:36:\"\0EE_Config\0legacy_shortcodes_manager\";N;s:6:\"addons\";O:8:\"stdClass\":0:{}s:5:\"admin\";O:15:\"EE_Admin_Config\":13:{s:21:\"use_personnel_manager\";b:1;s:20:\"use_dashboard_widget\";b:1;s:19:\"events_in_dashboard\";i:30;s:19:\"use_event_timezones\";b:0;s:16:\"use_full_logging\";b:0;s:13:\"log_file_name\";N;s:15:\"debug_file_name\";N;s:18:\"use_remote_logging\";b:0;s:18:\"remote_logging_url\";N;s:15:\"show_reg_footer\";b:1;s:12:\"affiliate_id\";s:7:\"default\";s:20:\"help_tour_activation\";b:1;s:36:\"\0EE_Admin_Config\0encode_session_data\";b:0;}s:4:\"core\";O:14:\"EE_Core_Config\":16:{s:15:\"current_blog_id\";i:1;s:13:\"ee_ueip_optin\";b:0;s:20:\"ee_ueip_has_notified\";b:1;s:15:\"post_shortcodes\";a:0:{}s:16:\"module_route_map\";a:0:{}s:18:\"module_forward_map\";a:0:{}s:15:\"module_view_map\";a:0:{}s:11:\"reg_page_id\";i:25;s:11:\"txn_page_id\";i:26;s:17:\"thank_you_page_id\";i:27;s:14:\"cancel_page_id\";i:28;s:12:\"reg_page_url\";s:0:\"\";s:12:\"txn_page_url\";s:0:\"\";s:18:\"thank_you_page_url\";s:0:\"\";s:15:\"cancel_page_url\";s:0:\"\";s:14:\"event_cpt_slug\";s:6:\"events\";}s:8:\"currency\";O:18:\"EE_Currency_Config\":8:{s:4:\"code\";s:3:\"USD\";s:4:\"name\";s:6:\"Dollar\";s:6:\"plural\";s:7:\"Dollars\";s:4:\"sign\";s:1:\"$\";s:7:\"sign_b4\";b:1;s:7:\"dec_plc\";i:2;s:7:\"dec_mrk\";s:1:\".\";s:6:\"thsnds\";s:1:\",\";}s:12:\"organization\";O:22:\"EE_Organization_Config\":17:{s:4:\"name\";s:16:\"The Planner Wire\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:6:\"STA_ID\";i:0;s:7:\"CNT_ISO\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:5:\"email\";s:13:\"test@test.com\";s:5:\"phone\";s:0:\"\";s:3:\"vat\";s:0:\"\";s:8:\"logo_url\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"google\";s:0:\"\";s:9:\"instagram\";s:0:\"\";}s:12:\"registration\";O:22:\"EE_Registration_Config\":22:{s:14:\"default_STS_ID\";s:3:\"RPP\";s:33:\"default_maximum_number_of_tickets\";i:10;s:22:\"email_validation_level\";s:10:\"wp_default\";s:28:\"show_pending_payment_options\";b:1;s:21:\"skip_reg_confirmation\";b:1;s:9:\"reg_steps\";a:0:{}s:21:\"reg_confirmation_last\";b:0;s:12:\"use_bot_trap\";b:1;s:14:\"use_encryption\";b:1;s:11:\"use_captcha\";b:0;s:15:\"recaptcha_theme\";s:5:\"light\";s:15:\"recaptcha_badge\";s:10:\"bottomleft\";s:14:\"recaptcha_type\";s:5:\"image\";s:18:\"recaptcha_language\";s:2:\"en\";s:19:\"recaptcha_publickey\";N;s:20:\"recaptcha_privatekey\";N;s:25:\"recaptcha_protected_forms\";a:0:{}s:15:\"recaptcha_width\";i:500;s:32:\"\0*\0track_invalid_checkout_access\";b:1;s:24:\"consent_checkbox_enabled\";b:0;s:27:\"consent_checkbox_label_text\";s:107:\"I consent to The Planner Wire storing and using my personal information, according to their privacy policy.\";s:20:\"gateway_log_lifespan\";s:6:\"7 days\";}s:17:\"template_settings\";O:18:\"EE_Template_Config\":9:{s:20:\"enable_default_style\";b:1;s:18:\"custom_style_sheet\";N;s:26:\"display_address_in_regform\";b:1;s:37:\"display_description_on_multi_reg_page\";b:0;s:20:\"use_custom_templates\";b:0;s:22:\"current_espresso_theme\";s:21:\"Espresso_Arabica_2014\";s:19:\"EED_Ticket_Selector\";N;s:16:\"EED_Event_Single\";N;s:18:\"EED_Events_Archive\";N;}s:11:\"environment\";O:21:\"EE_Environment_Config\":1:{s:3:\"php\";O:8:\"stdClass\":2:{s:14:\"max_input_vars\";s:4:\"3000\";s:7:\"version\";s:37:\"7.1.20-1+ubuntu16.04.1+deb.sury.org+1\";}}s:12:\"map_settings\";O:13:\"EE_Map_Config\":16:{s:15:\"use_google_maps\";b:1;s:18:\"google_map_api_key\";s:0:\"\";s:23:\"event_details_map_width\";i:585;s:24:\"event_details_map_height\";i:362;s:22:\"event_details_map_zoom\";i:14;s:25:\"event_details_display_nav\";b:1;s:22:\"event_details_nav_size\";b:0;s:26:\"event_details_control_type\";s:7:\"default\";s:23:\"event_details_map_align\";s:6:\"center\";s:20:\"event_list_map_width\";i:300;s:21:\"event_list_map_height\";i:185;s:19:\"event_list_map_zoom\";i:12;s:22:\"event_list_display_nav\";b:0;s:19:\"event_list_nav_size\";b:1;s:23:\"event_list_control_type\";s:8:\"dropdown\";s:20:\"event_list_map_align\";s:6:\"center\";}s:12:\"tax_settings\";O:13:\"EE_Tax_Config\":1:{s:32:\"prices_displayed_including_taxes\";b:1;}s:8:\"messages\";O:18:\"EE_Messages_Config\":1:{s:16:\"delete_threshold\";i:0;}s:7:\"gateway\";O:17:\"EE_Gateway_Config\":2:{s:16:\"payment_settings\";a:0:{}s:15:\"active_gateways\";a:1:{s:7:\"Invoice\";b:0;}}s:30:\"\0EE_Config\0_addon_option_names\";a:0:{}}', 'yes'),
(205, 'ee_session_settings', 'a:2:{s:7:\"last_gc\";i:1548304451;s:8:\"sid_salt\";s:64:\"TV9kLLO3&J@@Imy$WntWhd7Tb48QMZLdQ^ZGWmtzsN8SYhWM#Zac!(dZ0&4dxLRm\";}', 'yes'),
(206, 'ee_config_option_names', 'a:0:{}', 'yes'),
(208, 'ee_config-template_settings-ticket_selector', 'O:25:\"EE_Ticket_Selector_Config\":6:{s:24:\"show_ticket_sale_columns\";b:1;s:19:\"show_ticket_details\";b:1;s:20:\"show_expired_tickets\";b:1;s:49:\"\0EE_Ticket_Selector_Config\0show_datetime_selector\";s:20:\"no_datetime_selector\";s:54:\"\0EE_Ticket_Selector_Config\0datetime_selector_threshold\";i:3;s:56:\"\0EE_Ticket_Selector_Config\0datetime_selector_max_checked\";i:10;}', 'no'),
(215, '_ee_rate_limit', 'a:2:{i:0;i:200;i:1;i:1548308044;}', 'yes'),
(272, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:31:\"bp-better-messages/inc/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"1.2.4\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1548304543;s:11:\"plugin_path\";s:41:\"bp-better-messages/bp-better-messages.php\";}}s:7:\"abspath\";s:48:\"/var/www/html/wordpress-projects/theplannerwire/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"bp-better-messages/bp-better-messages.php\";s:8:\"sdk_path\";s:31:\"bp-better-messages/inc/freemius\";s:7:\"version\";s:5:\"1.2.4\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1548304543;}}', 'yes'),
(273, 'fs_debug_mode', '', 'yes'),
(274, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1557;a:3:{s:4:\"slug\";s:18:\"bp-better-messages\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"bp-better-messages/bp-better-messages.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"bp-better-messages\";a:13:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"bp-better-messages/bp-better-messages.php\";}s:17:\"install_timestamp\";i:1548236861;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"1.2.4\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:7:\"1.9.7.8\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:0;s:4:\"host\";s:13:\"172.10.29.111\";s:9:\"server_ip\";s:13:\"172.10.29.111\";s:9:\"is_active\";b:0;s:9:\"timestamp\";i:1548304543;s:7:\"version\";s:7:\"1.9.7.8\";}}}s:13:\"file_slug_map\";a:1:{s:41:\"bp-better-messages/bp-better-messages.php\";s:18:\"bp-better-messages\";}s:7:\"plugins\";a:1:{s:18:\"bp-better-messages\";O:9:\"FS_Plugin\":17:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:18:\"BP Better Messages\";s:4:\"slug\";s:18:\"bp-better-messages\";s:4:\"type\";s:6:\"plugin\";s:4:\"file\";s:41:\"bp-better-messages/bp-better-messages.php\";s:7:\"version\";s:7:\"1.9.7.8\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:20:\"affiliate_moderation\";b:0;s:10:\"public_key\";s:32:\"pk_8af54172153e9907893f32a4706e2\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1557\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"0574b8069dcad62a7f3cbcc7f7f917f2\";s:13:\"admin_notices\";a:1:{s:18:\"bp-better-messages\";a:0:{}}}', 'yes'),
(275, 'fs_options', 'a:1:{s:14:\"api_force_http\";b:0;}', 'yes'),
(276, 'fs_api_cache', 'a:0:{}', 'yes'),
(277, 'post_views_counter_settings_general', 'a:13:{s:16:\"post_types_count\";a:1:{i:0;s:4:\"post\";}s:12:\"counter_mode\";s:3:\"php\";s:17:\"post_views_column\";b:1;s:19:\"time_between_counts\";a:2:{s:6:\"number\";i:24;s:4:\"type\";s:5:\"hours\";}s:12:\"reset_counts\";a:2:{s:6:\"number\";i:30;s:4:\"type\";s:4:\"days\";}s:14:\"flush_interval\";a:2:{s:6:\"number\";i:0;s:4:\"type\";s:7:\"minutes\";}s:7:\"exclude\";a:2:{s:6:\"groups\";a:0:{}s:5:\"roles\";a:0:{}}s:11:\"exclude_ips\";a:0:{}s:13:\"strict_counts\";b:0;s:19:\"restrict_edit_views\";b:0;s:19:\"deactivation_delete\";b:0;s:8:\"cron_run\";b:1;s:11:\"cron_update\";b:0;}', 'no'),
(278, 'post_views_counter_settings_display', 'a:8:{s:5:\"label\";s:11:\"Post Views:\";s:18:\"post_types_display\";a:1:{i:0;s:4:\"post\";}s:18:\"page_types_display\";a:1:{i:0;s:8:\"singular\";}s:16:\"restrict_display\";a:2:{s:6:\"groups\";a:0:{}s:5:\"roles\";a:0:{}}s:8:\"position\";s:5:\"after\";s:13:\"display_style\";a:2:{s:4:\"icon\";b:1;s:4:\"text\";b:1;}s:12:\"link_to_post\";b:1;s:10:\"icon_class\";s:19:\"dashicons-chart-bar\";}', 'no'),
(279, 'post_views_counter_version', '1.2.14', 'no'),
(282, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(283, 'widget_post_views_counter_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'pp-hashtagger-admin-notice-2-start', '1550828873', 'yes'),
(306, 'ridwpa_version', '1.5.3', 'yes'),
(316, 'duplicate_post_copytitle', '1', 'yes'),
(317, 'duplicate_post_copydate', '0', 'yes'),
(318, 'duplicate_post_copystatus', '0', 'yes'),
(319, 'duplicate_post_copyslug', '0', 'yes'),
(320, 'duplicate_post_copyexcerpt', '1', 'yes'),
(321, 'duplicate_post_copycontent', '1', 'yes'),
(322, 'duplicate_post_copythumbnail', '1', 'yes'),
(323, 'duplicate_post_copytemplate', '1', 'yes'),
(324, 'duplicate_post_copyformat', '1', 'yes'),
(325, 'duplicate_post_copyauthor', '0', 'yes'),
(326, 'duplicate_post_copypassword', '0', 'yes'),
(327, 'duplicate_post_copyattachments', '0', 'yes'),
(328, 'duplicate_post_copychildren', '0', 'yes'),
(329, 'duplicate_post_copycomments', '0', 'yes'),
(330, 'duplicate_post_copymenuorder', '1', 'yes'),
(331, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(332, 'duplicate_post_blacklist', '', 'yes'),
(333, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(334, 'duplicate_post_show_row', '1', 'yes'),
(335, 'duplicate_post_show_adminbar', '1', 'yes'),
(336, 'duplicate_post_show_submitbox', '1', 'yes'),
(337, 'duplicate_post_show_bulkactions', '1', 'yes'),
(338, 'duplicate_post_version', '3.2.2', 'yes'),
(339, 'duplicate_post_show_notice', '0', 'no'),
(380, 'WPLANG', '', 'yes'),
(381, 'new_admin_email', 'test@test.com', 'yes'),
(417, 'acf_version', '5.7.10', 'yes'),
(450, 'category_children', 'a:0:{}', 'yes'),
(458, '_site_transient_timeout_community-events-f8e921eafc50fa302be82b8d529fb731', '1548875547', 'no'),
(459, '_site_transient_community-events-f8e921eafc50fa302be82b8d529fb731', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"172.10.29.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"RTP: WordPress Help Desk\";s:3:\"url\";s:71:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/events/258370763/\";s:6:\"meetup\";s:41:\"Raleigh-Durham RTP WordPress Meetup Group\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2019-01-30 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:35:\"Research Triangle Park, NC, NC, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:35.896168;s:9:\"longitude\";d:-78.870308;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"RTP: WordPress Help Desk\";s:3:\"url\";s:74:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/events/njzjmqyzdbjb/\";s:6:\"meetup\";s:41:\"Raleigh-Durham RTP WordPress Meetup Group\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2019-02-06 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:35:\"Research Triangle Park, NC, NC, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:35.896168;s:9:\"longitude\";d:-78.870308;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"RTP: WordPress Help Desk\";s:3:\"url\";s:74:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/events/njzjmqyzdbrb/\";s:6:\"meetup\";s:41:\"Raleigh-Durham RTP WordPress Meetup Group\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2019-02-13 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:35:\"Research Triangle Park, NC, NC, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:35.896168;s:9:\"longitude\";d:-78.870308;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"RTP: WordPress Help Desk\";s:3:\"url\";s:74:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/events/njzjmqyzdbbc/\";s:6:\"meetup\";s:41:\"Raleigh-Durham RTP WordPress Meetup Group\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2019-02-20 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:35:\"Research Triangle Park, NC, NC, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:35.896168;s:9:\"longitude\";d:-78.870308;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"RTP: WordPress Help Desk\";s:3:\"url\";s:74:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/events/njzjmqyzdbkc/\";s:6:\"meetup\";s:41:\"Raleigh-Durham RTP WordPress Meetup Group\";s:10:\"meetup_url\";s:54:\"https://www.meetup.com/Raleigh-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2019-02-27 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:35:\"Research Triangle Park, NC, NC, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:35.896168;s:9:\"longitude\";d:-78.870308;}}}}', 'no'),
(460, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1548875548', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(461, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Tue, 22 Jan 2019 01:01:36 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.1-beta2-44715\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 5.1 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Jan 2019 01:01:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6550\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:312:\"WordPress 5.1 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version. There are two ways to test the WordPress 5.1 beta: try the WordPress Beta Tester plugin (you’ll want to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4592:\"\n<p>WordPress 5.1 Beta 2 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>There are two ways to test the WordPress 5.1 beta: try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want to select the “bleeding edge nightlies” option), or you can <a href=\"https://wordpress.org/wordpress-5.1-beta2.zip\">download the beta here</a> (zip).</p>\n\n\n\n<p>WordPress 5.1 is slated for release on <a href=\"https://make.wordpress.org/core/5-1/\">February 21</a>, and we need your help to get there!</p>\n\n\n\n<p>Over <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=01%2F11%2F2019..&amp;milestone=5.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">110 tickets have been closed</a> since <a href=\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-1/\">beta 1</a>, many of which are documentation and testing suite improvements. Here are the major changes and bug fixes:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=01%2F11%2F2019..01%2F22%2F2019&amp;focuses=!~docs&amp;keywords=~servehappy&amp;milestone=5.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">Several refinements and bug fixes</a> related to the Site Health project have been made.</li><li>The <code>pre_render_block</code> and <code>render_block_data</code> filters have been introduced allowing plugins to override block attribute values (<a href=\"https://core.trac.wordpress.org/ticket/45451\">#45451</a>, dev note coming soon).</li><li><code>get_template_part()</code> will now return a value indicating whether a template file was found and loaded (<a href=\"https://core.trac.wordpress.org/ticket/40969\">#40969</a>).</li><li>A notice will now be triggered when developers incorrectly register REST API endpoints (related <a href=\"https://make.wordpress.org/core/2019/01/11/new-rest-api-notice-in-5-1/\">dev note</a>).</li><li>Bulk editing posts will no longer unintentionally change a post&#8217;s post format (<a href=\"https://core.trac.wordpress.org/ticket/44914\">#44914</a>)</li><li>Twemoji has been updated to the latest version, 11.2.0 (<a href=\"https://core.trac.wordpress.org/ticket/45133\">#45133</a>).</li><li>A bug preventing the Custom Fields meta box from being enabled has been fixed (#<a href=\"https://core.trac.wordpress.org/ticket/46028\">46028</a>).</li><li>The treatment of <code>orderby</code> values for <code>post__in</code>, <code>post_parent__in</code>, and <code>post_name__in</code> has been standardized (<a href=\"https://core.trac.wordpress.org/ticket/38034\">#38034</a>).</li><li>When updating language packs, old language packs are now correctly deleted to avoid filling up disk space (<a href=\"https://core.trac.wordpress.org/ticket/45468\">#45468</a>).</li></ul>\n\n\n\n<h2>Developer Notes</h2>\n\n\n\n<p>WordPress 5.1 has many changes aimed at polishing the developer experience. To keep you informed, we publish <a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">developers notes</a> on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> throughout the release cycle. Subscribe to the Make WordPress Core blog for updates over the coming weeks, detailing other changes in 5.1 that you should be aware of.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a> The beta 2 release als marks the <a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#soft-freeze\">soft string freeze</a> point of the 5.1 release schedule.</p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Do you enjoy bugs?<br> I don&#8217;t. So, we fixed them all.<br> Well, not all. But close.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6550\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 5.1 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Jan 2019 00:58:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6540\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"WordPress 5.1 Beta 1 is now available! This software is still in development,&#160;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version. There are two ways to test the WordPress 5.1 beta: try the&#160;WordPress Beta Tester&#160;plugin (you’ll want to select the “bleeding [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4178:\"\n<p>WordPress 5.1 Beta 1 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>There are two ways to test the WordPress 5.1 beta: try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (you’ll want to select the “bleeding edge nightlies” option), or you can&nbsp;<a href=\"https://wordpress.org/wordpress-5.1-beta1.zip\">download the beta here</a>&nbsp;(zip).</p>\n\n\n\n<p>WordPress 5.1 is slated for release on&nbsp;<a href=\"https://make.wordpress.org/core/5-1/\">February 21</a>, and we need your help to get there. Here are some of the big items to test so we can find as many bugs as possible in the coming weeks.</p>\n\n\n\n<h2>Site Health Check</h2>\n\n\n\n<p>Site Health Check is an ongoing project aimed at improving the stability and performance of the entire WordPress ecosystem. The first phase of this project is included in WordPress 5.1. For the first time, WordPress will catch and pause the problem code, so you can log in to your Dashboard and see what the problem is (<a href=\"https://core.trac.wordpress.org/ticket/44458\">#44458</a>). Before, you’d have to FTP in to your files or get in touch with your host.</p>\n\n\n\n<p>Additionally, in April 2019, <a href=\"https://make.wordpress.org/core/2018/12/08/updating-the-minimum-php-version/\">WordPress&#8217; will increase its minimum supported PHP version to 5.6</a>. To help you check if you&#8217;re prepared for this change, WordPress 5.1 will show you a warning and help you upgrade your version of PHP, if necessary.</p>\n\n\n\n<h2>For Developers</h2>\n\n\n\n<ul><li>The Cron system can now be more easily replaced with a custom cron handler (<a href=\"https://core.trac.wordpress.org/ticket/32656\">#32656</a>).</li><li>When starting cron under PHP-FPM, the connection will return a response immediately, even for long running cron jobs (<a href=\"https://make.wordpress.org/core/2019/01/09/cron-improvements-with-php-fpm-in-wordpress-5-1/\">dev note</a>).</li><li><code>WP_DEBUG_LOG</code> can be set to a custom log location (<a href=\"https://core.trac.wordpress.org/ticket/18391\">#18391</a>).</li><li>Introduced the <code>wp_blogmeta</code> table (<a href=\"https://core.trac.wordpress.org/ticket/37923\">#37923</a>).</li><li>Added <code>LIKE</code> support to <code>meta_key</code> comparisons in <code>WP_Meta_Query</code> (<a href=\"https://core.trac.wordpress.org/ticket/42409\">#42409</a>).</li></ul>\n\n\n\n<p>There have been <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.1&amp;group=resolution&amp;col=id&amp;col=summary&amp;col=component&amp;col=owner&amp;col=type&amp;col=priority&amp;col=version&amp;order=priority\">over 360 tickets closed</a> in WordPress 5.1, with numerous small bug fixes and improvements to help smooth your WordPress experience.</p>\n\n\n\n<p>Keep your eyes on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for more developer notes (which are <a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">assigned</a> the <code>dev-notes</code> tag) in the coming weeks detailing other changes in 5.1 that you should be aware of.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href=\"https://wordpress.org/support/forum/alphabeta\"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href=\"https://make.wordpress.org/core/reports/\"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href=\"https://core.trac.wordpress.org/tickets/major\"><em>a list of known bugs</em></a><em>.</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Miss my haiku?<br>I will have plenty for you<br>in the coming weeks.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6540\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 5.0.3 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/01/wordpress-5-0-3-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Jan 2019 18:56:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"5.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6530\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:335:\"WordPress 5.0.3 is now available! 5.0.3 is a maintenance release that includes 37 bug fixes and 7 performance updates. The focus of this release was fine-tuning the new block editor, and fixing any major bugs or regressions. Here are a few of the highlights: 15 block editor related bug fixes and improvements have been added [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4616:\"\n<p>WordPress 5.0.3 is now available!</p>\n\n\n\n<p>5.0.3 is a maintenance release that includes 37 bug fixes and 7 performance updates. The focus of this release was fine-tuning the new block editor, and fixing any major bugs or regressions.</p>\n\n\n\n<p>Here are a few of the highlights:</p>\n\n\n\n<ul><li>15 block editor related bug fixes and improvements have been added to bundled themes. Make sure to update these for an improved block editing experience.</li><li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;component=I18N&amp;milestone=5.0.3&amp;group=component&amp;order=priority\">2 block editor related internationalization (I18N) bugs</a> have been fixed</li><li>Users with JavaScript disabled <a href=\"https://core.trac.wordpress.org/ticket/45453\">now see a notice</a> when attempting to use the block editor.</li><li>A few <a href=\"https://core.trac.wordpress.org/ticket/44770\">PHP</a> <a href=\"https://core.trac.wordpress.org/ticket/44809\">errors</a> in the Customizer have been fixed.</li><li>Some <a href=\"https://core.trac.wordpress.org/ticket/45615\">issues uploading common file types</a>, like CSVs, have been fixed.</li></ul>\n\n\n\n<p>For a full list of changes, please consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.0.3&amp;group=component\">list of tickets on Trac</a>, <a href=\"https://core.trac.wordpress.org/log/branches/5.0?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=44522&amp;stop_rev=44342&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">changelog</a>, or read a <a href=\"https://make.wordpress.org/core/?p=36158\">more technical summary</a> on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/download/\">download WordPress 5.0.3</a> or visit Dashboard → Updates on your site and click <em>Update Now</em>. Sites that support automatic background updates have already started to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.0.3:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/kloon/\">Gerhard Potgieter</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz (Greg) Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jobthomas/\">Job</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mmaumio/\">Muntasir Mahmud</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/panchen/\">panchen</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rickalee/\">Ricky Lee Whittemore</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, and <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6530\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: December 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2019/01/the-month-in-wordpress-december-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Jan 2019 09:18:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6527\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:361:\"New features, a big event, and important announcements marked December as a milestone month for the WordPress community. Release of WordPress 5.0 On December 6 WordPress 5.0 was released. This release includes the much anticipated new block editor as the default editing experience. While some users have chosen to continue using the Classic Editor on [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Aditya Kane\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3518:\"\n<p>New features, a big event, and important announcements marked December as a milestone month for the WordPress community. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Release of WordPress 5.0</h2>\n\n\n\n<p>On December 6 <a href=\"https://wordpress.org/news/2018/12/bebo/\">WordPress 5.0 was released</a>. This release includes the much anticipated new block editor as the default editing experience. While some users have chosen to continue using the <a href=\"https://wordpress.org/plugins/classic-editor/\">Classic Editor</a> on their sites, many site owners have quickly upgraded to this latest version.<br></p>\n\n\n\n<p>Two security and maintenance releases came out over the course of the month, with <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-2-maintenance-release/\">the latest update</a> providing a huge boost to performance and stability.<br></p>\n\n\n\n<p>The new version of WordPress comes a new default theme: <a href=\"https://wordpress.org/themes/twentynineteen/\">Twenty Nineteen</a>. This theme is designed to highlight how the block editor can be used.<br></p>\n\n\n\n<p>Want to get involved in developing WordPress Core? Follow <a href=\"https://make.wordpress.org/core\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg Phase 2</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2018/12/08/gutenberg-phase-2/\">The next phase of Gutenberg</a> is being decided, starting with widgets, which will make it easier for users to customize their sites. This will be done with features being added to the Gutenberg plugin.<br></p>\n\n\n\n<p>Want to get involved in develop the future of the WordPress dashboard? Follow <a href=\"https://make.wordpress.org/core\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>9 Projects for 2019</h2>\n\n\n\n<p>WordPress co-founder Matt Mullenweg outlined <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">9 projects for the year 2019</a>. These projects range from creating a block for navigations menus, porting all existing widgets into blocks, forming a triage team to tackle open issues on Trac and more.<br></p>\n\n\n\n<p>A <a href=\"https://make.wordpress.org/core/2018/12/17/status-update-porting-widgets-to-blocks/\">status update</a> for porting existing widgets to blocks has been posted by Mel Choyce.</p>\n\n\n\n<h2>WordCamp US 2019 Dates announced</h2>\n\n\n\n<p><a href=\"https://2019.us.wordcamp.org/2018/12/12/wordcamp-us-2019-announcing-our-dates/\">WordCamp US 2019</a> will be held during Nov. 1-3, 2019, in St Louis, Missouri. It will be one of our largest events of the year and will feature Matt Mullenweg’s annual State of the Word address.<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>v1.2.1 of the WordPress Coding Standards library <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.2.1\">has been released</a>.</li><li>A few revisions <a href=\"https://make.wordpress.org/core/2018/12/18/proposed-revisions-to-javascript-coding-standards/\">have been proposed</a> for the WordPress JavaScript coding standards.</li></ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 5.0.2 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/12/wordpress-5-0-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Dec 2018 23:47:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"5.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6509\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"WordPress 5.0.2 is now available! 5.0.2 is a maintenance release that addresses 73 bugs. The primary focus of this release was performance improvements in the block editor: the cumulated performance gains make it 330% faster for a post with 200 blocks. Here are a few of the additional highlights: 45 total Block Editor improvements are [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4695:\"\n<p>WordPress 5.0.2 is now available!</p>\n\n\n\n<p>5.0.2 is a maintenance release that addresses 73 bugs. The primary focus of this release was performance improvements in the block editor: the cumulated performance gains make it 330% faster for a post with 200 blocks.</p>\n\n\n\n<p>Here are a few of the additional highlights:</p>\n\n\n\n<ul><li>45 total Block Editor improvements are included (14 performance enhancements &amp; 31 bug fixes).</li><li><a href=\"https://core.trac.wordpress.org/query?component=Bundled+Theme&amp;milestone=5.0.2&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">17 Block Editor related bugs</a> have been fixed across all of the bundled themes.</li><li>Some <a href=\"https://core.trac.wordpress.org/query?component=I18N&amp;milestone=5.0.2&amp;col=id&amp;col=summary&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=milestone&amp;order=priority\">internationalization (i18n) issues</a> related to script loading have also been fixed.</li></ul>\n\n\n\n<p>For a full list of changes, please consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.0.2&amp;group=component\">list of tickets on Trac</a> or the <a href=\"https://core.trac.wordpress.org/log/branches/5.0?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=44339&amp;stop_rev=44183&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">changelog</a>.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/download/\">download WordPress 5.0.2</a> or visit Dashboard → Updates and click <em>Update Now</em>. Sites that support automatic background updates have already started to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.0.2:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/babaevan/\">Alexander Babaev</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/jdtrower/\">David Trower</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/edpittol/\">Eduardo Pittol</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/greg-raven/\">Greg Raven</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">gziolo</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">iCaleb</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/khleomix/\">khleomix</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff&nbsp;Paul</a>, <a href=\"https://profiles.wordpress.org/mihaivalentin/\">mihaivalentin</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/more/\"></a><a href=\"https://profiles.wordpress.org/mmaumio/\">Muntasir Mahmud</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pratikthink/\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/strategio/\">strategio</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/torontodigits/\">TorontoDigits</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/volodymyrkolesnykov/\">volodymyrkolesnykov</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/ze3kr/\">ze3kr</a>, and <a href=\"https://profiles.wordpress.org/mypacecreator/\">のむらけい</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6509\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordCamp US 2019 dates announced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/12/wordcamp-us-2019-dates-announced/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 19:47:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6496\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"Save the date! The next WordCamp US will be held on November 1-3, 2019, in beautiful St Louis, Missouri. One of our largest events of the year, WordCamp US is a great chance to connect with WordPress enthusiasts from around the world. This is also the event that features Matt Mullenweg&#8217;s annual State of the [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:705:\"\n<p>Save the date! <a href=\"https://2019.us.wordcamp.org/2018/12/12/wordcamp-us-2019-announcing-our-dates/\">The next WordCamp US</a> will be held on November 1-3, 2019, in beautiful <a href=\"https://2018.us.wordcamp.org/2018/06/15/matt-mullenweg-announces-st-louis-as-wordcamp-us-2019-2020-host-city/\">St Louis, Missouri</a>. One of our largest events of the year, WordCamp US is a great chance to connect with WordPress enthusiasts from around the world. This is also the event that features Matt Mullenweg&#8217;s annual <a href=\"https://www.youtube.com/watch?v=r5b-N2RmxS8\">State of the Word</a> address. </p>\n\n\n\n<p>We&#8217;d love to see you in St. Louis next year, so mark your calendar now!<br></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6496\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.0.1 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 03:13:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6498\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:374:\"WordPress 5.0.1 is now available. This is a security release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. Plugin authors are encouraged to read the 5.0.1 developer notes for information on backwards-compatibility. WordPress versions 5.0 and earlier are affected by the following bugs, which are fixed in version [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Ian Dunn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4799:\"\n<p>WordPress 5.0.1 is now available. This is a <strong>security release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n\n\n<p>Plugin authors are encouraged to <a href=\"https://make.wordpress.org/core/2018/12/13/backwards-compatibility-breaks-in-5-0-1/\">read the 5.0.1 developer notes</a> for information on backwards-compatibility.</p>\n\n\n\n<p>WordPress versions 5.0 and earlier are affected by the following bugs, which are fixed in version 5.0.1. Updated versions of WordPress 4.9 and older releases are also available, for users who have not yet updated to 5.0.</p>\n\n\n\n<ul><li><a href=\"https://ripstech.com\">Karim El Ouerghemmi</a> discovered that authors could alter meta data to delete files that they weren&#8217;t authorized to.</li><li>Simon Scannell of <a href=\"https://blog.ripstech.com\">RIPS Technologies</a> discovered that authors could create posts of unauthorized post types with specially crafted input.</li><li><a href=\"https://twitter.com/_s_n_t\">Sam Thomas</a> discovered that contributors could craft meta data in a way that resulted in PHP object injection. </li><li><a href=\"https://security-consulting.icu\">Tim Coen</a> discovered that contributors could edit new comments from higher-privileged users, potentially leading to a cross-site scripting vulnerability.</li><li><a href=\"https://security-consulting.icu\">Tim Coen</a> also discovered that specially crafted URL inputs could lead to a cross-site scripting vulnerability in some circumstances. WordPress itself was not affected, but plugins could be in some situations. </li><li><a href=\"https://yoast.com/\">Team Yoast</a> discovered that the user activation screen could be indexed by search engines in some uncommon configurations, leading to exposure of email addresses, and in some rare cases, default generated passwords.</li><li><a href=\"https://security-consulting.icu\">Tim Coen</a> and <a href=\"https://medium.com/websec\">Slavco</a> discovered that authors on Apache-hosted sites could upload specifically crafted files that bypass MIME verification, leading to a cross-site scripting vulnerability. </li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>, which gave us time to fix them before WordPress sites could be attacked.</p>\n\n\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 5.0.1</a>, or venture over to <code>Dashboard → Updates</code> and click <code>Update Now</code>. Sites that support automatic background updates are already beginning to update automatically.</p>\n\n\n\n<p>In addition to the security researchers mentioned above, thank you to everyone who contributed to WordPress 5.0.1:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron Campbell</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/vortfu\">Ben Bidner</a>, <a href=\"https://profiles.wordpress.org/barry\">Barry Abrahamson</a>, <a href=\"https://profiles.wordpress.org/chriscct7\">Chris Christoff</a>, <a href=\"https://profiles.wordpress.org/darthhexx/\">David Newman</a>, <a href=\"https://profiles.wordpress.org/apokalyptik\">Demitrious Kelly</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hnotess/\">Hannah Notess</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/herregroen\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mo Jangda</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, and <a href=\"https://twitter.com/p_valentyn\">Valentyn Pylypchuk</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6498\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:50:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n							\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordPress 5.0 “Bebo”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/news/2018/12/bebo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Dec 2018 19:28:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6328\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:342:\"Say Hello to the New Editor We’ve made some big upgrades to the editor. Our new block-based editor is the first step toward an exciting new future with a streamlined editing experience across your site. You’ll have more flexibility with how content is displayed, whether you are building your first site, revamping your blog, or [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:52:\"https://s.w.org/images/core/5.0/videos/add-block.mp4\";s:6:\"length\";s:7:\"8086508\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:48:\"https://s.w.org/images/core/5.0/videos/build.mp4\";s:6:\"length\";s:7:\"2623964\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:56940:\"\n<h2 style=\"text-align:center\">Say Hello to the New Editor</h2>\n\n\n\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\n<iframe class=\'youtube-player\' type=\'text/html\' width=\'632\' height=\'386\' src=\'https://www.youtube.com/embed/72xdCU__XCk?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe>\n</div></figure>\n\n\n\n<p>We’ve made some big upgrades to the editor. Our new block-based editor is the first step toward an exciting new future with a streamlined editing experience across your site. You’ll have more flexibility with how content is displayed, whether you are building your first site, revamping your blog, or write code for a living.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?fit=2400%2C1200&amp;ssl=1\" alt=\"\" class=\"wp-image-6331\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?w=2400&amp;ssl=1 2400w, https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?resize=300%2C150&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?resize=768%2C384&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?resize=1024%2C512&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/12/Gutenberg.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure></div>\n\n\n\n<h2 style=\"text-align:center\">Building with Blocks</h2>\n\n\n\n<p>The new block-based editor won’t change the way any of your content looks to your visitors. What it will do is let you insert any type of multimedia in a snap and rearrange to your heart’s content. Each piece of content will be in its own block; a distinct wrapper for easy maneuvering. If you’re more of an HTML and CSS sort of person, then the blocks won’t stand in your way. WordPress is here to simplify the process, not the outcome.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.0/videos/add-block.mp4\"></video></figure>\n\n\n\n<p>We have tons of blocks available by default, and more get added by the community every day. Here are a few of the blocks to help you get started:</p>\n\n\n\n<ul class=\"wp-block-gallery columns-4 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Paragraph.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6340\" data-link=\"https://wordpress.org/news/?attachment_id=6340\" class=\"wp-image-6340\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Paragraph.jpg?w=500&amp;ssl=1 500w, https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Paragraph.jpg?resize=150%2C150&amp;ssl=1 150w, https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Paragraph.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Paragraph</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Heading.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6341\" data-link=\"https://wordpress.org/news/?attachment_id=6341\" class=\"wp-image-6341\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Heading.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Heading.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Heading.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Heading</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Preformatted.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6342\" data-link=\"https://wordpress.org/news/?attachment_id=6342\" class=\"wp-image-6342\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Preformatted.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Preformatted.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Preformatted.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Preformatted</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Quote.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6343\" data-link=\"https://wordpress.org/news/?attachment_id=6343\" class=\"wp-image-6343\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Quote.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Quote.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Quote.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Quote</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Image.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6344\" data-link=\"https://wordpress.org/news/?attachment_id=6344\" class=\"wp-image-6344\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Image.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Image.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Image.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Image</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Gallery.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6345\" data-link=\"https://wordpress.org/news/?attachment_id=6345\" class=\"wp-image-6345\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Gallery.jpg?w=500&amp;ssl=1 500w, https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Gallery.jpg?resize=150%2C150&amp;ssl=1 150w, https://i2.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Gallery.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Gallery</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Cover-Image.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6346\" data-link=\"https://wordpress.org/news/?attachment_id=6346\" class=\"wp-image-6346\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Cover-Image.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Cover-Image.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Cover-Image.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Cover</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Video.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6347\" data-link=\"https://wordpress.org/news/?attachment_id=6347\" class=\"wp-image-6347\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Video.jpg?w=500&amp;ssl=1 500w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Video.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Video.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Video</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Audio.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6348\" data-link=\"https://wordpress.org/news/?attachment_id=6348\" class=\"wp-image-6348\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Audio.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Audio.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Audio.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Audio</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Column.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6349\" data-link=\"https://wordpress.org/news/?attachment_id=6349\" class=\"wp-image-6349\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Column.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Column.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Column.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Columns</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-File.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6350\" data-link=\"https://wordpress.org/news/?attachment_id=6350\" class=\"wp-image-6350\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-File.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-File.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-File.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>File</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Code.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6351\" data-link=\"https://wordpress.org/news/?attachment_id=6351\" class=\"wp-image-6351\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Code.jpg?w=500&amp;ssl=1 500w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Code.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Code.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Code</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-List.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6352\" data-link=\"https://wordpress.org/news/?attachment_id=6352\" class=\"wp-image-6352\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-List.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-List.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-List.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>List</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Button.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6353\" data-link=\"https://wordpress.org/news/?attachment_id=6353\" class=\"wp-image-6353\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Button.jpg?w=500&amp;ssl=1 500w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Button.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Button.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Button</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Embeds.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6354\" data-link=\"https://wordpress.org/news/?attachment_id=6354\" class=\"wp-image-6354\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Embeds.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Embeds.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-Embeds.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>Embeds</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-More.jpg?w=632&#038;ssl=1\" alt=\"\" data-id=\"6355\" data-link=\"https://wordpress.org/news/?attachment_id=6355\" class=\"wp-image-6355\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-More.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-More.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2018/12/Block-Icon-More.jpg?resize=300%2C300&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /><figcaption>More</figcaption></figure></li></ul>\n\n\n\n<h2 style=\"text-align:center\">Freedom to Build, Freedom to Write</h2>\n\n\n\n<p>This new editing experience provides a more consistent treatment of design as well as content. If you’re building client sites, you can create reusable blocks. This lets your clients add new content anytime, while still maintaining a consistent look and feel.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.0/videos/build.mp4\"></video></figure>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2 style=\"text-align:center\">A Stunning New Default Theme</h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?fit=2400%2C1600&amp;ssl=1\" alt=\"\" class=\"wp-image-6358\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?w=2400&amp;ssl=1 2400w, https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?resize=1024%2C683&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure></div>\n\n\n\n<p>Introducing Twenty Nineteen, a new default theme that shows off the power of the new editor.</p>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/12/block-editor-1024x683.jpg?resize=632%2C422&#038;ssl=1\" alt=\"\" class=\"wp-image-6359\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2018/12/block-editor.jpg?resize=1024%2C683&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2018/12/block-editor.jpg?resize=300%2C200&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/12/block-editor.jpg?resize=768%2C512&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/12/block-editor.jpg?w=1200&amp;ssl=1 1200w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_9\">Designed for the block editor</h3>\n\n\n\n<p>Twenty Nineteen features custom styles for the blocks available by default in 5.0. It makes extensive use of editor styles throughout the theme. That way, what you create in your content editor is what you see on the front of your site.<br></p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/typography-1.jpg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-6427\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/typography-1.jpg?w=900&amp;ssl=1 900w, https://i1.wp.com/wordpress.org/news/files/2018/12/typography-1.jpg?resize=300%2C200&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/12/typography-1.jpg?resize=768%2C512&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_18\">Simple, type-driven layout</h3>\n\n\n\n<p>Featuring ample whitespace, and modern sans-serif headlines paired with classic serif body text, Twenty Nineteen is built to be beautiful on the go. It uses system fonts to increase loading speed. No more long waits on slow networks!</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/12/twenty-nineteen-versatile.gif?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-6361\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_24\">Versatile design for all sites</h3>\n\n\n\n<p>Twenty Nineteen is designed to work for a wide variety of use cases. Whether you’re running a photo blog, launching a new business, or supporting a non-profit, Twenty Nineteen is flexible enough to fit your needs.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color\" href=\"https://wordpress.org/themes/twentynineteen/\" style=\"color:#ffffff\">Give Twenty Nineteen a try</a></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2 style=\"text-align:center\">Developer Happiness</h2>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Protect.jpg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-6362\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Protect.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Protect.jpg?resize=300%2C210&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_34\">Protect</h3>\n\n\n\n<p>Blocks provide a comfortable way for users to change content directly, while also ensuring the content structure cannot be easily disturbed by accidental code edits. This allows the developer to control the output, building polished and semantic markup that is preserved through edits and not easily broken.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Compose.jpg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-6363\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2018/12/Compose.jpg?w=500&amp;ssl=1 500w, https://i2.wp.com/wordpress.org/news/files/2018/12/Compose.jpg?resize=300%2C210&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_39\">Compose</h3>\n\n\n\n<p>Take advantage of a wide collection of APIs and interface components to easily create blocks with intuitive controls for your clients. Utilizing these components not only speeds up development work but also provide a more consistent, usable, and accessible interface to all users.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Create.jpg?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-6364\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Create.jpg?w=500&amp;ssl=1 500w, https://i1.wp.com/wordpress.org/news/files/2018/12/Create.jpg?resize=300%2C210&amp;ssl=1 300w\" sizes=\"(max-width: 500px) 100vw, 500px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 id=\"mce_45\">Create</h3>\n\n\n\n<p>The new block paradigm opens up a path of exploration and imagination when it comes to solving user needs. With the unified block insertion flow, it’s easier for your clients and customers to find and use blocks for all types of content. Developers can focus on executing their vision and providing rich editing experiences, rather than fussing with difficult APIs.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color\" href=\"https://wordpress.org/gutenberg/handbook/\" style=\"color:#ffffff\">Learn how to get started</a></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2 style=\"text-align:center\">Keep it Classic</h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?fit=2400%2C1130&amp;ssl=1\" alt=\"\" class=\"wp-image-6365\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?w=2400&amp;ssl=1 2400w, https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?resize=300%2C141&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?resize=768%2C362&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?resize=1024%2C482&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/12/Classic.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure></div>\n\n\n\n<p>Prefer to stick with the familiar Classic Editor? No problem! Support for the Classic Editor plugin will remain in WordPress through 2021.</p>\n\n\n\n<p>The Classic Editor plugin restores the previous WordPress editor and the Edit Post screen. It lets you keep using plugins that extend it, add old-style meta boxes, or otherwise depend on the previous editor. To install, visit your plugins page and click the “Install Now” button next to “Classic Editor”. After the plugin finishes installing, click “Activate”. That’s it!</p>\n\n\n\n<p>Note to users of assistive technology: if you experience usability issues with the block editor, we recommend you continue to use the Classic Editor.</p>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color\" href=\"https://wordpress.org/plugins/classic-editor/\" style=\"color:#ffffff\">Check out the Classic Editor</a></div>\n\n\n\n<p>This release is named in homage to the pioneering Cuban jazz musician <a href=\"https://en.wikipedia.org/wiki/Bebo_Vald%C3%A9s\">Bebo Valdés</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>The Squad</h2>\n\n\n\n<p>This release was led by <a href=\"http://ma.tt/\">Matt Mullenweg</a>, along with co-leads <a href=\"https://www.allancole.com/\">Allan Cole</a>, <a href=\"http://antpb.com/\">Anthony Burchell</a>, <a href=\"https://pento.net/\">Gary Pendergast</a>, <a href=\"https://josepha.blog/\">Josepha Haden Chomphosy</a>, <a href=\"https://laurel.blog/\">Laurel Fulford</a>, <a href=\"https://yoast.com/about-us/team/omar-reiss/\">Omar Reiss</a>, <a href=\"https://danielbachhuber.com/\">Daniel Bachhuber</a>, <a href=\"https://matiasventura.com/\">Matías Ventura</a>, <a href=\"https://lamda.blog/\">Miguel Fonseca</a>, <a href=\"https://tam.blog/\">Tammie Lister</a>, <a href=\"https://tofumatt.com/\">Matthew Riley MacPherson</a>. They were ably assisted by the following fabulous folks. There were 423 contributors with props in this release. Pull up some Bebo Valdés on your music service of choice, and check out some of their profiles:</p>\n\n\n<a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdulwahab610\">Abdul Wahab</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan\">Abdullah Ramzan</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afraithe\">afraithe</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ahmadawais\">ahmadawais</a>, <a href=\"https://profiles.wordpress.org/airathalitov\">Airat Halitov</a>, <a href=\"https://profiles.wordpress.org/ajitbohra\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/albertomedina\">albertomedina</a>, <a href=\"https://profiles.wordpress.org/aldavigdis\">aldavigdis</a>, <a href=\"https://profiles.wordpress.org/akirk\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/alexsanford1\">Alex Sanford</a>, <a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/babaevan\">Alexander Babaev</a>, <a href=\"https://profiles.wordpress.org/xyfi\">Alexander Botteram</a>, <a href=\"https://profiles.wordpress.org/alexis\">alexis</a>, <a href=\"https://profiles.wordpress.org/alexislloyd\">Alexis Lloyd</a>, <a href=\"https://profiles.wordpress.org/arush\">Amanda Rush</a>, <a href=\"https://profiles.wordpress.org/amedina\">amedina</a>, <a href=\"https://profiles.wordpress.org/nosolosw\">Andr&#233;s</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/euthelup\">Andrei Lupu</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/aduth\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/sumobi\">Andrew Munro</a>, <a href=\"https://profiles.wordpress.org/anevins\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/androb\">Andrew Roberts</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/andrewserong\">andrewserong</a>, <a href=\"https://profiles.wordpress.org/apeatling\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/ameeker\">Angie Meeker</a>, <a href=\"https://profiles.wordpress.org/annaharrison\">Anna Harrison</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/arnaudban\">ArnaudBan</a>, <a href=\"https://profiles.wordpress.org/arshidkv12\">Arshid</a>, <a href=\"https://profiles.wordpress.org/aprakasa\">Arya Prakasa</a>, <a href=\"https://profiles.wordpress.org/artisticasad\">Asad</a>, <a href=\"https://profiles.wordpress.org/mrasharirfan\">Ashar Irfan</a>, <a href=\"https://profiles.wordpress.org/asvinballoo\">Asvin Balloo</a>, <a href=\"https://profiles.wordpress.org/atanasangelovdev\">Atanas Angelov</a>, <a href=\"https://profiles.wordpress.org/b-07\">Bappi</a>, <a href=\"https://profiles.wordpress.org/bcolumbia\">bcolumbia</a>, <a href=\"https://profiles.wordpress.org/belcherj\">belcherj</a>, <a href=\"https://profiles.wordpress.org/blowery\">Ben Lowery</a>, <a href=\"https://profiles.wordpress.org/caxco93\">Benjamin Eyzaguirre</a>, <a href=\"https://profiles.wordpress.org/benjamin_zekavica\">Benjamin Zekavica</a>, <a href=\"https://profiles.wordpress.org/benlk\">benlk</a>, <a href=\"https://profiles.wordpress.org/kau-boy\">Bernhard Kau</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/betsela\">betsela</a>, <a href=\"https://profiles.wordpress.org/bhargavmehta\">Bhargav Mehta</a>, <a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bobbingwide\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/boblinthorst\">boblinthorst</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/bpayton\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/brentswisher\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/technosiren\">Brianna Privett</a>, <a href=\"https://profiles.wordpress.org/briannaorg\">briannaorg</a>, <a href=\"https://profiles.wordpress.org/bronsonquick\">Bronson Quick</a>, <a href=\"https://profiles.wordpress.org/bandonrandon\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/burhandodhy\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/icaleb\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/cantothemes\">CantoThemes</a>, <a href=\"https://profiles.wordpress.org/cathibosco\">cathibosco</a>, <a href=\"https://profiles.wordpress.org/chetan200891\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chetansatasiya\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/ketuchetan\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisl27\">Chris Lloyd</a>, <a href=\"https://profiles.wordpress.org/crunnells\">Chris Runnells</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriskmnds\">chriskmnds</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/christophherr\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/claudiosanches\">Claudio Sanches</a>, <a href=\"https://profiles.wordpress.org/coderkevin\">coderkevin</a>, <a href=\"https://profiles.wordpress.org/copons\">Copons</a>, <a href=\"https://profiles.wordpress.org/courtney0burton\">courtney0burton</a>, <a href=\"https://profiles.wordpress.org/mitogh\">Crisoforo Gaspar</a>, <a href=\"https://profiles.wordpress.org/littlebigthing\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/csabotta\">csabotta</a>, <a href=\"https://profiles.wordpress.org/danieltj\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/talldanwp\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/danielhw\">danielhw</a>, <a href=\"https://profiles.wordpress.org/daniloercoli\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/dannycooper\">Danny Cooper</a>, <a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/davemoran118\">davemoran118</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dcavins\">David Cavins</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David Kennedy</a>, <a href=\"https://profiles.wordpress.org/dryanpress\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/davidsword\">David Sword</a>, <a href=\"https://profiles.wordpress.org/jdtrower\">David Trower</a>, <a href=\"https://profiles.wordpress.org/folletto\">Davide \'Folletto\' Casali</a>, <a href=\"https://profiles.wordpress.org/davidherrera\">davidherrera</a>, <a href=\"https://profiles.wordpress.org/davisshaver\">Davis</a>, <a href=\"https://profiles.wordpress.org/dciso\">dciso</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dsmart\">Derek Smart</a>, <a href=\"https://profiles.wordpress.org/designsimply\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dlocc\">Devin Walker</a>, <a href=\"https://profiles.wordpress.org/deviodigital\">Devio Digital</a>, <a href=\"https://profiles.wordpress.org/dfangstrom\">dfangstrom</a>, <a href=\"https://profiles.wordpress.org/dhanendran\">Dhanendran</a>, <a href=\"https://profiles.wordpress.org/diegoliv\">Diego de Oliveira</a>, <a href=\"https://profiles.wordpress.org/diegoreymendez\">diegoreymendez</a>, <a href=\"https://profiles.wordpress.org/dingo_bastard\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/dixitadusara\">Dixita Dusara Gohil</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donnapep\">Donna Peplinskie</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dsawardekar\">dsawardekar</a>, <a href=\"https://profiles.wordpress.org/dsifford\">dsifford</a>, <a href=\"https://profiles.wordpress.org/duanestorey\">Duane Storey</a>, <a href=\"https://profiles.wordpress.org/edpittol\">Eduardo Pittol</a>, <a href=\"https://profiles.wordpress.org/chopinbach\">Edwin Cromley</a>, <a href=\"https://profiles.wordpress.org/ehg\">ehg</a>, <a href=\"https://profiles.wordpress.org/electricfeet\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/eliorivero\">Elio Rivero</a>, <a href=\"https://profiles.wordpress.org/epointal\">Elisabeth Pointal</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Ella Iseulde Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/elrae\">elrae</a>, <a href=\"https://profiles.wordpress.org/enodekciw\">enodekciw</a>, <a href=\"https://profiles.wordpress.org/ephoxjames\">ephoxjames</a>, <a href=\"https://profiles.wordpress.org/ephoxmogran\">ephoxmogran</a>, <a href=\"https://profiles.wordpress.org/sewmyheadon\">Eric Amundson</a>, <a href=\"https://profiles.wordpress.org/ericnmurphy\">ericnmurphy</a>, <a href=\"https://profiles.wordpress.org/etoledom\">etoledom</a>, <a href=\"https://profiles.wordpress.org/circlecube\">Evan Mullins</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy\">fabiankaegy</a>, <a href=\"https://profiles.wordpress.org/fabs_pim\">fabs_pim</a>, <a href=\"https://profiles.wordpress.org/faishal\">Faishal</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/floriansimeth\">Florian Simeth</a>, <a href=\"https://profiles.wordpress.org/foobar4u\">foobar4u</a>, <a href=\"https://profiles.wordpress.org/foreverpinetree\">foreverpinetree</a>, <a href=\"https://profiles.wordpress.org/frank-klein\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/fuyuko\">fuyuko</a>, <a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/doomwaxer\">Gary Thayer</a>, <a href=\"https://profiles.wordpress.org/garyjones\">garyjones</a>, <a href=\"https://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/babbardel\">George Olaru</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/georgeh\">georgeh</a>, <a href=\"https://profiles.wordpress.org/kloon\">Gerhard Potgieter</a>, <a href=\"https://profiles.wordpress.org/gnif\">gnif</a>, <a href=\"https://profiles.wordpress.org/goldsounds\">goldsounds</a>, <a href=\"https://profiles.wordpress.org/grappler\">Grappler</a>, <a href=\"https://profiles.wordpress.org/greg-raven\">Greg Raven</a>, <a href=\"https://profiles.wordpress.org/gziolo\">Grzegorz Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/bordoni\">Gustavo Bordoni</a>, <a href=\"https://profiles.wordpress.org/gwwar\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hardeepasrani\">Hardeep Asrani</a>, <a href=\"https://profiles.wordpress.org/hblackett\">hblackett</a>, <a href=\"https://profiles.wordpress.org/helen\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/luehrsen\">Hendrik Luehrsen</a>, <a href=\"https://profiles.wordpress.org/herbmiller\">herbmiller</a>, <a href=\"https://profiles.wordpress.org/herregroen\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/hugobaeta\">Hugo Baeta</a>, <a href=\"https://profiles.wordpress.org/hypest\">hypest</a>, <a href=\"https://profiles.wordpress.org/ianbelanger\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianstewart\">ianstewart</a>, <a href=\"https://profiles.wordpress.org/idpokute\">idpokute</a>, <a href=\"https://profiles.wordpress.org/igorsch\">Igor</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/imonly_ik\">Imran Khalid</a>, <a href=\"https://profiles.wordpress.org/intronic\">intronic</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/ireneyoast\">Irene Strikkers</a>, <a href=\"https://profiles.wordpress.org/ismailelkorchi\">Ismail El Korchi</a>, <a href=\"https://profiles.wordpress.org/israelshmueli\">israelshmueli</a>, <a href=\"https://profiles.wordpress.org/jd55\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jakept\">Jacob Peattie</a>, <a href=\"https://profiles.wordpress.org/jagnew\">jagnew</a>, <a href=\"https://profiles.wordpress.org/jahvi\">jahvi</a>, <a href=\"https://profiles.wordpress.org/jnylen0\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jamestryon\">jamestryon</a>, <a href=\"https://profiles.wordpress.org/jamiehalvorson\">jamiehalvorson</a>, <a href=\"https://profiles.wordpress.org/jdembowski\">Jan Dembowski</a>, <a href=\"https://profiles.wordpress.org/janalwin\">janalwin</a>, <a href=\"https://profiles.wordpress.org/jaswrks\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/octalmage\">Jason Stallings</a>, <a href=\"https://profiles.wordpress.org/yingling017\">Jason Yingling</a>, <a href=\"https://profiles.wordpress.org/vengisss\">Javier Villanueva</a>, <a href=\"https://profiles.wordpress.org/jhoffm34\">Jay Hoffmann</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jblz\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jipmoors\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">JJJ</a>, <a href=\"https://profiles.wordpress.org/jobthomas\">Job</a>, <a href=\"https://profiles.wordpress.org/sephsekla\">Joe Bailey-Roberts</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joemaller\">joemaller</a>, <a href=\"https://profiles.wordpress.org/joen\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/j-falk\">Johan Falk</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnny5\">John Godley</a>, <a href=\"https://profiles.wordpress.org/johndyer\">johndyer</a>, <a href=\"https://profiles.wordpress.org/johnpixle\">JohnPixle</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0\">johnwatkins0</a>, <a href=\"https://profiles.wordpress.org/jomurgel\">jomurgel</a>, <a href=\"https://profiles.wordpress.org/jonsurrell\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/ieatwebsites\">Jose Fremaint</a>, <a href=\"https://profiles.wordpress.org/shelob9\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/jvisick77\">Josh Visick</a>, <a href=\"https://profiles.wordpress.org/joshuawold\">Joshua Wold</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf\">jrf</a>, <a href=\"https://profiles.wordpress.org/jryancard\">jryancard</a>, <a href=\"https://profiles.wordpress.org/jsnajdr\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/julienmelissas\">JulienMelissas</a>, <a href=\"https://profiles.wordpress.org/kopepasah\">Justin Kopepasah</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/kallehauge\">Kallehauge</a>, <a href=\"https://profiles.wordpress.org/kalpshit\">KalpShit Akabari</a>, <a href=\"https://profiles.wordpress.org/codebykat\">Kat Hagan</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kevinwhoffman\">Kevin Hoffman</a>, <a href=\"https://profiles.wordpress.org/khleomix\">khleomix</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/kluny\">kluny</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/krutidugade\">krutidugade</a>, <a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/notlaura\">Lara Schenck</a>, <a href=\"https://profiles.wordpress.org/leahkoerper\">leahkoerper</a>, <a href=\"https://profiles.wordpress.org/lloyd\">lloyd</a>, <a href=\"https://profiles.wordpress.org/loicblascos\">Lo&#239;c Blascos</a>, <a href=\"https://profiles.wordpress.org/lucasstark\">Lucas Stark</a>, <a href=\"https://profiles.wordpress.org/lucasrolff\">LucasRolff</a>, <a href=\"https://profiles.wordpress.org/luigipulcini\">luigipulcini</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/lucaskowalski\">Luke Kowalski</a>, <a href=\"https://profiles.wordpress.org/lukepettway\">Luke Pettway</a>, <a href=\"https://profiles.wordpress.org/luminus\">Luminus</a>, <a href=\"https://profiles.wordpress.org/lynneux\">lynneux</a>, <a href=\"https://profiles.wordpress.org/macbookandrew\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/maedahbatool\">Maedah Batool</a>, <a href=\"https://profiles.wordpress.org/mahdiyazdani\">Mahdi Yazdani</a>, <a href=\"https://profiles.wordpress.org/mahmoudsaeed\">mahmoudsaeed</a>, <a href=\"https://profiles.wordpress.org/travel_girl\">Maja Benke</a>, <a href=\"https://profiles.wordpress.org/mkaz\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/tyxla\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/marina_wp\">marina_wp</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mariusvw\">mariusvw</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mapk\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/vindl\">Marko Andrijasevic</a>, <a href=\"https://profiles.wordpress.org/martinlugton\">martinlugton</a>, <a href=\"https://profiles.wordpress.org/m-e-h\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/mathiu\">mathiu</a>, <a href=\"https://profiles.wordpress.org/webdevmattcrom\">Matt Cromwell</a>, <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattgeri\">MattGeri</a>, <a href=\"https://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/maurobringolf\">maurobringolf</a>, <a href=\"https://profiles.wordpress.org/maximebj\">Maxime BERNARD-JACQUET</a>, <a href=\"https://profiles.wordpress.org/mayukojpn\">Mayo Moriyama</a>, <a href=\"https://profiles.wordpress.org/meetjey\">meetjey</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mendezcode\">mendezcode</a>, <a href=\"https://profiles.wordpress.org/wpscholar\">Micah Wood</a>, <a href=\"https://profiles.wordpress.org/woodent\">Micah Wood</a>, <a href=\"https://profiles.wordpress.org/mdawaffe\">Michael Adams (mdawaffe)</a>, <a href=\"https://profiles.wordpress.org/michaelhull\">Michael Hull</a>, <a href=\"https://profiles.wordpress.org/mnelson4\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mizejewski\">Michele Mizejewski</a>, <a href=\"https://profiles.wordpress.org/jbpaul17\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/mihaivalentin\">mihaivalentin</a>, <a href=\"https://profiles.wordpress.org/stubgo\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mihai2u\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mike-haydon-swo\">Mike Haydon</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeselander\">Mike Selander</a>, <a href=\"https://profiles.wordpress.org/mikehaydon\">mikehaydon</a>, <a href=\"https://profiles.wordpress.org/mikeyarce\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/gonzomir\">Milen Petrinski - Gonzo</a>, <a href=\"https://profiles.wordpress.org/milesdelliott\">milesdelliott</a>, <a href=\"https://profiles.wordpress.org/mimo84\">mimo84</a>, <a href=\"https://profiles.wordpress.org/0mirka00\">mirka</a>, <a href=\"https://profiles.wordpress.org/mmtr86\">mmtr86</a>, <a href=\"https://profiles.wordpress.org/boemedia\">Monique Dubbelman</a>, <a href=\"https://profiles.wordpress.org/mor10\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/mostafas1990\">Mostafa Soufi</a>, <a href=\"https://profiles.wordpress.org/motleydev\">motleydev</a>, <a href=\"https://profiles.wordpress.org/mpheasant\">mpheasant</a>, <a href=\"https://profiles.wordpress.org/mrmadhat\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/mrwweb\">mrwweb</a>, <a href=\"https://profiles.wordpress.org/msdesign21\">msdesign21</a>, <a href=\"https://profiles.wordpress.org/mtias\">mtias</a>, <a href=\"https://profiles.wordpress.org/desideveloper\">Muhammad Irfan</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munirkamal\">munirkamal</a>, <a href=\"https://profiles.wordpress.org/mmaumio\">Muntasir Mahmud</a>, <a href=\"https://profiles.wordpress.org/mzorz\">mzorz</a>, <a href=\"https://profiles.wordpress.org/nagayama\">nagayama</a>, <a href=\"https://profiles.wordpress.org/nfmohit\">Nahid F. Mohit</a>, <a href=\"https://profiles.wordpress.org/nao\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/napy84\">napy84</a>, <a href=\"https://profiles.wordpress.org/nateconley\">nateconley</a>, <a href=\"https://profiles.wordpress.org/nativeinside\">Native Inside</a>, <a href=\"https://profiles.wordpress.org/greatislander\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/buzztone\">Neil Murray</a>, <a href=\"https://profiles.wordpress.org/nicbertino\">nic.bertino</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/notnownikki\">Nicola Heald</a>, <a href=\"https://profiles.wordpress.org/nielslange\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikschavan\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nbachiyski\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/nitrajka\">nitrajka</a>, <a href=\"https://profiles.wordpress.org/njpanderson\">njpanderson</a>, <a href=\"https://profiles.wordpress.org/nshki\">nshki</a>, <a href=\"https://profiles.wordpress.org/hideokamoto\">Okamoto Hidetaka</a>, <a href=\"https://profiles.wordpress.org/oskosk\">oskosk</a>, <a href=\"https://profiles.wordpress.org/panchen\">panchen</a>, <a href=\"https://profiles.wordpress.org/pareshradadiya-1\">Paresh Radadiya</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pauldechov\">Paul Dechov</a>, <a href=\"https://profiles.wordpress.org/paulstonier\">Paul Stonier</a>, <a href=\"https://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"https://profiles.wordpress.org/pedromendonca\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pglewis\">pglewis</a>, <a href=\"https://profiles.wordpress.org/tyrannous\">Philipp Bammes</a>, <a href=\"https://profiles.wordpress.org/piersb\">piersb</a>, <a href=\"https://profiles.wordpress.org/wizzard_\">Pieter Daalder</a>, <a href=\"https://profiles.wordpress.org/pilou69\">pilou69</a>, <a href=\"https://profiles.wordpress.org/delawski\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/poena\">poena</a>, <a href=\"https://profiles.wordpress.org/postphotos\">postphotos</a>, <a href=\"https://profiles.wordpress.org/potbot\">potbot</a>, <a href=\"https://profiles.wordpress.org/prtksxna\">Prateek Saxena</a>, <a href=\"https://profiles.wordpress.org/pratikthink\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/presskopp\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/psealock\">psealock</a>, <a href=\"https://profiles.wordpress.org/ptasker\">ptasker</a>, <a href=\"https://profiles.wordpress.org/rachelmcr\">Rachel</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rahmohn\">Rahmohn</a>, <a href=\"https://profiles.wordpress.org/rahmon\">Rahmon</a>, <a href=\"https://profiles.wordpress.org/rahulsprajapati\">Rahul Prajapati</a>, <a href=\"https://profiles.wordpress.org/rakshans1\">rakshans1</a>, <a href=\"https://profiles.wordpress.org/superpoincare\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramonopoly\">ramonopoly</a>, <a href=\"https://profiles.wordpress.org/lamosty\">Rastislav Lamos</a>, <a href=\"https://profiles.wordpress.org/revgeorge\">revgeorge</a>, <a href=\"https://profiles.wordpress.org/youknowriad\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/richtabor\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/richsalvucci\">richsalvucci</a>, <a href=\"https://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>, <a href=\"https://profiles.wordpress.org/riddhiehta02\">Riddhi Mehta</a>, <a href=\"https://profiles.wordpress.org/rileybrook\">rileybrook</a>, <a href=\"https://profiles.wordpress.org/noisysocks\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/sanchothefat\">Robert O\'Rourke</a>, <a href=\"https://profiles.wordpress.org/robertsky\">robertsky</a>, <a href=\"https://profiles.wordpress.org/_dorsvenabili\">Rocio Valdivia</a>, <a href=\"https://profiles.wordpress.org/rohittm\">Rohit Motwani</a>, <a href=\"https://profiles.wordpress.org/magicroundabout\">Ross Wintle</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/ryo511\">ryo511</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>, <a href=\"https://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/smyoon315\">Sang-Min Yoon</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/scottmweaver\">Scott Weaver</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sergioestevao\">SergioEstevao</a>, <a href=\"https://profiles.wordpress.org/azchughtai\">Shahjehan Ali</a>, <a href=\"https://profiles.wordpress.org/shaileesheth\">Shailee Sheth</a>, <a href=\"https://profiles.wordpress.org/sharaz\">Sharaz Shahid</a>, <a href=\"https://profiles.wordpress.org/giventofly76\">Shaun sc</a>, <a href=\"https://profiles.wordpress.org/shaunandrews\">shaunandrews</a>, <a href=\"https://profiles.wordpress.org/shooper\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/shenkj\">shenkj</a>, <a href=\"https://profiles.wordpress.org/sikander\">sikander</a>, <a href=\"https://profiles.wordpress.org/pross\">Simon Prosser</a>, <a href=\"https://profiles.wordpress.org/siriokun\">siriokun</a>, <a href=\"https://profiles.wordpress.org/sirjonathan\">sirjonathan</a>, <a href=\"https://profiles.wordpress.org/sirreal\">sirreal</a>, <a href=\"https://profiles.wordpress.org/sisanu\">Sisanu</a>, <a href=\"https://profiles.wordpress.org/skorasaurus\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/butimnoexpert\">Slushman</a>, <a href=\"https://profiles.wordpress.org/ssousa\">Sofia Sousa</a>, <a href=\"https://profiles.wordpress.org/somtijds\">SOMTIJDS</a>, <a href=\"https://profiles.wordpress.org/soean\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spocke\">spocke</a>, <a href=\"https://profiles.wordpress.org/stagger-lee\">Stagger Lee</a>, <a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stevehenty\">Steve Henty</a>, <a href=\"https://profiles.wordpress.org/charlestonsw\">Store Locator Plus</a>, <a href=\"https://profiles.wordpress.org/strategio\">strategio</a>, <a href=\"https://profiles.wordpress.org/stuartfeldt\">stuartfeldt</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/tacrapo\">tacrapo</a>, <a href=\"https://profiles.wordpress.org/talldan\">talldan</a>, <a href=\"https://profiles.wordpress.org/tammie_l\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/themeroots\">ThemeRoots</a>, <a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/hedgefield\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timgardner\">timgardner</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tmatsuur\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tlxo\">Toni Laakso</a>, <a href=\"https://profiles.wordpress.org/skithund\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/tobifjellner\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/toro_unit\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torontodigits\">TorontoDigits</a>, <a href=\"https://profiles.wordpress.org/mirucon\">Toshihiro Kanai</a>, <a href=\"https://profiles.wordpress.org/itowhid06\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/travislopes\">Travis Lopes</a>, <a href=\"https://profiles.wordpress.org/truongwp\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tjfunke001\">Tunji Ayoola</a>, <a href=\"https://profiles.wordpress.org/twoelevenjay\">twoelevenjay</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/vishalkakadiya\">Vishal Kakadiya</a>, <a href=\"https://profiles.wordpress.org/vtrpldn\">Vitor Paladini</a>, <a href=\"https://profiles.wordpress.org/volodymyrkolesnykov\">volodymyrkolesnykov</a>, <a href=\"https://profiles.wordpress.org/walterebert\">Walter Ebert</a>, <a href=\"https://profiles.wordpress.org/warmarks\">warmarks</a>, <a href=\"https://profiles.wordpress.org/webmandesign\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/websupporter\">websupporter</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton\">williampatton</a>, <a href=\"https://profiles.wordpress.org/willybahuaud\">Willy Bahuaud</a>, <a href=\"https://profiles.wordpress.org/yahil\">Yahil Madakiya</a>, <a href=\"https://profiles.wordpress.org/yingles\">yingles</a>, <a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/fierevere\">Yui</a>, <a href=\"https://profiles.wordpress.org/youthkee\">Yusuke Takahashi</a>, <a href=\"https://profiles.wordpress.org/ze3kr\">ze3kr</a>, <a href=\"https://profiles.wordpress.org/zebulan\">zebulan</a>, <a href=\"https://profiles.wordpress.org/ziyaddin\">Ziyaddin Sadigov</a>, and <a href=\"https://profiles.wordpress.org/mypacecreator\">のむらけい (Kei Nomura)</a>.\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.0. Their efforts bring WordPress 5.0 fully translated to 37 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want to follow along or help out, check out <a href=\"https://make.wordpress.org/\">Make WordPress</a> and our <a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n\n\n\n<p>Thanks for choosing WordPress!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6328\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n		\n				\n		\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.0 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2018/12/wordpress-5-0-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Dec 2018 07:07:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"5.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6322\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The third release candidate for WordPress 5.0 is now available! WordPress 5.0 will be released on December 6, 2018. This is a big release and needs&#160;your&#160;help—if you haven’t tried 5.0 yet, now is the time! To test WordPress 5.0, you can use the&#160;WordPress Beta Tester&#160;plugin or you can&#160;download the release candidate here&#160;(zip). For details about [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2795:\"\n<p>The third release candidate for WordPress 5.0 is now available!</p>\n\n\n\n<p><strong>WordPress 5.0 will be released on </strong><a href=\"https://make.wordpress.org/core/2018/12/04/new-5-0-target-date/\"><strong>December 6, 2018</strong></a>. This is a big release and needs&nbsp;<em>your</em>&nbsp;help—if you haven’t tried 5.0 yet, now is the time!</p>\n\n\n\n<p>To test WordPress 5.0, you can use the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin or you can&nbsp;<a href=\"https://wordpress.org/wordpress-5.0-RC3.zip\">download the release candidate here</a>&nbsp;(zip).</p>\n\n\n\n<p>For details about what to expect in WordPress 5.0, please see the&nbsp;<a href=\"https://wordpress.org/news/2018/11/wordpress-5-0-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>This release candidate includes a fix for some scripts not loading on subdirectory installs (<a href=\"https://core.trac.wordpress.org/ticket/45469\">#45469</a>), and user locale settings not being loaded in the block editor (<a href=\"https://core.trac.wordpress.org/ticket/45465\">#45465</a>). Twenty Nineteen has also had a couple of minor tweaks.</p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.0 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.0. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release. An in-depth field guide to developer-focused changes is coming soon on the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>. In the meantime, you can review the&nbsp;<a href=\"https://make.wordpress.org/core/tag/5.0+dev-notes/\">developer notes for 5.0</a>.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a>&nbsp;</p>\n\n\n\n<p>If you think you’ve found a bug, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>WordPress Five Point Oh<br>Is just a few days away!<br>Nearly party time!</em> <img src=\"https://s.w.org/images/core/emoji/11.2.0/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6322\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: November 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2018/12/the-month-in-wordpress-november-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Dec 2018 17:43:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6318\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"WordPress 5.0 is almost ready for release, including an all-new content editing experience. Volunteers all across the project are gearing up for the launch and making sure everything is ready. Read on to find out what&#8217;s been happening and how you can get involved. WordPress 5.0 Close to Launch The release date for WordPress 5.0 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6593:\"\n<p>WordPress 5.0 is almost ready for release, including an all-new content editing experience. Volunteers all across the project are gearing up for the launch and making sure everything is ready. Read on to find out what&#8217;s been happening and how you can get involved.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.0 Close to Launch</h2>\n\n\n\n<p>The release date for WordPress 5.0 has not yet been set, but the second release candidate (RC) <a href=\"https://wordpress.org/news/2018/11/wordpress-5-0-rc2/\">is now available</a>. The final release date will be determined based on feedback and testing of this RC. The Core development team has been posting <a href=\"https://make.wordpress.org/core/2018/12/03/5-0-gutenberg-status-update-dec-3/\">daily updates</a> on the progress of their work on v5.0, with the number of open issues for this release decreasing every day.<br></p>\n\n\n\n<p>The primary feature of this release is <a href=\"https://wordpress.org/gutenberg/\">the new editor</a> that will become the default WordPress experience going forward. A number of people have been seeking more direct feedback from the release leads about the progress of this release, which <a href=\'https://profiles.wordpress.org/matt/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>matt</a> has facilitated by hosting <a href=\"https://make.wordpress.org/core/2018/11/29/gutenberg-5-0-listening-office-hours/\">one-to-one discussions</a> with anyone in the community who wanted to talk with him about it. He has also published <a href=\"https://ma.tt/2018/11/a-gutenberg-faq/\">an extended FAQ</a> covering many of the questions people have been asking.<br></p>\n\n\n\n<p>Alongside the development of the new editor, the Mobile team has been working hard to bring the WordPress mobile apps up to speed. They plan to make a beta version available <a href=\"https://make.wordpress.org/mobile/2018/11/15/gutenberg-in-the-apps-what-to-expect/\">in February 2019</a>.<br></p>\n\n\n\n<p>Want to get involved in developing WordPress Core in 5.0 and beyond? Follow <a href=\"https://make.wordpress.org/core\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>New WordPress Support Platform Goes Live</h2>\n\n\n\n<p>WordPress user documentation has long been hosted on the <a href=\"https://codex.wordpress.org/\">WordPress Codex</a>, but for the past couple of years an ambitious project has been underway to move that content to a freshly-built WordPress-based platform. This project, named “HelpHub,” is now live and <a href=\"https://wordpress.org/support/\">the official home of WordPress Support</a>.<br></p>\n\n\n\n<p>There is still plenty of content that needs to be migrated from the Codex to HelpHub, but the initial move is done and the platform is ready to have all WordPress’ user documentation moved across. HelpHub will be the first place for support, encouraging users to find solutions for themselves before posting in the <a href=\"https://wordpress.org/support/forums/\">forums</a>.<br></p>\n\n\n\n<p>Want to get involved in populating HelpHub with content, or with its future development? Follow <a href=\"https://make.wordpress.org/docs/\">the Documentation team blog</a> and join the #docs channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Spanish WordPress Community Pushes Translations Forward</h2>\n\n\n\n<p>The WordPress community in Spain has been hard at work making sure as much of the WordPress project as possible is available in Spanish. <a href=\"https://es.wordpress.org/2018/11/07/logros-equipo-traducciones-wordpress-espana/\">They have recently translated more of the project than ever</a> — including WordPress Core, WordPress.org, the mobile apps and the top 120 plugins in the Directory.<br></p>\n\n\n\n<p>This achievement has largely been possible due to the fact that <a href=\"https://make.wordpress.org/polyglots/teams/?locale=es_ES\">the Spanish translation team</a> has over 2,500 individuals contributing to it, making it the largest translation team across the whole project. <br></p>\n\n\n\n<p>Want to get involved in translating WordPress into your local language? You can <a href=\"https://translate.wordpress.org/\">jump straight into translations</a>, follow <a href=\"https://make.wordpress.org/polyglots/\">the Polyglots team blog</a> and join the #polyglots channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>All volunteer teams have checked in with their <a href=\"https://wordpress.org/news/2018/11/quarterly-updates-q3-2018/\">latest quarterly updates</a>.</li><li>The WordPress Support Team <a href=\"https://make.wordpress.org/support/2018/11/new-volunteer-orientation-for-wp-support-contributors-dec-9/\">is hosting an orientation</a> for new Support volunteers on December 9.</li><li><a href=\"https://2018.us.wordcamp.org/tickets/\">Tickets are now available</a> to watch the WordCamp US livestream for free.</li><li>WordPress Core <a href=\"https://core.trac.wordpress.org/ticket/45287\">has switched to a WP-CLI command</a> for generating localization files.</li><li>WordPress Coding Standards v1.2.0 <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.2.0\">has been released</a> with some really useful improvements.</li><li>The first ever <a href=\"https://2019.nordic.wordcamp.org/\">WordCamp Nordic</a> is taking place on March 7-8, 2019 with ticket sales now open.</li><li>The WordCamp Incubator program is going very well this year — <a href=\"https://make.wordpress.org/community/2018/11/27/wordcamp-incubator-2018-update-thread-november-edition/\">you can see the latest updates here</a>.</li><li>The Mobile Team is looking for testers for the upcoming v11.3 release of the WordPress mobile apps on <a href=\"https://make.wordpress.org/mobile/2018/11/21/call-for-testing-wordpress-for-android-11-3/\">Android</a> and <a href=\"https://make.wordpress.org/mobile/2018/11/21/call-for-testing-wordpress-for-ios-11-3/\">iOS</a>.</li><li>The WordCamp Europe team is looking for local communities to <a href=\"https://2019.europe.wordcamp.org/2018/11/29/call-for-host-city/\">apply to be the host city</a> for the 2020 event.</li></ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em><br></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"6318\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 30 Jan 2019 07:12:28 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 22 Jan 2019 01:01:36 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(462, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1548875549', 'no'),
(463, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1548832349', 'no'),
(464, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1548875551', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(465, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Matt: 39 Books in 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48954\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://ma.tt/2019/01/39-books-in-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4650:\"<p>Here&#8217;s what I read in 2018, in chronological order of when I finished it, <a href=\"https://ma.tt/2019/01/thirty-five/\">as promised in my birthday post</a>. I&#8217;ve highlighted a few in bold but in general I was pretty satisfied with almost all of my book choices this year. I&#8217;ve put a lot more time into the &#8220;deciding what to read&#8221; phase of things, and have also had some great help from friends there, and have been trying to balance and alternate titles that have stood the test of time and newer au courant books.</p>\n\n\n\n<ol><li><a href=\"https://www.amazon.com/dp/B00XB1P4RE\">Hot Seat: The Startup CEO Guidebook by Dan Shapiro</a></li><li><a href=\"https://www.amazon.com/dp/0061148520\">The Unbearable Lightness of Being by Milan Kundera (audio)</a></li><li><a href=\"https://www.amazon.com/dp/B00PWX7T18/\">A Higher Standard by Ann E. Dunwoody</a></li><li><a href=\"https://www.amazon.com/dp/B0739PYQSS\">Extreme Ownership by Jocko Willink and Leif Babin (audio)</a></li><li><a href=\"https://www.amazon.com/dp/B0018ZDAUS/\">The Boat by Nam Le</a></li><li><a href=\"https://www.amazon.com/dp/B07D6NJW22/\">Charlotte&#8217;s Web by E. B. White</a></li><li><a href=\"https://www.amazon.com/dp/B014OISVU4/\"><strong>Nonviolent Communication by Marshall B. Rosenberg</strong></a></li><li>How to Say Goodbye by Wendy Macnaughton</li><li><a href=\"https://www.amazon.com/dp/B00BBXJH2C\">When Things Fall Apart by Pema Chödrön</a></li><li><a href=\"https://www.amazon.com/dp/B01HMXRU82/\">Soul of an Octopus by Sy Montgomery</a></li><li><a href=\"https://www.amazon.com/dp/1578645018/\"><strong>Poor Charlie’s Almanack by Charlie Munger and Peter Kaufman</strong></a></li><li><a href=\"https://www.amazon.com/dp/B004EPYWII/\">Sam the Cat by Matthew Klam</a></li><li><a href=\"https://www.amazon.com/gp/product/B07D2JJ54Z/\">The Prophet by Kahlil Gibran</a></li><li><a href=\"https://www.amazon.com/dp/B00X2F7NRI/\">The Vegetarian by Han Kang</a></li><li><a href=\"https://www.amazon.com/dp/B00TBKYK60/\"><strong>The Paper Menagerie by Ken Liu</strong></a></li><li><a href=\"https://www.amazon.com/gp/product/B06XZSNB3W/\">After On: A Novel of Silicon Valley by Rob Reid</a></li><li><a href=\"https://www.amazon.com/dp/B015D3X0YG/\">The Conquest of Happiness by Bertrand Russell</a></li><li><a href=\"https://www.amazon.com/dp/B073XC5MTY/\">How to Write an Autobiographical Novel by Alexander Chee</a></li><li><a href=\"https://www.amazon.com/dp/B00XUYQUZ2/\"><strong>Ficciones by Jorge Luis Borges</strong></a></li><li><a href=\"https://www.amazon.com/dp/B00SI0B8XC/\">Black Box Thinking by Matthew Syed</a></li><li><a href=\"https://www.amazon.com/dp/B00BBPVYUS/\">Darkness Visible by William Styron</a></li><li><a href=\"https://www.amazon.com/dp/B075PVZLMV/\">Tin Man by Sarah Winman</a></li><li><a href=\"https://www.amazon.com/dp/B00ICN066A/\"><strong>Sapiens by Yuval Noah Harari</strong></a></li><li><a href=\"https://www.amazon.com/dp/B01A6EQFZ8/\">Let My People Go Surfing by Yvon Chouinard</a></li><li><a href=\"https://www.amazon.com/dp/B01GZY28JA/\">Pachinko by Min Jin Lee</a></li><li><a href=\"https://www.amazon.com/dp/B01BBQ33VE/\">Homo Deus by Yuval Noah Harari</a></li><li><a href=\"https://www.amazon.com/dp/B008GUIEYU/\"><strong>The Lessons of History by Will &amp; Ariel Durant</strong></a></li><li><a href=\"https://www.amazon.com/dp/B0048EKOP0/\"><strong>Stories of Your Life and Others by Ted Chiang</strong></a></li><li><a href=\"https://www.amazon.com/dp/B073P53DVL/\">So You Want to Talk About Race by Ijeoma Oluo</a></li><li><a href=\"https://www.amazon.com/dp/B00IQO403K/\">Three Body Problem by Cixin Liu</a></li><li><a href=\"https://www.amazon.com/gp/product/B074ZKGVG1/\">How to Fix a Broken Heart by Guy Winch</a></li><li><a href=\"https://www.amazon.com/dp/1491503629/\"><strong>Sum: Forty Tales from the Afterlives by David Eagleman</strong></a></li><li><a href=\"https://www.amazon.com/dp/B01H17U9OQ/\">Exit West by Mohsin Hamid</a></li><li><a href=\"https://www.amazon.com/gp/product/B005V2DUP4/\">Tiny Beautiful Things by Cheryl Strayed</a></li><li><a href=\"https://www.amazon.com/dp/1594488215\">Farsighted: How We Make the Decisions That Matter the Most by Steven Johnson</a></li><li><a href=\"https://www.amazon.com/dp/B078X1KJ28/\">Severance: A Novel by Ling Ma</a></li><li><a href=\"https://www.amazon.com/gp/product/B00BCU07LO/\">On the Shortness of Life by Seneca</a></li><li><a href=\"https://www.amazon.com/dp/B079WV79TK/\">It Doesn&#8217;t Have to Be Crazy at Work by Jason Fried and David Heinemeier Hansson</a></li><li><a href=\"https://www.amazon.com/dp/B007WKEN4U\"><strong>Notes of a Native Son by James Baldwin</strong></a></li></ol>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 Jan 2019 17:38:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Post Status: An Interview with Ernst-Jan Pfauth of De Correspondent\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://poststatus.com/?post_type=poststatus_notes&p=52533\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://poststatus.com/an-interview-with-ernst-jan-pfauth-of-de-correspondent/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11843:\"<p>Stressing subscriptions over scale, <em>De Correspondent</em> launched in 2013 with €1 million from 15,000 members. Membership has grown over fourfold since then. Subscriptions and book sales are <em>De Correspondent</em>&#8216;s <a href=\"https://digiday.com/media/de-correspondent-gets-transparent-members-finances/\">primary revenue sources</a>. Today <em>The Correspondent</em> is closing on its first 50,000 subscribers with $2.6 million raised in pre-launch funding.</p>\n<p>Ernst is a <a href=\"https://pfauth.com/publishing-platforms/wordpress/\">long-time WordPress user</a>, but his vision for journalism led to the creation of a technology company built around <a href=\"https://pfauth.com/article/publishing/content-management-system-cms-review-research/\">a proprietary CMS</a> called <a href=\"http://respondens.com/\">Respondens</a> for <em>De Correspondent</em> and now <em>The Correspondent</em>. Respondens&#8217; unique design reflects an ethic where subscribers are treated as a community of people who want to be involved in the production of the news they read. In the future, Ernst hopes to market Respondens to support its development and spread the practice of what we might call &#8220;responsive journalism.&#8221;</p>\n<p>Ernst and his colleagues intend to avoid the churn of breaking news by taking a structural focus on the issues they cover, working in the tradition of constructive, problem-solving, or &#8220;<a href=\"https://en.wikipedia.org/wiki/Solutions_journalism\">solutions journalism</a>.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">9/ Not just the problem, but what can be done about it. In Europe, they call it \"constructive journalism.\" In the US, solutions journalism. The idea: Your report is incomplete — lacks depth — unless it includes what we can do: as individuals, as a society or political community.</p>\n<p>&mdash; Jay Rosen (@jayrosen_nyu) <a href=\"https://twitter.com/jayrosen_nyu/status/965758917551763456?ref_src=twsrc%5Etfw\">February 20, 2018</a></p></blockquote>\n<p></p>\n<p>Finding solutions as journalists means listening, engaging, and collaborating with readers. In his predictions for journalism in 2019, Ernst <a href=\"http://www.niemanlab.org/2018/12/readers-are-only-getting-started/\">told</a> Harvard&#8217;s Nieman Lab,</p>\n<blockquote><p>“To really be a reader-driven organization, every journalist that works there should be open to the knowledge, ideas, and concerns of their readers. You can’t outsource that interaction to an engagement editor.”</p></blockquote>\n<p>This approach to journalism slows down and deepens communication by focusing issues around the people and the communities they concern. The constructiveness of this approach may have a lot to do with its calming and humanizing effects.</p>\n<p>Ernst has written several Dutch best-sellers, including a <a href=\"https://dankboek.nl/\"><em>Thank-You Book</em></a> or &#8220;gratitude&#8221; journal that came out of his efforts to overcome anxiety about public speaking. In his reflections on <a href=\"https://www.youtube.com/watch?v=T9vLHFza8Uc&t=4s\">work, overwork, and gratitude</a> for TEDx, Ernst emphasizes that resistance to &#8220;the burnout society&#8221; where &#8220;creativity is crushed&#8221; is a collective task: everyone needs to make daily space for their close relationships where work and media do not intrude.</p>\n<p>I am grateful Ernst took some time after the holidays to talk about his experience with WordPress, collaborative online communities, and democratized journalism. Here is the conversation we had.</p>\n<p><b>DK: What are your thoughts about WordPress today? Have you made any connections or maintained relationships with the WP community in other ways?</b></p>\n<p><strong>EP:</strong> I started using WordPress in 2006 when I launched my personal blog ahead of an internship at a press agency in the United Nations HQ in New York. The fact that I then, as a twenty-year-old, could start a publication in such an easy way, has been crucial in my career and something I will be the WordPress community eternally grateful for. Since then, I have started several sites, most of them running on WordPress. In 2007 I co-founded the blog of The Next Web Conference, now known as <a href=\"http://thenextweb.com/\">thenextweb.com</a>, in 2009 I started a news blog for the Dutch daily <a href=\"https://en.wikipedia.org/wiki/NRC_Next\">nrc.next</a>, and in 2010, as head of digital at the Dutch quality newspaper (NRC Handelsblad), I switched their main site from &#8216;Escenic&#8217; to WordPress. The fact that we could so easily build our own plugins (for example, a liveblog feature to cover the Arab spring) was crucial in the success of that news site. Also, the developers enjoyed their work more, since they could give back to the community.</p>\n<p>I still run my personal site on WordPress, and even though I don&#8217;t publish there anymore, I love to stay in the loop of new WordPress releases and the ever-increasing user-friendliness of the software. In lost moments, I enjoy reading the developers forums and checking their discussions about new releases (I admire the distributed, self-organizing and voluntary efforts of the community) but I&#8217;m not in touch with one of the members. I&#8217;m just an admiring bystander.</p>\n<p><strong>DK: Can you explain when and why you came to see community and membership features as essential to a CMS? What does it look like when the idea of membership/audience inclusion is integral to the software architecture and vision? How are you doing this in Respondens?</strong></p>\n<p><strong>EP:</strong> The main consideration was <em>focus</em>. We wanted a CMS that only had features for our writers that we deemed important. We didn&#8217;t want to create any distraction by having other options available — both to our developers as to our writers. If we build it ourselves, we force ourselves to make conscious decisions about every new feature we add. I.e., we wouldn&#8217;t just switch a &#8216;like&#8217; button on in the comment section, simply because it&#8217;s already there. Forcing ourselves to do this made sure we built a laser-focused CMS and publication. The focus and the calm that follows makes it unique. (See &#8220;<a href=\"https://thecorrespondent.com/4108/cultivating-calm-a-design-philosophy-for-the-digital-age/242162492-d0fffdf8\">Cultivating calm: a design philosophy for the digital age</a>.&#8221;)</p>\n<p>Also, our approach to reader interaction —as you mentioned — is a unique asset of our CMS. I elaborate on that in this Medium post, &#8220;<a href=\"https://medium.com/de-correspondent/reinventing-the-rolodex-why-were-asking-our-60-000-members-what-they-know-9be6a857c340\">Reinventing the Rolodex: Why we’re asking our 60,000 members what they know</a>.&#8221; We believe in the democratization of the journalistic research process. Anyone could be a source, anyone has expertise and knowledge to share within a specific niche.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">1/ THREAD: There’s a great untapped resource in journalism, and it’s available to every journalist right now.</p>\n<p>It’s the experience and expertise of your *readers*.</p>\n<p>Giving them the opportunity to share what they know, could fundamentally transform journalism.</p>\n<p>&mdash; Ernst Pfauth (@ejpfauth) <a href=\"https://twitter.com/ejpfauth/status/1072573253686882304?ref_src=twsrc%5Etfw\">December 11, 2018</a></p></blockquote>\n<p></p>\n<p><strong>DK: How does your model of membership-based journalism change at scale, when you have potentially the largest possible national and international audience? Will you still ask your journalists to spend <a href=\"https://medium.com/the-idea/q-a-ernst-jan-pfauth-ceo-co-founder-de-correspondent-e8f67755571a\">30-50% of their time</a> reading and responding to member comments and other feedback? Is this essential (or even possible) to sustain at scale?</strong></p>\n<p><strong>EP:</strong> The thought that you see your readers as sources of knowledge and expertise is crucial. It works for the local examples you mentioned, but it can also work for global topics. For example, we interviewed Shell employees from all over the world — who we found through our Dutch members forwarding a call-out. (&#8220;<a href=\"https://medium.com/de-correspondent/reader-engagement-shell-4bb6d0b8fb84\">How reader engagement helped unearth the Shell tape</a>.&#8221;)</p>\n<p>Yes, there are scale challenges. We see our journalists as conversation leaders and our members as contributing experts. We notice when a journalist gets more feedback from their sources (their readers), they need a research assistant to keep up — for example by highlighting interesting contributions to them or taking over some interviews. These are tasks that can be easily outsourced, as long as the correspondent remains the main point of contact in the comment sections and guides the conversation.</p>\n<p>I don’t see the 30 and 50 percent as time to spend on ‘responding to comments.’ The comments are just a means to an end. The end goal is to involve your audience, so you can get a wider set of sources, become more inclusive and publish richer journalism. We estimate it takes 30 to 50 percent of your time to live up to that mission.</p>\n<p><strong>DK: On the other end of the spectrum, does your model have things to teach small, local journalism and other membership-focused businesses that they don&#8217;t already know? In the new membership-based local journalism I&#8217;ve been watching in the US and Canada — local media startups where there&#8217;s no history or expectation of a printed product or advertising — there&#8217;s a definite limit on the subjects that can be curated and written (or spoken) about in a deep and penetrating way. Is this a low or slow-growth model that simply must be accepted?</strong></p>\n<p><strong>EP:</strong> It starts with being open about your mission as a journalist (all our new correspondents publish a mission statement when they start working with us) and then telling your audience what you expect from them. It’s about that personal relationship. The CMS, practices, technology and resources all follow. But it’s the being open to your audience input and being open about your shared goal with them that’s crucial. Anyone can do that. And when you start, it might even be easier to do it on a small scale, but it’s more intimate, and you can scale up as you get better at it.</p>\n<div id=\"attachment_53976\" class=\"wp-caption aligncenter\"><img class=\"wp-image-53976 size-full\" src=\"https://cdn.poststatus.com/wp-content/uploads/2019/01/295952-tc_team_behindthescenes_07-521ac4-original-1542160485.jpg\" alt=\"The Correspondent team\" width=\"4000\" height=\"2667\" /><p class=\"wp-caption-text\">The Correspondent team browses their unbreaking newspaper. From left: Zainab Shah, Jessica Best, Rob Wijnberg, Baratunde Thurston, and Ernst Pfauth.</p></div>\n<p><strong>DK: What do you do to keep sane and whole amid the busyness and stress of work? Are you still a practitioner of journaling and daily gratitude? Have your thoughts on that changed or deepened? </strong></p>\n<p><strong>EP:</strong> I still write in a gratitude journal every night and noticed this three-year habit has really made me more aware of ordinary but beautiful moments in life, and also taught me to enjoy the process instead of the end goal. I save my evenings and (80% of) my weekends for family and friends — and always have my phone on DND in those hours. Also: I don&#8217;t check my email before I have left my apartment. Setting these clear boundaries and turning them into routines have really helped me to stay sane in the busyness of the campaign.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 Jan 2019 23:00:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Dan Knauss\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WPWeekly Episode 344 – Introduction to the WordPress Governance Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wptavern.com/?p=87028&preview=true&preview_id=87028\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wpweekly-episode-344-introduction-to-the-wordpress-governance-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1443:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://mor10.com/\">Morten Rand-Hendriksen</a> and <a href=\"https://bamadesigner.com/\">Rachel Cherry</a> to discuss the <a href=\"https://wpgovernance.com/\">WordPress Governance project</a>. We discover why it was created, its goals, and how it aims to help govern the systems and processes that make up the WordPress project.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wpml-alleges-former-employee-breached-website-and-took-customer-emails\">WPML Alleges Former Employee Breached Website and Took Customer Emails</a></p>\n<p><a href=\"https://hbr.org/2019/01/the-era-of-move-fast-and-break-things-is-over\">The Era of “Move Fast and Break Things” Is Over</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 30th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #344:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 Jan 2019 01:32:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: All Your Might\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48952\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2019/01/all-your-might/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:159:\"<p>Julie Sugar has <a href=\"https://www.lilith.org/articles/and-with-all-your-might/\">a beautiful piece in Lilith Magazine about miscarriage and faith</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Jan 2019 21:44:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"WPTavern: WordPress Names Josepha Haden New Executive Director, Joost de Valk Marketing and Communications Lead\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=87010\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"https://wptavern.com/wordpress-names-josepha-haden-new-executive-director-joost-de-valk-marketing-and-communications-lead\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4428:\"<p>During the <a href=\"https://wptavern.com/state-of-the-word-2018-wordpress-embraces-the-block-editor\" rel=\"noopener\" target=\"_blank\">2018 State of the Word</a> address, Matt Mullenweg acknowledged lessons learned in the process of releasing WordPress 5.0. One of those was the need for various teams across the project to work together better. The friction during the 5.0 development cycle was beneficial in that it surfaced areas where the project can grow and sparked conversations that are already leading to improvements. </p>\n<p>Last week Mullenweg announced that WordPress is <a href=\"https://make.wordpress.org/updates/2019/01/16/expanding-wordpress-leadership/\" rel=\"noopener\" target=\"_blank\">expanding its leadership team</a> to include Josepha Haden in a new Executive Director role and Joost de Valk as the Marketing and Communications Lead. These new roles better distribute project leadership to more individuals who have demonstrated the ability and judiciousness to guide large, diverse teams towards success. Haden will be overseeing WordPress&#8217; contributor teams and de Valk is leading the marketing team and overseeing improvements to WordPress&#8217; websites and other outlets. </p>\n<p>The Executive Director role is particularly critical for the health of the project, as contributor and community feedback pours in across so many different mediums. Tracking all of this information and taking it into consideration amounts to a full-time job. In her first week in the new role, <a href=\"https://make.wordpress.org/updates/2019/01/21/our-strengths-and-challenges/\" rel=\"noopener\" target=\"_blank\">Haden is seeking feedback regarding the challenges contributors face</a> when working on the project. She identified seven challenges which seem to resonate with many who have commented:</p>\n<ul>\n<li>Coordinating on collaborative work between teams</li>\n<li>Aligning our work better to project goals/values</li>\n<li>Understanding team roles, leadership structures, and decision making</li>\n<li>Clarifying the differences between open source and open commit</li>\n<li>Tracking conversations and progress across the project</li>\n<li>Raising project-wide concerns more easily</li>\n<li>Improving how we recognize and celebrate success</li>\n</ul>\n<p>Responses from contributors have so far revolved around a similar theme &#8211; the desire for more clearly-defined projects and goals for teams, along with more communication from leadership. </p>\n<p>&#8220;Define goals and deliverables for each project deliverable,&#8221; Daniel Bachhuber suggested. &#8220;Once these are defined, it’s much easier to estimate the level of effort and resources required. Distinguish between full-time sponsored, part-time sponsored, and completely volunteer labor. Each of these three do not work at the same pace. It’ll be much easier to estimate a team’s velocity if you know what type of labor you have to work with.&#8221;</p>\n<p>Meagen Voss offered some valuable insight from a newer contributor&#8217;s perspective. She said the leadership of the project is very unclear and that people could benefit from that information being more prominently published. She also <a href=\"https://make.wordpress.org/updates/2019/01/21/our-strengths-and-challenges/#comment-4363\" rel=\"noopener\" target=\"_blank\">suggested</a> that WordPress explore the idea of having ambassadors for each team to facilitate communication and collaboration across projects.</p>\n<blockquote><p>You get to know your team very well, but no so much other teams. I’ve met some great folks in Slack and am getting to know the two groups I’m involved in super well. But if I have an issue or a question that needs to be addressed to another group, then I would have to hang out in that team’s channel for a while to figure out who the right person is to get in touch with. Identifying “ambassadors” or points of contact for each group could be a quick and helpful way to address that.</p></blockquote>\n<p>The conversation is still open for contributors to jump in and share their own challenges and suggestions. Haden plans to follow up with the next steps after gathering more feedback. Action born out of these conversations has the potential to greatly improve contributors&#8217; experiences working together, resulting in fewer people burning out on communication struggles or losing momentum from lack of clearly defined objectives.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Jan 2019 22:23:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Thich Nhat Hanh on Tea\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48949\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2019/01/thich-nhat-hanh-on-tea/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:331:\"<blockquote class=\"wp-block-quote\"><p>Drink your tea slowly and reverently, as if it is the axis on which the world earth revolves &#8211; slowly, evenly, without rushing toward the future.</p><cite>— Thich Nhat Hanh in <a href=\"https://www.amazon.com/dp/B009U9S6VM/\">The Miracle of Mindfulness</a></cite></blockquote>\n\n\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Jan 2019 21:27:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WooCommerce Launches New Mobile Apps for iOS and Android\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86988\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/woocommerce-launches-new-mobile-apps-for-ios-and-android\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3641:\"<p>This week marks the first <a href=\"https://woocommerce.com/posts/try-the-new-woocommerce-mobile-app-for-key-metrics-order-look-up-and-notifications-cha-ching/\" rel=\"noopener\" target=\"_blank\">public release</a> of WooCommerce&#8217;s new mobile app for <a href=\"https://play.google.com/store/apps/details?id=com.woocommerce.android\" rel=\"noopener\" target=\"_blank\">Android</a> and the improved version for <a href=\"https://itunes.apple.com/us/app/id1389130815\" rel=\"noopener\" target=\"_blank\">iOS</a>. WooCommerce began beta testing the Android app late last year and the original iOS app has been updated to offer the same features.</p>\n<p>This first release should be considered a basic start that is mostly useful for tracking store performance with detailed stats and getting alerts for new orders and product reviews. Users cannot add or edit products and the app does not yet allow for switching between stores. The first release offers basic order management and fulfillment but does not include the ability to change order status. The mobile apps don&#8217;t yet live up to their tagline of &#8220;Your store in your pocket,&#8221; but it&#8217;s a good starting place. </p>\n<p>According to the Google Play Store, the WooCommerce app has been installed more than 10,000 times and the response from users has been mixed. The app is averaging a 2.5-star rating after early reviews from 45 users. The iOS app has received similar responses. Many of the negative reviews are due to connection/login issues and the requirement for stores to use Jetpack.</p>\n<p>&#8220;This has promise, but get rid of the need for Jetpack,&#8221; one reviewer wrote. &#8220;There are other secure ways of syncing up. Other apps have done it for years. This app has been long overdue, but is poor in execution when you need to install a plugin that tends to bog down your site and that most don&#8217;t need. Give an alternative means of syncing and allow us to edit at least the basics of a product on the go.&#8221;</p>\n<p>WooCommerce marketing representative Marina Pape explained the Jetpack requirement in a post announcing the mobile apps&#8217; launch:  </p>\n<blockquote><p>The Jetpack plugin connects your self-hosted site to a WordPress.com account and provides a common authentication interface across lots of server configurations and architectures.</p>\n<p>Both Apple and Google only allow a single trusted sender for pushes for security reasons (read more), making Jetpack the best way for us to give you modern mobile app features like push notifications.</p></blockquote>\n<p>In order to connect sites with the app, Jetpack creates a shadow site on WordPress.com&#8217;s servers and syncs quite a bit of data. Although this <a href=\"https://jetpack.com/support/what-data-does-jetpack-sync/\" rel=\"noopener\" target=\"_blank\">list of data</a> is transparently outlined, the Jetpack requirement is a deal breaker for some users. They either object to sharing their data or believe the plugin will slow down their stores. Until the app&#8217;s features are more compelling than the detriments users perceive in Jetpack, it may lose a few users based on this requirement.</p>\n<p>According to <a href=\"https://trends.builtwith.com/shop\" rel=\"noopener\" target=\"_blank\">BuiltWith</a>, WooCommerce is now the most popular shopping cart technology used by 22% of the top 1 million websites, with competitors Shopify and Magento not too far behind at 17% and 13% respectively. Having a new mobile app should help WooCommerce remain competitive, but the team needs to keep iterating on the app to make it more useful for those managing stores on the go.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Jan 2019 05:35:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: Gutenberg Phase 2 to Update Core Widgets to Blocks, Classic Widget in Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86953\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/gutenberg-phase-2-to-update-core-widgets-to-blocks-classic-widget-in-development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5791:\"<p>Gutenberg phase 2 development is underway and one of the first orders of business is porting all existing core widgets to blocks. This task is one of the <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">nine projects</a> that Matt Mullenweg outlined for 2019, along with upgrading the widgets-editing areas in wp-admin/widgets.php and adding support for blocks in the Customizer. </p>\n<p>Contributors on phase 2 are also <a href=\"https://github.com/WordPress/gutenberg/issues/4770\" rel=\"noopener\" target=\"_blank\">developing a Classic Widget</a>, which would function as a sort of &#8220;legacy widget block&#8221; for third-party widgets that haven&#8217;t yet been converted to blocks. There may be many instances where plugin developers have not updated their widgets for Gutenberg and in these cases their plugins would be unusable in the new interface without the option of a Classic Widget. This block is still in the design stage. </p>\n<p>The widgets.php admin page will need to be completely reimagined as part of this process. Mark Uraine, a designer who works at Automattic, created some mockups to <a href=\"https://github.com/WordPress/gutenberg/issues/13204\" rel=\"noopener\" target=\"_blank\">kick off the discussion</a> about what this screen might look like. </p>\n<p><a href=\"https://cloudup.com/cW5MOA5gsTG\"><img src=\"https://i1.wp.com/cldup.com/o9-F6ebs7m.gif?resize=627%2C421&ssl=1\" alt=\"Widgets as blocks\" width=\"627\" height=\"421\" /></a></p>\n<p>These mockups are just explorations of where widgets may be headed next, and they do not take into account everything that will be required of this screen. </p>\n<p>Nick Halsey, one of the maintainers for <a href=\"https://make.wordpress.org/core/components/customize/\" rel=\"noopener\" target=\"_blank\">WordPress&#8217; Customize component</a> recommended abandoning this screen altogether in favor of showing widget block areas in the Customizer:</p>\n<blockquote><p>The widgets admin screen has a fundamental disconnect with the way that widget areas actually work &#8211; with different areas showing in different parts of the screen and potentially on different parts of the site. It will be very difficult to clearly reflect the frontend page structure on this screen in a way that users will be able to understand. Experimenting with contextual approaches to this experience in the customizer offers numerous opportunities for this fundamental problem to be solved. Starting with the visible edit shortcuts that are already in core, revamped widgets could be edited directly on the frontend (of the customize preview) or in an overlay that is more directly related to the display on a particular screen. The ability to navigate to different parts of the site within the customize preview solves a problem that this screen will never be able to address.</p></blockquote>\n<p>Getting blocks to work in the Customizer is also part of phase 2, but conversation on the ticket related to wp-admin/widgets.php indicates the team is not going to abandon this screen just yet. </p>\n<p>&#8220;While this screen will eventually be deprecated in the future, especially as more of the site is built in Gutenberg, it&#8217;s a necessary &#8220;baby step&#8221; to get us all there together,&#8221; Uraine said. &#8220;Maybe the best thing is to keep the existing layout, but just allow the use of all blocks within the accordion content areas? This will keep our resources and investment minimal on this particular piece with just a few suggested tweaks to the mockup in the initial post. It will also allow us to move to the Customizer more quickly.&#8221; </p>\n<p>Gutenberg accessibility contributor Andrea Fercia encouraged contributors to address accessibility before creating visual mockups by designing the information architecture first. He encouraged them to organize the required information and controls while thinking about how someone might navigate them in a linear way. </p>\n<p>&#8220;The customizer is not fully accessible,&#8221; Fercia said. &#8220;The admin widgets screen is the only place where persons with accessibility needs have a chance to manage widgets without having to face big accessibility barriers.&#8221;</p>\n<p>Discussion on the future of the widget management screen continues in the ticket and contributors are looking to get more input during this exploration stage. There&#8217;s also a <a href=\"https://github.com/WordPress/gutenberg/projects/22\" rel=\"noopener\" target=\"_blank\">project board</a> where anyone can share a blog post with their own explorations.</p>\n<p><a href=\"https://github.com/WordPress/gutenberg/projects/20\" rel=\"noopener\" target=\"_blank\">Porting widgets to blocks</a> has its own project board if you want to follow along or jump in on an issue. Most of the core blocks are already finished and a handful are still in progress. </p>\n<p>Updating the widgets management page and bringing blocks into the Customizer is a major overhaul but will further unify WordPress&#8217; interface for editing and previewing content. Widgets have served WordPress well over the years, making it easy for users to customize their websites without having to know how to code. The feature has also <a href=\"https://wptavern.com/the-future-of-wordpress-widgets-a-better-ui-with-real-time-previews\" rel=\"noopener\" target=\"_blank\">survived many evolutions</a>, eventually <a href=\"https://wptavern.com/widget-customizer-approved-for-wordpress-3-9\" rel=\"noopener\" target=\"_blank\">making its way into the Customizer five years ago in WordPress 3.9</a>. One of the limitations with widgets is that they can only be used in &#8220;widgetized&#8221; areas. Transforming widgets into blocks removes that limitation and makes it possible to use widgets in posts and pages as well.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Jan 2019 21:11:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 5.1 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6550\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4498:\"<p>WordPress 5.1 Beta 2 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>There are two ways to test the WordPress 5.1 beta: try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want to select the “bleeding edge nightlies” option), or you can <a href=\"https://wordpress.org/wordpress-5.1-beta2.zip\">download the beta here</a> (zip).</p>\n\n\n\n<p>WordPress 5.1 is slated for release on <a href=\"https://make.wordpress.org/core/5-1/\">February 21</a>, and we need your help to get there!</p>\n\n\n\n<p>Over <a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=01%2F11%2F2019..&milestone=5.1&group=component&col=id&col=summary&col=owner&col=type&col=priority&col=component&col=version&order=priority\">110 tickets have been closed</a> since <a href=\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-1/\">beta 1</a>, many of which are documentation and testing suite improvements. Here are the major changes and bug fixes:</p>\n\n\n\n<ul><li><a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=01%2F11%2F2019..01%2F22%2F2019&focuses=!~docs&keywords=~servehappy&milestone=5.1&group=component&col=id&col=summary&col=owner&col=type&col=priority&col=component&col=version&order=priority\">Several refinements and bug fixes</a> related to the Site Health project have been made.</li><li>The <code>pre_render_block</code> and <code>render_block_data</code> filters have been introduced allowing plugins to override block attribute values (<a href=\"https://core.trac.wordpress.org/ticket/45451\">#45451</a>, dev note coming soon).</li><li><code>get_template_part()</code> will now return a value indicating whether a template file was found and loaded (<a href=\"https://core.trac.wordpress.org/ticket/40969\">#40969</a>).</li><li>A notice will now be triggered when developers incorrectly register REST API endpoints (related <a href=\"https://make.wordpress.org/core/2019/01/11/new-rest-api-notice-in-5-1/\">dev note</a>).</li><li>Bulk editing posts will no longer unintentionally change a post&#8217;s post format (<a href=\"https://core.trac.wordpress.org/ticket/44914\">#44914</a>)</li><li>Twemoji has been updated to the latest version, 11.2.0 (<a href=\"https://core.trac.wordpress.org/ticket/45133\">#45133</a>).</li><li>A bug preventing the Custom Fields meta box from being enabled has been fixed (#<a href=\"https://core.trac.wordpress.org/ticket/46028\">46028</a>).</li><li>The treatment of <code>orderby</code> values for <code>post__in</code>, <code>post_parent__in</code>, and <code>post_name__in</code> has been standardized (<a href=\"https://core.trac.wordpress.org/ticket/38034\">#38034</a>).</li><li>When updating language packs, old language packs are now correctly deleted to avoid filling up disk space (<a href=\"https://core.trac.wordpress.org/ticket/45468\">#45468</a>).</li></ul>\n\n\n\n<h2>Developer Notes</h2>\n\n\n\n<p>WordPress 5.1 has many changes aimed at polishing the developer experience. To keep you informed, we publish <a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">developers notes</a> on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> throughout the release cycle. Subscribe to the Make WordPress Core blog for updates over the coming weeks, detailing other changes in 5.1 that you should be aware of.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a> The beta 2 release als marks the <a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#soft-freeze\">soft string freeze</a> point of the 5.1 release schedule.</p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Do you enjoy bugs?<br /> I don&#8217;t. So, we fixed them all.<br /> Well, not all. But close.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Jan 2019 01:01:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: WPML Alleges Former Employee Breached Website and Took Customer Emails\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/wpml-alleges-former-employee-breached-website-and-took-customer-emails\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5475:\"<p>Over the weekend, many <a href=\"https://wptavern.com/wpml-website-hacked-customer-emails-compromised\" rel=\"noopener\" target=\"_blank\">WPML customers received an unauthorized email</a> from someone who claimed to have hacked the company&#8217;s website and gained access to customer emails. WPML founder Amir Helzer suspects that the attacker is a former employee. </p>\n<p>&#8220;The customer is an ex-employee who left an exploit on the server (not WPML plugin) before leaving. Besides fixing the damage, we’ll also be taking legal actions,&#8221; Helzer said Saturday night.</p>\n<p>The WPML team worked around the clock over the weekend to secure their systems and sent out an email informing customers of the incident. They also assured customers that the WPML plugin does not contain an exploit and that payment information was not compromised. The company published an <a href=\"https://wpml.org/2019/01/wpml-org-site-back-to-normal-after-an-attack-during-the-weekend/\" rel=\"noopener\" target=\"_blank\">announcement</a> to their website, detailing the incident and their response: </p>\n<blockquote><p>We updated wpml.org, rebuilt everything and reinstalled everything. We secured access to the admin use 2-factor authentication and minimized the access that the web server has to the file system.</p>\n<p>These are more precautions than actual response to the hack. Our data shows that the hacker used inside information (an old SSH password) and a hole that he left for himself while he was our employee.</p>\n<p>This hack was not done via an exploit in WordPress, WPML or another plugin, but using this inside information. In any case, the damage is great and it’s done already.</p></blockquote>\n<p>WPML urges customers not to click on any links in the email the attacker sent out and recommends they change their passwords for wpml.org. The attacker has customer names, emails, and sitekeys, but WPML said the sitekeys cannot be used to push changes to customer websites.</p>\n<p>Helzer is convinced that the attack was an inside job and suspects two former employees. He and his team are working to provide evidence to the authorities. He said the the nature of the attack demonstrates that it was likely not an outside hacker:</p>\n<blockquote>\n<ul>\n<li>The first time our site was breached was on the day we fired an employee, who had access to our servers. We didn&#8217;t identify the breach at that time. However, once we got hacked, we analyzed the original hole and we found in our log when it was placed (yup, he deleted the log, but he didn&#8217;t delete the backup). Now that we finished cleaning up the mess, we&#8217;re going through all logs and collecting the full evidence.</li>\n<li>The attacker targeted specific code and database tables that are unique to our site and not generic WordPress or WPML tables.</li>\n<li>The attacker crafted the attack so that it would cause us long term damage and not be apparent in first sight. That long-term damage is very difficult to guess without knowing our business objectives and challenges. This is information that our employees have, but we don&#8217;t disclose.</li>\n</ul>\n</blockquote>\n<p>The idea that a former employee who is known to the company would risk performing these illegal actions is difficult to grasp, even in the case of someone who was fired and may have been acting in retaliation. The risks of being caught seem too great.</p>\n<p>&#8220;In many jurisdictions including the USA, this is jail time,&#8221; Wordfence CEO Mark Maunder <a href=\"https://twitter.com/mmaunder/status/1086839572384940033\" rel=\"noopener\" target=\"_blank\">said</a>. &#8220;So I find it quite incredible that an employee would leave a backdoor, use it to deface their site, steal their data and email all subscribers. This is the infosec equivalent of walking into a police precinct and tagging the wall while the cops watch.&#8221;</p>\n<p>Helzer said the incident should serve as a wakeup call for companies that employ remote workers. It highlights the importance of having procedures in place for revoking employee access to all systems used as part of day to day operations.</p>\n<p>&#8220;We have to admit that our site was not secured well enough,&#8221; Helzer said. &#8220;If someone previously had admin access and stopped working for us, we should have been more careful and avoided this situation.</p>\n<p>&#8220;This can be a wakeup call for others. We talk a lot about the benefits or remote work and most of the WordPress industry works remotely. This made us realize that we need to be a lot more pessimistic when we allow any access to our system.</p>\n<p>&#8220;For example, the fact that we’re now coding for ourselves a requirement to login with 2fa, means that we’re not alone in this exposed situation.&#8221;</p>\n<p>The attacker&#8217;s unauthorized email and WPML&#8217;s response email went out over the weekend, so many customers will be learning of the incident today when they return to work. Helzer said customers have been supportive so far.</p>\n<p>&#8220;I think that customers appreciate the fact that we contacted them as fast as we could and we dropped everything and ran to handle this,&#8221; he said. &#8220;I think that we&#8217;ll still have damage. Clients did not run away from us right now but a good reputation is something that you build over years. A nasty incident like this stays &#8216;on your record.&#8217; This is our livelihood and we take it seriously.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 Jan 2019 16:21:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: WPML Website Hacked, Customer Emails Compromised\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86908\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wpml-website-hacked-customer-emails-compromised\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3452:\"<p>On Saturday, January 19, WPML customers started reporting having received an email from someone who seems to have hacked the plugin&#8217;s website and gained access to customer information.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Got same mail and there is this text on <a href=\"https://twitter.com/hashtag/wpml?src=hash&ref_src=twsrc%5Etfw\">#wpml</a> website visible now. What happened guys? <a href=\"https://twitter.com/hashtag/security?src=hash&ref_src=twsrc%5Etfw\">#security</a> <a href=\"https://twitter.com/hashtag/hack?src=hash&ref_src=twsrc%5Etfw\">#hack</a> <a href=\"https://twitter.com/hashtag/vulnerability?src=hash&ref_src=twsrc%5Etfw\">#vulnerability</a> <a href=\"https://twitter.com/hashtag/0day?src=hash&ref_src=twsrc%5Etfw\">#0day</a> or something? <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a></p>\n<p>&mdash; Gytis Repečka (@gytisrepecka) <a href=\"https://twitter.com/gytisrepecka/status/1086753453429481473?ref_src=twsrc%5Etfw\">January 19, 2019</a></p></blockquote>\n<p></p>\n<p>The hacker claims to be a disgruntled customer who had two websites hacked due to vulnerabilities in the WPML plugin: </p>\n<blockquote><p>WPML came with a bunch of ridiculous security holes which, despite my efforts to keep everything up to date, allowed the most important two of my websites to be hacked.</p>\n<p>WPML exposed sensitive information to someone with very little coding skills but merely with access to the WPML code and some interest in seeing how easy is to break it.</p>\n<p>I’m able to write this here because of the very same WPML flaws as this plugin is used on wpml.org too.</p></blockquote>\n<p>The hacker also claims to have exploited the same vulnerabilities in order to send the email to WPML&#8217;s customers and has <a href=\"https://web.archive.org/web/20190120015001/https://wpml.org/2019/01/wpml-warning/\" rel=\"noopener\" target=\"_blank\">published the same message to the plugin&#8217;s website</a>. The text is still live at this time and product pages have also been defaced.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Defaced product features page, for example. <a href=\"https://t.co/MWNZh6g1HQ\">pic.twitter.com/MWNZh6g1HQ</a></p>\n<p>&mdash; Wordfence (@wordfence) <a href=\"https://twitter.com/wordfence/status/1086789010218016768?ref_src=twsrc%5Etfw\">January 20, 2019</a></p></blockquote>\n<p></p>\n<p>The commercial multilingual plugin has been in business since 2009 and is <a href=\"https://wpml.org/home/about-us/\" rel=\"noopener\" target=\"_blank\">active on more than 600,000 WordPress sites</a>. It is a popular plugin for business sites in Europe, North America, Asia, and South America, especially those with a global audience. Customers are still waiting for an official explanation from WPML. </p>\n<p>We contacted the company for comment but have not yet received a response. If you are using the plugin, you should deactivate it until the company pushes an update to patch the security vulnerabilities. This story is developing and we will publish new information as it becomes available.</p>\n<p><strong><a href=\"https://wptavern.com/wpml-website-hacked-customer-emails-compromised#comment-276210\">Update</a> from WPML founder Amir Helzer</strong>: &#8220;The customer is an ex-employee who left an exploit on the server (not WPML plugin) before leaving. Besides fixing the damage, we’ll also be taking legal actions.&#8221; </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 20 Jan 2019 02:32:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WPWeekly Episode 343 –  Newspack, Expanding Leadership, and Cory Miller\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wptavern.com/?p=86902&preview=true&preview_id=86902\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/wpweekly-episode-343-newspack-expanding-leadership-and-cory-miller\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1823:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss Automattic&#8217;s quest to create a new service tailored to journalists. We discuss what&#8217;s next for Cory Miller as his chapter at iThemes ends later this month. Near the end of the show, we talk about recent leadership changes in the WordPress project and share our opinions of Slack&#8217;s new logo.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://ma.tt/2019/01/thirty-five/\">Thirty-Five</a></p>\n<p><a href=\"https://ma.tt/2019/01/journalism-and-newspack/\">Journalism and Newspack</a></p>\n<p><a href=\"https://corymiller.com/embarking-on-my-next-adventure/\">Embarking On My Next Adventure</a></p>\n<p><a href=\"https://make.wordpress.org/core/2019/01/16/wordpress-5-1-schedule-updates/\">WordPress 5.1 Schedule Updates</a></p>\n<p><a href=\"https://make.wordpress.org/updates/2019/01/16/expanding-wordpress-leadership/\"> Expanding WordPress Leadership</a></p>\n<p><a href=\"https://www.pentagram.com/work/slack\">Slack&#8217;s New Logo</a></p>\n<p><a href=\"https://journal.rmccue.io/400/how-wordpress-knows-what-page-youre-on/\">How WordPress Knows What Page You’re On</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 23rd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #343:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 Jan 2019 22:57:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"WPTavern: WordPress.com Secures $2.4 Million in Funding from Google and Partners to Build a Publishing Platform for News Organizations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86795\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:144:\"https://wptavern.com/wordpress-com-secures-2-4-million-in-funding-from-google-and-partners-to-build-a-publishing-platform-for-news-organizations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9680:\"<p>WordPress.com has <a href=\"https://en.blog.wordpress.com/2019/01/14/newspack-by-wordpress-com/\" rel=\"noopener\" target=\"_blank\">announced</a> plans to create a new, open source publishing platform that caters to small and medium-sized news organizations. The <a href=\"https://newsinitiative.withgoogle.com/\" rel=\"noopener\" target=\"_blank\">Google News Initiative</a> has contributed $1.2 million towards the development of &#8220;<a href=\"http://newspack.blog/\" rel=\"noopener\" target=\"_blank\">Newspack</a>&#8221; on top of WordPress.com&#8217;s infrastructure. </p>\n<p>Automattic and Google have joined with other contributing partners from the broader world of journalism for a total of $2.4 million in funding for the first year of the project. These partners include <a href=\"https://www.lenfestinstitute.org/\" rel=\"noopener\" target=\"_blank\">The Lenfest Institute for Journalism</a> ($400K), ConsenSys, the venture studio behind <a href=\"https://civil.co/\" rel=\"noopener\" target=\"_blank\">Civil Media</a> ($350K), The <a href=\"http://kf.org/\" rel=\"noopener\" target=\"_blank\">John S. and James L. Knight Foundation</a> ($250K), and an additional partner who will join later this month. <a href=\"https://spiritedmedia.com/\" rel=\"noopener\" target=\"_blank\">Spirited Media</a> and <a href=\"https://fundjournalism.org/\" rel=\"noopener\" target=\"_blank\">News Revenue Hub</a> will also contribute to the creation of the platform.</p>\n<p>Local news organizations are critical for a healthy democratic society, keeping the public informed about things happening close to home. The move to digital news consumption has forced consolidation in the news industry where larger players have come out ahead while smaller publications struggle to stay above water. </p>\n<p>In a report called &#8220;<a href=\"https://www.usnewsdeserts.com/reports/expanding-news-desert/\" rel=\"noopener\" target=\"_blank\">The Expanding News Desert</a>,&#8221; published in 2018, researchers at the University of North Carolina found that nearly one in five newspapers has disappeared during the past 15 years. Many others have become &#8220;ghost newspapers,&#8221; shells of what they once were &#8211; either absorbed by larger dailies that purchased them or suffering from a severely pared back newsroom that is unable to adequately cover local events.</p>\n<p>WordPress.com has amassed an expert team to address this crisis in local news. The Newspack platform will cater to the technological and editorial needs of smaller newsrooms, with the monetization tools to make their work sustainable. WordPress.com is currently accepting <a href=\"https://newspack.blog/\" rel=\"noopener\" target=\"_blank\">applications for charter participants</a> and plans to launch in beta near the end of July 2019.</p>\n<h3>Open Source Newspack Platform to Offer an Alternative to Expensive Proprietary CMS&#8217;s</h3>\n<p>The WordPress community has <a href=\"https://twitter.com/carlhancock/status/1084900673559371776\" rel=\"noopener\" target=\"_blank\">speculated</a> <a href=\"https://twitter.com/mor10/status/1084887261471072257\" rel=\"noopener\" target=\"_blank\">widely</a> about what shape Newspack will take, whether it will be like WordPress.com VIP tailored to publications or something similar to Jetpack with a curated set of tools that could be used by self-hosted sites through SaaS upgrades. According to WordPress.com president Kinsey Wilson, a former executive for NPR and The New York Times who joined Automattic in 2018, the platform may end up being a hybrid of approaches. </p>\n<p>&#8220;It’s still very early in the process, but I expect elements of both VIP and Jetpack to inform this,&#8221; Kinsey said. &#8220;Newspack will be part of the WordPress.com platform, but we’re going to be working on a highly curated experience tailored to these news organizations, with individualized support available across editorial and business.&#8221; </p>\n<p>The platform will support plugins that solve problems publishers experience at the local level and will also include Gutenberg-specific editorial tools.</p>\n<p>&#8220;It will leverage Gutenberg,&#8221; Kinsey said. &#8220;A few examples of the tools that might be launched with Newspack include email integration for marketing and editorial; programmatic ad integration, analytics, real-time backups, and revenue generating tools for subscriptions and e-commerce. We hope to work closely with partners across the WordPress ecosystem for potential ways to work with services that are beneficial to news organizations.&#8221;</p>\n<p>The most important distinction of the Newspack platform is that it will be open source. That also puts it directly in competition with proprietary CMS&#8217;s like Arc, Vox Media&#8217;s Chorus CMS, and MediaOS, that are prominent in the news industry right now. Instead of working together, larger media companies have opted to build their own CMS&#8217;s and many of them are also <a href=\"http://www.niemanlab.org/2018/11/is-it-finally-time-for-media-companies-to-adopt-a-common-publishing-platform/\" rel=\"noopener\" target=\"_blank\">licensing enterprise versions to publishers or offering them as SaaS solutions</a>.</p>\n<p>I asked Kinsey if Newspack will be something news organizations could self-host or if it will be inextricably tied to WordPress.com&#8217;s infrastructure. WordPress.com is making it open in the sense that publishers will not be tied to using it forever if they want to their information and copy the same setup somewhere else.</p>\n<p>&#8220;It is not only open source, it will be designed so that at any point in time any individual site or even a commercial competitor could capture an image of the setup and port it to another platform,&#8221; Kinsey said. &#8220;The value we offer is our knowledge of the news industry, our ability to keep pace with new requirements, and our ability to vet various plug-ins and open-source contributions to the project for security and interoperability &#8212; all at an attractive operating cost of between $1,000 and $2,000 per month. In addition, we hope to expose news organizations to a wider community of like-minded developers and to create an on-boarding system that simplifies the setup.&#8221; </p>\n<p>Operating costs on proprietary platforms are much higher than what WordPress.com is planning for Newspack. Arc costs smaller publishers <a href=\"https://digiday.com/media/washington-post-building-tech-platform-arc/\" rel=\"noopener\" target=\"_blank\">$10,000 per month in software licensing fees</a> and can cost up to $150,000 monthly for larger publications. Vox media executives <a href=\"https://www.wsj.com/articles/vox-media-to-begin-licensing-publishing-technology-chorus-1531828800\" rel=\"noopener\" target=\"_blank\">told the Wall Street Journal</a> that the company &#8220;plans to sell Chorus at different pricing tiers depending on the demands of each customer with fees in the six and seven-figure ranges.&#8221; Small local news publications are often priced out of using a publishing platform like this.</p>\n<p>&#8220;It breaks my heart how much of their limited resources these organizations still sink into closed-source or dead-end technology,&#8221; Automattic CEO Matt Mullenweg said in a <a href=\"https://ma.tt/2019/01/journalism-and-newspack/\" rel=\"noopener\" target=\"_blank\">post</a> introducing Newspack on his blog. &#8220;Open source is clearly the future, and if we do this right Newspack can be the technology choice that lasts with them through the decades, and hopefully our 15 years of growth lends some credibility to our orientation to build things for the long term.&#8221;</p>\n<p>Google&#8217;s support of Newspack is in line with its history of building with and <a href=\"https://wptavern.com/google-launches-opensource-dev-as-an-introduction-to-open-source\" rel=\"noopener\" target=\"_blank\">supporting open source projects</a>. When asked for clarification on Google&#8217;s investment in the project, Kinsey said, &#8220;It is a donation that is intended to support work that otherwise would not likely find commercial support because of the relatively modest means of small digital publishers.&#8221;</p>\n<p>WordPress.com&#8217;s Newspack announcement comes on the heels of the news of <a href=\"https://www.usatoday.com/story/money/business/2019/01/16/when-digital-first-media-gannetts-hostile-suitor-comes-town/2579392002/\" rel=\"noopener\" target=\"_blank\">Digital First Media&#8217;s unsolicited $1.36 billion bid for Gannett</a>. The future of local news is tenuous, as larger players in the industry press for more consolidation and cost-cutting journalism. In the same week, Facebook, who has had a hot and cold relationship with publishers, announced the company is investing <a href=\"https://www.facebook.com/facebookmedia/blog/doing-more-to-support-local-news\" rel=\"noopener\" target=\"_blank\">$300 million to support local news</a>.</p>\n<p>In recognition of the dire situation facing many local newsrooms, the largest companies on the web are committing funds to help them find a sustainable business model. WordPress.com&#8217;s Newspack platform, with its affordable, open source alternative to proprietary systems, is positioned to make a strong impact during this seminal time in the evolution of the news industry. </p>\n<p>&#8220;By itself, an open source CMS is not going to help news organizations remain independent,&#8221; Kinsey said. &#8220;However, by helping new, emerging organizations overcome the complexity and cost typically associated with technology deployment and instead allowing them to focus resources on journalism and smart business practices, we think we can help them become more sustainable.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Jan 2019 22:52:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Matt: My TED Video on the Future of Work\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48932\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2019/01/ted-the-future-of-work/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2707:\"<p>I was thrilled to participate in TED’s new video series, <a href=\"https://www.facebook.com/TEDsTheWayWeWork/videos/294277961234005/\">The Way We Work</a>, and not surprisingly I made the case that distributed work is <a href=\"https://qz.com/694410/automattic-has-figured-out-the-right-tools-for-remote-working/\">where everything is headed</a>. </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div id=\"fb-root\"></div>&version;<div class=\"fb-video\"><blockquote cite=\"https://www.facebook.com/TEDsTheWayWeWork/videos/294277961234005/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/TEDsTheWayWeWork/videos/294277961234005/\">Why Working from Home Is Better for Business</a><p>This company is so dedicated to remote working that they literally don&#039;t have an office. Here&#039;s why a \"distributed\" workforce is better for business — and employees:</p>Posted by <a href=\"https://www.facebook.com/TEDsTheWayWeWork/\">The Way We Work</a> on Monday, January 14, 2019</blockquote></div>\n</div>\n\n\n\n<p>It has over 130,000 views already! What I really love about this video in particular is that we get into the specifics of <em>how</em> a company can start to embrace a culture of letting employees work from anywhere, even if it started out as a traditional office with everyone in the same place. Automattic never started that way, so even as we’ve scaled up to more than <a href=\"https://automattic.com/work-with-us/\">840 people</a> in 68 countries, there’s never been a question — it’s now built in to our entire culture.<br /></p>\n\n\n\n<p>For distributed work to scale up, it’s going to require more CEOs, workers, and managers to test the waters. Any company can experiment with distributed work — just pick a day or two of the week in which everyone works from home, I suggest Tuesdays and Thursdays, then build the tools and systems to support it. Yes, that may require some shuffling of meetings, or more written documentation versus verbal real-time discussion. But I think companies will be surprised how quickly it will “just work.” <br /></p>\n\n\n\n<p>If the companies don’t experiment, workers may force them to do it anyway: <br /></p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">I don\'t think tech folks quite understand how pervasive remote work has become. It\'s not even a debate anymore, it\'s a full on revolution. Hard to do any recruiting these days and not constantly run into talented folks who will never go back to working in an office again.</p>&mdash; Max Lynch (@maxlynch) <a href=\"https://twitter.com/maxlynch/status/1084854197869264896?ref_src=twsrc%5Etfw\">January 14, 2019</a></blockquote>\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Jan 2019 20:32:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: WooCommerce Blocks is Now a Feature Plugin, Version 1.3.0 Introduces 6 New Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86856\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/woocommerce-blocks-is-now-a-feature-plugin-version-1-3-0-introduces-6-new-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2645:\"<p><a href=\"https://woocommerce.wordpress.com/2019/01/15/woocommerce-blocks-1-3-0-release-notes/\">WooCommerce Blocks 1.3.0</a> was released yesterday with six new blocks. Previously, the <a href=\"https://wordpress.org/plugins/woo-gutenberg-products-block/\">plugin</a> allowed users to display a grid of products by category. The new version introduces a Featured Product Block with design options for customizing nearly everything about the display, including color overlay, price and description, text alignment, call-to-action button, and the product photo. </p>\n\n\n\n<img />\n\n\n\n<p>Version 1.3.0 also introduces a Hand-Picked Products block that displays a grid of manual selections that can be ordered in different ways. Other new blocks include the following, which display as a grid and can be filtered by category:</p>\n\n\n\n<ul><li>Best Selling Products block</li><li>Top Rated Products block</li><li>Newest Products block</li><li>On Sale Products block</li></ul>\n\n\n\n<p>WooCommerce Blocks is also now a <a href=\"https://docs.woocommerce.com/document/what-is-a-woocommerce-feature-plugin/\">feature plugin</a>, which means that after it is more polished and tested, the plugin can be considered for merge into WooCommerce core. WooCommerce Blocks 1.4 is expected the last week in January with improvements to the Featured Product block and a new Products by Attribute block.</p>\n\n\n\n<p>In December 2018, WooCommerce <a href=\"https://woocommerce.com/posts/people-behind-stores/\">published usage data</a> that indicates 40% of users who could be considered &#8220;established business owners&#8221; also have a brick-and-mortar location, and 27% host events in physical locations. This means that many WooCommerce store owners have multiple channels for selling their products. The data also showed that large stores don&#8217;t always turn to big companies to handle their website development needs.</p>\n\n\n\n<p>Based on that usage data, blocks have the potential to greatly improve the site management experience for many WooCommerce store owners who want to market to different audiences beyond their physical stores. Blocks enable them to easily swap out featured products and customize promotions on products that are selling well in their stores. All of these actions are quick to configure inside the new editor with a live preview. The sooner this feature plugin lands in WooCommerce core, the easier it will be to make these kinds of quick updates. Store owners with sites running on WordPress 5.0+ can take advantage of these blocks now by <a href=\"https://wordpress.org/plugins/woo-gutenberg-products-block/\">installing the plugin</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Jan 2019 20:11:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: CoBlocks Adds Row and Columns Page Building Blocks for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86811\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/coblocks-adds-row-and-columns-page-building-blocks-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3005:\"<p><a href=\"https://wordpress.org/plugins/coblocks/\" rel=\"noopener\" target=\"_blank\">CoBlocks</a>, one of the earliest block collections for Gutenberg, has added new page building blocks and tools in the latest <a href=\"https://richtabor.com/coblocks-gutenberg-page-builder/\">1.6 release</a>. ThemeBeans founder <a href=\"https://richtabor.com\" rel=\"noopener\" target=\"_blank\">Rich Tabor</a> and plugin developer <a href=\"https://phpbits.net\" rel=\"noopener\" target=\"_blank\">Jeffrey Carandang</a> partnered together on this iteration of CoBlocks to bring users new Row and Columns blocks and a Typography Control Panel.</p>\n<p>The Row and Column blocks are resizable and can be dragged to new positions. </p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-15-at-5.33.39-PM.png?ssl=1\"><img /></a></p>\n<p>After selecting the Row block, users can choose the number of columns and then a layout for the row.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-15-at-5.40.22-PM.png?ssl=1\"><img /></a></p>\n<p>These row layouts can also be adjusted from inside the row toolbar or inspector sidebar panel, which includes responsive media query controls. </p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-15-at-5.53.18-PM.png?ssl=1\"><img /></a>The Row and Column blocks also come with fine-grained controls for adjusting background and text color, width, margin, and padding. </p>\n<p>Version 1.6 also includes a new Typography Control Panel with support for Google fonts. Users can customize the fonts with built-in controls for line-height, letter-spacing, font-weight, and text-transform properties. It also supports customizing fonts for the core heading, paragraph, and button blocks. </p>\n<p>The video below shows a quick demo of column layouts and nested row blocks in action, as well as a few other blocks in the collection. Tabor said the team has more blocks in development that are geared towards full page layout and design. They are also working on a more advanced Google Maps block, feature blocks, and image cards.</p>\n<p></p>\n<p>The Gutenberg team has been <a href=\"https://github.com/WordPress/gutenberg/issues/4900\" rel=\"noopener\" target=\"_blank\">discussing a &#8220;section&#8221; block</a> since February 2018, where columns blocks could be placed inside the more generic section container. It&#8217;s on the <a href=\"https://github.com/WordPress/gutenberg/issues/13113\" rel=\"noopener\" target=\"_blank\">roadmap for Phase 2</a> but contributors are taking their time to carefully define how this block will work. In the meantime, plugin developers have created their own versions of sections.</p>\n<p>CoBlocks is currently setting the bar for Gutenberg-powered layouts. When WordPress core gets deeper into site building, this plugin&#8217;s user-friendly approach to rows and columns should provide some inspiration for creating an intuitive page building experience.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Jan 2019 01:49:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: WordPress Support Forums Add @mentions with Auto-complete\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86721\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/wordpress-support-forums-add-mentions-with-auto-complete\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1852:\"<p>The <a href=\"https://wordpress.org/support/forums/\" rel=\"noopener\" target=\"_blank\">WordPress Support forums</a> have been updated to include Twitter/GitHub style <a href=\"https://meta.trac.wordpress.org/ticket/2488\" rel=\"noopener\" target=\"_blank\">auto-completion for usernames</a>. As users begin typing @username in the forum&#8217;s TinyMCE editor, it will begin to suggest usernames, narrowed further by characters typed. Hitting tab or enter will complete the username and link it to the user&#8217;s profiles.wordpress.org page. This will trigger a notification for the user. </p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-15-at-9.56.52-AM.png?ssl=1\"><img /></a></p>\n<p>A similar feature was implemented on <a href=\"https://meta.trac.wordpress.org/ticket/830\" rel=\"noopener\" target=\"_blank\">WordPress trac</a> three years ago. This initial version of @mention auto-complete for the support forums works in a similar way in that it completes a partial search query from a known set of usernames. In this case it only includes thread participants. In order to make the auto-complete scale for WordPress.org&#8217;s 10+ million registered users, it does not perform site-wide username lookups or include moderators, plugin reps, or theme reps who have not yet commented on the thread.</p>\n<p>The @mentions have been implemented across all WordPress.org forums. Any issues with the feature can be reported on trac by re-opening the original <a href=\"https://meta.trac.wordpress.org/ticket/2488\" rel=\"noopener\" target=\"_blank\">ticket</a> or creating a new one. Daniel Iser <a href=\"https://meta.trac.wordpress.org/ticket/2488#comment:20\" rel=\"noopener\" target=\"_blank\">commented</a> on the ticket that he is working on getting this feature working for bbPress during the first half of this year.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Jan 2019 18:12:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Matt: Journalism and Newspack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48924\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ma.tt/2019/01/journalism-and-newspack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2189:\"<p>WordPress.com <a href=\"https://en.blog.wordpress.com/2019/01/14/newspack-by-wordpress-com/\">is partnering</a> with Google and news industry leaders on a new platform for small- and medium-sized publishers, called <a href=\"https://newspack.blog/\">Newspack</a>. The team has raised $2.4 million in first-year funding from the Google News Initiative, Lenfest Journalism Institute, Civil funder ConsenSys, and the Knight Foundation, among others. We&#8217;re also still happy to talk to and engage other funders who want to get involved — I&#8217;d love to put even more resources into this.<br /></p>\n\n\n\n<p>It’s been a difficult climate for the news business, particularly at the local level. It also breaks my heart how much of their limited resources these organizations still sink into closed-source or dead-end technology. Open source is clearly the future, and if we do this right Newspack can be the technology choice that lasts with them through the decades, and hopefully our 15 years of growth lends some credibility to our orientation to build things for the long term.</p>\n\n\n\n<p>Here’s <a href=\"https://kinsey.nyc/\">Kinsey</a> in Nieman Lab: <br /></p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>The goal is to both make sure that the catalog of publishing tools as well as business tools they need to be able to run what one hopes is a sustainable news operation are addressed simultaneously. It’s not simply a CMS for a newsroom, but a full business system that enables publishing and monetization at the same time.</p><cite>&#8211;<a href=\"http://www.niemanlab.org/2019/01/heightening-the-cms-race-wordpress-com-and-news-revenue-hub-devise-a-toolkit-for-local-newsrooms/\">Nieman Lab interview</a></cite></blockquote>\n\n\n\n<p>As you have come to expect from Automattic, everything will be open source and developed to the same standards WordPress itself is. We’re working with Spirited Media and the News Revenue Hub on the platform, and we will likely look for even more partnership opportunities from across the WordPress ecosystem. If you’d like to invest or get involved, drop us a line at <a href=\"mailto:newspack@automattic.com\">newspack@automattic.com</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Jan 2019 01:03:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"WPTavern: WPCampus Selects Tenon LLC for Gutenberg Accessibility Audit, Completed Report Expected in February\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86773\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wptavern.com/wpcampus-selects-tenon-llc-for-wp-campus-gutenberg-accessibility-audit-completed-report-expected\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1626:\"<p>WPCampus <a href=\"https://wpcampus.org/2019/01/gutenberg-audit-vendor/\">announced</a> that <a href=\"https://tenon.io/\">Tenon LLC</a>, a leading accessibility firm founded by <a href=\"http://www.karlgroves.com/\">Karl Groves</a>, has been selected to perform its Gutenberg accessibility audit. More than $10,000 has come in through WPCamps&#8217; crowdfunding campaign. Shortly before WordCamp US 2018, <a href=\"https://wptavern.com/interview-with-rachel-cherry-automattic-pledges-to-fund-wpcampus-accessibility-audit-of-gutenberg\">Automattic pledged to fund the remainder</a> of the audit. The final cost for the chosen vendor is $31,200.</p>\n\n\n\n<p>A diverse committee of WordPress, accessibility, and higher education professionals evaluated seven proposals before selecting Tenon LLC. The company&#8217;s Tenon API delivers advanced reporting that assists clients in understanding which issues to prioritize first in the process of building more accessible experiences. The <a href=\"https://wptavern.com/access-monitor-plugin-tests-wordpress-sites-for-accessibility-compliance\">Access Monitor plugin</a> for WordPress is an example of a tool built using this API. Site administrators can use it to identify and tackle accessibility issues with the help of automated testing.</p>\n\n\n\n<p>WPCampus will leave its crowdfunding campaign open until Friday, February 8 to allow more community participation. The organization plans to deliver a progress update on Thursday, January 31, and is aiming to complete the audit by late February. A public report of the findings will be published as a resource that anyone can access.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Jan 2019 17:20:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Matt: Thirty-Five\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48911\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://ma.tt/2019/01/thirty-five/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3398:\"<div class=\"wp-block-image\"><img src=\"https://ma.tt/files/2019/01/IMG_8762-768x1024.jpg\" alt=\"\" class=\"wp-image-48912\" width=\"247\" height=\"329\" /></div>\n\n\n\n<p>What a year.</p>\n\n\n\n<p>First, it feels amazing to write this inside of the new Gutenberg block editor in WordPress 5.0. It was a labor of love for so many and the next chapters are going to be even more exciting.</p>\n\n\n\n<p>The best part of the last year was growing closer to my friends and loved ones —&nbsp;I don&#8217;t know if it&#8217;s externally perceptible but my heart feels a lot more open. </p>\n\n\n\n<p>I&#8217;ve found a good balance with meditation, work, sleep, fasting, eating, and reading that gives me a lot of joy, energy, and feels like a combination I could sustain the rest of my life.</p>\n\n\n\n<p>Reading in particular was a highlight as I finished 38 books, which is the most in a year since I started tracking, and so many of them were truly excellent I&#8217;m going to do another post just on books. I will give a special call out to <a href=\"https://www.amazon.com/dp/B00TBKYK60/\">The Paper Menagerie by Ken Liu</a>. Leaving my Kindle Oasis at an airport ended up being a blessing in disguise as I started using the Kindle app on my iPhone a lot more and that&#8217;s become my new favorite habit. (And the physical Kindle was returned!)</p>\n\n\n\n<p>It was a strong travel year, covering 126 cities, 20 countries, and 377k miles. I especially enjoyed visits to Tulum, Iceland, Bodrum, Tonga, Kauai, Lanai, and Courchevel. I finally checked off my bucket list item to become scuba certified and had an amazing opportunity to swim with humpback whales.</p>\n\n\n\n<img src=\"https://ma.tt/files/2019/01/Tonga-Wanderings-2-of-5-1024x635.jpg\" alt=\"\" class=\"wp-image-48914\" />I was a few feet from <a href=\"https://www.comewander.com/\">Adam Gazzaley when he took this photo</a>.\n\n\n\n<p>I also had lots of opportunities to practice patience, weathered a torrent of personally-directed criticism across every medium, and had a few months that were the hardest I&#8217;ve worked in my career. With the benefit of a little distance, though, those things don&#8217;t loom as large. I learned a ton —&nbsp;often the hard way but often that&#8217;s what it takes —&nbsp;and discovered I had some additional gears that can kick in when needed.</p>\n\n\n\n<p>As I pass solidly into my mid-thirties, I don&#8217;t have any drastic shifts on the horizon but I am looking forward to continuing to strengthen the habits I&#8217;ve been able to develop this past year.</p>\n\n\n\n<p>Other years: <a href=\"https://ma.tt/2003/01/bday/\">19</a>, <a href=\"https://ma.tt/2004/01/so-im-20/\">20</a>, <a href=\"https://ma.tt/2005/01/hot-barely-legal-matt/\">21</a>, <a href=\"https://ma.tt/2006/01/matt-22/\">22</a>, <a href=\"https://ma.tt/2007/01/twenty-three/\">23</a>, <a href=\"https://ma.tt/2008/01/twenty-four/\">24</a>, <a href=\"https://ma.tt/2009/01/twenty-five/\">25</a>, <a href=\"https://ma.tt/2010/01/twenty-six/\">26</a>, <a href=\"https://ma.tt/2011/01/twenty-seven/\">27</a>, <a href=\"https://ma.tt/2012/01/twenty-eight/\">28</a>, <a href=\"https://ma.tt/2013/01/twenty-nine/\">29</a>, <a href=\"https://ma.tt/2014/01/matt-3-0/\">30</a>, <a href=\"https://ma.tt/2015/01/thirty-one/\">31</a>, <a href=\"https://ma.tt/2016/01/thirty-two/\">32</a>, <a href=\"https://ma.tt/2017/01/thirty-three/\">33</a>, <a href=\"https://ma.tt/2018/01/thirty-four/\">34</a>, 35.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 Jan 2019 00:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: WPWeekly Episode 342 – GitHub, Commercials, and Governance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=86783&preview=true&preview_id=86783\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/wpweekly-episode-342-github-commercials-and-governance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2012:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss what&#8217;s new in WordPress 5.0.3. We share insight into a new feature in WordPress 5.1 that will protect users from fatal errors or more commonly known as the white screen of death.</p>\n<p>We discuss the WordPress Governance Project and WordPress&#8217; leadership overall throughout the past few years. Near the end of the show, we share our opinions on WordPress.com&#8217;s new marketing campaign.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2019/01/wordpress-5-0-3-maintenance-release/\">WordPress 5.0.3 Maintenance Release</a></p>\n<p><a href=\"https://wptavern.com/github-announces-free-unlimited-private-repositories\">GitHub Announces Free, Unlimited Private Repositories</a></p>\n<p><a href=\"https://wptavern.com/wordpress-5-1-to-replace-blogging-references-with-publishing\">WordPress 5.1 to Replace “Blogging” References with “Publishing”</a></p>\n<p><a href=\"https://wptavern.com/wordpress-governance-project-flagged-as-unsanctioned-first-meeting-set-for-january-15\">WordPress Governance Project Flagged as Unsanctioned, First Meeting Set for January 15</a></p>\n<p><a href=\"https://wptavern.com/wordpress-com-launches-new-do-anything-marketing-campaign\">WordPress.com Launches New “Do Anything” Marketing Campaign</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 16th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #342:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Jan 2019 22:18:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"WPTavern: WordPress 5.1 to Introduce New White Screen Protection Feature, Beta 1 Now Available for Testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86765\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wptavern.com/wordpress-5-1-to-introduce-new-white-screen-protection-feature-beta-1-now-available-for-testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3611:\"<p><a href=\"https://wordpress.org/news/2019/01/wordpress-5-0-3-maintenance-release/\">WordPress 5.0.3</a> was released this week with more than a dozen fixes related to the block editor. The automatic background update has gone out and <a href=\"https://wordpress.org/about/stats/\">23.2% of sites are currently running on 5.0+,</a> with 47.2% hanging back at 4.9. Meanwhile, work on WordPress 5.1 charges forward and <a href=\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-1/\">Beta 1</a> is now available.</p>\n\n\n\n<p>One of the <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">projects Matt Mullenweg identified for 2019</a> was to merge the Site Health Check plugin into core to assist with debugging and encourage &#8220;good software hygiene.&#8221; The Site Health Check project, formerly called &#8220;ServeHappy,&#8221; began with the goal of helping users get their sites running on supported versions of PHP but has evolved to include other aspects of site maintenance and debugging.</p>\n\n\n\n<p>WordPress 5.1 brings one of the most exciting aspects of the Site Health Check project into core. It introduces a new <a href=\"https://core.trac.wordpress.org/ticket/44458\">white screen of death (WSOD) protection feature</a> that catches fatal errors so that users can still log into the admin to attempt to resolve the issue. In the past, non-technical users would have to contact their hosting companies or FTP into their files to try to fix plugin or theme compatibility issues by turning things off.</p>\n\n\n\n<p>In preparation for WordPress&#8217; highly anticipated <a href=\"https://make.wordpress.org/core/2018/12/08/updating-the-minimum-php-version/\">minimum PHP version increase</a>, 5.1 will display a warning and help users upgrade their version of PHP. The minimum will be bumped to 5.6 in April and, depending on feedback, will be bumped again to 7.0 in December 2019.</p>\n\n\n\n<p>&#8220;This project benefits not just WordPress users, but also the surrounding PHP ecosystem as a whole,&#8221; Jenny Wong said in the <a href=\"https://jwong.co.uk/blog/2019/01/10/how-wordpress-is-dropping-php-end-of-life-versions/\">notes</a> she published from the Site Health Check Project review at WCUS 2018. &#8220;Our hope is that this will prompt a lot of PHP updates across the web.&#8221;</p>\n\n\n\n<p>If you want to take advantage of more features from the <a href=\"https://wordpress.org/plugins/health-check/\">Site Health Check plugin</a>, you can install it from WordPress.org and visit the Dashboard > Health Check for a detailed overview of your site. It also has a very handy troubleshooting mode that enables a vanilla WordPress session, where all plugins are disabled, and a default theme is used, but only for your user. This works without disrupting the way the site displays to visitors.</p>\n\n\n\n<img />\n\n\n\n<p>WordPress 5.1 also introduces some updates for developers, including the ability to replace the cron system with a custom cron handler, set a custom location for WP_DEBUG_LOG, a new <code>wp_blogmeta</code> table, and a few other changes. </p>\n\n\n\n<p>WordPress 5.1 is currently slated for release on <a href=\"https://make.wordpress.org/core/5-1/\">February 21</a>. The upcoming release is a big step on WordPress&#8217; journey to becoming even more user-friendly. The idea that users will never again be locked out of their sites due to a WSOD is a major enhancement that will greatly improve the way they interact with WordPress&#8217; plugin system. It also makes the prospect of installing new themes and plugins less daunting for non-technical users.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Jan 2019 21:17:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 5.1 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6540\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/01/wordpress-5-1-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4140:\"<p>WordPress 5.1 Beta 1 is now available!</p>\n\n\n\n<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>\n\n\n\n<p>There are two ways to test the WordPress 5.1 beta: try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (you’ll want to select the “bleeding edge nightlies” option), or you can&nbsp;<a href=\"https://wordpress.org/wordpress-5.1-beta1.zip\">download the beta here</a>&nbsp;(zip).</p>\n\n\n\n<p>WordPress 5.1 is slated for release on&nbsp;<a href=\"https://make.wordpress.org/core/5-1/\">February 21</a>, and we need your help to get there. Here are some of the big items to test so we can find as many bugs as possible in the coming weeks.</p>\n\n\n\n<h2>Site Health Check</h2>\n\n\n\n<p>Site Health Check is an ongoing project aimed at improving the stability and performance of the entire WordPress ecosystem. The first phase of this project is included in WordPress 5.1. For the first time, WordPress will catch and pause the problem code, so you can log in to your Dashboard and see what the problem is (<a href=\"https://core.trac.wordpress.org/ticket/44458\">#44458</a>). Before, you’d have to FTP in to your files or get in touch with your host.</p>\n\n\n\n<p>Additionally, in April 2019, <a href=\"https://make.wordpress.org/core/2018/12/08/updating-the-minimum-php-version/\">WordPress&#8217; will increase its minimum supported PHP version to 5.6</a>. To help you check if you&#8217;re prepared for this change, WordPress 5.1 will show you a warning and help you upgrade your version of PHP, if necessary.</p>\n\n\n\n<h2>For Developers</h2>\n\n\n\n<ul><li>The Cron system can now be more easily replaced with a custom cron handler (<a href=\"https://core.trac.wordpress.org/ticket/32656\">#32656</a>).</li><li>When starting cron under PHP-FPM, the connection will return a response immediately, even for long running cron jobs (<a href=\"https://make.wordpress.org/core/2019/01/09/cron-improvements-with-php-fpm-in-wordpress-5-1/\">dev note</a>).</li><li><code>WP_DEBUG_LOG</code> can be set to a custom log location (<a href=\"https://core.trac.wordpress.org/ticket/18391\">#18391</a>).</li><li>Introduced the <code>wp_blogmeta</code> table (<a href=\"https://core.trac.wordpress.org/ticket/37923\">#37923</a>).</li><li>Added <code>LIKE</code> support to <code>meta_key</code> comparisons in <code>WP_Meta_Query</code> (<a href=\"https://core.trac.wordpress.org/ticket/42409\">#42409</a>).</li></ul>\n\n\n\n<p>There have been <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=5.1&group=resolution&col=id&col=summary&col=component&col=owner&col=type&col=priority&col=version&order=priority\">over 360 tickets closed</a> in WordPress 5.1, with numerous small bug fixes and improvements to help smooth your WordPress experience.</p>\n\n\n\n<p>Keep your eyes on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for more developer notes (which are <a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">assigned</a> the <code>dev-notes</code> tag) in the coming weeks detailing other changes in 5.1 that you should be aware of.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href=\"https://wordpress.org/support/forum/alphabeta\"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href=\"https://make.wordpress.org/core/reports/\"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href=\"https://core.trac.wordpress.org/tickets/major\"><em>a list of known bugs</em></a><em>.</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Miss my haiku?<br />I will have plenty for you<br />in the coming weeks.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Jan 2019 00:58:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WPTavern: Jetpack 6.9 Introduces New Blocks for Subscriptions, Related Posts, and Tiled Galleries\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86719\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://wptavern.com/jetpack-6-9-introduces-new-blocks-for-subscriptions-related-posts-and-tiled-galleries\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2988:\"<p><a href=\"https://jetpack.com/2019/01/10/jetpack-6-9-introducing-more-tools-for-the-new-block-editor/\">Jetpack 6.9</a> was released today with three new blocks for the editor. Subscriptions, Related Posts, and Tiled Galleries are now available as blocks under Jetpack in the block inserter tool.</p>\n\n\n\n<img />New blocks in Jetpack: Related Posts, Subscription Form, and Tiled Galleries\n\n\n\n<p>The most exciting thing for both Related Posts and the Subscription form is that they can now be placed anywhere within post or page content with a live preview. Previously these modules were limited to wherever the theme placed them, or widgetized areas in the case of the Subscription form. Below is an example:</p>\n\n\n\n<div class=\"wp-block-jetpack-subscriptions\"><div class=\"jetpack_subscription_widget\">			<form action=\"https://wptavern.com/feed\" method=\"post\" accept-charset=\"utf-8\" id=\"subscribe-blog-495\">\n				<p>Join 42,970 other subscribers</p>\n					<p id=\"subscribe-email\">\n						<label id=\"jetpack-subscribe-label\" for=\"subscribe-field-495\">\n							Email Address						</label>\n						<input type=\"email\" name=\"email\" class=\"required\" value=\"\" id=\"subscribe-field-495\" />\n					</p>\n\n					<p id=\"subscribe-submit\">\n						<input type=\"hidden\" name=\"action\" value=\"subscribe\" />\n						<input type=\"hidden\" name=\"source\" value=\"https://wptavern.com/feed\" />\n						<input type=\"hidden\" name=\"sub-type\" value=\"widget\" />\n						<input type=\"hidden\" name=\"redirect_fragment\" value=\"495\" />\n												<input type=\"submit\" value=\"Subscribe\" name=\"jetpack_subscriptions_widget\" />\n					</p>\n							</form>\n\n			\n		\n</div></div>\n\n\n\n<p>Tiled galleries can now easily be inserted, manipulated, and previewed in the new editor with all of the same features they had before. Styles and link settings for the galleries can be found in the block sidebar, but they are somewhat limited when <a href=\"https://wptavern.com/new-block-gallery-plugin-offers-a-suite-of-photo-gallery-blocks-for-gutenberg\">compared to other plugins like Block Gallery</a>. Now that the Jetpack team has the basic block in place, they can easily update it with new features.</p>\n\n\n\n<p>Users will need to have their Jetpack accounts connected to WordPress.com to access any of these new blocks, but they will all work on the Free plan.</p>\n\n\n\n<p>If you have been missing Jetpack shortlinks since Gutenberg was released, you will be pleased to find that Jetpack 6.9 brings them back under a new Jetpack icon at the top right of the block editor. Clicking on it reveals Jetpack&#8217;s publicize options as well as the shortlink.</p>\n\n\n\n<img />New Jetpack icon menu\n\n\n\n<p>Jetpack is constantly evolving its admin menu and user flows. This release brings changes to various screens, including a new “My Plan” section in the Jetpack dashboard, as well as a reorganization of the sections and cards under Jetpack > Settings. It also improves the notices displayed to users who have not connected their WordPress.com accounts.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Jan 2019 00:14:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Google Launches Opensource.dev as an Introduction to Open Source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86688\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/google-launches-opensource-dev-as-an-introduction-to-open-source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2463:\"<p>Google has launched a new educational site at <a href=\"https://opensource.dev/\">opensource.dev</a> that offers a succinct and approachable introduction to open source software and licensing. WordPress is cited as one of the more well-known examples in the opening paragraphs:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>It&#8217;s in your phone, your car, your TV, and your wifi-connected light bulbs. Open source components enable engineers to build on the work of a global community of developers to deliver better products faster and at lower cost. Linux, the Apache web server, Android, Firefox, and WordPress are examples of open source projects you may have heard of.<br /></p></blockquote>\n\n\n\n<p>Google relies heavily on open source for both internal tools and consumer-facing products. A few of the company&#8217;s more widely used open source projects include Android, Chromium, Chromium OS, Go, and Material Design icons, but there are also many smaller projects. Google has created <a href=\"https://opensource.google.com/\">more than 2,000 open source projects</a> in the last decade, which you can browse through using a fun, <a href=\"https://opensource.google.com/projects/explore/featured\">interactive explorer</a>.</p>\n\n\n\n<img />\n\n\n\n<p>The new Opensource.dev site gives an important nod to <a href=\"https://opensource.org/\">Open Source Initiative</a> (OSI) as the maintainer of the <a href=\"https://opensource.org/osd-annotated\">Open Source Definition</a> (OSD) and the globally-recognized authority on open source licensing.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Google and many other OSI <a href=\"https://opensource.org/sponsors\">sponsors</a> and <a href=\"https://opensource.org/affiliates\">affiliates</a> recognize the OSD as the definition of open source and OSI&#8217;s <a href=\"https://opensource.org/authority\">authority</a> as the maintainer of the OSD. Licenses which do not comply with the OSD might still provide access to the source code, but they&#8217;re not &#8220;open source&#8221;.</p></blockquote>\n\n\n\n<p>The site ends with a solid list of curated links to important open source organizations, foundations, and other resources for further exploration. Overall, <a href=\"https://opensource.dev/\">opensource.dev</a> provides a nice summary that answers the question, &#8220;What is open source?&#8221; It&#8217;s a resource agencies and freelancers might consider sharing with clients who are new to the concept.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Jan 2019 19:53:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Elementor Acquires Layers WP to Expand Compatible Theme Options for Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86701\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/elementor-acquires-layers-wp-to-expand-compatible-theme-options-for-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5844:\"<p>Elementor has <a href=\"https://elementor.com/blog/elementor-acquires-layers/\">acquired Layers WP</a>, a WordPress site builder that was previously marketed as an all-in-one theme solution for getting a business online. Layers co-founders David and Marc Perel identified Gutenberg as the main reason for the sale in their farewell <a href=\"https://www.layerswp.com/2019/01/elementor-acquires-layers-wp/\">announcement</a>:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>With the arrival of Gutenberg we realized that a big change was required for Layers to keep pace. A massive investment of time and money was needed so we had to assess the best way forward. Having spent all of our 20&#8217;s working 18 hour days to build beautiful WordPress products we reached a point where we felt it best to partner with another company to try take Layers to the next level.</p></blockquote>\n\n\n\n<p>Elementor is the leading WordPress page builder, with more than a million active installations. CMO Ben Pines said they estimate that number to be closer to 2 million, based on the daily install rate. The company has grown from 6 employees to 55 since it launched in June 2016.</p>\n\n\n\n<p>Elementor was well-prepared for Gutenberg&#8217;s inclusion in 5.0. While other page builders are still considering how to move forward with the new editor, Elementor released its <a rel=\"noreferrer noopener\" href=\"https://wordpress.org/plugins/block-builder/\" target=\"_blank\">Elementor Blocks for Gutenberg</a> plugin in October 2018, making it possible for users to insert any Elementor template into Gutenberg with one click.</p>\n\n\n\n<p>In the past, Layers didn&#8217;t meet the requirements for being listed in the WordPress.org themes directory, because the team decided not to follow best practices for keeping plugin and theme functionality separate. In 2016, <a href=\"https://wptavern.com/layers-ends-exclusive-arrangement-with-envato-launches-new-marketplace\">Perel said they were opting to maintain Layers as a hybrid product</a>, a theme that included plugin-like functionality, in order to keep third-party conflicts to a minimum, which he said also lessened their support burden. This prevented the product from receiving greater exposure on WordPress.org. As larger page builders began to dominate the market, Layers failed to gain the traction it needed to compete. Add Gutenberg to the mix and Layers&#8217; founders were in need of an exit.</p>\n\n\n\n<p>&#8220;We feel that this acquisition has come just at the right moment when WordPress itself is going through a huge amount of change,&#8221; Perel said. &#8220;With the release of Gutenberg and the new built-in post editor we realized that much of Layers would need to change in order to keep pace with the new look of WordPress and feel that <a rel=\"noreferrer noopener\" href=\"https://layerswp.us10.list-manage.com/track/click?u=5b9a020fcf797987098cc7bca&id=c493b36eaa&e=4441ba6d29\" target=\"_blank\">Elementor</a> is the best company to respond to the shifting tide of the industry.&#8221;</p>\n\n\n\n<h3>Layers&#8217; Theme Collection Is Now Free and Fully Compatible with Elementor</h3>\n\n\n\n<p>Elementor has released all 11 of <a href=\"https://www.layerswp.com/product-category/themes/\">Layers&#8217; themes</a> for free and Ben Pines said they are considering listing them on WordPress.org to make it easier for users to find them and stay updated. All of the themes have been updated to be fully compatible with both Gutenberg and Elementor. Existing Layers&#8217; customers will receive two months of support before support is handed over to the Layers user community.</p>\n\n\n\n<p>&#8220;Updating themes for compatibility is no easy matter, and we get thousands of requests asking for a theme that is compatible with Elementor,&#8221; Pines said. Finding a theme that is fully compatible with the page builder can be challenging. Pines said users often decide to use Elementor first and then look for a theme. There&#8217;s even a Facebook group called <a href=\"https://www.facebook.com/groups/126645814685793/?ref=br_rs\">Elementor + Which Theme?</a> with more than 2,400 members.</p>\n\n\n\n<p>&#8220;Themes still pose an issue for users,&#8221; Elementor&#8217;s head of business development, Zvi Shapira, said. &#8220;We saw value in continuing the Layers project, and not leaving thousands of Layers users without a home. Layers is a well worthy project, and offering a theme that is compatible with Elementor and Gutenberg for free for our users and for all WordPress users has great value.&#8221;</p>\n\n\n\n<p>Pines identified Layers&#8217; advanced Customizer panel as one of its chief selling points. Along with the acquisition, all of the Layers Pro features, such as resizing the logo, customizing buttons, and styling menus, are now rolled into the free version.</p>\n\n\n\n<p>Gutenberg is forcing some consolidation among page builders, as smaller operations struggle to keep pace with the technical updates required. Gutenberg is expected to standardize a way of layout building further along in the site customization phase. Pines said his team isn&#8217;t worried about how that will impact Elementor, even if core ends up overlapping with some of the solutions they offer in the plugin.</p>\n\n\n\n<p>&#8220;I really don&#8217;t know if there will be an impact and of what sort,&#8221; Pines said. &#8220;It&#8217;s like the blocks we developed for Gutenberg. We adapted to provide our users with the maximum flexibility.&#8221; The plugin ensures that users don&#8217;t have to choose between using Gutenberg and the page builder. Acquiring Layers&#8217; theme collection means Elementor users no longer have to look so hard to find a compatible theme.</p>\n\n\n\n<p>&#8220;Our hope is that Layers themes will help less tech-savvy users manage the entire site design hassle-free,&#8221; Pines said.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Jan 2019 23:29:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: WordPress 5.0.3 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6530\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/01/wordpress-5-0-3-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4566:\"<p>WordPress 5.0.3 is now available!</p>\n\n\n\n<p>5.0.3 is a maintenance release that includes 37 bug fixes and 7 performance updates. The focus of this release was fine-tuning the new block editor, and fixing any major bugs or regressions.</p>\n\n\n\n<p>Here are a few of the highlights:</p>\n\n\n\n<ul><li>15 block editor related bug fixes and improvements have been added to bundled themes. Make sure to update these for an improved block editing experience.</li><li><a href=\"https://core.trac.wordpress.org/query?status=closed&component=I18N&milestone=5.0.3&group=component&order=priority\">2 block editor related internationalization (I18N) bugs</a> have been fixed</li><li>Users with JavaScript disabled <a href=\"https://core.trac.wordpress.org/ticket/45453\">now see a notice</a> when attempting to use the block editor.</li><li>A few <a href=\"https://core.trac.wordpress.org/ticket/44770\">PHP</a> <a href=\"https://core.trac.wordpress.org/ticket/44809\">errors</a> in the Customizer have been fixed.</li><li>Some <a href=\"https://core.trac.wordpress.org/ticket/45615\">issues uploading common file types</a>, like CSVs, have been fixed.</li></ul>\n\n\n\n<p>For a full list of changes, please consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=5.0.3&group=component\">list of tickets on Trac</a>, <a href=\"https://core.trac.wordpress.org/log/branches/5.0?action=stop_on_copy&mode=stop_on_copy&rev=44522&stop_rev=44342&limit=100&sfp_email=&sfph_mail=\">changelog</a>, or read a <a href=\"https://make.wordpress.org/core/?p=36158\">more technical summary</a> on the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/download/\">download WordPress 5.0.3</a> or visit Dashboard → Updates on your site and click <em>Update Now</em>. Sites that support automatic background updates have already started to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.0.3:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/kloon/\">Gerhard Potgieter</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz (Greg) Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jobthomas/\">Job</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mmaumio/\">Muntasir Mahmud</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/panchen/\">panchen</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rickalee/\">Ricky Lee Whittemore</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, and <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Jan 2019 18:56:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: WordPress 5.1 to Replace “Blogging” References with “Publishing”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86675\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/wordpress-5-1-to-replace-blogging-references-with-publishing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1627:\"<p>WordPress 5.1 will replace the &#8220;Happy blogging&#8221; language in wp-config-sample.php with &#8220;Happy Publishing.&#8221; The next major release also cleans up a few other &#8220;blog&#8221; references by replacing them with the word &#8220;site.&#8221; A lot of tutorials and documentation will need to be updated. WordPress contributors are continuing to fine-tune the wording in various files to reflect its expanded capabilities as a publishing platform.</p>\n\n\n\n<img />\n\n\n\n<p>&#8220;As of this commit, WordPress is no longer a simple blogging platform,&#8221; Gary Pendergast wrote in the <a href=\"https://core.trac.wordpress.org/changeset/44455\">commit message</a>. &#8220;It&#8217;s now a comprehensive publishing solution.&#8221;</p>\n\n\n\n<p>This commit signifies the end of an era, which actually ended a long time ago but is now formally recognized in the software&#8217;s language. WordPress can still be used for blogging, but it&#8217;s so much more dynamic. These days, successful blogs can easily transition into e-commerce stores or online magazines without having to migrate to a new platform.</p>\n\n\n\n<p>With Gutenberg now in the hands of millions of users, publishing different types of content is becoming more accessible for those who don&#8217;t know how to code. The new era of &#8220;Happy Publishing&#8221; in 2019 will bring even more progress on that roadmap, enabling users to have a more unified editing experience for other aspects of content management, including <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">widgets and menus</a>.</p>\n\n\n\n<p><br /><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Jan 2019 23:44:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: GitHub Announces Free, Unlimited Private Repositories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86657\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/github-announces-free-unlimited-private-repositories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3488:\"<p>GitHub users no longer have to pay to keep code private. The company is now offering <a href=\"https://blog.github.com/2019-01-07-new-year-new-github/\" rel=\"noopener\" target=\"_blank\">unlimited private repositories to Free account users</a>, with up to three collaborators. Developers have different reasons for wanting to keep their code private &#8211; it may not be ready, they may be working on a side project, or may just be starting out in their coding journey. GitHub now makes it possible for users with free accounts to do that work in private, without having to upgrade to a Pro account for $7/month.</p>\n<p>This change brings the code hosting site more in line with competitors like GitLab.com, which allows for unlimited private projects and collaborators, and Bitbucket, a platform that has offered this for much longer. Bitbucket was actually <a href=\"https://news.ycombinator.com/item?id=4428278\" rel=\"noopener\" target=\"_blank\">GitLab&#8217;s inspiration for this model</a>. </p>\n<p>GitHub&#8217;s announcement was well-received but for many who have already moved to GitLab, this news come too late. Some are also wary of giving GitHub access to their private projects after Microsoft acquired the company for $7.5 billion last year. However, GitHub seems to be focusing its efforts less on monetizing the small fish and more on evolving the company&#8217;s Enterprise offering. It has combined its Business Cloud and Enterprise products into one unified &#8220;GitHub Enterprise&#8221; product that starts at $21/user/month.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Of course the GitHub update is so bigmega giantcorp can get you to give them more info &amp; in turn more power &amp; in turn more money, if that\'s annoying &amp;/or unsavory to you there are alternatives (that are less convenient but that\'s what this is all about anyway) no grump just fact</p>\n<p>&mdash; Jon Christopher (@jchristopher) <a href=\"https://twitter.com/jchristopher/status/1082353226329001985?ref_src=twsrc%5Etfw\">January 7, 2019</a></p></blockquote>\n<p></p>\n<p>&#8220;At GitLab we think that repositories will become a commodity,&#8221; GitLab CEO Sid Sijbrandij <a href=\"https://about.gitlab.com/2019/01/07/github-offering-free-private-repos-for-up-to-three-collaborators/\" rel=\"noopener\" target=\"_blank\">said</a> in reaction to GitHub&#8217;s announcement. &#8220;I think Microsoft will try to generate more revenue with people using Azure more instead of paying for repos. We&#8217;re focusing on making a single application for the entire DevOps lifecycle that can replace a lot of other tools.&#8221;  </p>\n<p>Every inch given in this space makes code sharing platforms more competitive. In terms of private repositories, GitHub has come close to offering what its smaller competitors have been giving away for free for a long time. If GitHub were to add Continuous Integration (CI) for free users to match GitLab&#8217;s free tier, for example, it might capture even more of the market. Different features sway different types of users to adopt one platform or another and eventually some of those turn into paying customers.</p>\n<p>For existing GitHub Free users, unlimited private repositories means the opportunity to keep their incomplete projects out of the public eye, instead of having people stumble on them and wonder why they don&#8217;t work as expected. It also frees up a few more dollars for Pro users who want to downgrade to Free accounts.  </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Jan 2019 18:46:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Dev Blog: The Month in WordPress: December 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2019/01/the-month-in-wordpress-december-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3528:\"<p>New features, a big event, and important announcements marked December as a milestone month for the WordPress community. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Release of WordPress 5.0</h2>\n\n\n\n<p>On December 6 <a href=\"https://wordpress.org/news/2018/12/bebo/\">WordPress 5.0 was released</a>. This release includes the much anticipated new block editor as the default editing experience. While some users have chosen to continue using the <a href=\"https://wordpress.org/plugins/classic-editor/\">Classic Editor</a> on their sites, many site owners have quickly upgraded to this latest version.<br /></p>\n\n\n\n<p>Two security and maintenance releases came out over the course of the month, with <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-2-maintenance-release/\">the latest update</a> providing a huge boost to performance and stability.<br /></p>\n\n\n\n<p>The new version of WordPress comes a new default theme: <a href=\"https://wordpress.org/themes/twentynineteen/\">Twenty Nineteen</a>. This theme is designed to highlight how the block editor can be used.<br /></p>\n\n\n\n<p>Want to get involved in developing WordPress Core? Follow <a href=\"https://make.wordpress.org/core\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Gutenberg Phase 2</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2018/12/08/gutenberg-phase-2/\">The next phase of Gutenberg</a> is being decided, starting with widgets, which will make it easier for users to customize their sites. This will be done with features being added to the Gutenberg plugin.<br /></p>\n\n\n\n<p>Want to get involved in develop the future of the WordPress dashboard? Follow <a href=\"https://make.wordpress.org/core\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>9 Projects for 2019</h2>\n\n\n\n<p>WordPress co-founder Matt Mullenweg outlined <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">9 projects for the year 2019</a>. These projects range from creating a block for navigations menus, porting all existing widgets into blocks, forming a triage team to tackle open issues on Trac and more.<br /></p>\n\n\n\n<p>A <a href=\"https://make.wordpress.org/core/2018/12/17/status-update-porting-widgets-to-blocks/\">status update</a> for porting existing widgets to blocks has been posted by Mel Choyce.</p>\n\n\n\n<h2>WordCamp US 2019 Dates announced</h2>\n\n\n\n<p><a href=\"https://2019.us.wordcamp.org/2018/12/12/wordcamp-us-2019-announcing-our-dates/\">WordCamp US 2019</a> will be held during Nov. 1-3, 2019, in St Louis, Missouri. It will be one of our largest events of the year and will feature Matt Mullenweg’s annual State of the Word address.<br /></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>v1.2.1 of the WordPress Coding Standards library <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.2.1\">has been released</a>.</li><li>A few revisions <a href=\"https://make.wordpress.org/core/2018/12/18/proposed-revisions-to-javascript-coding-standards/\">have been proposed</a> for the WordPress JavaScript coding standards.</li></ul>\n\n\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Jan 2019 09:18:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Aditya Kane\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: WordPress Governance Project Flagged as Unsanctioned, First Meeting Set for January 15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86573\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://wptavern.com/wordpress-governance-project-flagged-as-unsanctioned-first-meeting-set-for-january-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10550:\"<p>The WordPress Governance Project is a new community initiative, led by Rachel Cherry and Morten Rand-Hendriksen, that will <a href=\"https://wpgovernance.com/\">host its first meeting Tuesday, January 15 2019.</a></p>\n\n\n\n<p>The purpose of the project is to address two objectives:</p>\n\n\n\n<ol><li>The governance of the WordPress open source project and its various community components, and</li><li>WordPress’ role in the governance of the open web including representation in forums where decisions about the web platform and the Internet are made.</li></ol>\n\n\n\n<p>Hendriksen advocated for open governance when he introduced the project at WordCamp US in his presentation, <a href=\"https://wordpress.tv/2018/12/30/morten-rand-hendriksen-moving-the-web-forward-with-wordpress/\">Moving the Web forward with WordPress</a>. He discussed how the decisions made for WordPress&#8217; future affect a large portion the web. The project will first look at WordPress&#8217; internal governance structure and then move into the second aspect of getting WordPress a seat at the table in important discussions affecting the broader web.</p>\n\n\n\n<img />\n\n\n\n<p>Contributors on the project are aiming to propose a governance model for WordPress at or before WordCamp Europe 2019 or the Community Summit, if one is planned for 2019. The group plans to research existing governance models from corporations, government, and the open web community and submit their proposal to WordPress&#8217; current leadership for consideration.</p>\n\n\n\n<h3>WordPress Governance Project Seeks to Change Leadership Structure, Rand-Hendriksen Says Status Quo is &#8220;Not Tenable&#8221;</h3>\n\n\n\n<p>The governance project has piqued the public&#8217;s interest but some have found its objectives confusing. It is not clear what actions will be within the realm of possibility with the current benevolent dictator model WordPress has used. Part of the scope of the project is to &#8220;propose a leadership and governance model for the WordPress open source project and its communities.&#8221;</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">That\'s part of the job: to figure out how it can and should work. The status quo is not tenable, and leaves us out of important conversations about where the web and the internet is headed.</p>&mdash; Morten i Norge <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f1f8-1f1ef.png\" alt=\"🇸🇯\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f328.png\" alt=\"🌨\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f976.png\" alt=\"🥶\" class=\"wp-smiley\" /> (@mor10) <a href=\"https://twitter.com/mor10/status/1075145343019302912?ref_src=twsrc%5Etfw\">December 18, 2018</a></blockquote>\n</div>\n\n\n\n<p>The idea of governance means different things to audiences across cultures. The second aspect of the project that aims to get WordPress a seat at the table seems more feasible and more likely to be well-received by the project&#8217;s leadership. It might make more sense to split up the two objectives into different projects. WordPress&#8217; internal governance and its role in the greater web are very different topics, but the project&#8217;s creators seem to view them as inseparable.</p>\n\n\n\n<p>Matt Mullenweg hasn&#8217;t joined in the Twitter conversation about governance but he did address the topic on a recent <a href=\"https://poststatus.com/matt-mullenweg-on-gutenberg/\">Post Status podcast episode</a>.</p>\n\n\n\n<p>&#8220;When he was talking about open governance, my take was that he was talking about getting WordPress a seat at the table, and discussing these regulation changes and et cetera happening,&#8221; Mullenweg said. &#8220;I think the example last year was that there was this meeting at 10 Downing Street. Who was there? Was WordPress represented?</p>\n\n\n\n<p>&#8220;And he started talking about the Web Foundation, and I began thinking, “Wow, WordPress only represents a third of websites, and not even, really. It’s a third of the top 10 million. Another foundation like the Web Foundation actually might be a better vehicle to try to advocate on the open Web as a whole, versus just the people who happen to be using a single CMS.&#8221;</p>\n\n\n\n<p>When asked more about WordPress&#8217; leadership structure, Mullenweg reviewed the different approaches he has taken with the project. In 2018, the expression of his BDFL-style leadership was manifestly more overt than previous years, which may have influenced or even inspired the creation of the WordPress Governance Project.</p>\n\n\n\n<p>&#8220;There’s been a lot more leaders, but I would actually argue the point that WordPress has always been sort of my vision being set, or even my direct leadership,&#8221; Mullenweg said. &#8220;There was a good four or five years there where the leadership structure, because we’ve experimented with lots of different &#8211; we don’t call it governance &#8211; but essentially leadership structures in WordPress. For a while, we had kind of the … It wasn’t a committee approach, but essentially like the lead developers consensus approach. We did that for a few years.</p>\n\n\n\n<p>&#8220;Even from the beginning it wasn’t just me. It was me and Mike Little, so it’s never been solo. Then we went to where the release lead was the final decider, including over me, so that was probably, I don’t know, 3.9 to 4.7 maybe, that included overruling me as project lead for what was in the release or not, and that was to try to give a little more autonomy and flexibility to release leads. But the big change was a few years ago I said, &#8216;Okay, I’m going to take back over core WordPress development,&#8217; and that was to try to make some of these big changes happen. So right now it is much more of a benevolent dictator model, although both of those words are questionable. But, I don’t see that as the permanent forever structure.&#8221;</p>\n\n\n\n<p>Mullenweg may not be able to sustain this level of involvement in core leadership indefinitely, with all of his other responsibilities at Automattic. He said he is open to WordPress empowering other leaders in the future.</p>\n\n\n\n<p>&#8220;I’m not saying it always has to be me, but what I want is a strong, opinionated, thoughtful leader setting a bold direction, taking experiments and being willing to fail, comfortable with failure, is I think what you need to create great software,&#8221; he said.</p>\n\n\n\n<p>Brian DeConinck, a WordPress developer who has recently been a vocal critic of the project&#8217;s leadership, called for more transparency around the decision-making process in his <a href=\"http://www.briandeconinck.com/initial-thoughts-wordpress-governance/\">initial thoughts on the governance project.</a></p>\n\n\n\n<p>&#8220;Matt is the central figure of the WordPress project,&#8221; DeConinck said. &#8220;He’s been a guiding force since the beginning. Without a doubt, he’s an important and valued member of our community. I don’t imagine governance as a means of usurping him.</p>\n\n\n\n<p>&#8220;But should there be a single human face at the head of a project and a community at this scale? When people are critical of decision-making, having Matt at the center makes it easy to make criticism needlessly personal. This dynamic is hard on Matt and others in the project leadership, and ultimately toxic for the community.&#8221;</p>\n\n\n\n<p>DeConinck said in order for the governance project to be successful he thinks it needs to be international, multicultural, and multilingual, with diverse voices, as well as clear mechanisms for WordPress users to provide feedback. He outlined a detailed list of success criteria that hasn&#8217;t officially been embraced by governance project as it has yet to hold its first meeting.</p>\n\n\n\n<p>DeConinck&#8217;s suggestions are incompatible with the current BDFL-style leadership, as he claims that &#8220;feedback from a community of millions of users can’t adequately be processed and acted upon by a single individual listening and making decisions for the project.&#8221; WordPress has risen to become a dominant force on the web during the past 15 years under this style of leadership. Any meaningful proposal of change to the leadership structure will need to demonstrate how the new model can continue to enable WordPress to make rapid progress and maintain its relevance on the web.</p>\n\n\n\n<h3>WordPress Governance Project Flagged as Unofficial and Removed from WordPress.org</h3>\n\n\n\n<p>Earlier this morning, WordPress Community Team representative Francesca Marano <a href=\"https://make.wordpress.org/community/2019/01/07/wordpress-governance-project-change-of-venue/\">posted a notice</a> on behalf of the governance project&#8217;s leadership to announce that the project has been removed from WordPress.org.</p>\n\n\n\n<p>&#8220;Concerns have been raised about the posting of news about the WordPress Governance Project on make.wordpress.org and use of the <a href=\"https://make.wordpress.org/community/tag/community-team/\">#community-team</a> Slack channel giving the impression the project is sanctioned as an official WordPress project,&#8221; Marano said. &#8220;It has not received such sanctions from WordPress leadership.&#8221;</p>\n\n\n\n<p>&#8220;We went through what we believed were the appropriate channels for launching the project through the Community group (ie speaking to group members, asking for access to the Make blog, coordinating with the team and others to find a meeting time which didn’t collide with others, etc),&#8221; Morten Rand-Hendriksen said. &#8220;We were later informed the project was not sanctioned by WordPress leadership and therefore cannot use the Make blog or Slack.&#8221; He would not comment further on what transpired or the communication his team received.</p>\n\n\n\n<p>For the time being, it looks like the governance project will need to prove its worth independently before being officially adopted by WordPress. Many other community-led efforts and tools have followed this same process before coming under the umbrella of core. </p>\n\n\n\n<p>The project now has its own dedicated website at <a href=\"https://wpgovernance.com/\">wpgovernance.com</a> and a Slack instance at <a href=\"https://join.slack.com/t/twgp/signup?x=x-517030675360-517548723457\">twgp.slack.com</a>. The first meeting was set for January 8 but has been postponed to January, 15, 1600 UTC to allow participants to sign up at the new Slack workspace.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Jan 2019 19:49:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Beaver Builder Doubles Down on Serving Power Users in Response to Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86569\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/beaver-builder-doubles-down-on-serving-power-users-in-response-to-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3074:\"<p>At WordCamp US I had the opportunity to chat with <a href=\"https://www.wpbeaverbuilder.com/\">Beaver Builder</a> co-founder Robby McCullough about how the page builder is navigating the Gutenberg era. The proliferation of blocks for the new editor has made it easy for non-technical WordPress users to add things like pricing tables, maps, tabs, accordions, and other UI elements. Future iterations of Gutenberg will soon tackle layouts. These improvements to core will radically change how page builder products are marketed to WordPress users.</p>\n\n\n\n<p>&#8220;One of the decisions we made in response to the news of Gutenberg early on is that we wanted to double down on our professional power users,&#8221; McCullough said. &#8220;It took us a long time in our growth as a business to figure out who our customers were. We realized there were two distinct camps: one that was like a do-it-yourselfer type, someone who maybe had a small business or a hobby website who wanted to use WordPress but wasn&#8217;t familiar with writing code. The other was more of a freelancer &#8211; maybe a one or two person agency, people who were building lots of websites and had development and frontend skills. We see that as the space where we want to live now. We&#8217;re hoping to continue solving problems and making the experience better for folks with a few more skills in their tool belts.&#8221;</p>\n\n\n\n<p>Following up with McCullough later, he said that applying this new direction to Beaver Builder is already translating into the features they are prioritizing for the plugin.</p>\n\n\n\n<p>&#8220;For example, in our latest major release, we added percent, em, rem, and viewport-based units for things like font sizes, margins, and padding,&#8221; McCullough said. &#8220;Without a basic understanding of CSS, this feature wouldn&#8217;t be too helpful. We also added dozens of pre-built row templates. So, instead of creating single-page designs, our goal was to create a modular system of rows that can be mixed and matched to build out sites. We&#8217;re working to build features that better enable folks who build lots of websites.&#8221;</p>\n\n\n\n<p>In the interview below we discussed the current integration between Gutenberg and Beaver Builder. McCullough said his team is considering bringing blocks into Beaver Builder or bringing Beaver Builder content into Gutenberg; both are possibilities. His team has been waiting to see how quickly the community adopts Gutenberg before making any major decisions.</p>\n\n\n\n<p>&#8220;My hope is that there&#8217;s still going to be a place for page builders, Beaver Builder and everyone in this space, to have a little bit more agility,&#8221; McCullough said. &#8220;We can see Gutenberg kind of be like Instagram in that it&#8217;s going to appeal to a mass audience. We like to live in the Photoshop space where you&#8217;re going to get a lot of fine-tuned controls, solving problems and creating features that are going to help people build websites every day.&#8221;</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Jan 2019 20:20:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: WP Storybook: A Handy Reference for WordPress React UI Components\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86604\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wp-storybook-a-handy-reference-for-wordpress-react-ui-components\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1553:\"<p><a href=\"https://lubus.in/\">LUBUS</a>, a web design agency in Mumbai, has published a site called <a href=\"https://wp-storybook.netlify.com/\">WP Storybook</a> that offers an interactive way to explore various WordPress React components. It allows developers to browse and search UI components and see a live preview of the component next to example source code. </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<a href=\"https://cloudup.com/cpA4-xaPukn\"><img src=\"https://i0.wp.com/cldup.com/yCZSRiLkVv.gif?resize=627%2C297&ssl=1\" alt=\"Wp storybook\" width=\"627\" height=\"297\" /></a>\n</div>\n\n\n\n<p>WP Storybook lets you view different states for various UI components and even test them on different viewports. The development team at LUBUS is adding more as they discover them while building projects with Gutenberg using reusable components. Their goal in publishing the project is to help developers work faster by making components easier to discover and reference.</p>\n\n\n\n<p>LUBUS&#8217; roadmap for WP Storybook includes the following:</p>\n\n\n\n<ul><li>Add as many possible components and cases as possible</li><li>Capability to view and copy the example source</li><li>Playground to test out various props and options using knobs addon</li><li>Categorize components into groups for better discoverability</li><li>Recipe stories showcasing composing of various components</li></ul>\n\n\n\n<p>If you want to contribute to WP Storybook or log an issue, the code is open source (MIT license) on <a href=\"https://github.com/lubusIN/wp-storybook\">GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jan 2019 23:51:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: WordPress.com Launches New “Do Anything” Marketing Campaign\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86590\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wordpress-com-launches-new-do-anything-marketing-campaign\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4698:\"<img />Hilde Lysiak reports on local news in her community on her WordPress.com-powered <a href=\"https://orangestreetnews.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Orange Street News</a> website\n\n\n\n<p>WordPress.com is kicking off 2019 with a new national marketing campaign that features 14 entrepreneurs, writers, and non-profit organizations who are using the platform to make a big difference for their communities. The campaign is focused around the question: &#8220;What Would You Do If You Could Do Anything?&#8221; </p>\n\n\n\n<p>WordPress.com published its inaugural <a href=\"https://en.blog.wordpress.com/2019/01/03/introducing-the-2019-anything-is-possible-list/\">‘Anything Is Possible’ List</a>, which includes 10 mini-documentaries ranging from 1 minute to 1:44. A few of the stories highlighted include Congolese-American sisters operating a successful hair salon in NYC, a 12-year-old journalist running her own online publication, a blogger who went viral and published her own book, and a non-profit fighting misinformation and extremist narratives. Each is presented more in depth on a new <a href=\"https://wordpress.com/do-anything/\">Do Anything</a> campaign site that was launched today.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>Do Anything is WordPress.com&#8217;s first large-scale national brand campaign. It will debut TV, print, and digital advertising spots in The New Yorker and on TV networks, including The History Channel, CNN, and National Geographic. WordPress.com will also be running ads on podcasts, including The Daily and NPR. The new 30-second TV ad was created by <a href=\"http://interestingdevelopment.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Interesting Development</a>, an agency based in New York.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>Much like gym memberships, WordPress.com tends to see more action at the beginning of a new year with 20% more sites are created in January than the average, according to Mark Armstrong at Automattic. The timing for the campaign is aimed at tapping into the motivation that millions of users have for starting a new business or blog at this time of year.</p>\n\n\n\n<p>In 2016, Automattic started <a href=\"https://ma.tt/2016/01/marketing-at-automattic/\">hiring for more marketing positions</a> as an answer to Wix, Weebly, Squarespace, Web.com, EIG, and Godaddy, competitors that Matt Mullenweg identified as having spent over $350M in advertising that year. In 2017, the company created <a href=\"https://design.blog/2017/05/18/how-a-detroit-hackathon-turned-into-wordpress-coms-first-ever-tv-spots/\">five commercials</a>, its first ever TV spots, as part of a series called &#8220;Free to be.&#8221; Many found the commercials to be confusing and the <a href=\"https://wptavern.com/wordpress-coms-tv-commercials-are-confusing\">messaging wasn&#8217;t clear</a>.</p>\n\n\n\n<p>By contrast, the 2019 &#8220;Do Anything&#8221; campaign is much better at demonstrating what people can do with WordPress.  &#8220;As we share new work with the world we realize that some things will hit and some things will miss,&#8221; Automattic’s SVP of Brand, Michelle Broderick said. The company has continued to evolve its marketing based on feedback. This particular campaign was directly inspired by the people who are making things happen with WordPress.</p>\n\n\n\n<p>&#8220;We were inspired by the people who use WordPress to imagine a better world,&#8221; Broderick said. &#8220;We saw everyone from bloggers to business owners to scientists to politicians using WordPress to share their story.&#8221;<br /></p>\n\n\n\n<p>The new TV spot is an improvement over previous campaigns in terms of communicating a clear message, but it doesn&#8217;t carry the same authenticity as the mini-documentaries. Each one is relatable and inspiring in telling the stories of people who have already answered the question &#8220;What would you do if you could do anything?&#8221; Many of those who were featured have carried on with their dreams through perseverance, despite tragedy and struggle along the way. The documentaries are more poignant than the TV spot, which has the added constraint of having to capture the viewer&#8217;s attention with a shorter amount of time. </p>\n\n\n\n<p>The &#8220;Do Anything&#8221; campaign as a whole is a good representation of the power of WordPress and should also help boost name recognition for the software in general. Broderick said Automattic is expecting tens of millions of impressions across TV, print, digital, and podcasts. The campaign is aimed at the American market but Armstrong said they hope to branch out into international markets in the future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jan 2019 20:05:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"HeroPress: YOU Make The Difference\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2672\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://heropress.com/essays/you-make-the-difference/#utm_source=rss&utm_medium=rss&utm_campaign=you-make-the-difference\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10124:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/010219-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordPress still attracts the same types of people. Those who are brave, who are kind, who are looking to the future.\" /><blockquote><p>“A place is only as good as the people you know in it. It&#8217;s the people that make the place.”</p>\n<p>― Pittacus Lore, I Am Number Four</p></blockquote>\n<p>This quote is a large part of the space WordPress holds within me.</p>\n<p>Coming from a career in Civil Engineering and a background of Industrial Technology WordPress as a software drew me as a tool. It was a means to an end. I wasn’t blogging, I wasn’t looking to create an online voice, I was looking to build something and I needed a tool.</p>\n<p>I was good at learning software, had used over a dozen very complicated systems by that point in my life, so I found WordPress and started learning it too.</p>\n<p>A very melodramatic discovery story of WordPress for a HeroPress piece, I know.</p>\n<p>The truth is I probably wouldn’t have stuck around were it not for the people. The story has evolved for me over the years but that’s the beginning. The beginnings are usually far less romantic than the endings in any story.</p>\n<p>So why was I looking for a tool? Well, that’s a bit better of a story.</p>\n<h3>Looking For A Tool</h3>\n<p>I’ll prep you with the fact that I was driven, opinionated, blunt, and defensive. I had spent my college years and first years in my chosen career in a male-dominated industry. I learned how to navigate and thrive and took a job at a very large Engineering firm. About a year in I was granted a fantastic opportunity to work on a small startup team that was doing amazing work in 3D scanning.</p>\n<p>Being a startup team demanded that we produce more and more work to determine the viability of the investment the firm was making in my boss’s plans. As we worked on landing deals that required overnight travel and training that required days away it brought to the surface a reality that wasn’t so good for me. As the only woman on the team, I doubled the travel budget. They needed two of everything for me since I couldn’t bunk up with my male coworkers.</p>\n<p>The next months were a perfect storm of events. I made an opinionated comment to a division supervisor that was above my pay grade which enhanced my visibility as a problem. Then I got pregnant.</p>\n<blockquote><p>You can’t walk around 3D scanning a PVC manufacturing facility while with child. They also don’t make maternity coveralls.</p></blockquote>\n<p>I was officially dead weight. I lost the pregnancy and became depressed, anxious. It was easy for them to let me go then, I had stopped being productive. I found out a couple weeks after losing my job I was pregnant again. Talk about a whirlwind.</p>\n<p>My husband was in the process of changing careers from Retail to Healthcare and maternity leave is not something you like to bring up on an interview, so I decided to find something to do from home. I started a local family newsletter and decided to create an online marketplace for moms who craft out of their homes, like a local Etsy. This is where my search for a tool began.</p>\n<h3>Starting Again</h3>\n<p>A few months later, with no WordPress experience other than what I managed to rake together while I was learning and building, I got a job at WPMUDEV doing product support. I needed the extra cash so my other projects took a backseat and I was soon completely engulfed. Through that job, I came to learn about the ecosystem that was WordPress. I had no idea that there was a place that existed outside of the corporate universe that could exist without sexist politics, hierarchy, and status quo. It was mind-blowing.</p>\n<p>I was so hungry for people to interact with after being in such a team-oriented environment for so long. I loved working with others and I felt very alone until I found this great group of people. And oh what joy when I found it! I was a new mom at home with a baby trying to learn how to handle that new space in my life. My husband had completed a successful career change and we had moved. I had another baby. I met my friend Mason and we started a business together. I lost another pregnancy.</p>\n<blockquote><p>In the space of two short years, my life had completely turned upside down and landed me in the place that would help me survive it all.</p></blockquote>\n<p>You see, without the people, I wouldn’t have made it. I wouldn’t have been able to navigate the overwhelming waters that surrounded me outside of my day to day work. The people who befriended me, who were kind to me, who made jokes with me, who valued my contribution and intelligence without ever having set eyes on me, those were the people who kept me sane. They let me see I didn’t need to be defensive, that I didn’t have to be sorry about being opinionated, that I was different and that I should lean into that.</p>\n<p>When I left product support to work with Mason at, what was formerly called, WP Valet it was yet another major shift in my life. The product space was so different than the agency space and I quickly adapted to the new pace. There was a rush of excitement while learning new things and applying skills that had laid dormant for some time. My father was a Navy man and an entrepreneur and shaped so much of how I applied myself, now I was in a place to push myself even further and define my own path. I was spoiled by my first interactions at WP Valet with developers like Zé Fontainhas and Mario Peshev. The whole thing was thrilling!</p>\n<h3>And Then I Went To WordCamp</h3>\n<p>My first WordCamp was WordCamp Miami 2013. It was probably the first time I’d traveled alone in some time and I was meeting my work family for the first time. On top of that, I was in MIAMI, so it was bound to be a great trip. I got to meet David Bisset and Lisa Sabin Wilson that year, and so many other wonderful people. I was on cloud 9, each and every personality was inspiring to me, all so different than what my former colleagues and field specialists were like. To top it off I walked into my first talk at a WordCamp, Pippin Wilson was talking about how developers should share code. I was beside myself, sharing your code and supporting each other? Not cutthroat over projects and billable hours?! I was swooning over the idea of ‘community’ and what I had stumbled into.</p>\n<blockquote><p>Needless to say, I left 100% hooked on my path. WordPress was my life from that time on.</p></blockquote>\n<p>We as people have long-tailed stories that weave and zigzag and turn back on themselves. We are products of ALL the things going on in our lives at any given moment. Without the personal struggles and the professional push, I would not have been able to value the community as much as I do. The overlapping of personal and professional trials and successes are what gives depth to our experiences. Their overlapping is what colors the story of our lives.</p>\n<p>Fast forward a few years through a cross-state move, speaking selections, the birth of another child, a company expansion, another pregnancy loss, a company rebranding, a company restructuring, a return to school for Yoga training, and all the other things life throws in your path with family and work and here I sit typing my story at my counter while my middle child hums ‘Mamma Mia’ next to me. I am forever grateful for the life that I’ve been able to live through a whole new career in WordPress.</p>\n<h3>You Make The Difference</h3>\n<p>I am grateful for every soul I have met. I had the privilege to work with and become friendly with some of the nicest and most genuine people I will ever meet online and face to face. The ecosystem of WP has changed a lot over the years as most ecosystems do, but it still attracts the same types of people. Those who are brave, who are kind, who are looking to the future. My world is so much bigger because of all you. Thank You  <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: YOU Make The Difference\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=YOU%20Make%20The%20Difference&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fyou-make-the-difference%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: YOU Make The Difference\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fyou-make-the-difference%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fyou-make-the-difference%2F&title=YOU+Make+The+Difference\" rel=\"nofollow\" target=\"_blank\" title=\"Share: YOU Make The Difference\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/you-make-the-difference/&media=https://heropress.com/wp-content/uploads/2020/01/010219-min-150x150.jpg&description=YOU Make The Difference\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: YOU Make The Difference\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/you-make-the-difference/\" title=\"YOU Make The Difference\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/you-make-the-difference/\">YOU Make The Difference</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Jan 2019 20:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Kimberly Lipari\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Matt: Democratize Publishing, Revisited\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48797\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://ma.tt/2018/12/democratize-publishing-revisited/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1674:\"<p>During my <a href=\"https://www.youtube.com/watch?v=v2aNNlC8TUE\">State of the Word Q&amp;A</a> I received some blogging homework from <a href=\"https://torumiki.com/\">Toru Miki</a>, a WordPress contributor based in Tokyo. He asked me to revisit the WordPress mission, “Democratize Publishing,” and reflect on what that mission means to me today. So here you go, Toru: <br /></p>\n\n\n\n<p>For many years, my definition of “Democratize Publishing” has been simply to help make the web a more open place. That foundation begins with the software itself, as outlined by the <a href=\"https://ma.tt/2014/01/four-freedoms/\">Four Freedoms</a>: <br /></p>\n\n\n\n<p>0. The freedom to run the program, for any purpose.</p>\n\n\n\n<p>1. The freedom to study how the program works, and change it so it does your computing as you wish.</p>\n\n\n\n<p>2. The freedom to redistribute copies so you can help your neighbor.</p>\n\n\n\n<p>3. The freedom to distribute copies of your modified versions, giving the community a chance to benefit from your changes.<br /></p>\n\n\n\n<p>In 2018, the mission of “Democratize Publishing” to me means that people of all backgrounds, interests, and abilities should be able to access Free-as-in-speech software that empowers them to express themselves on the open web and to own their content.<br /></p>\n\n\n\n<p>But as Toru noted in the original question, “Democratize Publishing” has come to mean many things to many people in the WordPress community. That’s one reason I like it. The WordPress mission is not just for one person to define. <br /></p>\n\n\n\n<p>So I’d like to ask everyone: What does “Democratize Publishing” mean to you? &nbsp;<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Dec 2018 00:06:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Sponcon Posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48788\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://ma.tt/2018/12/sponcon-posts/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:422:\"<p>I found <a href=\"https://www.theatlantic.com/technology/archive/2018/12/influencers-are-faking-brand-deals/578401/\">this post by Taylor Lorenz</a> describing how aspiring influencers are posting fake, unpaid sponsored content to raise their status or hoping to nab a real sponsorship <a href=\"https://www.theatlantic.com/technology/archive/2018/12/influencers-are-faking-brand-deals/578401/\">is totally bananas</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Dec 2018 16:08:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: WordPress Designers Explore Ideas for Moving Navigation to a Block Interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86518\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wordpress-designers-explore-ideas-for-moving-navigation-to-a-block-interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5176:\"<p>Creating a block for navigation menus is one of the <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">nine projects</a> Matt Mullenweg identified for 2019 that will make a big impact for WordPress users. It&#8217;s also one of the most challenging from a UI perspective. At WordCamp US&#8217; contributor day, the design team <a href=\"https://make.wordpress.org/design/2018/12/18/exploring-a-nav-block-at-wordcamp-us/\">explored ideas for what a navigation block might look like in the new editor</a>.</p>\n\n\n\n<img />\n\n\n\n<p>The team&#8217;s designs for a navigation block are still in the rough sketches stage, but it&#8217;s interesting to see different approaches as the project develops.</p>\n\n\n\n<p>&#8220;If the Nav block could live in a container block (columns perhaps), then the settings for it could be tweaked in the sidebar,&#8221; XWP designer Joshua Wold said. &#8220;A further problem comes up when you try to figure out how much of the design of the nav should be controlled by the theme vs the Gutenberg editor.&#8221;</p>\n\n\n\n<p>This is an important question  that will need to be answered in the near future &#8211; not only for navigation but also more broadly for the future of the role of themes in WordPress. We will be exploring this in more depth in future posts.</p>\n\n\n\n<p>Designer Mel Choyce and Riad Benguella (one of the leads for Gutenberg phase 2), are currently soliciting ideas from the wider WordPress community about how the project should tackle the upcoming customization focus.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">You care about WordPress and you don\'t have the time to contribute day to day, I\'d love to hear your thoughts to get some inspiration about Phase 2 of Gutenberg, Site building, Customization&#8230; A tweet, a blog post, whatever works best for you. <a href=\"https://twitter.com/hashtag/gutenideas?src=hash&ref_src=twsrc%5Etfw\">#gutenideas</a> <a href=\"https://t.co/Y7tod5DoB2\">https://t.co/Y7tod5DoB2</a></p>&mdash; Riad Benguella (@riadbenguella) <a href=\"https://twitter.com/riadbenguella/status/1075458929579167745?ref_src=twsrc%5Etfw\">December 19, 2018</a></blockquote>\n</div>\n\n\n\n<p>One of the chief complaints about the first phase of the Gutenberg project was the <a href=\"https://make.wordpress.org/core/2018/10/05/gutenberg-phase-2-leads/#comment-34092\">lack of public discussion</a> about the goals and the process of creating the editor. The Gutenberg team&#8217;s willingness to collate ideas across multiple mediums demonstrates a strong effort to seek out more diverse perspectives for phase 2. Ideas have already started rolling in.  </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Riffing on something <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> said at <a href=\"https://twitter.com/hashtag/SOTW?src=hash&ref_src=twsrc%5Etfw\">#SOTW</a> <a href=\"https://twitter.com/hashtag/WCUS?src=hash&ref_src=twsrc%5Etfw\">#WCUS</a>: To map out the future of themes / <a href=\"https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw\">#Gutenberg</a> 2.0 / <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> Next, maybe ship a Block Zen Garden type thing and asking designers / devs to create solutions, then work backwards to find a UI / UX to make that possible.</p>&mdash; Morten i Norge <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f1f8-1f1ef.png\" alt=\"🇸🇯\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f328.png\" alt=\"🌨\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f976.png\" alt=\"🥶\" class=\"wp-smiley\" /> (@mor10) <a href=\"https://twitter.com/mor10/status/1073664020471660544?ref_src=twsrc%5Etfw\">December 14, 2018</a></blockquote>\n</div>\n\n\n\n<p>&#8220;Rather than starting with the back-end UI, we can start with the front-end result and build a UI to make the building of that front-end possible without messing up the accessibility and resilience of the root HTML document,&#8221; Morten Rand-Hendricksen said. &#8220;At the root of this would be CSS Grid as the main layout module to allow drag-and-drop style block layouts without making changes to the HTML source order.&#8221;</p>\n\n\n\n<p>Many of the ideas that are coming in so far relate more broadly to site customization. These include <a href=\"http://theme.tips/blog/2018/12/21/random-thoughts-about-gutenizer-phase-2/\">questions about what role the Customizer will play</a> and requests for features like creating <a href=\"https://twitter.com/alihs707/status/1075640228470243329\">custom widths on the fly</a> and the <a href=\"https://twitter.com/alihs707/status/1075640228470243329\">ability to drag content across columns.</a> If you have ideas about how navigation can be implemented in a block, take some time before the end of the year and drop your comments on the <a href=\"https://make.wordpress.org/design/2018/12/18/exploring-a-nav-block-at-wordcamp-us/\">make/design post</a> or write your own post and leave a link for others to share feedback.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Dec 2018 23:52:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Matt: Seneca on Friendship\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48764\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://ma.tt/2018/12/seneca-on-friendship/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:705:\"<blockquote class=\"wp-block-quote\"><p>But nothing delights the mind so much as fond and loyal friendship. What a blessing it is to have hearts that are ready and willing to receive all your secrets in safety, with whom you are less afraid to share knowledge of something than keep it to yourself, whose conversation soothes your distress, whose advice helps you make up your mind, whose cheerfulness dissolves your sorrow, whose very appearance cheers you up!</p></blockquote>\n\n\n\n<p>You can read <em>On Tranquility of Mind</em> <a href=\"https://en.wikisource.org/wiki/Of_Peace_of_Mind\">online for free here</a> or I enjoyed <a href=\"https://www.amazon.com/dp/B00BCU07LO\">this edition from Penguin</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Dec 2018 20:55:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: 9 Year Old Shares his Journey Learning React\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86488\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wptavern.com/9-year-old-shares-her-journey-learning-react\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:819:\"<p>If learning React is among your New Year&#8217;s goals, here&#8217;s some inspiration from nine-year-old Revel Carlberg West. The video below is a recording of his presentation at the <a href=\"https://www.meetup.com/ReactNYC/\">React NYC</a> meetup. West describes how he learned basic HTML, CSS, and JavaScript and then moved on to learn React using the <a href=\"https://codesandbox.io/\">CodeSandbox</a> online code editor. He also gives a live demo of <a href=\"https://reactjs.org/docs/hooks-intro.html\">React Hooks</a> in action, a new feature that Sophie Alpert and Dan Abramov introduced at React Conf 2018. The code for West&#8217;s traffic light demo is <a href=\"https://codesandbox.io/s/xlw615w7ow\">available on CodeSandbox</a> if you want to follow along.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Dec 2018 19:59:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: WordPress 5.0.2 Released with Performance Gains of 330% for Block-Heavy Posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86510\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wordpress-5-0-2-released-with-performance-gains-of-330-for-block-heavy-posts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1544:\"<p><a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-2-maintenance-release/\">WordPress 5.0.2</a>, the of first of two rapid releases following 5.0, is now available. Sites with automatic background updates enabled should already be on the latest version. </p>\n\n\n\n<p>This release addresses performance issues, one of the chief complaints for users who have adopted the block editor. It brings 45 improvements to the editor, with 14 of those related to performance and 31 bug fixes. According to Gary Pendergast, &#8220;the cumulated performance gains make it 330% faster for a post with 200 blocks.&#8221;</p>\n\n\n\n<p>This maintenance release also fixes 17 editor-related bugs in the default WordPress themes as well as internationalization issues related to script loading.</p>\n\n\n\n<p>Overall, 5.0.2 updates have gone smoothly, with the exception of a few conflicts with a handful of plugins. Most notably, WooCommerce store administrators found that the <a href=\"https://github.com/woocommerce/woocommerce/issues/22271\">Orders tab had disappeared</a> after their sites updated. WooCommerce has fixed the issue in a quick patch release (version 3.5.3) that was pushed out this morning.</p>\n\n\n\n<p>NextGEN Gallery creator Erick Danzer also reported <a href=\"https://wordpress.slack.com/archives/C02RQBWTW/p1545334477273500\">a minor issue with the Classic block</a> that prevents users from editing galleries via the placeholder the plugin had added. A fix for that issue should be forthcoming in an update to the plugin.<br /></p>\n\n\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Dec 2018 21:14:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Gutenberg-Inspired Jenga Game “Gutenblox” Now Available for Sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86500\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wptavern.com/gutenberg-inspired-jenga-game-gutenblox-now-available-for-sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1691:\"<div class=\"wp-block-image\"><img />photo credit: <a href=\"https://xwp.co/\">XWP</a></div>\n\n\n\n<p>XWP&#8217;s Gutenberg-inspired Jenga sets were arguably the most innovative swag at WordCamp US this year, but there weren&#8217;t enough to go around. Gutenblox, fondly dubbed &#8220;the Other Block Building Interface,&#8221; is now available on its own website where anyone can buy a set.</p>\n\n\n\n<p>The <a href=\"https://gutenblox.fun\">Gutenblox.fun</a> store is running on <a href=\"https://wordpress.org/plugins/bigcommerce/\">BigCommerce</a> with the new <a href=\"https://wordpress.org/themes/twentynineteen/\">Twenty Nineteen</a> theme active. It includes the rules of the game, cleverly adapted to the concept of Gutenblox:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Blocks treat Paragraphs, Headings, Media, etc. all as components that strung together make up the tower. Replacing the traditional concept of board games, Gutenblox is designed with progressive enhancement, meaning as new blocks are added to the top of the tower, they are backward compatible with all legacy content (although the legacy structure may become unstable as new blocks are added on).</p><p>We hope to offer rich value to players who will start with the foundation of a stable, accessible, and secure architecture, and then use a simple drag-and-drop method for modification.</p></blockquote>\n\n\n\n<p>If you&#8217;re looking for a last-minute holiday gift or birthday gift for a friend who loves WordPress, Gutenblox is fun option. It also helps support a good cause. XWP is donating all profits from the sales of the game to the <a href=\"https://wordpressfoundation.org/\">WordPress Foundation</a>. </p>\n\n\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Dec 2018 17:02:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Introduction to the WPGraphQL Project with Jason Bahl and Ryan Kanner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86483\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/introduction-to-the-wpgraphql-project-with-jason-bahl-and-ryan-kanner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1187:\"<p>At WordCamp US 2018 I had the chance to sit down with <a href=\"https://twitter.com/jasonbahl\">Jason Bahl</a> and <a href=\"https://twitter.com/CodeProKid\">Ryan Kanner</a>, both engineers at Digital First Media in Denver, Colorado, and contributors to the <a href=\"https://www.wpgraphql.com/\">WPGraphQL</a> project. WPGraphQL is an open source plugin that provides an extendable GraphQL schema and API for any WordPress site.</p>\n\n\n\n<p>Bahl, who created and maintains the project, also gave a lightning talk at WCUS on <a href=\"https://2018.us.wordcamp.org/session/gutenberg-graphql-and-building-blocks/\">using GraphQL with Gutenberg</a> to improve the performance of custom blocks, as well as the developer experience of building them.</p>\n\n\n\n<p>In our interview, Bahl and Kanner offer a general overview of the differences between GraphQL and REST. They explained how Digital First Media improved performance for the company&#8217;s publications by switching from REST to GraphQL. We also discussed how Gutenberg is a great use case for GraphQL and whether the project is something that could someday be included in WordPress core.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Dec 2018 04:00:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: WordPress 5.0.2 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6509\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/12/wordpress-5-0-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4589:\"<p>WordPress 5.0.2 is now available!</p>\n\n\n\n<p>5.0.2 is a maintenance release that addresses 73 bugs. The primary focus of this release was performance improvements in the block editor: the cumulated performance gains make it 330% faster for a post with 200 blocks.</p>\n\n\n\n<p>Here are a few of the additional highlights:</p>\n\n\n\n<ul><li>45 total Block Editor improvements are included (14 performance enhancements &amp; 31 bug fixes).</li><li><a href=\"https://core.trac.wordpress.org/query?component=Bundled+Theme&milestone=5.0.2&col=id&col=summary&col=milestone&col=owner&col=type&col=status&col=priority&order=priority\">17 Block Editor related bugs</a> have been fixed across all of the bundled themes.</li><li>Some <a href=\"https://core.trac.wordpress.org/query?component=I18N&milestone=5.0.2&col=id&col=summary&col=status&col=owner&col=type&col=priority&col=milestone&order=priority\">internationalization (i18n) issues</a> related to script loading have also been fixed.</li></ul>\n\n\n\n<p>For a full list of changes, please consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=5.0.2&group=component\">list of tickets on Trac</a> or the <a href=\"https://core.trac.wordpress.org/log/branches/5.0?action=stop_on_copy&mode=stop_on_copy&rev=44339&stop_rev=44183&limit=100&sfp_email=&sfph_mail=\">changelog</a>.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/download/\">download WordPress 5.0.2</a> or visit Dashboard → Updates and click <em>Update Now</em>. Sites that support automatic background updates have already started to update automatically.</p>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.0.2:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/babaevan/\">Alexander Babaev</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/jdtrower/\">David Trower</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/edpittol/\">Eduardo Pittol</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/greg-raven/\">Greg Raven</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">gziolo</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">iCaleb</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/khleomix/\">khleomix</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff&nbsp;Paul</a>, <a href=\"https://profiles.wordpress.org/mihaivalentin/\">mihaivalentin</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/more/\"></a><a href=\"https://profiles.wordpress.org/mmaumio/\">Muntasir Mahmud</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pratikthink/\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/strategio/\">strategio</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/torontodigits/\">TorontoDigits</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/volodymyrkolesnykov/\">volodymyrkolesnykov</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/ze3kr/\">ze3kr</a>, and <a href=\"https://profiles.wordpress.org/mypacecreator/\">のむらけい</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Dec 2018 23:47:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Gary Pendergast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: Happy Developers, Happy Ecosystem: The Intangible Impact of WordPress’ Minimum PHP Version Bump\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86464\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wptavern.com/happy-developers-happy-ecosystem-the-intangible-impact-of-wordpress-minimum-php-version-bump\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6401:\"<div class=\"wp-block-image\">\n<img />\n</div>\n<p>The following is a guest post by <a href=\"https://twitter.com/ChrisVanPatten\">Chris Van Patten</a>, founder of <a href=\"https://tomodomo.co\">Tomodomo</a>, a digital agency for magazine publishers. </p>\n<hr class=\"wp-block-separator\" />\n<p>For years, WordPress has been ever-so-slightly behind the times on PHP version support&#8230;to put it kindly.</p>\n<p>However, WordPress&#8217; legendary support for PHP versions back to 5.2 — versions long unsupported by the PHP project itself — wasn&#8217;t born out of a &#8220;we hate developers&#8221; strategy (although you&#8217;d be forgiven for thinking so given the reaction that policy often gets from developers). Instead, it was a genuinely noble and pragmatic effort to make WordPress, and thus publishing on the web, as widely available as possible.</p>\n<p>Despite the reaction from many developers (and security-minded sysadmins), that strategy worked: WordPress <a href=\"https://w3techs.com/technologies/overview/content_management/all\" rel=\"noopener\" target=\"_blank\">powers over 30% of the web</a>, and a <a href=\"https://wordpress.org/about/stats/\" rel=\"noopener\" target=\"_blank\">significant chunk of those installations are on unsupported PHP versions</a>. For those users, it&#8217;s not that they don&#8217;t care that they are on an unsupported version of PHP; they just don&#8217;t know, or don&#8217;t know how to solve the problem.</p>\n<p>But the winds of progress are blowing, and in 2019 WordPress is planning to make a change. Assuming everything goes according to plan, PHP 5.6 will become the minimum supported version in the first half of the year, and the minimum version will be bumped again to PHP 7 in the second half of 2019.</p>\n<p>There are obvious benefits here from a security perspective. The oldest versions of PHP supported by WordPress today stopped receiving official security updates ages ago (PHP 5.2 hit EOL, or &#8220;end-of-life,&#8221; nearly 8 years ago). The speed improvements will be tremendous as well, particularly in PHP 7. Speaking from my own experience, I have several sites that once needed aggressive caching to prevent server overload. Since PHP 7, they run faster than ever, without caching of any kind.</p>\n<p>Speed and security are the two most-cited reasons (and the most measurable reasons) for bumping the minimum version, but there are also other less tangible benefits that will filter well beyond WordPress core development.</p>\n<h3>Simplified support</h3>\n<p>While plugin developers have never been obligated to support all the versions of PHP that WordPress core does, many still chose to do so. That&#8217;s understandable: it could be tough to explain to a user why they can install WordPress in a certain development environment but couldn&#8217;t install a certain plugin.</p>\n<p>For plugins that tried to match core&#8217;s backward compatibility support, that means testing and supporting up to nine versions of PHP: 5.2 through 5.6, and 7.0 through 7.3. (There was no PHP 6. I won&#8217;t bother explaining the <a href=\"https://ma.ttias.be/php6-missing-version-number/\" rel=\"noopener\" target=\"_blank\">boring reasons why</a>.)</p>\n<p>By pushing to 5.6, and eventually some version of PHP 7+, that cuts the number of versions that developers will feel compelled to support in half. In some way, Core will likely continue to support these old versions (through security backports to old versions of WordPress, for instance) but plugin developers can be assured that they don&#8217;t need to — and don&#8217;t need to feel any semblance of guilt about it either.</p>\n<h3>Happier developers</h3>\n<p>Even developers who are excited about the WordPress platform as a whole are likely to admit that it&#8217;s maybe not the most exciting code-base in the world. Over the past few years, I&#8217;ve seen a number of examples of developers who once limited themselves to WordPress now stretching into other frameworks and languages: Laravel, JavaScript, and Go are all popular new homes for WordPress expats.</p>\n<p>Bumping the minimum version won&#8217;t change that apathy or exodus overnight, but it will give developers something to feel excited about. Modern PHP versions (especially PHP 7) offer genuinely cool new language features that make it easy to write performant, well-designed, and interesting code. I would even argue that it makes it fun. Modern PHP contains plenty of <a href=\"https://en.wikipedia.org/wiki/Syntactic_sugar\" rel=\"noopener\" target=\"_blank\">syntactic sugar</a>, and while you shouldn&#8217;t base your diet on sugar it certainly makes for a nice treat.</p>\n<p>Again, it is unlikely that core will start adopting these new language features on day one. The real benefit is that developers will feel empowered and secure in their decisions to start using these new capabilities, and will start to build plugins and themes that can borrow ideas from best practices in the broader PHP community.</p>\n<h3>Celebrating the intangible</h3>\n<p>While the measurable justifications for changing the minimum PHP version are certainly compelling, I think it&#8217;s also important to acknowledge these intangibles and indeed celebrate them. Bumping these versions will create a ripple effect across the ecosystem that will make developers more comfortable with writing modern code. It will reduce support and QA loads for companies that no longer need to support 9 different versions of PHP. It will make WordPress core a more attractive place to contribute.</p>\n<p>Gutenberg, and all the modern tooling and architecture it brought, has already reinvigorated developers across the ecosystem and brought a huge number of new core contributors (<a href=\"https://wptavern.com/contributing-to-gutenberg-a-new-contributors-experience\" rel=\"noopener\" target=\"_blank\">myself among them</a>). Embracing modern PHP is another step forward, and with other changes on the horizon (such as a <a href=\"https://make.wordpress.org/core/2018/12/09/on-wordpress-git/\" rel=\"noopener\" target=\"_blank\">move from SVN to Git</a>, coding standards changes, and projects like <a href=\"https://www.wptide.org/\" rel=\"noopener\" target=\"_blank\">Tide</a> which embrace new languages and architectures) I hope that 2019 will be the year WordPress delivers not only a best-in-class user experience, but a best-in-class developer experience too.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Dec 2018 17:57:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Chris Van Patten\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Gutenberg for Writers: How to Configure the Editor for Fewer Distractions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86427\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/gutenberg-for-writers-how-to-configure-the-editor-for-fewer-distractions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4740:\"<img />photo credit: <a href=\"https://stocksnap.io/photo/8Y0EDX4VP9\">Green Chameleon</a>\n\n\n\n<p>For a long time I could not compose posts with the Gutenberg editor. I tested each release of the plugin throughout its journey into WordPress 5.0, but found it too distracting for my basic needs. It seemed better suited for building a brochure website, not for someone who uses WordPress primarily for writing. </p>\n\n\n\n<p>This is the first thing you see on a vanilla install of WordPress when you go to the &#8220;Add New&#8221; post page:</p>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/09/Screen-Shot-2018-12-17-at-10.14.35-AM.png?ssl=1\"><img /></a></div>\n\n\n\n<p>Although it may not be immediately evident, the new editor actually has some built-in controls for improving the writing experience. They are tucked away behind the vertical ellipsis menu at the top of the screen. Here&#8217;s how to configure Gutenberg for writing:</p>\n\n\n\n<h3>Step 1: Hide the Settings Sidebar</h3>\n\n\n\n<p>The first step towards a more distraction-free writing experience is to hide the settings. Click the X at the top right of the screen.  If you&#8217;re trying to stay in the flow of writing, it&#8217;s not necessary to keep the block and document settings in view at all times. You can always toggle them on later when you&#8217;re finished getting your thoughts onto the screen.</p>\n\n\n\n<h3>Step 2: Turn on &#8220;Fullscreen Mode&#8221;</h3>\n\n\n\n<p>Many new and experienced WordPress users are not aware of Gutenberg&#8217;s &#8220;Fullscreen mode&#8221; that places the writing area in the center of the page and hides WordPress&#8217; admin menu sidebar.  This setting is a must for keeping distractions at bay. You can find it at the top right corner in the vertical ellipsis menu:</p>\n\n\n\n<img />\n\n\n\n<p>Once Fullscreen Mode is enabled, the writing area is greatly improved, with distractions removed from both sides of the content area. </p>\n\n\n\n<img />\n\n\n\n<h3>Step 3: Fix the Toolbar to the Top (optional)</h3>\n\n\n\n<p>The block toolbar popping in and out of view was the bane of my Gutenberg experience until they developed the &#8220;Top Toolbar&#8221; setting. By default, the block-level toolbar obscures part of the content above it (as seen in the image below) and an obtrusive blue outline follows your mouse as you move over the paragraphs you have already written.</p>\n\n\n\n<img />\n\n\n\n<p>The psychological affect of all these boxes popping in and out of view may be more taxing for some writers, so this step is optional. The &#8220;Top Toolbar&#8221; setting to hide the block-level toolbar, as well as the blue block outlines, is also inside the vertical ellipsis menu at the top. The best way to see the difference in the experience is to experiment with turning it on and off.</p>\n\n\n\n<p>Spotlight mode takes it one step further and greys out all the content except the current block, allowing writers to focus on one block at a time. When it is enabled, the blocks that are not being edited will partially fade away and no block outlines will be visible. </p>\n\n\n\n<img />Spotlight mode\n\n\n\n<p>Gutenberg still has a way to go before it can provide a truly distraction-free editing experience. None of the modes highlighted above will hide the metaboxes at the bottom or the menu bar at the top. They do, however, allow you to compose in an area without the block-level toolbar and sidebars getting in the way.</p>\n\n\n\n<p>My thoughts don&#8217;t always come out in full sentences and paragraphs. Sometimes they are scattered throughout a document in half sentences, single words, quotes, and fragments of quotes that I&#8217;m not certain I will use. How do I reconcile this with Gutenberg? Sometimes the Classic Block is a good option for a first draft that looks more like a pile of messy notes than a document of well-formed thoughts. Here&#8217;s what that looks like if you have never used it:</p>\n\n\n\n<img />Classic Block\n\n\n\n<p>Even with these settings available, some writers may still prefer to use a dedicated writing app instead of the WordPress editor. Fortunately, Gutenberg has very good support for copying and pasting from other applications.</p>\n\n\n\n<p>Top Toolbar, Spotlight, and Fullscreen modes are not the easiest features to discover but they can make a significant impact on your experience writing in the new editor. WordPress core may never provide a truly distraction-free writing experience, but that&#8217;s where the beauty of the plugin system comes into play. It gives developers the opportunity to create new and interesting approaches towards a better default writing experience. I hope to see some of those popping up in the directory as more users adopt Gutenberg.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 18 Dec 2018 03:17:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: WordPress 5.0.2 to Bring Major Performance Improvements, Scheduled for December 19\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86358\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://wptavern.com/wordpress-5-0-2-to-bring-major-performance-improvements-scheduled-for-december-19\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3081:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/12/stopwatch.jpg?ssl=1\"><img /></a>Processed with VSCOcam with c1 preset</p>\n<p><a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\" rel=\"noopener\" target=\"_blank\">WordPress 5.0.1</a> was released yesterday as a security release with fixes for seven vulnerabilities that were privately disclosed. It includes a few <a href=\"https://make.wordpress.org/core/2018/12/13/backwards-compatibility-breaks-in-5-0-1/\" rel=\"noopener\" target=\"_blank\">breaks in backwards compatibility</a> that plugin developers will want to review.</p>\n<p>WordPress 5.0.2 will be the first planned followup release to 5.0 and is now scheduled to be released December 19, 2018. Gary Pendergast posted a <a href=\"https://make.wordpress.org/core/2018/12/13/dev-chat-summary-december-12th/\" rel=\"noopener\" target=\"_blank\">summary</a> of this week&#8217;s dev chat that includes the schedule and scope for the upcoming release. It will include Gutenberg 4.7, Twenty Nineteen bug fixes, and a few PHP 7.3 compatibility fixes.</p>\n<p><a href=\"https://gschoppe.com/wordpress/benchmarking-gutenberg/\" rel=\"noopener\" target=\"_blank\">Slow performance</a> as compared to the classic editor has been a commonly-reported <a href=\"https://github.com/WordPress/gutenberg/issues/6466\" rel=\"noopener\" target=\"_blank\">issue</a> with Gutenberg. The project has a label for it on GitHub with <a href=\"https://github.com/WordPress/gutenberg/labels/%5BType%5D%20Performance\" rel=\"noopener\" target=\"_blank\">26 open issues</a>. 140 performance-related issues have already been closed so the team is making progress on speeding it up. 5.0.2 will bring major performance improvements to the editor, particularly for content that includes hundreds of blocks. </p>\n<p>&#8220;The cumulated performance gains are around 330% faster for a post with 200 blocks,&#8221; Matias Ventura said in an <a href=\"https://make.wordpress.org/core/2018/12/13/5-0-2-editor-performance-and-bug-fixes/\" rel=\"noopener\" target=\"_blank\">update</a> on the editor. &#8220;This might be even bigger for certain setups and plugin configurations — seeing the same test post be 540% faster with Yoast, for example.&#8221;</p>\n<p>These changes are already in version 4.7 of the Gutenberg plugin, which users can run alongside WordPress 5.0.1 to test the latest. </p>\n<p>RC 1 for 5.0.2 is planned for today and RC 2 (if necessary) is targeted for December 17. The official release is scheduled for December 19.</p>\n<p>Gary Pendergast also outlined the scope and schedule for WordPress 5.1, which will be led by Matt Mullenweg. Pendergast proposed a relatively short release cycle with an official release February 21, since there are already more than <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=5.1\" rel=\"noopener\" target=\"_blank\">200 tickets fixed for 5.1</a>. Focuses for the release include the REST API (particularly authentication solutions), core JS, and core themes. Beta 1 is planned for January 10, with RC 1 following February 7. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Dec 2018 16:52:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: WPWeekly Episode 341 – Recap of WordCamp US 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=86395&preview=true&preview_id=86395\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wpweekly-episode-341-recap-of-wordcamp-us-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1333:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I recap WordCamp US 2018. We discuss what&#8217;s new in WordPress 5.0.1 and when users can expect to see 5.0.2.</p>\n<p>We also chat about the new path that WordPress is on and where it may lead. John shares his perspective on what the atmosphere was like at the event and compares it to last year.</p>\n<p>Near the end of the show, we explain why the Question and Answer process at the end of the State of the Word will likely undergo changes.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\">WordPress 5.0.1 Security Release</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 19th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #341:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Dec 2018 01:59:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WordCamp US 2019 to be Held November 1-3 in St. Louis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86379\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/wordcamp-us-2019-to-be-held-november-1-3-in-st-louis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4527:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/12/st-louis.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://commons.wikimedia.org/wiki/File:St_Louis_night_expblend.jpg\">Wikimedia Commons</a></p>\n<p>Dates for WordCamp US 2019 were <a href=\"https://wordpress.org/news/2018/12/wordcamp-us-2019-dates-announced/\" rel=\"noopener\" target=\"_blank\">announced</a> today, less than a week after wrapping up a successful camp in Nashville. Unlike all previous years held in December, next year&#8217;s event will take place November 1-3 in <a href=\"https://2018.us.wordcamp.org/2018/06/15/matt-mullenweg-announces-st-louis-as-wordcamp-us-2019-2020-host-city/\" rel=\"noopener\" target=\"_blank\">St. Louis, Missouri</a>. </p>\n<p>For the most part, community reactions to the new dates were positive. Early November dates place the event well ahead of the end of the year holidays that attendees had previously bemoaned.</p>\n<p>&#8220;I love this date set better than the previous one. It’s so much easier to attend/speak pre-Thanksgiving,&#8221; WordPress developer Mitch Cantor <a href=\"https://twitter.com/thatmitchcanter/status/1073307921851867136\" rel=\"noopener\" target=\"_blank\">said</a>.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/hashtag/WordCamp?src=hash&ref_src=twsrc%5Etfw\">#WordCamp</a> US, November 1-3, 2019. This is great news! December is always a mad dash to an arbitrary solstice-based finish line. Moving <a href=\"https://twitter.com/hashtag/WCUS?src=hash&ref_src=twsrc%5Etfw\">#WCUS</a> to November takes a huge load off! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://t.co/WUToY3eiam\">https://t.co/WUToY3eiam</a></p>\n<p>&mdash; Morten Rand-Hendriksen (@mor10) <a href=\"https://twitter.com/mor10/status/1073308742488227840?ref_src=twsrc%5Etfw\">December 13, 2018</a></p></blockquote>\n<p></p>\n<p>There is always a conflict for some demographic of attendees. This year the hardest hit are parents of small children who will likely miss taking their kids trick-or-treating due to traveling on or before Halloween in order to make it to the event. WordCamp US is a family-friendly event but bringing children to a WordCamp can be extraordinarily challenging, even when the event includes childcare. (This particular event doesn&#8217;t.) For a few attendees, missing Halloween with their children is a deal-breaker. </p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Exactly what I was thinking. I\'d have to fly in on Halloween, no way I\'m missing Halloween with my 2 year old.</p>\n<p>&mdash; Katie Thompson (@katietdesign) <a href=\"https://twitter.com/katietdesign/status/1073341329021775875?ref_src=twsrc%5Etfw\">December 13, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">That’s a good point! <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f640.png\" alt=\"🙀\" class=\"wp-smiley\" /></p>\n<p>&mdash; Tessa Kriesel (@tessak22) <a href=\"https://twitter.com/tessak22/status/1073333517646467075?ref_src=twsrc%5Etfw\">December 13, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Though this one is something a lot of parents really enjoy spending with their small children especially in the US. We\'re not talking about national hotdog day here.</p>\n<p>&mdash; Patrick Garman (@pmgarman) <a href=\"https://twitter.com/pmgarman/status/1073317197194428421?ref_src=twsrc%5Etfw\">December 13, 2018</a></p></blockquote>\n<p></p>\n<p>One possible solution for the parents who feel they have to miss WordCamp US because of their kids, might be for the organizers to schedule the contributor day as the first day of the camp. That might enable people to fly in on an early morning flight and still get to experience part of the contributor day and all of the main event. </p>\n<p>In a community this large, with many other holidays and WordCamps already on the calendar, it&#8217;s difficult to find a date for WordCamp US that doesn&#8217;t have conflicts. This is a good problem for the community to have. Matt Mullenweg shared during the State of the Word that the community has experienced 50% year over year growth with more than 350K members in 687 meetup groups and more than 5,000 meetup events. With this rate of growth, the community can expect more regional and local camps to spring up in the coming years, which means more conflicts but also more options for getting together in the future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Dec 2018 00:43:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordPress Plugin Directory Now Features a Curated Section for Block-Enabled Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=86331\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://wptavern.com/wordpress-plugin-directory-now-features-a-curated-section-for-block-enabled-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4065:\"<p>If you visit the <a href=\"https://wordpress.org/plugins/\" target=\"_blank\" rel=\"noopener\">plugin directory</a>, you will notice a new section at the top featuring block-enabled plugins. WordPress 5.0 has been downloaded more than 8 million times, just one week after its release, and users are looking for blocks to extend the new editing experience. WordPress.org is highlighting plugins to push the block ecosystem forward and will soon be doing the same for themes.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/12/Screen-Shot-2018-12-13-at-9.35.13-AM.png?ssl=1\"><img /></a></p>\n<p>There are currently 94 blocks in the featured section. In a <a href=\"https://make.wordpress.org/plugins/2018/12/07/blocks-plugins-and-you/\" target=\"_blank\" rel=\"noopener\">post</a> on make.wordpress.org/plugins, Samuel (Otto) Wood invited developers to email the plugins team at plugins@wordpress.org if they have a block-enabled plugin that they want to be included. The basic requirements are a plugin that introduces or improves blocks.</p>\n<p>I asked Otto how they select from submissions. He said the plugins team is curating the list manually and adding those they think are good or interesting.</p>\n<p>&#8220;It&#8217;s not a high bar; if it has a neat block, we&#8217;ll add it for now,&#8221; Otto said. &#8220;We may raise the bar depending on how big the section gets, and the section is not final by any means. We&#8217;ll change the inclusions according to how it works out. The goal is to promote neat and cool integrations, but there aren&#8217;t a lot of those yet. It&#8217;s new.&#8221;</p>\n<p>Assigning a tag to block-enabled plugins that authors could opt into would eliminate the need for manual approval on the section, but Otto said they are currently handling it more like a showcase.</p>\n<p>&#8220;Letting the plugin authors just add a tag would reduce the available tags (it&#8217;s already limited to 5) as well as reducing the value of curation,&#8221; Otto said. &#8220;We may change that as well in the future, somehow. Nothing is set in stone right now, we just want to see people making cool blocks and see what happens with that.&#8221;</p>\n<p>A directory devoted entirely to blocks may also be coming to WordPress.org next year. In a recent post, Matt Mullenweg identified <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\" rel=\"noopener\" target=\"_blank\">9 Projects for 2019</a>, including &#8220;building a WordPress.org directory for discovering blocks, and a way to seamlessly install them.&#8221; This is a much larger task and requires WordPress to answer a few questions: Will plugins continue to be the primary delivery mechanism for blocks? Or will WordPress.org implement a system where users can download JS-only blocks, similar to the Gutenberg Cloud project? </p>\n<p>Three months ago, Otto <a href=\"https://wptavern.com/gutenberg-cloud-a-cross-platform-community-library-for-custom-gutenberg-blocks#comment-260894\" rel=\"noopener\" target=\"_blank\">commented</a> on a post about Gutenberg Cloud, saying that js-only blocks are likely only suited to frontend enhancements.</p>\n<p>&#8220;I remain unconvinced that js-only blocks have a place which is meaningful other than the trivial layout based things that blocks can do,&#8221; Otto said. &#8220;Yes, you can build great looking blocks with JavaScript only, and since it’s an editor, that is a really big deal. But without any actual support on the backend to &#8216;do stuff of substance,&#8217; it is just visual glitter.&#8221;</p>\n<p>Offering JS-only blocks through WordPress.org might also complicate block discovery if users don&#8217;t know whether to look for blocks in a plugin or via the JS-only block delivery system. There are a lot of unknowns in the block era that will require WordPress to make some decisions. Meanwhile, the ecosystem of block-enabled plugins will continue expanding as more users adopt the new editor and especially as widgets and menus are ported to blocks in phase 2 of the Gutenberg project.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 21:32:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 30 Jan 2019 07:12:30 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Wed, 30 Jan 2019 07:00:31 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(466, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1548875551', 'no'),
(467, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1548832351', 'no'),
(468, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1548875551', 'no'),
(469, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2019/01/wordpress-5-1-beta-2/\'>WordPress 5.1 Beta 2</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ma.tt/2019/01/39-books-in-2018/\'>Matt: 39 Books in 2018</a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/an-interview-with-ernst-jan-pfauth-of-de-correspondent/\'>Post Status: An Interview with Ernst-Jan Pfauth of De Correspondent</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-344-introduction-to-the-wordpress-governance-project\'>WPTavern: WPWeekly Episode 344 – Introduction to the WordPress Governance Project</a></li></ul></div>', 'no'),
(478, '_transient_timeout_plugin_slugs', '1548928572', 'no'),
(479, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:24:\"buddypress/bp-loader.php\";i:2;s:35:\"bp-default-data/bp-default-data.php\";i:3;s:19:\"BP-REST/bp-rest.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:57:\"reveal-ids-for-wp-admin-25/reveal-ids-for-wp-admin-25.php\";i:6;s:21:\"safe-svg/safe-svg.php\";}', 'no'),
(480, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1548850938', 'no'),
(481, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4546;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3250;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2602;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2469;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1905;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1711;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1700;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1465;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1423;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1422;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1421;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1351;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1289;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1280;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1131;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1086;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1074;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1043;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:972;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:911;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:843;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:829;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:819;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:755;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:721;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:712;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:706;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:701;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:693;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:684;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:676;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:674;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:659;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:649;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:637;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:634;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:622;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:612;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:612;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:609;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:564;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:557;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:555;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:552;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:545;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:528;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:523;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:522;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:522;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:517;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:506;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:502;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:491;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:491;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:488;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:469;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:468;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:464;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:455;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:455;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:451;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:433;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:429;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:423;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:419;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:413;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:399;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:397;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:393;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:382;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:377;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:377;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:377;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:375;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:375;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:361;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:360;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:358;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:352;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:347;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:345;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:340;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:340;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:337;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:321;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:318;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:316;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:315;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:314;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:311;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:311;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:306;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:306;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:304;}}', 'no'),
(483, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548840813;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.10\";s:24:\"buddypress/bp-loader.php\";s:5:\"4.1.0\";s:35:\"bp-default-data/bp-default-data.php\";s:5:\"1.2.0\";s:19:\"BP-REST/bp-rest.php\";s:5:\"0.1.0\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:57:\"reveal-ids-for-wp-admin-25/reveal-ids-for-wp-admin-25.php\";s:5:\"1.5.3\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.0\";}s:8:\"response\";a:1:{s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.10\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"buddypress/bp-loader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:6:\"plugin\";s:24:\"buddypress/bp-loader.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/buddypress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/buddypress.4.1.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/buddypress/assets/icon-256x256.png?rev=1309232\";s:2:\"1x\";s:54:\"https://ps.w.org/buddypress/assets/icon.svg?rev=977480\";s:3:\"svg\";s:54:\"https://ps.w.org/buddypress/assets/icon.svg?rev=977480\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/buddypress/assets/banner-1544x500.png?rev=1854372\";s:2:\"1x\";s:65:\"https://ps.w.org/buddypress/assets/banner-772x250.png?rev=1854372\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/buddypress/assets/banner-1544x500-rtl.png?rev=1854372\";s:2:\"1x\";s:69:\"https://ps.w.org/buddypress/assets/banner-772x250-rtl.png?rev=1854372\";}}s:35:\"bp-default-data/bp-default-data.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/bp-default-data\";s:4:\"slug\";s:15:\"bp-default-data\";s:6:\"plugin\";s:35:\"bp-default-data/bp-default-data.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/bp-default-data/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/bp-default-data.1.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/bp-default-data/assets/icon-256x256.png?rev=1643365\";s:2:\"1x\";s:68:\"https://ps.w.org/bp-default-data/assets/icon-128x128.png?rev=1643365\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/bp-default-data/assets/banner-1544x500.png?rev=1659493\";s:2:\"1x\";s:70:\"https://ps.w.org/bp-default-data/assets/banner-772x250.png?rev=1659493\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"reveal-ids-for-wp-admin-25/reveal-ids-for-wp-admin-25.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/reveal-ids-for-wp-admin-25\";s:4:\"slug\";s:26:\"reveal-ids-for-wp-admin-25\";s:6:\"plugin\";s:57:\"reveal-ids-for-wp-admin-25/reveal-ids-for-wp-admin-25.php\";s:11:\"new_version\";s:5:\"1.5.3\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/reveal-ids-for-wp-admin-25/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/reveal-ids-for-wp-admin-25.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/reveal-ids-for-wp-admin-25/assets/icon-256x256.png?rev=1162209\";s:2:\"1x\";s:79:\"https://ps.w.org/reveal-ids-for-wp-admin-25/assets/icon-128x128.png?rev=1163228\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/reveal-ids-for-wp-admin-25/assets/banner-772x250.png?rev=479453\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(484, 'bpdd_imported_user_ids', 'a:25:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;i:5;i:7;i:6;i:8;i:7;i:9;i:8;i:10;i:9;i:11;i:10;i:12;i:11;i:13;i:12;i:14;i:13;i:15;i:14;i:16;i:15;i:17;i:16;i:18;i:17;i:19;i:18;i:20;i:19;i:21;i:20;i:22;i:21;i:23;i:22;i:24;i:23;i:25;i:24;i:26;}', 'yes'),
(485, 'bpdd_import_users', '1', 'yes'),
(486, 'bpdd_imported_user_xprofile_ids', 'a:2:{i:0;i:2;i:1;i:3;}', 'yes'),
(487, 'widget_bp_core_friends_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(488, '_site_transient_timeout_browser_4b955584e50caaad19332d9dfaa06fa7', '1549445351', 'no'),
(489, '_site_transient_browser_4b955584e50caaad19332d9dfaa06fa7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(495, '_site_transient_timeout_theme_roots', '1548851045', 'no'),
(496, '_site_transient_theme_roots', 'a:3:{s:14:\"theplannerwire\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"wordpress-react\";s:7:\"/themes\";}', 'no'),
(498, 'theme_mods_wordpress-react', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:18;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548849929;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:26:\"sidebar-buddypress-members\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:25:\"sidebar-buddypress-groups\";a:0:{}}}}', 'yes'),
(499, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 36, '_menu_item_type', 'custom'),
(4, 36, '_menu_item_menu_item_parent', '0'),
(5, 36, '_menu_item_object_id', '36'),
(6, 36, '_menu_item_object', 'custom'),
(7, 36, '_menu_item_target', ''),
(8, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 36, '_menu_item_xfn', ''),
(10, 36, '_menu_item_url', 'http://172.10.29.111/wordpress-projects/theplannerwire/'),
(11, 36, '_menu_item_orphaned', '1548651693'),
(12, 37, '_menu_item_type', 'post_type'),
(13, 37, '_menu_item_menu_item_parent', '0'),
(14, 37, '_menu_item_object_id', '7'),
(15, 37, '_menu_item_object', 'page'),
(16, 37, '_menu_item_target', ''),
(17, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 37, '_menu_item_xfn', ''),
(19, 37, '_menu_item_url', ''),
(20, 37, '_menu_item_orphaned', '1548651694'),
(21, 38, '_menu_item_type', 'post_type'),
(22, 38, '_menu_item_menu_item_parent', '0'),
(23, 38, '_menu_item_object_id', '8'),
(24, 38, '_menu_item_object', 'page'),
(25, 38, '_menu_item_target', ''),
(26, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 38, '_menu_item_xfn', ''),
(28, 38, '_menu_item_url', ''),
(29, 38, '_menu_item_orphaned', '1548651694'),
(30, 39, '_menu_item_type', 'post_type'),
(31, 39, '_menu_item_menu_item_parent', '0'),
(32, 39, '_menu_item_object_id', '28'),
(33, 39, '_menu_item_object', 'page'),
(34, 39, '_menu_item_target', ''),
(35, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 39, '_menu_item_xfn', ''),
(37, 39, '_menu_item_url', ''),
(38, 39, '_menu_item_orphaned', '1548651695'),
(39, 40, '_menu_item_type', 'post_type'),
(40, 40, '_menu_item_menu_item_parent', '0'),
(41, 40, '_menu_item_object_id', '25'),
(42, 40, '_menu_item_object', 'page'),
(43, 40, '_menu_item_target', ''),
(44, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 40, '_menu_item_xfn', ''),
(46, 40, '_menu_item_url', ''),
(47, 40, '_menu_item_orphaned', '1548651695'),
(48, 41, '_menu_item_type', 'post_type'),
(49, 41, '_menu_item_menu_item_parent', '0'),
(50, 41, '_menu_item_object_id', '2'),
(51, 41, '_menu_item_object', 'page'),
(52, 41, '_menu_item_target', ''),
(53, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 41, '_menu_item_xfn', ''),
(55, 41, '_menu_item_url', ''),
(56, 41, '_menu_item_orphaned', '1548651695'),
(57, 42, '_menu_item_type', 'post_type'),
(58, 42, '_menu_item_menu_item_parent', '0'),
(59, 42, '_menu_item_object_id', '27'),
(60, 42, '_menu_item_object', 'page'),
(61, 42, '_menu_item_target', ''),
(62, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 42, '_menu_item_xfn', ''),
(64, 42, '_menu_item_url', ''),
(65, 42, '_menu_item_orphaned', '1548651696'),
(66, 43, '_menu_item_type', 'post_type'),
(67, 43, '_menu_item_menu_item_parent', '0'),
(68, 43, '_menu_item_object_id', '26'),
(69, 43, '_menu_item_object', 'page'),
(70, 43, '_menu_item_target', ''),
(71, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 43, '_menu_item_xfn', ''),
(73, 43, '_menu_item_url', ''),
(74, 43, '_menu_item_orphaned', '1548651696'),
(75, 44, '_edit_last', '1'),
(76, 44, '_edit_lock', '1548652777:1'),
(77, 48, '_edit_lock', '1548831163:1'),
(78, 49, '_wp_attached_file', '2019/01/2019_200by70_static.jpg'),
(79, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:70;s:4:\"file\";s:31:\"2019/01/2019_200by70_static.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"2019_200by70_static-150x70.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 48, '_edit_last', '1'),
(85, 48, 'image', '49'),
(86, 48, '_image', 'field_5c4e912a84222'),
(87, 48, 'author_name', 'G and A'),
(88, 48, '_author_name', 'field_5c4e914184223'),
(89, 48, 'author_link', '#'),
(90, 48, '_author_link', 'field_5c4e915484224'),
(91, 51, 'image', '49'),
(92, 51, '_image', 'field_5c4e912a84222'),
(93, 51, 'author_name', 'G and A'),
(94, 51, '_author_name', 'field_5c4e914184223'),
(95, 51, 'author_link', '#'),
(96, 51, '_author_link', 'field_5c4e915484224'),
(97, 52, '_edit_lock', '1548761079:1'),
(98, 53, '_wp_attached_file', '2019/01/975010_200x70.gif'),
(99, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:70;s:4:\"file\";s:25:\"2019/01/975010_200x70.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"975010_200x70-150x70.gif\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 52, '_edit_last', '1'),
(105, 52, 'image', '53'),
(106, 52, '_image', 'field_5c4e912a84222'),
(107, 52, 'author_name', 'G&A'),
(108, 52, '_author_name', 'field_5c4e914184223'),
(109, 52, 'author_link', '#'),
(110, 52, '_author_link', 'field_5c4e915484224'),
(111, 55, 'image', '53'),
(112, 55, '_image', 'field_5c4e912a84222'),
(113, 55, 'author_name', 'G&A'),
(114, 55, '_author_name', 'field_5c4e914184223'),
(115, 55, 'author_link', '#'),
(116, 55, '_author_link', 'field_5c4e915484224'),
(117, 56, '_edit_lock', '1548761079:1'),
(118, 57, '_wp_attached_file', '2019/01/Banner-Economist-Sustainability-Summit-London-2019.gif'),
(119, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:70;s:4:\"file\";s:62:\"2019/01/Banner-Economist-Sustainability-Summit-London-2019.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Banner-Economist-Sustainability-Summit-London-2019-150x70.gif\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 56, '_edit_last', '1'),
(125, 56, 'image', '57'),
(126, 56, '_image', 'field_5c4e912a84222'),
(127, 56, 'author_name', 'Sustainability'),
(128, 56, '_author_name', 'field_5c4e914184223'),
(129, 56, 'author_link', '#'),
(130, 56, '_author_link', 'field_5c4e915484224'),
(131, 59, 'image', '57'),
(132, 59, '_image', 'field_5c4e912a84222'),
(133, 59, 'author_name', 'Sustainability'),
(134, 59, '_author_name', 'field_5c4e914184223'),
(135, 59, 'author_link', '#'),
(136, 59, '_author_link', 'field_5c4e915484224'),
(141, 61, 'image', '49'),
(142, 61, '_image', 'field_5c4e912a84222'),
(143, 61, 'author_name', 'G and A'),
(144, 61, '_author_name', 'field_5c4e914184223'),
(145, 61, 'author_link', '#'),
(146, 61, '_author_link', 'field_5c4e915484224'),
(151, 62, 'image', '53'),
(152, 62, '_image', 'field_5c4e912a84222'),
(153, 62, 'author_name', 'G&A'),
(154, 62, '_author_name', 'field_5c4e914184223'),
(155, 62, 'author_link', '#'),
(156, 62, '_author_link', 'field_5c4e915484224'),
(161, 63, 'image', '57'),
(162, 63, '_image', 'field_5c4e912a84222'),
(163, 63, 'author_name', 'Sustainability'),
(164, 63, '_author_name', 'field_5c4e914184223'),
(165, 63, 'author_link', '#'),
(166, 63, '_author_link', 'field_5c4e915484224'),
(169, 56, '_thumbnail_id', '49'),
(174, 52, '_thumbnail_id', '53'),
(179, 48, '_thumbnail_id', '57'),
(180, 66, '_menu_item_type', 'custom'),
(181, 66, '_menu_item_menu_item_parent', '0'),
(182, 66, '_menu_item_object_id', '66'),
(183, 66, '_menu_item_object', 'custom'),
(184, 66, '_menu_item_target', ''),
(185, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 66, '_menu_item_xfn', ''),
(187, 66, '_menu_item_url', 'http://172.10.29.111/wordpress-projects/theplannerwire/'),
(189, 67, '_menu_item_type', 'post_type'),
(190, 67, '_menu_item_menu_item_parent', '0'),
(191, 67, '_menu_item_object_id', '7'),
(192, 67, '_menu_item_object', 'page'),
(193, 67, '_menu_item_target', ''),
(194, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 67, '_menu_item_xfn', ''),
(196, 67, '_menu_item_url', ''),
(198, 68, '_menu_item_type', 'post_type'),
(199, 68, '_menu_item_menu_item_parent', '0'),
(200, 68, '_menu_item_object_id', '65'),
(201, 68, '_menu_item_object', 'page'),
(202, 68, '_menu_item_target', ''),
(203, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 68, '_menu_item_xfn', ''),
(205, 68, '_menu_item_url', ''),
(207, 69, '_menu_item_type', 'post_type'),
(208, 69, '_menu_item_menu_item_parent', '0'),
(209, 69, '_menu_item_object_id', '8'),
(210, 69, '_menu_item_object', 'page'),
(211, 69, '_menu_item_target', ''),
(212, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 69, '_menu_item_xfn', ''),
(214, 69, '_menu_item_url', ''),
(216, 70, '_menu_item_type', 'post_type'),
(217, 70, '_menu_item_menu_item_parent', '0'),
(218, 70, '_menu_item_object_id', '3'),
(219, 70, '_menu_item_object', 'page'),
(220, 70, '_menu_item_target', ''),
(221, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 70, '_menu_item_xfn', ''),
(223, 70, '_menu_item_url', ''),
(225, 71, '_menu_item_type', 'post_type'),
(226, 71, '_menu_item_menu_item_parent', '0'),
(227, 71, '_menu_item_object_id', '28'),
(228, 71, '_menu_item_object', 'page'),
(229, 71, '_menu_item_target', ''),
(230, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 71, '_menu_item_xfn', ''),
(232, 71, '_menu_item_url', ''),
(234, 72, '_menu_item_type', 'post_type'),
(235, 72, '_menu_item_menu_item_parent', '0'),
(236, 72, '_menu_item_object_id', '25'),
(237, 72, '_menu_item_object', 'page'),
(238, 72, '_menu_item_target', ''),
(239, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 72, '_menu_item_xfn', ''),
(241, 72, '_menu_item_url', ''),
(243, 73, '_menu_item_type', 'post_type'),
(244, 73, '_menu_item_menu_item_parent', '0'),
(245, 73, '_menu_item_object_id', '2'),
(246, 73, '_menu_item_object', 'page'),
(247, 73, '_menu_item_target', ''),
(248, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 73, '_menu_item_xfn', ''),
(250, 73, '_menu_item_url', ''),
(252, 74, '_menu_item_type', 'post_type'),
(253, 74, '_menu_item_menu_item_parent', '0'),
(254, 74, '_menu_item_object_id', '27'),
(255, 74, '_menu_item_object', 'page'),
(256, 74, '_menu_item_target', ''),
(257, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 74, '_menu_item_xfn', ''),
(259, 74, '_menu_item_url', ''),
(261, 75, '_menu_item_type', 'post_type'),
(262, 75, '_menu_item_menu_item_parent', '0'),
(263, 75, '_menu_item_object_id', '26'),
(264, 75, '_menu_item_object', 'page'),
(265, 75, '_menu_item_target', ''),
(266, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(267, 75, '_menu_item_xfn', ''),
(268, 75, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-23 08:51:40', '2019-01-23 08:51:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-01-23 08:51:40', '2019-01-23 08:51:40', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-23 08:51:40', '2019-01-23 08:51:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://172.10.29.111/wordpress-projects/theplannerwire/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-23 08:51:40', '2019-01-23 08:51:40', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-23 08:51:40', '2019-01-23 08:51:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://172.10.29.111/wordpress-projects/theplannerwire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-23 08:51:40', '2019-01-23 08:51:40', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-01-23 09:01:46', '2019-01-23 09:01:46', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2019-01-23 09:01:46', '2019-01-23 09:01:46', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/activity/', 0, 'page', '', 0),
(8, 1, '2019-01-23 09:01:46', '2019-01-23 09:01:46', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2019-01-23 09:01:46', '2019-01-23 09:01:46', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/members/', 0, 'page', '', 0),
(9, 1, '2019-01-23 09:01:46', '2019-01-23 09:01:46', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2019-01-23 09:01:46', '2019-01-23 09:01:46', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=9', 0, 'bp-email', '', 0),
(10, 1, '2019-01-23 09:01:47', '2019-01-23 09:01:47', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2019-01-23 09:01:47', '2019-01-23 09:01:47', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=10', 0, 'bp-email', '', 0),
(11, 1, '2019-01-23 09:01:47', '2019-01-23 09:01:47', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2019-01-23 09:01:47', '2019-01-23 09:01:47', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=11', 0, 'bp-email', '', 0),
(12, 1, '2019-01-23 09:01:48', '2019-01-23 09:01:48', '{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2019-01-23 09:01:48', '2019-01-23 09:01:48', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=12', 0, 'bp-email', '', 0),
(13, 1, '2019-01-23 09:01:48', '2019-01-23 09:01:48', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the <strong>Activate</strong> button:\n<a href=\"{{{activate.url}}}\">{{{activate.url}}}</a>\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the \'Activate\' button: {{{activate.url}}}\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2019-01-23 09:01:48', '2019-01-23 09:01:48', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=13', 0, 'bp-email', '', 0),
(14, 1, '2019-01-23 09:01:48', '2019-01-23 09:01:48', '<a href=\"{{{initiator.url}}}\">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href=\"{{{friend-requests.url}}}\">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}\'s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2019-01-23 09:01:48', '2019-01-23 09:01:48', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=14', 0, 'bp-email', '', 0),
(15, 1, '2019-01-23 09:01:49', '2019-01-23 09:01:49', '<a href=\"{{{friendship.url}}}\">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2019-01-23 09:01:49', '2019-01-23 09:01:49', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=15', 0, 'bp-email', '', 0),
(16, 1, '2019-01-23 09:01:49', '2019-01-23 09:01:49', 'Group details for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group \"{{group.name}}\" were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2019-01-23 09:01:49', '2019-01-23 09:01:49', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=16', 0, 'bp-email', '', 0),
(17, 1, '2019-01-23 09:01:49', '2019-01-23 09:01:49', '<a href=\"{{{inviter.url}}}\">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n<a href=\"{{{invites.url}}}\">Go here to accept your invitation</a> or <a href=\"{{{group.url}}}\">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: \"{{group.name}}\"', '{{inviter.name}} has invited you to join the group: \"{{group.name}}\".\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit: {{{group.url}}}.\nTo view {{inviter.name}}\'s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2019-01-23 09:01:49', '2019-01-23 09:01:49', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=17', 0, 'bp-email', '', 0),
(18, 1, '2019-01-23 09:01:50', '2019-01-23 09:01:50', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: \"{{group.name}}\"', 'You have been promoted to {{promoted_to}} in the group: \"{{group.name}}\".\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2019-01-23 09:01:50', '2019-01-23 09:01:50', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=18', 0, 'bp-email', '', 0),
(19, 1, '2019-01-23 09:01:50', '2019-01-23 09:01:50', '<a href=\"{{{profile.url}}}\">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;. As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href=\"{{{group-requests.url}}}\">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group \"{{group.name}}\". As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}\'s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2019-01-23 09:01:50', '2019-01-23 09:01:50', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=19', 0, 'bp-email', '', 0),
(20, 1, '2019-01-23 09:01:51', '2019-01-23 09:01:51', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{message.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: \"{{usersubject}}\"\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2019-01-23 09:01:51', '2019-01-23 09:01:51', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=20', 0, 'bp-email', '', 0),
(21, 1, '2019-01-23 09:01:51', '2019-01-23 09:01:51', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href=\"{{{verify.url}}}\">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2019-01-23 09:01:51', '2019-01-23 09:01:51', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=21', 0, 'bp-email', '', 0),
(22, 1, '2019-01-23 09:01:52', '2019-01-23 09:01:52', 'Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group \"{{group.name}}\" accepted', 'Your membership request for the group \"{{group.name}}\" has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2019-01-23 09:01:52', '2019-01-23 09:01:52', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=22', 0, 'bp-email', '', 0),
(23, 1, '2019-01-23 09:01:52', '2019-01-23 09:01:52', 'Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group \"{{group.name}}\" rejected', 'Your membership request for the group \"{{group.name}}\" has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2019-01-23 09:01:52', '2019-01-23 09:01:52', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=23', 0, 'bp-email', '', 0),
(25, 1, '2019-01-23 09:10:33', '2019-01-23 09:10:33', '[ESPRESSO_CHECKOUT]', 'Registration Checkout', '', 'publish', 'closed', 'closed', '', 'registration-checkout', '', '', '2019-01-23 09:10:33', '2019-01-23 09:10:33', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/registration-checkout/', 0, 'page', '', 0),
(26, 1, '2019-01-23 09:10:33', '2019-01-23 09:10:33', '[ESPRESSO_TXN_PAGE]', 'Transactions', '', 'publish', 'closed', 'closed', '', 'transactions', '', '', '2019-01-23 09:10:33', '2019-01-23 09:10:33', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/transactions/', 0, 'page', '', 0),
(27, 1, '2019-01-23 09:10:33', '2019-01-23 09:10:33', '[ESPRESSO_THANK_YOU]', 'Thank You', '', 'publish', 'closed', 'closed', '', 'thank-you', '', '', '2019-01-23 09:10:33', '2019-01-23 09:10:33', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/thank-you/', 0, 'page', '', 0),
(28, 1, '2019-01-23 09:10:33', '2019-01-23 09:10:33', '[ESPRESSO_CANCELLED]', 'Registration Cancelled', '', 'publish', 'closed', 'closed', '', 'registration-cancelled', '', '', '2019-01-23 09:10:33', '2019-01-23 09:10:33', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/registration-cancelled/', 0, 'page', '', 0),
(35, 1, '2019-01-23 09:47:49', '2019-01-23 09:47:49', 'You have unread messages: &quot;{{subject}}&quot;\n\n{{{messages.html}}}\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] You have unread messages: {{subject}}', 'You have unread messages: \"{{subject}}\"\n\n{{messages.raw}}\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-unread-messages-subject', '', '', '2019-01-23 09:47:49', '2019-01-23 09:47:49', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=bp-email&p=35', 0, 'bp-email', '', 0),
(36, 1, '2019-01-28 05:01:33', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:33', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2019-01-28 05:01:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:33', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-01-28 05:01:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:34', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2019-01-28 05:01:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:34', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-01-28 05:01:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:35', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-01-28 05:01:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:35', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-01-28 05:01:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:35', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2019-01-28 05:01:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-28 05:01:36', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-01-28 05:21:58', '2019-01-28 05:21:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Section', 'section', 'publish', 'closed', 'closed', '', 'group_5c4e91014ea0e', '', '', '2019-01-28 05:21:58', '2019-01-28 05:21:58', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2019-01-28 05:21:58', '2019-01-28 05:21:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5c4e912a84222', '', '', '2019-01-28 05:21:58', '2019-01-28 05:21:58', '', 44, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2019-01-28 05:21:58', '2019-01-28 05:21:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Author Name', 'author_name', 'publish', 'closed', 'closed', '', 'field_5c4e914184223', '', '', '2019-01-28 05:21:58', '2019-01-28 05:21:58', '', 44, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2019-01-28 05:21:58', '2019-01-28 05:21:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Author Link', 'author_link', 'publish', 'closed', 'closed', '', 'field_5c4e915484224', '', '', '2019-01-28 05:21:58', '2019-01-28 05:21:58', '', 44, 'http://172.10.29.111/wordpress-projects/theplannerwire/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2019-01-28 05:22:43', '2019-01-28 05:22:43', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2019-01-29 11:02:06', '2019-01-29 11:02:06', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=48', 0, 'post', '', 0),
(49, 1, '2019-01-28 05:22:25', '2019-01-28 05:22:25', '', '2019_200by70_static', '', 'inherit', 'open', 'closed', '', '2019_200by70_static', '', '', '2019-01-28 05:22:25', '2019-01-28 05:22:25', '', 48, 'http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/uploads/2019/01/2019_200by70_static.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-28 05:22:43', '2019-01-28 05:22:43', '', 'Post-1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-01-28 05:22:43', '2019-01-28 05:22:43', '', 48, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-01-28 05:22:43', '2019-01-28 05:22:43', '', 'Post-1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-01-28 05:22:43', '2019-01-28 05:22:43', '', 48, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/48-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-01-28 05:23:26', '2019-01-28 05:23:26', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-2', '', 'publish', 'open', 'open', '', 'post-2', '', '', '2019-01-29 11:02:00', '2019-01-29 11:02:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=52', 0, 'post', '', 0),
(53, 1, '2019-01-28 05:23:13', '2019-01-28 05:23:13', '', '975010_200x70', '', 'inherit', 'open', 'closed', '', '975010_200x70', '', '', '2019-01-28 05:23:13', '2019-01-28 05:23:13', '', 52, 'http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/uploads/2019/01/975010_200x70.gif', 0, 'attachment', 'image/gif', 0),
(54, 1, '2019-01-28 05:23:26', '2019-01-28 05:23:26', '', 'Post-2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-01-28 05:23:26', '2019-01-28 05:23:26', '', 52, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-01-28 05:23:26', '2019-01-28 05:23:26', '', 'Post-2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-01-28 05:23:26', '2019-01-28 05:23:26', '', 52, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/52-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-01-28 05:24:06', '2019-01-28 05:24:06', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2019-01-29 11:01:54', '2019-01-29 11:01:54', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=56', 0, 'post', '', 0),
(57, 1, '2019-01-28 05:23:46', '2019-01-28 05:23:46', '', 'Banner Economist Sustainability Summit London 2019', '', 'inherit', 'open', 'closed', '', 'banner-economist-sustainability-summit-london-2019', '', '', '2019-01-28 05:23:46', '2019-01-28 05:23:46', '', 56, 'http://172.10.29.111/wordpress-projects/theplannerwire/wp-content/uploads/2019/01/Banner-Economist-Sustainability-Summit-London-2019.gif', 0, 'attachment', 'image/gif', 0),
(58, 1, '2019-01-28 05:24:06', '2019-01-28 05:24:06', '', 'Post-3', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-28 05:24:06', '2019-01-28 05:24:06', '', 56, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-01-28 05:24:06', '2019-01-28 05:24:06', '', 'Post-3', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-28 05:24:06', '2019-01-28 05:24:06', '', 56, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/28/56-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-01-29 09:53:55', '2019-01-29 09:53:55', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-01-29 09:53:55', '2019-01-29 09:53:55', '', 48, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/29/48-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-01-29 09:53:59', '2019-01-29 09:53:59', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-2', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-01-29 09:53:59', '2019-01-29 09:53:59', '', 52, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/29/52-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-01-29 09:54:07', '2019-01-29 09:54:07', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post-3', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-29 09:54:07', '2019-01-29 09:54:07', '', 56, 'http://172.10.29.111/wordpress-projects/theplannerwire/2019/01/29/56-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-01-30 07:12:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-30 07:12:24', '0000-00-00 00:00:00', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=64', 0, 'post', '', 0),
(65, 1, '2019-01-30 09:27:24', '2019-01-30 09:27:24', '', 'Groups', '', 'publish', 'closed', 'closed', '', 'groups', '', '', '2019-01-30 09:27:24', '2019-01-30 09:27:24', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/groups/', 0, 'page', '', 0),
(66, 1, '2019-01-30 12:04:35', '2019-01-30 12:04:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=71', 6, 'nav_menu_item', '', 0),
(72, 1, '2019-01-30 12:04:36', '2019-01-30 12:04:36', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2019-01-30 12:04:37', '2019-01-30 12:04:37', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=73', 8, 'nav_menu_item', '', 0),
(74, 1, '2019-01-30 12:04:37', '2019-01-30 12:04:37', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=74', 9, 'nav_menu_item', '', 0),
(75, 1, '2019-01-30 12:04:37', '2019-01-30 12:04:37', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2019-01-30 12:04:41', '2019-01-30 12:04:41', '', 0, 'http://172.10.29.111/wordpress-projects/theplannerwire/?p=75', 10, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_post_views`
--

CREATE TABLE `wp_post_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `period` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `count` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'activity-comment', 'activity-comment', 0),
(3, 'activity-comment-author', 'activity-comment-author', 0),
(4, 'activity-at-message', 'activity-at-message', 0),
(5, 'groups-at-message', 'groups-at-message', 0),
(6, 'core-user-registration', 'core-user-registration', 0),
(7, 'friends-request', 'friends-request', 0),
(8, 'friends-request-accepted', 'friends-request-accepted', 0),
(9, 'groups-details-updated', 'groups-details-updated', 0),
(10, 'groups-invitation', 'groups-invitation', 0),
(11, 'groups-member-promoted', 'groups-member-promoted', 0),
(12, 'groups-membership-request', 'groups-membership-request', 0),
(13, 'messages-unread', 'messages-unread', 0),
(14, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(15, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(16, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0),
(17, 'messages-unread-group', 'messages-unread-group', 0),
(18, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 3, 0),
(11, 4, 0),
(12, 5, 0),
(13, 6, 0),
(14, 7, 0),
(15, 8, 0),
(16, 9, 0),
(17, 10, 0),
(18, 11, 0),
(19, 12, 0),
(20, 13, 0),
(21, 14, 0),
(22, 15, 0),
(23, 16, 0),
(35, 17, 0),
(48, 1, 0),
(52, 1, 0),
(56, 1, 0),
(66, 18, 0),
(67, 18, 0),
(68, 18, 0),
(69, 18, 0),
(70, 18, 0),
(71, 18, 0),
(72, 18, 0),
(73, 18, 0),
(74, 18, 0),
(75, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 1),
(3, 3, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 1),
(4, 4, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 1),
(5, 5, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 1),
(6, 6, 'bp-email-type', 'Recipient has registered for an account.', 0, 1),
(7, 7, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 1),
(8, 8, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 1),
(9, 9, 'bp-email-type', 'A group\'s details were updated.', 0, 1),
(10, 10, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 1),
(11, 11, 'bp-email-type', 'Recipient\'s status within a group has changed.', 0, 1),
(12, 12, 'bp-email-type', 'A member has requested permission to join a group.', 0, 1),
(13, 13, 'bp-email-type', 'Recipient has received a private message.', 0, 1),
(14, 14, 'bp-email-type', 'Recipient has changed their email address.', 0, 1),
(15, 15, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 1),
(16, 16, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 1),
(17, 17, 'bp-email-type', 'A member has unread private messages.', 0, 1),
(18, 18, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ed1d0f931268b4786dcf5ee3e081a7e21fab389b52e2149b30d5a04f7b5ad9dc\";a:4:{s:10:\"expiration\";i:1549859392;s:2:\"ip\";s:13:\"172.10.29.111\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1548649792;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '64'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"172.10.29.0\";}'),
(19, 1, 'wp_defaulttoplevel_page_espresso_eventscolumnshidden', '1'),
(20, 1, 'managetoplevel_page_espresso_eventscolumnshidden', 'a:1:{i:0;s:6:\"author\";}'),
(21, 1, 'pp-hashtagger-admin-notice-1', 'dismissed'),
(22, 1, 'last_activity', '2019-01-30 09:57:25'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:23:\"add-buddypress-nav-menu\";i:1;s:12:\"add-post_tag\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1548652960'),
(27, 2, 'nickname', 'Antawn Jamison'),
(28, 2, 'first_name', 'Antawn'),
(29, 2, 'last_name', 'Jamison'),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(39, 2, 'wp_user_level', '0'),
(40, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(41, 2, 'last_activity', '2019-01-25 14:42:33'),
(42, 2, 'notification_messages_new_message', 'no'),
(43, 2, 'notification_friends_friendship_request', 'no'),
(44, 2, 'notification_friends_friendship_accepted', 'no'),
(45, 3, 'nickname', 'Chynna Phillips'),
(46, 3, 'first_name', 'Chynna'),
(47, 3, 'last_name', 'Phillips'),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(57, 3, 'wp_user_level', '0'),
(58, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(59, 3, 'last_activity', '2019-01-30 07:22:33'),
(60, 3, 'notification_messages_new_message', 'no'),
(61, 3, 'notification_friends_friendship_request', 'no'),
(62, 3, 'notification_friends_friendship_accepted', 'no'),
(63, 4, 'nickname', 'Kiki Cuyler'),
(64, 4, 'first_name', 'Kiki'),
(65, 4, 'last_name', 'Cuyler'),
(66, 4, 'description', ''),
(67, 4, 'rich_editing', 'true'),
(68, 4, 'syntax_highlighting', 'true'),
(69, 4, 'comment_shortcuts', 'false'),
(70, 4, 'admin_color', 'fresh'),
(71, 4, 'use_ssl', '0'),
(72, 4, 'show_admin_bar_front', 'true'),
(73, 4, 'locale', ''),
(74, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(75, 4, 'wp_user_level', '0'),
(76, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(77, 4, 'last_activity', '2019-01-28 04:25:59'),
(78, 4, 'notification_messages_new_message', 'no'),
(79, 4, 'notification_friends_friendship_request', 'no'),
(80, 4, 'notification_friends_friendship_accepted', 'no'),
(81, 5, 'nickname', 'MaliVai Washington'),
(82, 5, 'first_name', 'MaliVai'),
(83, 5, 'last_name', 'Washington'),
(84, 5, 'description', ''),
(85, 5, 'rich_editing', 'true'),
(86, 5, 'syntax_highlighting', 'true'),
(87, 5, 'comment_shortcuts', 'false'),
(88, 5, 'admin_color', 'fresh'),
(89, 5, 'use_ssl', '0'),
(90, 5, 'show_admin_bar_front', 'true'),
(91, 5, 'locale', ''),
(92, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(93, 5, 'wp_user_level', '0'),
(94, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(95, 5, 'last_activity', '2019-01-29 23:28:15'),
(96, 5, 'notification_messages_new_message', 'no'),
(97, 5, 'notification_friends_friendship_request', 'no'),
(98, 5, 'notification_friends_friendship_accepted', 'no'),
(99, 6, 'nickname', 'Matraca Berg'),
(100, 6, 'first_name', 'Matraca'),
(101, 6, 'last_name', 'Berg'),
(102, 6, 'description', ''),
(103, 6, 'rich_editing', 'true'),
(104, 6, 'syntax_highlighting', 'true'),
(105, 6, 'comment_shortcuts', 'false'),
(106, 6, 'admin_color', 'fresh'),
(107, 6, 'use_ssl', '0'),
(108, 6, 'show_admin_bar_front', 'true'),
(109, 6, 'locale', ''),
(110, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(111, 6, 'wp_user_level', '0'),
(112, 6, 'dismissed_wp_pointers', 'wp496_privacy'),
(113, 6, 'last_activity', '2019-01-28 06:06:54'),
(114, 6, 'notification_messages_new_message', 'no'),
(115, 6, 'notification_friends_friendship_request', 'no'),
(116, 6, 'notification_friends_friendship_accepted', 'no'),
(117, 7, 'nickname', 'Ron Faucheux'),
(118, 7, 'first_name', 'Ron'),
(119, 7, 'last_name', 'Faucheux'),
(120, 7, 'description', ''),
(121, 7, 'rich_editing', 'true'),
(122, 7, 'syntax_highlighting', 'true'),
(123, 7, 'comment_shortcuts', 'false'),
(124, 7, 'admin_color', 'fresh'),
(125, 7, 'use_ssl', '0'),
(126, 7, 'show_admin_bar_front', 'true'),
(127, 7, 'locale', ''),
(128, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(129, 7, 'wp_user_level', '0'),
(130, 7, 'dismissed_wp_pointers', 'wp496_privacy'),
(131, 7, 'last_activity', '2019-01-26 04:00:11'),
(132, 7, 'notification_messages_new_message', 'no'),
(133, 7, 'notification_friends_friendship_request', 'no'),
(134, 7, 'notification_friends_friendship_accepted', 'no'),
(135, 8, 'nickname', 'Michellie Jones'),
(136, 8, 'first_name', 'Michellie'),
(137, 8, 'last_name', 'Jones'),
(138, 8, 'description', ''),
(139, 8, 'rich_editing', 'true'),
(140, 8, 'syntax_highlighting', 'true'),
(141, 8, 'comment_shortcuts', 'false'),
(142, 8, 'admin_color', 'fresh'),
(143, 8, 'use_ssl', '0'),
(144, 8, 'show_admin_bar_front', 'true'),
(145, 8, 'locale', ''),
(146, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(147, 8, 'wp_user_level', '0'),
(148, 8, 'dismissed_wp_pointers', 'wp496_privacy'),
(149, 8, 'last_activity', '2019-01-25 21:38:40'),
(150, 8, 'notification_messages_new_message', 'no'),
(151, 8, 'notification_friends_friendship_request', 'no'),
(152, 8, 'notification_friends_friendship_accepted', 'no'),
(153, 9, 'nickname', 'Monta Ellis'),
(154, 9, 'first_name', 'Monta'),
(155, 9, 'last_name', 'Ellis'),
(156, 9, 'description', ''),
(157, 9, 'rich_editing', 'true'),
(158, 9, 'syntax_highlighting', 'true'),
(159, 9, 'comment_shortcuts', 'false'),
(160, 9, 'admin_color', 'fresh'),
(161, 9, 'use_ssl', '0'),
(162, 9, 'show_admin_bar_front', 'true'),
(163, 9, 'locale', ''),
(164, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(165, 9, 'wp_user_level', '0'),
(166, 9, 'dismissed_wp_pointers', 'wp496_privacy'),
(167, 9, 'last_activity', '2019-01-30 03:37:36'),
(168, 9, 'notification_messages_new_message', 'no'),
(169, 9, 'notification_friends_friendship_request', 'no'),
(170, 9, 'notification_friends_friendship_accepted', 'no'),
(171, 10, 'nickname', 'Picabo Street'),
(172, 10, 'first_name', 'Picabo'),
(173, 10, 'last_name', 'Street'),
(174, 10, 'description', ''),
(175, 10, 'rich_editing', 'true'),
(176, 10, 'syntax_highlighting', 'true'),
(177, 10, 'comment_shortcuts', 'false'),
(178, 10, 'admin_color', 'fresh'),
(179, 10, 'use_ssl', '0'),
(180, 10, 'show_admin_bar_front', 'true'),
(181, 10, 'locale', ''),
(182, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(183, 10, 'wp_user_level', '0'),
(184, 10, 'dismissed_wp_pointers', 'wp496_privacy'),
(185, 10, 'last_activity', '2019-01-26 15:36:45'),
(186, 10, 'notification_messages_new_message', 'no'),
(187, 10, 'notification_friends_friendship_request', 'no'),
(188, 10, 'notification_friends_friendship_accepted', 'no'),
(189, 11, 'nickname', 'Ralph Fiennes'),
(190, 11, 'first_name', 'Ralph'),
(191, 11, 'last_name', 'Fiennes'),
(192, 11, 'description', ''),
(193, 11, 'rich_editing', 'true'),
(194, 11, 'syntax_highlighting', 'true'),
(195, 11, 'comment_shortcuts', 'false'),
(196, 11, 'admin_color', 'fresh'),
(197, 11, 'use_ssl', '0'),
(198, 11, 'show_admin_bar_front', 'true'),
(199, 11, 'locale', ''),
(200, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(201, 11, 'wp_user_level', '0'),
(202, 11, 'dismissed_wp_pointers', 'wp496_privacy'),
(203, 11, 'last_activity', '2019-01-27 07:11:31'),
(204, 11, 'notification_messages_new_message', 'no'),
(205, 11, 'notification_friends_friendship_request', 'no'),
(206, 11, 'notification_friends_friendship_accepted', 'no'),
(207, 12, 'nickname', 'Seamus'),
(208, 12, 'first_name', 'Seamus'),
(209, 12, 'last_name', ''),
(210, 12, 'description', ''),
(211, 12, 'rich_editing', 'true'),
(212, 12, 'syntax_highlighting', 'true'),
(213, 12, 'comment_shortcuts', 'false'),
(214, 12, 'admin_color', 'fresh'),
(215, 12, 'use_ssl', '0'),
(216, 12, 'show_admin_bar_front', 'true'),
(217, 12, 'locale', ''),
(218, 12, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(219, 12, 'wp_user_level', '0'),
(220, 12, 'dismissed_wp_pointers', 'wp496_privacy'),
(221, 12, 'last_activity', '2019-01-29 14:41:43'),
(222, 12, 'notification_messages_new_message', 'no'),
(223, 12, 'notification_friends_friendship_request', 'no'),
(224, 12, 'notification_friends_friendship_accepted', 'no'),
(225, 13, 'nickname', 'Shan Foster'),
(226, 13, 'first_name', 'Shan'),
(227, 13, 'last_name', 'Foster'),
(228, 13, 'description', ''),
(229, 13, 'rich_editing', 'true'),
(230, 13, 'syntax_highlighting', 'true'),
(231, 13, 'comment_shortcuts', 'false'),
(232, 13, 'admin_color', 'fresh'),
(233, 13, 'use_ssl', '0'),
(234, 13, 'show_admin_bar_front', 'true'),
(235, 13, 'locale', ''),
(236, 13, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(237, 13, 'wp_user_level', '0'),
(238, 13, 'dismissed_wp_pointers', 'wp496_privacy'),
(239, 13, 'last_activity', '2019-01-29 15:44:58'),
(240, 13, 'notification_messages_new_message', 'no'),
(241, 13, 'notification_friends_friendship_request', 'no'),
(242, 13, 'notification_friends_friendship_accepted', 'no'),
(243, 14, 'nickname', 'Siobhan'),
(244, 14, 'first_name', 'Siobhan'),
(245, 14, 'last_name', ''),
(246, 14, 'description', ''),
(247, 14, 'rich_editing', 'true'),
(248, 14, 'syntax_highlighting', 'true'),
(249, 14, 'comment_shortcuts', 'false'),
(250, 14, 'admin_color', 'fresh'),
(251, 14, 'use_ssl', '0'),
(252, 14, 'show_admin_bar_front', 'true'),
(253, 14, 'locale', ''),
(254, 14, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(255, 14, 'wp_user_level', '0'),
(256, 14, 'dismissed_wp_pointers', 'wp496_privacy'),
(257, 14, 'last_activity', '2019-01-26 15:22:15'),
(258, 14, 'notification_messages_new_message', 'no'),
(259, 14, 'notification_friends_friendship_request', 'no'),
(260, 14, 'notification_friends_friendship_accepted', 'no'),
(261, 15, 'nickname', 'Stephen Curry'),
(262, 15, 'first_name', 'Stephen'),
(263, 15, 'last_name', 'Curry'),
(264, 15, 'description', ''),
(265, 15, 'rich_editing', 'true'),
(266, 15, 'syntax_highlighting', 'true'),
(267, 15, 'comment_shortcuts', 'false'),
(268, 15, 'admin_color', 'fresh'),
(269, 15, 'use_ssl', '0'),
(270, 15, 'show_admin_bar_front', 'true'),
(271, 15, 'locale', ''),
(272, 15, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(273, 15, 'wp_user_level', '0'),
(274, 15, 'dismissed_wp_pointers', 'wp496_privacy'),
(275, 15, 'last_activity', '2019-01-29 08:36:41'),
(276, 15, 'notification_messages_new_message', 'no'),
(277, 15, 'notification_friends_friendship_request', 'no'),
(278, 15, 'notification_friends_friendship_accepted', 'no'),
(279, 16, 'nickname', 'Wynonna Judd'),
(280, 16, 'first_name', 'Wynonna'),
(281, 16, 'last_name', 'Judd'),
(282, 16, 'description', ''),
(283, 16, 'rich_editing', 'true'),
(284, 16, 'syntax_highlighting', 'true'),
(285, 16, 'comment_shortcuts', 'false'),
(286, 16, 'admin_color', 'fresh'),
(287, 16, 'use_ssl', '0'),
(288, 16, 'show_admin_bar_front', 'true'),
(289, 16, 'locale', ''),
(290, 16, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(291, 16, 'wp_user_level', '0'),
(292, 16, 'dismissed_wp_pointers', 'wp496_privacy'),
(293, 16, 'last_activity', '2019-01-25 14:58:40'),
(294, 16, 'notification_messages_new_message', 'no'),
(295, 16, 'notification_friends_friendship_request', 'no'),
(296, 16, 'notification_friends_friendship_accepted', 'no'),
(297, 17, 'nickname', 'John Caius'),
(298, 17, 'first_name', 'John'),
(299, 17, 'last_name', 'Caius'),
(300, 17, 'description', ''),
(301, 17, 'rich_editing', 'true'),
(302, 17, 'syntax_highlighting', 'true'),
(303, 17, 'comment_shortcuts', 'false'),
(304, 17, 'admin_color', 'fresh'),
(305, 17, 'use_ssl', '0'),
(306, 17, 'show_admin_bar_front', 'true'),
(307, 17, 'locale', ''),
(308, 17, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(309, 17, 'wp_user_level', '0'),
(310, 17, 'dismissed_wp_pointers', 'wp496_privacy'),
(311, 17, 'last_activity', '2019-01-26 17:57:12'),
(312, 17, 'notification_messages_new_message', 'no'),
(313, 17, 'notification_friends_friendship_request', 'no'),
(314, 17, 'notification_friends_friendship_accepted', 'no'),
(315, 18, 'nickname', 'Thomas Carew'),
(316, 18, 'first_name', 'Thomas'),
(317, 18, 'last_name', 'Carew'),
(318, 18, 'description', ''),
(319, 18, 'rich_editing', 'true'),
(320, 18, 'syntax_highlighting', 'true'),
(321, 18, 'comment_shortcuts', 'false'),
(322, 18, 'admin_color', 'fresh'),
(323, 18, 'use_ssl', '0'),
(324, 18, 'show_admin_bar_front', 'true'),
(325, 18, 'locale', ''),
(326, 18, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(327, 18, 'wp_user_level', '0'),
(328, 18, 'dismissed_wp_pointers', 'wp496_privacy'),
(329, 18, 'last_activity', '2019-01-29 02:37:06'),
(330, 18, 'notification_messages_new_message', 'no'),
(331, 18, 'notification_friends_friendship_request', 'no'),
(332, 18, 'notification_friends_friendship_accepted', 'no'),
(333, 19, 'nickname', 'Jason Chaffetz'),
(334, 19, 'first_name', 'Jason'),
(335, 19, 'last_name', 'Chaffetz'),
(336, 19, 'description', ''),
(337, 19, 'rich_editing', 'true'),
(338, 19, 'syntax_highlighting', 'true'),
(339, 19, 'comment_shortcuts', 'false'),
(340, 19, 'admin_color', 'fresh'),
(341, 19, 'use_ssl', '0'),
(342, 19, 'show_admin_bar_front', 'true'),
(343, 19, 'locale', ''),
(344, 19, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(345, 19, 'wp_user_level', '0'),
(346, 19, 'dismissed_wp_pointers', 'wp496_privacy'),
(347, 19, 'last_activity', '2019-01-26 19:33:27'),
(348, 19, 'notification_messages_new_message', 'no'),
(349, 19, 'notification_friends_friendship_request', 'no'),
(350, 19, 'notification_friends_friendship_accepted', 'no'),
(351, 20, 'nickname', 'Mamah Cheney'),
(352, 20, 'first_name', 'Mamah'),
(353, 20, 'last_name', 'Cheney'),
(354, 20, 'description', ''),
(355, 20, 'rich_editing', 'true'),
(356, 20, 'syntax_highlighting', 'true'),
(357, 20, 'comment_shortcuts', 'false'),
(358, 20, 'admin_color', 'fresh'),
(359, 20, 'use_ssl', '0'),
(360, 20, 'show_admin_bar_front', 'true'),
(361, 20, 'locale', ''),
(362, 20, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(363, 20, 'wp_user_level', '0'),
(364, 20, 'dismissed_wp_pointers', 'wp496_privacy'),
(365, 20, 'last_activity', '2019-01-28 22:02:34'),
(366, 20, 'notification_messages_new_message', 'no'),
(367, 20, 'notification_friends_friendship_request', 'no'),
(368, 20, 'notification_friends_friendship_accepted', 'no'),
(369, 21, 'nickname', 'Cecelia Cichan'),
(370, 21, 'first_name', 'Cecelia'),
(371, 21, 'last_name', 'Cichan'),
(372, 21, 'description', ''),
(373, 21, 'rich_editing', 'true'),
(374, 21, 'syntax_highlighting', 'true'),
(375, 21, 'comment_shortcuts', 'false'),
(376, 21, 'admin_color', 'fresh'),
(377, 21, 'use_ssl', '0'),
(378, 21, 'show_admin_bar_front', 'true'),
(379, 21, 'locale', ''),
(380, 21, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(381, 21, 'wp_user_level', '0'),
(382, 21, 'dismissed_wp_pointers', 'wp496_privacy'),
(383, 21, 'last_activity', '2019-01-25 12:00:55'),
(384, 21, 'notification_messages_new_message', 'no'),
(385, 21, 'notification_friends_friendship_request', 'no'),
(386, 21, 'notification_friends_friendship_accepted', 'no'),
(387, 22, 'nickname', 'Dan Cortese'),
(388, 22, 'first_name', 'Dan'),
(389, 22, 'last_name', 'Cortese'),
(390, 22, 'description', ''),
(391, 22, 'rich_editing', 'true'),
(392, 22, 'syntax_highlighting', 'true'),
(393, 22, 'comment_shortcuts', 'false'),
(394, 22, 'admin_color', 'fresh'),
(395, 22, 'use_ssl', '0'),
(396, 22, 'show_admin_bar_front', 'true'),
(397, 22, 'locale', ''),
(398, 22, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(399, 22, 'wp_user_level', '0'),
(400, 22, 'dismissed_wp_pointers', 'wp496_privacy'),
(401, 22, 'last_activity', '2019-01-25 20:17:41'),
(402, 22, 'notification_messages_new_message', 'no'),
(403, 22, 'notification_friends_friendship_request', 'no'),
(404, 22, 'notification_friends_friendship_accepted', 'no'),
(405, 23, 'nickname', 'Vernon Dahmer'),
(406, 23, 'first_name', 'Vernon'),
(407, 23, 'last_name', 'Dahmer'),
(408, 23, 'description', ''),
(409, 23, 'rich_editing', 'true'),
(410, 23, 'syntax_highlighting', 'true'),
(411, 23, 'comment_shortcuts', 'false'),
(412, 23, 'admin_color', 'fresh'),
(413, 23, 'use_ssl', '0'),
(414, 23, 'show_admin_bar_front', 'true'),
(415, 23, 'locale', ''),
(416, 23, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(417, 23, 'wp_user_level', '0'),
(418, 23, 'dismissed_wp_pointers', 'wp496_privacy'),
(419, 23, 'last_activity', '2019-01-28 06:50:53'),
(420, 23, 'notification_messages_new_message', 'no'),
(421, 23, 'notification_friends_friendship_request', 'no'),
(422, 23, 'notification_friends_friendship_accepted', 'no'),
(423, 24, 'nickname', 'Andre Dubus'),
(424, 24, 'first_name', 'Andre'),
(425, 24, 'last_name', 'Dubus'),
(426, 24, 'description', ''),
(427, 24, 'rich_editing', 'true'),
(428, 24, 'syntax_highlighting', 'true'),
(429, 24, 'comment_shortcuts', 'false'),
(430, 24, 'admin_color', 'fresh'),
(431, 24, 'use_ssl', '0'),
(432, 24, 'show_admin_bar_front', 'true'),
(433, 24, 'locale', ''),
(434, 24, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(435, 24, 'wp_user_level', '0'),
(436, 24, 'dismissed_wp_pointers', 'wp496_privacy'),
(437, 24, 'last_activity', '2019-01-27 13:04:45'),
(438, 24, 'notification_messages_new_message', 'no'),
(439, 24, 'notification_friends_friendship_request', 'no'),
(440, 24, 'notification_friends_friendship_accepted', 'no'),
(441, 25, 'nickname', 'Justin Duchscherer'),
(442, 25, 'first_name', 'Justin'),
(443, 25, 'last_name', 'Duchscherer'),
(444, 25, 'description', ''),
(445, 25, 'rich_editing', 'true'),
(446, 25, 'syntax_highlighting', 'true'),
(447, 25, 'comment_shortcuts', 'false'),
(448, 25, 'admin_color', 'fresh'),
(449, 25, 'use_ssl', '0'),
(450, 25, 'show_admin_bar_front', 'true'),
(451, 25, 'locale', ''),
(452, 25, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(453, 25, 'wp_user_level', '0'),
(454, 25, 'dismissed_wp_pointers', 'wp496_privacy'),
(455, 25, 'last_activity', '2019-01-25 19:00:33'),
(456, 25, 'notification_messages_new_message', 'no'),
(457, 25, 'notification_friends_friendship_request', 'no'),
(458, 25, 'notification_friends_friendship_accepted', 'no'),
(459, 26, 'nickname', 'Keir Dullea'),
(460, 26, 'first_name', 'Keir'),
(461, 26, 'last_name', 'Dullea'),
(462, 26, 'description', ''),
(463, 26, 'rich_editing', 'true'),
(464, 26, 'syntax_highlighting', 'true'),
(465, 26, 'comment_shortcuts', 'false'),
(466, 26, 'admin_color', 'fresh'),
(467, 26, 'use_ssl', '0'),
(468, 26, 'show_admin_bar_front', 'true'),
(469, 26, 'locale', ''),
(470, 26, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(471, 26, 'wp_user_level', '0'),
(472, 26, 'dismissed_wp_pointers', 'wp496_privacy'),
(473, 26, 'last_activity', '2019-01-25 10:34:44'),
(474, 26, 'notification_messages_new_message', 'no'),
(475, 26, 'notification_friends_friendship_request', 'no'),
(476, 26, 'notification_friends_friendship_accepted', 'no'),
(477, 1, 'bp_latest_update', 'a:2:{s:2:\"id\";i:101;s:7:\"content\";s:110:\"Victory goes to the player who makes the next-to-last mistake. (Chessmaster Savielly Grigorievitch Tartakower)\";}'),
(478, 1, 'total_group_count', '1'),
(479, 1, 'nav_menu_recently_edited', '18');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BKGsQMxqzPH8RX.Kp5E1MWizlmMtZp1', 'admin', 'test@test.com', '', '2019-01-23 08:51:40', '', 0, 'admin'),
(2, 'antawn', '$P$B8yZexTUir0FXofoEOF1h912eC7IIB1', 'antawn', 'bp.def.data+1@gmail.com', '', '2019-01-10 23:30:27', '', 0, 'Antawn Jamison'),
(3, 'chynna', '$P$Bs8YTmg/eVL/cYkFGMe0x1KXs2XkAh1', 'chynna', 'bp.def.data+2@gmail.com', '', '2018-12-25 20:51:48', '', 0, 'Chynna Phillips'),
(4, 'kiki', '$P$B5Wk0ewfPOcdhy.yqd4vbQJHtS/1Ea0', 'kiki', 'bp.def.data+3@gmail.com', '', '2018-12-24 17:16:31', '', 0, 'Kiki Cuyler'),
(5, 'malivai', '$P$Bi.a/QDCtqFKELpA2JwGKG3nb1PMh71', 'malivai', 'bp.def.data+4@gmail.com', '', '2019-01-15 12:45:14', '', 0, 'MaliVai Washington'),
(6, 'matraca', '$P$B6igke7FoL1jzBVrDn4TzMtk/mKa3D1', 'matraca', 'bp.def.data+5@gmail.com', '', '2018-12-19 11:49:41', '', 0, 'Matraca Berg'),
(7, 'ron', '$P$BxpXgp.wMc9iEhBgGEmMa7EBi1YtUU.', 'ron', 'bp.def.data+6@gmail.com', '', '2019-01-02 22:00:46', '', 0, 'Ron Faucheux'),
(8, 'michellie', '$P$BKHRG8SzVMoxn4K8dvgLZ52Kki/I/B0', 'michellie', 'bp.def.data+7@gmail.com', '', '2019-01-18 08:14:20', '', 0, 'Michellie Jones'),
(9, 'monta', '$P$BvsTwMM774hPtpb7EkCQeL61hQLOva/', 'monta', 'bp.def.data+8@gmail.com', '', '2018-12-19 03:54:37', '', 0, 'Monta Ellis'),
(10, 'picabo', '$P$Bv0ALK1PITj53NuVGH2G9BplzlwcVF1', 'picabo', 'bp.def.data+9@gmail.com', '', '2018-12-21 06:53:56', '', 0, 'Picabo Street'),
(11, 'ralph', '$P$BxEQ0yg9dWxRClYhsUL1OopeEcZEh7/', 'ralph', 'bp.def.data+10@gmail.com', '', '2018-12-24 21:31:46', '', 0, 'Ralph Fiennes'),
(12, 'seamus', '$P$BRH7MuEhODvwFb7ai3b71JiICNnCVY.', 'seamus', 'bp.def.data+11@gmail.com', '', '2019-01-22 02:45:59', '', 0, 'Seamus'),
(13, 'shan', '$P$B9upGZdIdmTBsU8ds0roaImHNMe/0P1', 'shan', 'bp.def.data+12@gmail.com', '', '2019-01-28 14:50:07', '', 0, 'Shan Foster'),
(14, 'siobhan', '$P$B//dZLENxRNnnZXRjWYvWv2r6fom1c0', 'siobhan', 'bp.def.data+13@gmail.com', '', '2018-12-20 15:46:39', '', 0, 'Siobhan'),
(15, 'stephen', '$P$BNEBjqhPmvuNlOKxahpIY2aWlz6aYH.', 'stephen', 'bp.def.data+14@gmail.com', '', '2019-01-09 14:21:11', '', 0, 'Stephen Curry'),
(16, 'wynonna', '$P$B2HpE.Wp4DU2tfr4fSti8Efv8RfISz0', 'wynonna', 'bp.def.data+15@gmail.com', '', '2019-01-28 11:30:56', '', 0, 'Wynonna Judd'),
(17, 'john', '$P$B4iAmk1vE0FisUahRNr9iBEKz.DJNm/', 'john', 'bp.def.data+16@gmail.com', '', '2019-01-18 14:40:25', '', 0, 'John Caius'),
(18, 'thomas', '$P$BgfcijoJHeNpwaME8AxyictFKtac0u/', 'thomas', 'bp.def.data+17@gmail.com', '', '2019-01-29 06:18:40', '', 0, 'Thomas Carew'),
(19, 'jason', '$P$BG.aQWNS94g8eZ37lC79x5Npjgm7pr0', 'jason', 'bp.def.data+18@gmail.com', '', '2019-01-15 08:10:37', '', 0, 'Jason Chaffetz'),
(20, 'mamah', '$P$BDHnkW3nmD3cyajTbwV6vix2t2nLzx.', 'mamah', 'bp.def.data+19@gmail.com', '', '2018-12-21 22:48:08', '', 0, 'Mamah Cheney'),
(21, 'cecelia', '$P$Bna.5BkmsZ7QDt8fErr.WDULTIuHU50', 'cecelia', 'bp.def.data+20@gmail.com', '', '2019-01-05 19:26:22', '', 0, 'Cecelia Cichan'),
(22, 'dan', '$P$BUaX28El.cS35KtfNlvGzaPHlubOON0', 'dan', 'bp.def.data+21@gmail.com', '', '2019-01-12 09:38:12', '', 0, 'Dan Cortese'),
(23, 'vernon', '$P$BERSZhMkCXeiUAEEO7Q1WQnus4xRZ10', 'vernon', 'bp.def.data+22@gmail.com', '', '2019-01-28 17:19:20', '', 0, 'Vernon Dahmer'),
(24, 'andre', '$P$BZBXXJdUHHVkTyb5h7WsCxz1hBEiry1', 'andre', 'bp.def.data+23@gmail.com', '', '2019-01-12 18:41:52', '', 0, 'Andre Dubus'),
(25, 'justin', '$P$BYvgWULAo.AbvCaUuwVSqB4Y86FBPc0', 'justin', 'bp.def.data+24@gmail.com', '', '2019-01-08 18:17:53', '', 0, 'Justin Duchscherer'),
(26, 'keir', '$P$BMrwO/3wLAsV8YXZVaSAt6X8t2nRws1', 'keir', 'bp.def.data+25@gmail.com', '', '2019-01-02 21:43:17', '', 0, 'Keir Dullea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Indexes for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiator_user_id` (`initiator_user_id`),
  ADD KEY `friend_user_id` (`friend_user_id`);

--
-- Indexes for table `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `status` (`status`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `is_admin` (`is_admin`),
  ADD KEY `is_mod` (`is_mod`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `inviter_id` (`inviter_id`),
  ADD KEY `is_confirmed` (`is_confirmed`);

--
-- Indexes for table `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sender_only` (`sender_only`),
  ADD KEY `unread_count` (`unread_count`);

--
-- Indexes for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Indexes for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Indexes for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Indexes for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_esp_answer`
--
ALTER TABLE `wp_esp_answer`
  ADD PRIMARY KEY (`ANS_ID`),
  ADD KEY `REG_ID` (`REG_ID`),
  ADD KEY `QST_ID` (`QST_ID`);

--
-- Indexes for table `wp_esp_attendee_meta`
--
ALTER TABLE `wp_esp_attendee_meta`
  ADD PRIMARY KEY (`ATTM_ID`),
  ADD KEY `ATT_ID` (`ATT_ID`),
  ADD KEY `ATT_email` (`ATT_email`(191)),
  ADD KEY `ATT_lname` (`ATT_lname`),
  ADD KEY `ATT_fname` (`ATT_fname`);

--
-- Indexes for table `wp_esp_checkin`
--
ALTER TABLE `wp_esp_checkin`
  ADD PRIMARY KEY (`CHK_ID`),
  ADD KEY `REG_ID` (`REG_ID`),
  ADD KEY `DTT_ID` (`DTT_ID`);

--
-- Indexes for table `wp_esp_country`
--
ALTER TABLE `wp_esp_country`
  ADD PRIMARY KEY (`CNT_ISO`);

--
-- Indexes for table `wp_esp_currency`
--
ALTER TABLE `wp_esp_currency`
  ADD PRIMARY KEY (`CUR_code`);

--
-- Indexes for table `wp_esp_currency_payment_method`
--
ALTER TABLE `wp_esp_currency_payment_method`
  ADD PRIMARY KEY (`CPM_ID`),
  ADD KEY `PMD_ID` (`PMD_ID`);

--
-- Indexes for table `wp_esp_datetime`
--
ALTER TABLE `wp_esp_datetime`
  ADD PRIMARY KEY (`DTT_ID`),
  ADD KEY `DTT_EVT_start` (`DTT_EVT_start`),
  ADD KEY `EVT_ID` (`EVT_ID`),
  ADD KEY `DTT_is_primary` (`DTT_is_primary`);

--
-- Indexes for table `wp_esp_datetime_ticket`
--
ALTER TABLE `wp_esp_datetime_ticket`
  ADD PRIMARY KEY (`DTK_ID`),
  ADD KEY `DTT_ID` (`DTT_ID`),
  ADD KEY `TKT_ID` (`TKT_ID`);

--
-- Indexes for table `wp_esp_event_message_template`
--
ALTER TABLE `wp_esp_event_message_template`
  ADD PRIMARY KEY (`EMT_ID`),
  ADD KEY `EVT_ID` (`EVT_ID`),
  ADD KEY `GRP_ID` (`GRP_ID`);

--
-- Indexes for table `wp_esp_event_meta`
--
ALTER TABLE `wp_esp_event_meta`
  ADD PRIMARY KEY (`EVTM_ID`),
  ADD KEY `EVT_ID` (`EVT_ID`);

--
-- Indexes for table `wp_esp_event_question_group`
--
ALTER TABLE `wp_esp_event_question_group`
  ADD PRIMARY KEY (`EQG_ID`),
  ADD KEY `EVT_ID` (`EVT_ID`),
  ADD KEY `QSG_ID` (`QSG_ID`);

--
-- Indexes for table `wp_esp_event_venue`
--
ALTER TABLE `wp_esp_event_venue`
  ADD PRIMARY KEY (`EVV_ID`);

--
-- Indexes for table `wp_esp_extra_join`
--
ALTER TABLE `wp_esp_extra_join`
  ADD PRIMARY KEY (`EXJ_ID`),
  ADD KEY `first_model` (`EXJ_first_model_name`,`EXJ_first_model_id`),
  ADD KEY `second_model` (`EXJ_second_model_name`,`EXJ_second_model_id`);

--
-- Indexes for table `wp_esp_extra_meta`
--
ALTER TABLE `wp_esp_extra_meta`
  ADD PRIMARY KEY (`EXM_ID`),
  ADD KEY `EXM_type` (`EXM_type`,`OBJ_ID`,`EXM_key`);

--
-- Indexes for table `wp_esp_line_item`
--
ALTER TABLE `wp_esp_line_item`
  ADD PRIMARY KEY (`LIN_ID`),
  ADD KEY `parent_order` (`LIN_parent`,`LIN_order`),
  ADD KEY `txn_type_timestamp` (`TXN_ID`,`LIN_type`,`LIN_timestamp`),
  ADD KEY `txn_obj_id_obj_type` (`TXN_ID`,`OBJ_ID`,`OBJ_type`),
  ADD KEY `obj_id_obj_type` (`OBJ_ID`,`OBJ_type`);

--
-- Indexes for table `wp_esp_log`
--
ALTER TABLE `wp_esp_log`
  ADD PRIMARY KEY (`LOG_ID`),
  ADD KEY `LOG_time` (`LOG_time`),
  ADD KEY `OBJ` (`OBJ_type`,`OBJ_ID`),
  ADD KEY `LOG_type` (`LOG_type`);

--
-- Indexes for table `wp_esp_message`
--
ALTER TABLE `wp_esp_message`
  ADD PRIMARY KEY (`MSG_ID`),
  ADD KEY `GRP_ID` (`GRP_ID`),
  ADD KEY `TXN_ID` (`TXN_ID`),
  ADD KEY `MSG_messenger` (`MSG_messenger`),
  ADD KEY `MSG_message_type` (`MSG_message_type`),
  ADD KEY `MSG_context` (`MSG_context`),
  ADD KEY `MSG_recipient_ID` (`MSG_recipient_ID`),
  ADD KEY `MSG_recipient_type` (`MSG_recipient_type`),
  ADD KEY `MSG_to` (`MSG_to`(191)),
  ADD KEY `MSG_from` (`MSG_from`(191)),
  ADD KEY `MSG_subject` (`MSG_subject`(191)),
  ADD KEY `MSG_priority` (`MSG_priority`),
  ADD KEY `STS_ID` (`STS_ID`),
  ADD KEY `MSG_created` (`MSG_created`),
  ADD KEY `MSG_modified` (`MSG_modified`);

--
-- Indexes for table `wp_esp_message_template`
--
ALTER TABLE `wp_esp_message_template`
  ADD PRIMARY KEY (`MTP_ID`),
  ADD KEY `GRP_ID` (`GRP_ID`);

--
-- Indexes for table `wp_esp_message_template_group`
--
ALTER TABLE `wp_esp_message_template_group`
  ADD PRIMARY KEY (`GRP_ID`),
  ADD KEY `MTP_user_id` (`MTP_user_id`);

--
-- Indexes for table `wp_esp_payment`
--
ALTER TABLE `wp_esp_payment`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD KEY `PAY_timestamp` (`PAY_timestamp`),
  ADD KEY `TXN_ID` (`TXN_ID`);

--
-- Indexes for table `wp_esp_payment_method`
--
ALTER TABLE `wp_esp_payment_method`
  ADD PRIMARY KEY (`PMD_ID`),
  ADD UNIQUE KEY `PMD_slug_UNIQUE` (`PMD_slug`),
  ADD KEY `PMD_type` (`PMD_type`);

--
-- Indexes for table `wp_esp_price`
--
ALTER TABLE `wp_esp_price`
  ADD PRIMARY KEY (`PRC_ID`),
  ADD KEY `PRT_ID` (`PRT_ID`);

--
-- Indexes for table `wp_esp_price_type`
--
ALTER TABLE `wp_esp_price_type`
  ADD PRIMARY KEY (`PRT_ID`),
  ADD UNIQUE KEY `PRT_name_UNIQUE` (`PRT_name`);

--
-- Indexes for table `wp_esp_question`
--
ALTER TABLE `wp_esp_question`
  ADD PRIMARY KEY (`QST_ID`),
  ADD KEY `QST_order` (`QST_order`);

--
-- Indexes for table `wp_esp_question_group`
--
ALTER TABLE `wp_esp_question_group`
  ADD PRIMARY KEY (`QSG_ID`),
  ADD UNIQUE KEY `QSG_identifier_UNIQUE` (`QSG_identifier`),
  ADD KEY `QSG_order` (`QSG_order`);

--
-- Indexes for table `wp_esp_question_group_question`
--
ALTER TABLE `wp_esp_question_group_question`
  ADD PRIMARY KEY (`QGQ_ID`),
  ADD KEY `QST_ID` (`QST_ID`),
  ADD KEY `QSG_ID_order` (`QSG_ID`,`QGQ_order`);

--
-- Indexes for table `wp_esp_question_option`
--
ALTER TABLE `wp_esp_question_option`
  ADD PRIMARY KEY (`QSO_ID`),
  ADD KEY `QST_ID` (`QST_ID`),
  ADD KEY `QSO_order` (`QSO_order`);

--
-- Indexes for table `wp_esp_registration`
--
ALTER TABLE `wp_esp_registration`
  ADD PRIMARY KEY (`REG_ID`),
  ADD KEY `REG_url_link` (`REG_url_link`),
  ADD KEY `REG_code` (`REG_code`),
  ADD KEY `TXN_ID` (`TXN_ID`),
  ADD KEY `ATT_ID` (`ATT_ID`),
  ADD KEY `TKT_ID` (`TKT_ID`),
  ADD KEY `EVT_ID` (`EVT_ID`),
  ADD KEY `STS_ID` (`STS_ID`);

--
-- Indexes for table `wp_esp_registration_payment`
--
ALTER TABLE `wp_esp_registration_payment`
  ADD PRIMARY KEY (`RPY_ID`),
  ADD KEY `REG_ID` (`REG_ID`),
  ADD KEY `PAY_ID` (`PAY_ID`);

--
-- Indexes for table `wp_esp_state`
--
ALTER TABLE `wp_esp_state`
  ADD PRIMARY KEY (`STA_ID`),
  ADD KEY `STA_abbrev` (`STA_abbrev`),
  ADD KEY `CNT_ISO` (`CNT_ISO`);

--
-- Indexes for table `wp_esp_status`
--
ALTER TABLE `wp_esp_status`
  ADD UNIQUE KEY `STS_ID_UNIQUE` (`STS_ID`),
  ADD KEY `STS_type` (`STS_type`);

--
-- Indexes for table `wp_esp_ticket`
--
ALTER TABLE `wp_esp_ticket`
  ADD PRIMARY KEY (`TKT_ID`),
  ADD KEY `TKT_start_date` (`TKT_start_date`);

--
-- Indexes for table `wp_esp_ticket_price`
--
ALTER TABLE `wp_esp_ticket_price`
  ADD PRIMARY KEY (`TKP_ID`),
  ADD KEY `TKT_ID` (`TKT_ID`),
  ADD KEY `PRC_ID` (`PRC_ID`);

--
-- Indexes for table `wp_esp_ticket_template`
--
ALTER TABLE `wp_esp_ticket_template`
  ADD PRIMARY KEY (`TTM_ID`);

--
-- Indexes for table `wp_esp_transaction`
--
ALTER TABLE `wp_esp_transaction`
  ADD PRIMARY KEY (`TXN_ID`),
  ADD KEY `TXN_timestamp` (`TXN_timestamp`),
  ADD KEY `STS_ID` (`STS_ID`);

--
-- Indexes for table `wp_esp_venue_meta`
--
ALTER TABLE `wp_esp_venue_meta`
  ADD PRIMARY KEY (`VNUM_ID`),
  ADD KEY `VNU_ID` (`VNU_ID`),
  ADD KEY `STA_ID` (`STA_ID`),
  ADD KEY `CNT_ISO` (`CNT_ISO`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_post_views`
--
ALTER TABLE `wp_post_views`
  ADD PRIMARY KEY (`type`,`period`,`id`),
  ADD UNIQUE KEY `id_type_period_count` (`id`,`type`,`period`,`count`) USING BTREE,
  ADD KEY `type_period_count` (`type`,`period`,`count`) USING BTREE;

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_esp_answer`
--
ALTER TABLE `wp_esp_answer`
  MODIFY `ANS_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_attendee_meta`
--
ALTER TABLE `wp_esp_attendee_meta`
  MODIFY `ATTM_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_checkin`
--
ALTER TABLE `wp_esp_checkin`
  MODIFY `CHK_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_currency_payment_method`
--
ALTER TABLE `wp_esp_currency_payment_method`
  MODIFY `CPM_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_datetime`
--
ALTER TABLE `wp_esp_datetime`
  MODIFY `DTT_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_datetime_ticket`
--
ALTER TABLE `wp_esp_datetime_ticket`
  MODIFY `DTK_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_event_message_template`
--
ALTER TABLE `wp_esp_event_message_template`
  MODIFY `EMT_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_event_meta`
--
ALTER TABLE `wp_esp_event_meta`
  MODIFY `EVTM_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_event_question_group`
--
ALTER TABLE `wp_esp_event_question_group`
  MODIFY `EQG_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_event_venue`
--
ALTER TABLE `wp_esp_event_venue`
  MODIFY `EVV_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_extra_join`
--
ALTER TABLE `wp_esp_extra_join`
  MODIFY `EXJ_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_extra_meta`
--
ALTER TABLE `wp_esp_extra_meta`
  MODIFY `EXM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_esp_line_item`
--
ALTER TABLE `wp_esp_line_item`
  MODIFY `LIN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_log`
--
ALTER TABLE `wp_esp_log`
  MODIFY `LOG_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_message`
--
ALTER TABLE `wp_esp_message`
  MODIFY `MSG_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_message_template`
--
ALTER TABLE `wp_esp_message_template`
  MODIFY `MTP_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `wp_esp_message_template_group`
--
ALTER TABLE `wp_esp_message_template_group`
  MODIFY `GRP_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_esp_payment`
--
ALTER TABLE `wp_esp_payment`
  MODIFY `PAY_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_payment_method`
--
ALTER TABLE `wp_esp_payment_method`
  MODIFY `PMD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_esp_price`
--
ALTER TABLE `wp_esp_price`
  MODIFY `PRC_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_esp_price_type`
--
ALTER TABLE `wp_esp_price_type`
  MODIFY `PRT_ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_esp_question`
--
ALTER TABLE `wp_esp_question`
  MODIFY `QST_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_esp_question_group`
--
ALTER TABLE `wp_esp_question_group`
  MODIFY `QSG_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_esp_question_group_question`
--
ALTER TABLE `wp_esp_question_group_question`
  MODIFY `QGQ_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_esp_question_option`
--
ALTER TABLE `wp_esp_question_option`
  MODIFY `QSO_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_registration`
--
ALTER TABLE `wp_esp_registration`
  MODIFY `REG_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_registration_payment`
--
ALTER TABLE `wp_esp_registration_payment`
  MODIFY `RPY_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_state`
--
ALTER TABLE `wp_esp_state`
  MODIFY `STA_ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `wp_esp_ticket`
--
ALTER TABLE `wp_esp_ticket`
  MODIFY `TKT_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_esp_ticket_price`
--
ALTER TABLE `wp_esp_ticket_price`
  MODIFY `TKP_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_esp_ticket_template`
--
ALTER TABLE `wp_esp_ticket_template`
  MODIFY `TTM_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_transaction`
--
ALTER TABLE `wp_esp_transaction`
  MODIFY `TXN_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_esp_venue_meta`
--
ALTER TABLE `wp_esp_venue_meta`
  MODIFY `VNUM_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
