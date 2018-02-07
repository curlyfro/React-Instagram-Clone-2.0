-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2018 at 05:21 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react-instagram-clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `bkmrk_id` int(11) NOT NULL,
  `bkmrk_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `bkmrk_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`bkmrk_id`, `bkmrk_by`, `post_id`, `bkmrk_time`) VALUES
(37, 24, 56, '1518016677263'),
(38, 26, 60, '1518018155798');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `type` enum('text','image','sticker') COLLATE utf8mb4_bin NOT NULL,
  `text` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `commentSrc` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `comment_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_time` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `type`, `text`, `commentSrc`, `comment_by`, `post_id`, `comment_time`) VALUES
(60, 'sticker', '', 'instagram_comment_1518016608385.jpg', 24, 56, '1518016608385'),
(61, 'sticker', '', 'instagram_comment_1518016691913.jpg', 24, 56, '1518016691913');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `con_id` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `con_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`con_id`, `user_one`, `user_two`, `con_time`) VALUES
(24, 24, 7, '1518016982813');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `fav_id` int(11) NOT NULL,
  `fav_by` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `fav_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow_system`
--

CREATE TABLE `follow_system` (
  `follow_id` int(11) NOT NULL,
  `follow_by` int(11) NOT NULL,
  `follow_by_username` varchar(32) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `follow_to_username` varchar(32) NOT NULL,
  `follow_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow_system`
--

INSERT INTO `follow_system` (`follow_id`, `follow_by`, `follow_by_username`, `follow_to`, `follow_to_username`, `follow_time`) VALUES
(116, 7, 'ghalib', 8, 'coldplay', '1515919705073'),
(118, 8, 'coldplay', 7, 'ghalib', '1515919766210'),
(183, 7, 'ghalib', 10, 'noddy', '1516633623334'),
(196, 24, 'takkar', 7, 'ghalib', '1518016473906'),
(197, 24, 'takkar', 19, 'jonsnow', '1518016486219'),
(198, 24, 'takkar', 8, 'coldplay', '1518016489846'),
(199, 24, 'takkar', 18, 'ragnar', '1518016714400'),
(200, 26, 'vangogh', 24, 'takkar', '1518017855347'),
(201, 26, 'vangogh', 25, 'voldemort', '1518017861128'),
(202, 26, 'vangogh', 19, 'jonsnow', '1518017863361'),
(203, 27, 'taylor_swift', 24, 'takkar', '1518018308952'),
(204, 28, 'selena', 24, 'takkar', '1518018456093'),
(205, 29, 'steve_jobs', 24, 'takkar', '1518018551833');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(2000) NOT NULL,
  `admin` int(11) NOT NULL,
  `group_type` enum('public','private') NOT NULL DEFAULT 'public',
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `name`, `bio`, `admin`, `group_type`, `created`) VALUES
(11, 'a group', 'random group', 24, 'private', '1518016737587');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `grp_member_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `joined_group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`grp_member_id`, `group_id`, `member`, `added_by`, `joined_group`) VALUES
(6, 3, 7, 7, '1516978156774'),
(16, 3, 17, 17, '1517303139927'),
(28, 3, 8, 8, '1517475296370'),
(31, 11, 24, 24, '1518016737697'),
(32, 11, 7, 24, '1518016763138'),
(33, 11, 8, 24, '1518016765286'),
(34, 11, 18, 24, '1518016769907');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like_by` varchar(32) NOT NULL,
  `like_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `post_id`, `like_by`, `like_time`) VALUES
(31, 22, '12', '1516523221375'),
(33, 24, '13', '1516523819069'),
(34, 23, '11', '1516524845235'),
(35, 32, '10', '1516524986159'),
(36, 34, '16', '1516525136147'),
(37, 35, '17', '1516525294230'),
(38, 36, '18', '1516525560721'),
(39, 41, '20', '1516527811400'),
(42, 43, '18', '1516528068337'),
(57, 43, '23', '1518016342615'),
(58, 40, '24', '1518016509189'),
(59, 39, '24', '1518016512324'),
(61, 56, '24', '1518016672505'),
(62, 60, '26', '1518018154859'),
(63, 61, '27', '1518018364468');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `mssg_by` int(11) NOT NULL,
  `mssg_to` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `type` enum('text','image','sticker') COLLATE utf8mb4_bin NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_bin NOT NULL DEFAULT 'unread',
  `message_time` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `con_id`, `mssg_by`, `mssg_to`, `message`, `type`, `status`, `message_time`) VALUES
(70, 24, 24, 7, 'hello', 'text', 'read', '1518016987604'),
(71, 24, 7, 24, 'mmmm', 'text', 'read', '1518017019799');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notify_id` int(11) NOT NULL,
  `notify_by` int(11) NOT NULL,
  `notify_to` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `type` enum('follow','tag','like','share','shared_your_post','comment','favourites','recommend','add_grp_member','invite','change_admin','new_con') NOT NULL,
  `user` int(11) NOT NULL,
  `notify_time` varchar(100) NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notify_id`, `notify_by`, `notify_to`, `post_id`, `group_id`, `type`, `user`, `notify_time`, `status`) VALUES
(286, 7, 10, 0, 0, 'follow', 0, '1516633623492', 'read'),
(343, 24, 19, 0, 0, 'follow', 0, '1518016486336', 'unread'),
(344, 24, 8, 0, 0, 'follow', 0, '1518016489912', 'unread'),
(345, 24, 19, 40, 0, 'like', 0, '1518016509257', 'unread'),
(346, 24, 19, 39, 0, 'like', 0, '1518016512530', 'unread'),
(348, 24, 8, 56, 0, 'tag', 0, '1518016562831', 'unread'),
(350, 24, 19, 56, 0, 'share', 0, '1518016682391', 'unread'),
(351, 24, 18, 0, 0, 'follow', 0, '1518016714529', 'unread'),
(353, 24, 8, 0, 11, 'add_grp_member', 0, '1518016765339', 'unread'),
(354, 24, 18, 0, 11, 'add_grp_member', 0, '1518016769963', 'unread'),
(357, 26, 25, 0, 0, 'follow', 0, '1518017861197', 'unread'),
(358, 26, 19, 0, 0, 'follow', 0, '1518017863411', 'unread'),
(361, 26, 19, 60, 0, 'tag', 0, '1518018147273', 'unread'),
(363, 27, 24, 0, 0, 'follow', 0, '1518018309085', 'unread'),
(364, 27, 24, 61, 0, 'tag', 0, '1518018359586', 'unread'),
(365, 27, 24, 61, 0, 'share', 0, '1518018368819', 'unread'),
(366, 28, 24, 0, 0, 'follow', 0, '1518018456498', 'unread'),
(367, 29, 24, 0, 0, 'follow', 0, '1518018551970', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `imgSrc` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT 'normal',
  `location` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `type` enum('user','group') COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `group_id` int(11) NOT NULL,
  `post_time` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user`, `description`, `imgSrc`, `filter`, `location`, `type`, `group_id`, `post_time`) VALUES
(22, 12, '', 'instagram_1516522776339.jpg', 'normal', 'A-301, 90 Feet Road, Dharavi, Mumbai, Maharashtra 400017, India', 'user', 0, '1516522776339'),
(23, 11, '', 'instagram_1516523468369.jpg', 'normal', '', 'user', 0, '1516523468369'),
(24, 13, '', 'instagram_1516523813005.jpg', 'normal', '', 'user', 0, '1516523813006'),
(25, 14, '', 'instagram_1516524010087.jpg', 'normal', '', 'user', 0, '1516524010087'),
(26, 14, '', 'instagram_1516524031664.jpg', 'normal', '', 'user', 0, '1516524031664'),
(27, 14, '', 'instagram_1516524056911.jpg', 'normal', '', 'user', 0, '1516524056911'),
(28, 14, '', 'instagram_1516524098767.jpg', 'normal', '', 'user', 0, '1516524098767'),
(29, 14, '', 'instagram_1516524133694.jpg', 'normal', '', 'user', 0, '1516524133694'),
(30, 14, '', 'instagram_1516524190576.jpg', 'normal', '', 'user', 0, '1516524190576'),
(31, 15, '', 'instagram_1516524753923.jpg', 'normal', '', 'user', 0, '1516524753923'),
(32, 10, '', 'instagram_1516524981153.jpg', 'normal', '', 'user', 0, '1516524981153'),
(33, 10, '', 'instagram_1516525040077.jpg', 'normal', '', 'user', 0, '1516525040077'),
(34, 16, '', 'instagram_1516525129889.jpg', 'normal', '', 'user', 0, '1516525129889'),
(35, 17, '', 'instagram_1516525289046.jpg', 'normal', '', 'user', 0, '1516525289046'),
(36, 18, '', 'instagram_1516525555814.jpg', 'normal', '', 'user', 0, '1516525555814'),
(37, 18, '', 'instagram_1516525648412.jpg', 'normal', '', 'user', 0, '1516525648412'),
(38, 18, '', 'instagram_1516525703299.jpg', 'normal', '', 'user', 0, '1516525703299'),
(39, 19, '', 'instagram_1516527391527.jpg', 'normal', '', 'user', 0, '1516527391527'),
(40, 19, '', 'instagram_1516527403042.jpg', 'normal', '', 'user', 0, '1516527403042'),
(41, 20, '', 'instagram_1516527804372.jpg', 'normal', '', 'user', 0, '1516527804372'),
(43, 18, '', 'instagram_1516528062094.jpg', 'normal', '', 'user', 0, '1516528062094'),
(56, 24, 'nobita sleeping..', 'instagram_1518016562270.jpg', 'filter-helena', 'J-7, Senapati Bapat Marg, Central Government Staff Colony, Mahim, Mumbai, Maharashtra 400016, India', 'user', 0, '1518016562270'),
(57, 24, '', 'instagram_1518016704834.jpg', 'normal', '', 'user', 0, '1518016704834'),
(58, 26, 'me...', 'instagram_1518017819873.jpg', 'normal', '', 'user', 0, '1518017819873'),
(60, 26, '', 'instagram_1518018146496.jpg', 'normal', '', 'user', 0, '1518018146496'),
(61, 27, '', 'instagram_1518018358758.jpg', 'normal', 'Progresive Building, 90 Feet Road, Dharavi, Mumbai, Maharashtra 400017, India', 'user', 0, '1518018358758'),
(62, 28, '', 'instagram_1518018452185.jpg', 'normal', '', 'user', 0, '1518018452185');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_tag_id`, `post_id`, `user`) VALUES
(15, 60, 19),
(16, 60, 24),
(17, 61, 24);

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `view_id` int(11) NOT NULL,
  `view_by` int(11) NOT NULL,
  `view_to` int(11) NOT NULL,
  `view_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`view_id`, `view_by`, `view_to`, `view_time`) VALUES
(64, 7, 8, '1515919685209'),
(129, 8, 7, '1516289109364'),
(134, 11, 12, '1516524331307'),
(214, 17, 12, '1517245217599');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `recommend_id` int(11) NOT NULL,
  `recommend_by` int(11) NOT NULL,
  `recommend_to` int(11) NOT NULL,
  `recommend_of` int(11) NOT NULL,
  `recommend_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `share_id` int(11) NOT NULL,
  `share_by` int(11) NOT NULL,
  `share_to` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`share_id`, `share_by`, `share_to`, `post_id`, `share_time`) VALUES
(92, 24, 7, 56, '1518016586702'),
(93, 24, 19, 56, '1518016682241'),
(94, 27, 24, 61, '1518018368656');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `user`, `tag`) VALUES
(1, 29, 'apple');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `surname` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `bio` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `joined` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email_verified` enum('yes','no') COLLATE utf8mb4_bin NOT NULL DEFAULT 'no',
  `account_type` enum('public','private') COLLATE utf8mb4_bin NOT NULL DEFAULT 'public',
  `instagram` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `twitter` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `github` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `website` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `surname`, `email`, `password`, `bio`, `joined`, `email_verified`, `account_type`, `instagram`, `twitter`, `facebook`, `github`, `website`, `phone`) VALUES
(7, 'ghalib', 'Mirza', 'Ghalib', 'ghalib@gmail.com', '$2a$10$E3ZgkSwaa6rUopG1CBUm8OoCMKVqzSwv79bfuUrICV0eLOqTlqR/m', '', '1514718748562', 'yes', 'private', '', '', '', '', '', ''),
(8, 'coldplay', 'cold', 'play', 'coldplay@gmail.com', '$2a$10$zVPMDJKlOY00UnSlrLEUfuaeTwXkZ.VD4ixp.q1x2RjX/LbezoqPO', '', '1515918435853', 'no', 'public', '', '', '', '', '', ''),
(10, 'noddy', 'your', 'noddy', 'noddy@gmail.com', '$2a$10$/FlxKj904j7TnMo.9gJJTe5cwFakoJc4/w9kba3LeAdP0hTWGCzCG', '', '1516454412744', 'no', 'public', '', '', '', '', '', ''),
(11, 'nobita', 'nobita', 'nobi', 'nobita@gmail.com', '$2a$10$nzMI2G054StCufuo4fzkEOWhpwUWKqZwV67jbPqaqqSNDNnF5led2', '', '1516522466189', 'no', 'public', '', '', '', '', '', ''),
(12, 'pikachu', 'your', 'pikachu', 'pikachu@gmail.com', '$2a$10$j/buNE/iwJquKzzyBsOhLe4dEVVXKs56KTet8E4arAjcjsQ87BZt2', '', '1516522598741', 'no', 'public', '', '', '', '', '', ''),
(13, 'iamsrk', 'Shahrukh', 'Khan', 'iamsrk@gmail.com', '$2a$10$Xn99377.3Ns8.QoneTP4qeMuERyvNR2Ki86eRjpmHCsj01xvFoFIq', '', '1516523593107', 'no', 'public', '', '', '', '', '', ''),
(14, 'kinkade', 'Thomas', 'Kinkade', 'kinkade@gmail.com', '$2a$10$IvK3CBxFh/dnkWZtRMh9k.S2/WIdQbd6adF78Bb16.G.62nrSUgcG', '', '1516523852488', 'no', 'public', '', '', '', '', '', ''),
(15, 'suniyo', 'suniyo', 'honekawa', 'suniyo@gmail.com', '$2a$10$60TUnK2JiH8RoloKA/IdB.ZG07o.bc8FpHqu9Euc2kEXc28PslceS', '', '1516524667640', 'no', 'public', '', '', '', '', '', ''),
(16, 'zayn', 'Zayn', 'Malik', 'zayn@gmail.com', '$2a$10$ktjq/vo/8nBxlOnixyTpQuN6gyXc5vN4.rslSVRt4eM6vhq7ftaxS', '', '1516525072573', 'no', 'private', '', '', '', '', '', ''),
(17, 'nfak', 'Nusratfateh', 'Alikhan', 'nfak@gmail.com', '$2a$10$TAzl3pUYIs/HRb8LPhvZdOclk/TSfnmicUVgHEGyUwnUxm7j7Z.Ie', '', '1516525201164', 'no', 'public', '', '', '', '', '', ''),
(18, 'ragnar', 'Ragnar', 'Lothbrok', 'ragnar@gmail.com', '$2a$10$M7lx4wF.PUhAjSJVxb7bW.nk2G6zxeCjhXBnKTyFz3JNq8NQbQQ8m', '', '1516525343645', 'no', 'public', '', '', '', '', '', ''),
(19, 'jonsnow', 'jon_', 'snow', 'jonsnow@gmail.com', '$2a$10$9Nb4hFjgg.MKKLLTeXMuWehralT21UCoeWsPq3./VWMkUnu19JpzS', '', '1516527326858', 'no', 'public', '', '', '', '', '', ''),
(20, 'gian', 'Takeshi', 'Gauda', 'gian@gmail.com', '$2a$10$K3ijpio/4HIOKJhQ5yq3DOQ4IW5Oee4O5hwogEQtB/FBuNJRvd9T2', '', '1516527534985', 'no', 'public', '', '', '', '', '', ''),
(24, 'takkar', 'iam_', 'takkar', 'takkar@gmail.com', '$2a$10$m2CrL8Y/iJxXraNm2VsIcOqnJul3A.jo2JmFiMWv6McIxrQ4W5Wki', '', '1518016437193', 'no', 'public', '', '', '', '', '', ''),
(25, 'voldemort', 'Lord', 'Voldemort', 'voldemort@gmail.com', '$2a$10$.pMJpz3RqFiq4LyWY7I/mu06sfIN/pukOSsaV.XjgOeq10WMjff06', '', '1518017424230', 'no', 'public', '', '', '', '', '', ''),
(26, 'vangogh', 'Van_', 'Gogh', 'vangogh@gmail.com', '$2a$10$ZvTdbyGWECg7sSuQGeVqvuB5ydA2RNZ7OsuxudJu7E9SL3Hx/kigS', '', '1518017724523', 'no', 'public', '', '', '', '', '', ''),
(27, 'taylor_swift', 'taylor', 'swift', 'taylor_swift@gmail.com', '$2a$10$rnQRsp0iWCdV8b6AD24mJ.7rL5XQ31ejULlOQMVkBpjxD7RlRxqKK', '', '1518018283428', 'no', 'public', '', '', '', '', '', ''),
(28, 'selena', 'selena', 'gomez', 'selenagomez@gmail.com', '$2a$10$.ifdYlKQdt/acrXtn09NLuENJylSfZIJq2U4tqzZNqeRWaUG0nnQq', '', '1518018409165', 'no', 'public', '', '', '', '', '', ''),
(29, 'steve_jobs', 'steve', 'jobs', 'steve_jobs@gmail.com', '$2a$10$B05HNF3/pnK.8fU7kCJHpuaU5LpVxwao9Wmkn3Md2sAPc5GINiU6O', '', '1518018498672', 'no', 'public', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`bkmrk_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `follow_system`
--
ALTER TABLE `follow_system`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`grp_member_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`recommend_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`share_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `bkmrk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `follow_system`
--
ALTER TABLE `follow_system`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `grp_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `recommend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
