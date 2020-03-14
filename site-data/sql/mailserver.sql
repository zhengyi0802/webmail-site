-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2020 年 03 月 14 日 12:57
-- 伺服器版本: 5.7.29-0ubuntu0.18.04.1
-- PHP 版本： 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mailserver`
--

-- --------------------------------------------------------

--
-- 資料表結構 `virtual_aliases`
--

CREATE TABLE `virtual_aliases` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `virtual_aliases`
--

INSERT INTO `virtual_aliases` (`id`, `domain_id`, `source`, `destination`, `active`) VALUES
(1, 5, 'master@mundi.com.tw', 'postmaster@mundi-tv.tk', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `virtual_domains`
--

CREATE TABLE `virtual_domains` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `virtual_domains`
--

INSERT INTO `virtual_domains` (`id`, `name`, `active`) VALUES
(1, 'mundi-tv.tk', 1),
(2, 'mail.mundi-tv.tk', 1),
(3, 'mail', 1),
(4, 'localhost.mundi-tv.tk', 1),
(5, 'mundi.com.tw', 1),
(6, 'mail.mundi.com.tw', 1),
(7, 'smtp.mundi.com.tw', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `virtual_users`
--

CREATE TABLE `virtual_users` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `password` varchar(106) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `virtual_users`
--

INSERT INTO `virtual_users` (`id`, `domain_id`, `password`, `email`, `active`) VALUES
(1, 1, '$6$10b552719ab7460a$ySMKBZPl8Uo/jlHKlGOy0cUgJrRzs7GER0oozQRJNbQbvtCMiZ3R0NZNFtVdIS.KED228JObXEsBjGKxecqKR.', 'webmaster@mundi-tv.tk', 1),
(2, 1, '$6$4398695db4cf5dbb$fiXte7k5PYyooJ7uRhZ3KymW0FmoA5jsoci50s31LQTG.EyTov7L2wJDRaptN/NG67.HpRf0oFCXLT9pHqGeW.', 'postmaster@mundi-tv.tk', 1),
(3, 1, '$6$c5b93fcee7a1a2e2$C.j7xVdSMX8SxfqBJf7EUVuV6RFoRnvzGwzg7V1MRz/XkykRsOD.IDPo7yefbhpvkWOrDZrWF9U.j3OFtt2ho/', 'videoadmin@mundi-tv.tk', 1),
(4, 1, '$6$d9e1faae46f25683$nbZCcCuhrc1T.emAqmow6GyMyHZG4aw8ds2oxl.gjVd0tBB4O7bTVRWTokiVH8Kf8ctRKGGmq1Ny09Wd8LnqQ/', 'liveadmin@mundi-tv.tk', 1),
(5, 1, '$6$94cf50e4ed8f8220$AwFyWd983fCZRSKwx1jI4G1W4RScICgoSarsATLN86g/iEBmdnmNhCeglP60T3Zkuc9n20TVlQKK6Mha7fypW1', 'chevylin@mundi-tv.tk', 1),
(6, 1, '$6$f2590f8851c52bfc$CcB8FHpKFul.2vmfz4zTcDAo.T/FkOHjjNifayQKDC2ZH3R1o1RRKYGETvoOsAoytCn4qTYyF3ZbFAQFUllU4/', 'chevy.lin@mundi-tv.tk', 1),
(9, 1, '$6$de226d55e9edd706$FdlAcaUFH.BEhLGOLJ.mpQnWVxu3KcZrQAj.xwGvgLzkQda7aT4w/n3HQsW3yI6TwKEQAKH5AyUEaMasdn1BJ0', 'ado@mundi-tv.tk', 1);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `virtual_aliases`
--
ALTER TABLE `virtual_aliases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `source` (`source`),
  ADD KEY `domain_id` (`domain_id`);

--
-- 資料表索引 `virtual_domains`
--
ALTER TABLE `virtual_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `virtual_users`
--
ALTER TABLE `virtual_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `domain_id` (`domain_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `virtual_aliases`
--
ALTER TABLE `virtual_aliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `virtual_domains`
--
ALTER TABLE `virtual_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `virtual_users`
--
ALTER TABLE `virtual_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `virtual_aliases`
--
ALTER TABLE `virtual_aliases`
  ADD CONSTRAINT `virtual_aliases_ibfk_1` FOREIGN KEY (`domain_id`) REFERENCES `virtual_domains` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `virtual_users`
--
ALTER TABLE `virtual_users`
  ADD CONSTRAINT `virtual_users_ibfk_1` FOREIGN KEY (`domain_id`) REFERENCES `virtual_domains` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

