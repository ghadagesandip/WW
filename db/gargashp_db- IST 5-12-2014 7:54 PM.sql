-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2014 at 07:53 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gargashp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE IF NOT EXISTS `alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `sent_on` datetime NOT NULL,
  `is_draft` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `message`, `sent_on`, `is_draft`, `created`, `modified`) VALUES
(1, 'Push notification for test', '2014-12-05 01:12:11', 0, '2014-12-03 11:31:59', '2014-12-05 13:16:11'),
(3, 'test push notification', '2014-12-05 01:12:30', 0, '2014-12-05 12:22:27', '2014-12-05 13:28:30'),
(4, 'asdasdas', '0000-00-00 00:00:00', 1, '2014-12-05 13:40:00', '2014-12-05 13:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `amg_car_model_galleries`
--

CREATE TABLE IF NOT EXISTS `amg_car_model_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:interior;2:exterior',
  `amg_model_id` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL COMMENT '1:enable;0:disable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `amg_car_model_galleries`
--

INSERT INTO `amg_car_model_galleries` (`id`, `image`, `type`, `amg_model_id`, `is_published`) VALUES
(8, '1416636030images (2).jpg', 2, 5, 1),
(9, 'ead46676d8e4e45124d95cf00.png', 1, 6, 1),
(10, '68b5cd80d4d4ab5154b9b9d5c.png', 1, 6, 1),
(11, '778bd4977107a24ade19cfb2c.png', 1, 6, 1),
(12, '55c7e455304b7b363a9403888.png', 2, 6, 1),
(13, '3cecfa1ed984acffcf28cadd9.png', 1, 6, 1),
(14, '5e4b6210eee92bfdf0aedc711.png', 2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE IF NOT EXISTS `app_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `device_type` tinyint(4) DEFAULT '1' COMMENT 'device_token, 0 = android, 1= iphone',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id` (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `device_id`, `device_type`, `created`, `modified`) VALUES
(6, 'APA91bGESl3VvoHWqDsmNN-VkyTa7iSTyajeeEvICjVnCvqcUKg9LjO8irEaI8EBM1yfQLxebYRXB9AASybYjcsZXisarm-934vsMA6Y8pYfZsuqqR-YfBIp71M9O7uo7pSe1swBq_pCkA5at96MHnkVH_U-veCIKZKuzFUOJ1Y_H75d4HPAgb8', 1, '2014-12-05 12:19:13', '2014-12-05 12:19:13'),
(7, 'APA91bHunGUEnEX02Ty7g0V1YUNNMRHMF6h0DD42n5GQgZ41Q4bBChevqVGidWbdVLcPEjzJyRbi2z1TPCNKf698jlWjdDgsJCi1bnoYawnSF-zT20F7LMMQXSebzdatHyU7PCYBSFjKMor0dTJcX34BjS1Bsa1IkBerZ_FizbbaH2xLKrtjJtY', 1, '2014-12-05 13:24:19', '2014-12-05 13:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `car_classes`
--

CREATE TABLE IF NOT EXISTS `car_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `car_classes`
--

INSERT INTO `car_classes` (`id`, `name`, `description`, `image`, `is_publish`, `order`, `created_date`, `modified_date`) VALUES
(4, 'A-Class', 'test test', '141544184901.jpg', 1, 0, '2014-11-07 22:17:29', '2014-11-10 00:41:56'),
(5, 'C-Class', 'C-Class', '1415860550iconmonstr-picture-4-icon-256.png', 1, 1, '2014-11-12 22:05:50', '2014-11-12 22:05:50'),
(6, 'CL-Class', 'CL-Class', '1415860604iconmonstr-picture-4-icon-256.png', 1, 2, '2014-11-12 22:06:44', '2014-11-12 22:06:44'),
(7, 'CLS-Class', 'CLS-Class', '1415860630iconmonstr-picture-4-icon-256.png', 1, 3, '2014-11-12 22:07:10', '2014-11-12 22:07:10'),
(8, 'E-Class', 'E-Class', '1415860647iconmonstr-picture-4-icon-256.png', 1, 4, '2014-11-12 22:07:27', '2014-11-12 22:07:27'),
(9, 'GL-Class', 'GL-Class', '1415860666iconmonstr-picture-4-icon-256.png', 1, 6, '2014-11-12 22:07:46', '2014-11-12 22:07:46'),
(10, 'GLK-Class', 'GLK-Class', '1415860686iconmonstr-picture-4-icon-256.png', 1, 7, '2014-11-12 22:08:06', '2014-11-12 22:08:06'),
(11, 'M-Class', 'M-Class', '1415860701iconmonstr-picture-4-icon-256.png', 1, 8, '2014-11-12 22:08:21', '2014-11-12 22:08:21'),
(12, 'R-Class', 'R-Class', '1415860721iconmonstr-picture-4-icon-256.png', 1, 9, '2014-11-12 22:08:41', '2014-11-12 22:08:41'),
(13, 'S-Class', 'S-Class', '1415860737iconmonstr-picture-4-icon-256.png', 1, 10, '2014-11-12 22:08:57', '2014-11-12 22:08:57'),
(14, 'SL-Class', 'SL-Class', '1415860754iconmonstr-picture-4-icon-256.png', 1, 5, '2014-11-12 22:09:14', '2014-11-12 22:09:14'),
(15, 'SLK-Class', 'SLK-Class', '1415860790iconmonstr-picture-4-icon-256.png', 1, 11, '2014-11-12 22:09:50', '2014-11-12 22:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE IF NOT EXISTS `car_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `car_class_id` int(11) NOT NULL,
  `car_model_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `splash_image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `cylinder_arrangement` varchar(255) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL,
  `rated_output` varchar(255) DEFAULT NULL,
  `rated_torque` varchar(255) DEFAULT NULL,
  `compration_ratio` varchar(255) DEFAULT NULL,
  `acceleration` varchar(255) DEFAULT NULL,
  `top_speed` varchar(255) DEFAULT NULL,
  `total_displacement` int(11) DEFAULT NULL,
  `rpm` int(11) DEFAULT NULL,
  `max_torque` varchar(255) DEFAULT NULL,
  `fuel` varchar(255) DEFAULT NULL,
  `tank_capacity` varchar(255) DEFAULT NULL,
  `mixture_preparation` varchar(255) DEFAULT NULL,
  `drive_system` varchar(255) DEFAULT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `amg` tinyint(1) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_model_category_id` (`car_model_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `name`, `car_class_id`, `car_model_category_id`, `image`, `splash_image`, `description`, `cylinder_arrangement`, `displacement`, `rated_output`, `rated_torque`, `compration_ratio`, `acceleration`, `top_speed`, `total_displacement`, `rpm`, `max_torque`, `fuel`, `tank_capacity`, `mixture_preparation`, `drive_system`, `is_publish`, `order`, `amg`, `created_date`, `modified_date`) VALUES
(3, 'A-250', 4, 4, NULL, NULL, 'A-250', 'R4', 2, '155 [211]/5.500', '350/1.200 - 4.000', '9,8  : 1', '6,6', NULL, NULL, NULL, '', '', '', '', '', 1, 0, 0, '2014-11-18 00:41:38', '2014-11-19 05:14:58'),
(4, 'C-180', 4, 5, NULL, NULL, 'C-180', 'R4', 1595, '115 [156]/5.300', '250/1.200 - 4.000', '10,3 : 1', '8,2', NULL, NULL, NULL, '', '', '', '', '', 1, 0, 0, '2014-11-18 00:43:54', '2014-11-19 05:16:25'),
(5, 'C 63 AMG', 5, 19, '5d7cb62200bf1dac6587d385e.png', '3117f0aec0915164a6b6c25d5.png', 'The combination of expressive design, a decidedly sporty interior and superb everyday particality makes the C 63 AMG a unique high-performance vehicle', 'V8', 6208, '- (336/6800)', '-(600/5000)', '11.3:11', '', '0', NULL, NULL, '', '', '', '', '', 1, 0, 1, '2014-11-19 05:25:33', '2014-11-25 05:07:00'),
(6, 'A 45 AMG', 4, NULL, 'fdd3fac15259e63c3448c5494.png', 'ac25ebc9bb721e1e5ccbf8bc1.png', 'Mercedes-AMG is entering a new era with the A 45 AMG. FOR the first time in its more than 45-year history, the performance brand at Mercedes-Benz is offering an exciting high-performance car  in the turbocharged AMG 2.0-litre engine is the world''s most powerful four-cylinder power unit in the series production.', 'R4', 1991, '265 [360] / 6.000', '450/2.250 - 5.000', '8,6 : 1', '4,6', '250', NULL, NULL, '', '', '', '', '', 1, 0, 1, '2014-11-25 03:21:27', '2014-11-25 05:04:38'),
(7, 'C 63 AMG', 5, 20, '42c8514aa1219588c6c1d6b19.png', 'd0ebb0c2b1164a5fc83f8559a.png', 'The combination of expressive design and outstanding performance makes the C 63 AMG Coupe a unique high-performance  vehicle ', 'V8', 6208, '- (336/6800)', '-(600/5000)', '11.3:11', '-(4.5)', ' - (250, electr.limited)', NULL, NULL, '', '', '', '', '', 1, 0, 1, '2014-11-25 05:11:56', '2014-11-25 05:11:56'),
(8, 'C 63 AMG', 5, 21, 'd14add07151b32df038306504.png', 'a15d0ab52eed035005e4326f9.png', 'The combination of expressive design and outstanding performance makes the C 63 AMG Black Series Coupe a unique high-performance  vehicle ', 'V8', 6208, '- (336/6800)', '-(600/5000)', '11.3:1', '-(4.5)', ' - (250, electr.limited)', NULL, NULL, '', '', '', '', '', 1, 0, 1, '2014-11-25 05:19:56', '2014-11-25 05:19:56'),
(9, 'CL500', 6, 7, NULL, NULL, 'ABC', 'V8', 5461, '285 [388/6000]', '530/2800-4800', '10.7:1', '-(5.4)', '250 elect. limited', NULL, NULL, '', '', '', '', '', 1, 0, 0, '2014-12-02 23:22:27', '2014-12-02 23:22:27'),
(10, 'C 250', 5, 6, NULL, NULL, 'C 250', '', 1796, '150 [204]/6100', '310/2000â€“4300', '9.3 :1', '7.2', '240 (234)', NULL, NULL, '', '', '', '', '', 1, 0, 0, '2014-12-02 20:06:49', '2014-12-02 20:06:49'),
(11, 'C 350', 5, 6, NULL, NULL, 'C 350', '', 3498, '200 [272]/6000', '350/2400-5000', '10.7 : 1', '6.3 (6.3)', '250 elect. limited', NULL, NULL, '', '', '', '', '', 1, 0, 0, '2014-12-02 20:10:42', '2014-12-02 20:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `car_model_categories`
--

CREATE TABLE IF NOT EXISTS `car_model_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `splash_image` varchar(255) DEFAULT NULL,
  `car_class_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `amg` tinyint(1) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_class_id` (`car_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `car_model_categories`
--

INSERT INTO `car_model_categories` (`id`, `name`, `description`, `image`, `splash_image`, `car_class_id`, `is_publish`, `order`, `amg`, `created_date`, `modified_date`) VALUES
(4, 'Hatchback', 'The new generation Mercedes-Benz Introducing the new Mercedes-Benz A-Class: a radical piece of automotive engineering designed to breathe new life into the compact segment. With AMG involved from the beginning, the styling is simply breathtaking, with long, low, wide proportions and dramatic lines and surfaces.', '6763259b98935bda2749eff34.jpg', '75e6580a8f9fbf7c397f590e5.png', 4, 1, 0, 0, '2014-11-12 23:41:21', '2014-12-03 07:12:33'),
(5, 'Saloon', 'A class ahead: the dynamic, masculine appearance of the C-Class Saloon gains additional sportines and character as a result of the facelift without compromising on elegance and style', '1415867445A-class.jpg', NULL, 5, 1, 7, 0, '2014-11-13 00:00:45', '2014-11-13 00:00:45'),
(6, 'Coupe', 'More glances per hour: the dynamic styling and high perceived quality of the C-Class CoupÃ© are what make it so desirable.', 'efc9182b70f1004af420a04c3.jpg', '7173436da2899a1082ae8ad62.png', 5, 1, 0, 0, '2014-11-18 01:00:29', '2014-12-03 07:17:30'),
(7, 'Coupe', 'Coupe', '1416303154CLA-45-AMG-xxhdpi.png', NULL, 6, 1, 6, 0, '2014-11-18 01:02:34', '2014-11-18 01:02:34'),
(8, 'Shooting Brake', 'Shooting Brake', '1416309033CLS- shooting-brak-xxhdpi.png', NULL, 7, 1, 0, 0, '2014-11-18 02:40:33', '2014-11-25 03:05:04'),
(9, 'Saloon', 'Saloon', '1416316857E-Class-sedan-xxhdpi.png', NULL, 8, 1, 7, 0, '2014-11-18 04:50:57', '2014-11-18 04:50:57'),
(10, 'Cabriolet', 'Cabriolet', '1416316883E-Class-Cabrio-xxhdpi.png', NULL, 8, 1, 5, 0, '2014-11-18 04:51:23', '2014-11-18 04:51:23'),
(11, 'Coupe', 'Coupe', '1416316925E-Class-coupe-xxhdpi.png', NULL, 8, 1, 9, 0, '2014-11-18 04:52:05', '2014-11-18 04:52:05'),
(12, 'Off-Roader', 'Off-Roader', '1416317055GL-Class-xxhdpi.png', NULL, 9, 1, 8, 0, '2014-11-18 04:54:15', '2014-11-18 04:54:15'),
(13, 'GLK-Class', 'Off-Roader', '1416317096GLK-Class-xxhdpi.png', NULL, 10, 1, 6, 0, '2014-11-18 04:54:56', '2014-11-18 04:54:56'),
(14, 'Off-Roader', 'Off-Roader', '1416317133M-Class-xxhdpi.png', NULL, 11, 1, 9, 0, '2014-11-18 04:55:33', '2014-11-18 04:55:33'),
(15, 'R-Class', 'R-Class', '1416317160R-Class-xxhdpi.png', NULL, 12, 1, 1, 0, '2014-11-18 04:56:00', '2014-11-18 04:56:00'),
(16, 'Saloon', 'Saloon', '1416317219S-Class-xxhdpi.png', NULL, 13, 1, 5, 0, '2014-11-18 04:56:59', '2014-11-18 04:56:59'),
(17, 'Coupe', 'Coupe', '1416317240S-Coupe-xxhdpi.png', NULL, 13, 1, 3, 0, '2014-11-18 04:57:20', '2014-11-18 04:57:20'),
(18, 'Roadster', 'Roadster', '1416317292SL-Class-xxhdpi.png', NULL, 14, 1, 5, 0, '2014-11-18 04:58:12', '2014-11-18 04:58:12'),
(19, 'Seadan', 'Seadan', '1416405114C-63-AMG-xxhdpi.png', NULL, 5, 1, 8, 1, '2014-11-19 05:21:54', '2014-11-19 05:21:54'),
(20, 'Coupe', 'Coupe AMG ', 'e466d63e627132fb03c69c6e0.png', NULL, 5, 1, 0, 1, '2014-11-25 02:57:30', '2014-11-25 02:57:30'),
(21, 'Black Series Coupe', 'Black Series Coupe AMG', 'aebe9e92b0c2c80e398621f87.png', NULL, 5, 1, 0, 1, '2014-11-25 02:58:39', '2014-11-25 02:58:39'),
(22, 'Coupe', 'Coupe ', '6ec9b1eb7f63aaccd2e757728.png', NULL, 7, 1, 0, 1, '2014-11-25 02:59:57', '2014-11-25 03:00:20'),
(23, 'Shooting Brake', 'Shooting Brake', 'a947f8235142b5f29f19e9a1d.png', NULL, 7, 1, 0, 1, '2014-11-25 03:01:00', '2014-11-25 03:01:00'),
(24, 'Coupe', 'Coupe', 'c069d682c6b24fdee1cb0dc18.png', NULL, 13, 1, 0, 1, '2014-11-25 03:02:26', '2014-11-25 03:02:26'),
(25, 'Saloon', 'Saloon', 'ba090ee7ce163a05663889a27.png', NULL, 13, 1, 0, 1, '2014-11-25 03:04:02', '2014-11-25 03:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `car_model_category_images`
--

CREATE TABLE IF NOT EXISTS `car_model_category_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1:interior;2:exterior',
  `car_model_category_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:enable;0:disable',
  PRIMARY KEY (`id`),
  KEY `car_model_category_id` (`car_model_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `car_model_category_images`
--

INSERT INTO `car_model_category_images` (`id`, `image`, `type`, `car_model_category_id`, `is_publish`) VALUES
(6, '468c55cb9bc4d6b404d6dbb2a.png', 1, 8, 1),
(7, '9ee696f35e5a60f7c484d070d.png', 2, 8, 1),
(9, 'be167a16f9ff5738fd0776432.jpg', 2, 4, 1),
(10, 'a4da47905d1ee896371d7c359.jpg', 2, 4, 1),
(11, '43ae18c0670ab853c34d45a1e.jpg', 2, 4, 1),
(12, 'dfb8a88481da31ce90651ea27.jpg', 2, 4, 1),
(13, 'fa9e44ef5da534054203f6706.jpg', 2, 4, 1),
(14, 'a09c1738b02b3bb2586a5418b.jpg', 2, 4, 1),
(15, '13699df4f5af7851d842e15e8.jpg', 2, 4, 1),
(16, '16ba340a55cb92d634a246178.jpg', 2, 4, 1),
(17, 'bb80e709d0b9ea539dc37ff7c.jpg', 2, 4, 1),
(18, 'd5cbbbc8e800e445eda2e80ad.jpg', 2, 4, 1),
(19, '390097b5b69aa6cc16323b14d.jpg', 2, 4, 1),
(20, '11f4775698af72f2555905d33.jpg', 1, 4, 1),
(21, 'c15fa5b41c54f79aeec0e6789.jpg', 1, 4, 1),
(22, '9cd44202dda5ebc5f6b33f533.jpg', 1, 4, 1),
(23, 'ca8c5b40e751d93311763c343.jpg', 1, 4, 1),
(24, '68bc98e953b5a1bd77bec449f.jpg', 1, 6, 1),
(25, 'b6eae0b5f65b9dbb03f899eb9.jpg', 1, 6, 1),
(26, '4149899c2d8a032b70119730a.jpg', 1, 6, 1),
(27, 'b3c506ea637d1db8b9e17801c.jpg', 1, 6, 1),
(28, '6f0d58a48f8bca0491003cf32.jpg', 1, 6, 1),
(29, '6ea3039ddb42e4dd83f1bb853.jpg', 1, 6, 1),
(30, '5f90649d4acb2bfcac0df5125.jpg', 1, 6, 1),
(31, '156c8989f48991f6f5d312895.jpg', 1, 6, 1),
(32, '5c31bdffa5c657d219b5442fe.jpg', 1, 6, 1),
(33, 'a6cc248f02546014e60d788fb.jpg', 1, 6, 1),
(34, '2e3a3e64498f4c5d49adfad6f.jpg', 1, 6, 1),
(35, '8548cb3889f71fdd4a0e66561.jpg', 1, 6, 1),
(36, 'e1162216f1dfe83144774474d.jpg', 1, 6, 1),
(37, 'a9acb81e7ffab692dc68c7ab0.jpg', 1, 6, 1),
(38, '26bd3b8db7e060d3ab8fa828e.jpg', 1, 6, 1),
(39, '3085b031f738a995336c37d2d.jpg', 1, 6, 1),
(40, '6b75efd8a1df467357d687a4c.jpg', 1, 6, 1),
(41, '79ccd169a9c976c0bba4ec493.jpg', 1, 6, 1),
(42, 'de883c91a07820ab6777cab8a.jpg', 1, 6, 1),
(43, '79d894d47c822cd1a14a667ce.jpg', 1, 6, 1),
(44, '7a020369a9915f68303fe2481.jpg', 1, 6, 1),
(45, 'c8c164e13ddf0a5880a5c5f81.jpg', 1, 6, 1),
(46, '214f788d01047ce2f91241a33.jpg', 1, 6, 1),
(47, '7be51bb79958a8795229d9998.jpg', 1, 6, 1),
(48, '2f3851baa0098669d33a0b3ef.jpg', 1, 6, 1),
(49, 'ac52500e162b3d1b723da3967.jpg', 1, 6, 1),
(50, '08969452ae33833245c32b466.jpg', 1, 6, 1),
(51, '4d7cb345b4201cf3a429fa21d.jpg', 1, 6, 1),
(52, '64b983c63da50ea11d03df446.jpg', 1, 6, 1),
(53, 'f36e947b31c150c4495176cd5.jpg', 1, 6, 1),
(54, 'd93b6e8ba4606e524120cd19b.jpg', 1, 6, 1),
(55, 'c042170c606804bccef311324.jpg', 1, 6, 1),
(56, '691a4c5b142897420ac03120b.jpg', 1, 6, 1),
(57, '1015145f16eee4c11732e3973.jpg', 1, 6, 1),
(58, 'a90ea497d5af646d50d8b435c.jpg', 1, 6, 1),
(59, 'b2970b058c79de30e593bbae0.jpg', 2, 6, 1),
(60, '9118214645883be0ea42ff371.jpg', 2, 6, 1),
(61, '7c4bd01e15599f72a143f927a.jpg', 2, 6, 1),
(62, 'b24291dbd36440dab51bedd66.jpg', 2, 6, 1),
(63, 'a7c98bd6be2d6cfadb9a5ca66.jpg', 2, 6, 1),
(64, '3a9dee1ca3af27336c96f41bc.jpg', 2, 6, 1),
(65, 'fc41625ba13d55043114383e5.jpg', 2, 6, 1),
(66, '5d28ca4f573a98c022fc31b37.jpg', 2, 6, 1),
(67, '9504fd2474d2e6388eb07cad7.jpg', 2, 6, 1),
(68, '991025cbe2122d12d88dddc9b.jpg', 2, 6, 1),
(69, '8116f35e2f0a97d8a18b092f2.jpg', 2, 6, 1),
(71, '3382adeb0734a335cf419cd3d.jpg', 2, 6, 1),
(72, 'c9befd0a83a5c28da512e6cbd.jpg', 2, 6, 1),
(73, '5282ccdb160e87ea8ef966a8a.jpg', 2, 6, 1),
(74, 'bf7e7598a86706036b0d07b24.jpg', 2, 6, 1),
(75, 'ffc857852505e4a7ec0aeb894.jpg', 2, 6, 1),
(76, 'f2a14c6720fb945738b17aac8.jpg', 2, 6, 1),
(77, 'fb073edcc0b9d6007816db9cd.jpg', 2, 6, 1),
(78, '29e9cbd139a8f2dc76a640e7c.jpg', 2, 6, 1),
(79, '4f2cd64a154ee40c431bc5d8e.jpg', 2, 6, 1),
(80, '3cabe197884e92b536cdebd60.jpg', 2, 6, 1),
(81, 'f1822e0df5c0247c6d377f001.jpg', 2, 6, 1),
(82, 'f9c0bea3f4c3456bc912e5c6c.jpg', 2, 6, 1),
(83, 'a8ea14b75932831dc79cdc492.jpg', 2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_collections`
--

CREATE TABLE IF NOT EXISTS `lifestyle_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lifestyle_collection_type_id` int(11) NOT NULL,
  `lifestyle_collection_category_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lifestyle_collection_type_id` (`lifestyle_collection_type_id`),
  KEY `lifestyle_collection_category_id` (`lifestyle_collection_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `lifestyle_collections`
--

INSERT INTO `lifestyle_collections` (`id`, `name`, `code`, `image`, `description`, `lifestyle_collection_type_id`, `lifestyle_collection_category_id`, `is_publish`, `order`, `created_date`, `modified_date`) VALUES
(2, '  MENâ€™S HIGH CLASSIC CHRONOGRAPH WATCH', '', '1416406099B66041470.jpg', '  MENâ€™S HIGH CLASSIC CHRONOGRAPH WATCH - B66041470', 7, 5, 1, 0, '2014-11-19 05:38:19', '2014-11-19 05:39:15'),
(3, 'CLASSIC WATCH WITH SMALL SECONDS SUBDIAL', '', '1416406250B66043037.jpg', 'CLASSIC WATCH WITH SMALL SECONDS SUBDIAL -  B66043037', 7, 5, 1, 2, '2014-11-19 05:40:50', '2014-11-19 05:40:50'),
(4, 'WOMENâ€™S BUSINESS IN STYLE WATCH', '', '1416406331B66952445.jpg', 'WOMENâ€™S BUSINESS IN STYLE WATCH - B66952445', 7, 6, 1, 3, '2014-11-19 05:42:11', '2014-11-19 05:42:11'),
(5, 'MEN''S TRUCKER SWEAT JACKET', '', '1416406712B67871099â€“1104a.jpg', 'MEN''S TRUCKER SWEAT JACKET - B67871099', 8, 5, 1, 1, '2014-11-19 05:48:32', '2014-11-19 05:48:32'),
(6, 'MENâ€™S FUNCTION POLO SHIRT', 'B66953788', '7d83bf258f85626cb5c06c3cd.jpg', 'MENâ€™S FUNCTION POLO SHIRT', 2, 21, 1, 0, '2014-12-05 05:57:34', '2014-12-05 05:57:34'),
(7, 'AMG SCARF', 'B66959919', 'c02cbd1cda82901d6e2c70965.jpg', 'AMG SCARF', 2, 21, 1, 0, '2014-12-05 05:59:21', '2014-12-05 05:59:21'),
(8, 'AMG SUNGLASSES', 'B66959920', 'b55848829c5b592cf575758b6.jpg', 'AMG SUNGLASSES', 2, 21, 1, 0, '2014-12-05 06:00:39', '2014-12-05 06:00:39'),
(9, 'AMG VINTAGE PIN', 'B66959976', '4eb92c285f3286b58bb7aa980.jpg', 'AMG VINTAGE PIN', 2, 21, 1, 0, '2014-12-05 06:01:32', '2014-12-05 06:01:32'),
(10, 'CUFFLINKS', 'B66953851', '5767c88dc4458f28f772ef9d3.jpg', 'CUFFLINKS', 2, 21, 1, 0, '2014-12-05 06:05:14', '2014-12-05 06:05:14'),
(11, 'MENâ€™S AMG CAP', 'B66957772', 'f785aff6b6d8cd294a33a1ef4.jpg', 'MENâ€™S AMG CAP', 2, 21, 1, 0, '2014-12-05 06:06:12', '2014-12-05 06:06:12'),
(12, 'MENâ€™S POLO SHIRT', 'B66953655', '045b4c1b761a102cceb937385.jpg', 'MENâ€™S POLO SHIRT', 2, 21, 1, 0, '2014-12-05 06:06:57', '2014-12-05 06:06:57'),
(13, 'NAIL POLISH', 'B66952531', 'd3fd77976fcafe42e3a46d407.jpg', 'NAIL POLISH', 2, 21, 1, 0, '2014-12-05 06:09:52', '2014-12-05 06:09:52'),
(14, 'WOMENâ€™S AMG CAP', 'B66957773', '7546e1d21dba81dc96faf9f48.jpg', 'WOMENâ€™S AMG CAP', 2, 21, 1, 0, '2014-12-05 06:17:37', '2014-12-05 06:17:37'),
(15, 'MENâ€™S AMG VINTAGE POLO SHIRT', 'B66959981', '282a64d04eaa26a619f81a0c3.jpg', 'MENâ€™S AMG VINTAGE POLO SHIRT', 2, 21, 1, 0, '2014-12-05 06:19:17', '2014-12-05 06:19:17'),
(16, 'AMG WALLET', 'B66037336', '8eb3d18c0a9e02bf74974dd5f.jpg', 'AMG WALLET', 2, 22, 1, 0, '2014-12-05 06:31:46', '2014-12-05 06:31:46'),
(17, 'AMG BUSINESS CARD WALLET', 'B66959922', '242d82c0b47bfe5a96e18b19d.jpg', 'AMG BUSINESS CARD WALLET', 2, 22, 1, 0, '2014-12-05 06:32:42', '2014-12-05 06:32:42'),
(18, 'AMG BUSINESS CARD WALLET', 'B66959922', '066c8360d1b8b2251a27be289.jpg', 'AMG BUSINESS CARD WALLET', 2, 22, 1, 0, '2014-12-05 06:34:55', '2014-12-05 06:34:55'),
(19, 'AMG DOCUMENT WALLET', 'B66952486', '673990e0b49bd763a6edeb9cc.jpg', 'AMG DOCUMENT WALLET', 2, 22, 1, 0, '2014-12-05 06:35:37', '2014-12-05 06:35:37'),
(20, 'AMG IPADÂ® SLEEVE', 'B66952524', '5e8bb2d308c3f975dd87d264a.jpg', 'AMG IPADÂ® SLEEVE', 2, 22, 1, 0, '2014-12-05 06:37:37', '2014-12-05 06:37:37'),
(21, 'AMG IPHONEÂ® 5 SLEEVE', 'B66952523', 'f221f0685d715767ec9862aef.jpg', 'AMG IPHONEÂ® 5 SLEEVE', 2, 22, 1, 0, '2014-12-05 06:38:24', '2014-12-05 06:38:24'),
(22, 'AMG KEY CASE', 'B66957903', '47d46e9bc18649d3c10ae5e49.jpg', 'AMG KEY CASE', 2, 22, 1, 0, '2014-12-05 06:39:12', '2014-12-05 06:39:12'),
(23, 'AMG KEY WALLET', 'B66957783', '0a12c64be9764a76613d457e1.jpg', 'AMG KEY WALLET', 2, 22, 1, 0, '2014-12-05 06:44:24', '2014-12-05 06:44:24'),
(24, 'AMG MOUSEPAD', 'B66952526', 'bd373226793a775f7e9011355.jpg', 'AMG MOUSEPAD', 2, 22, 1, 0, '2014-12-05 06:48:05', '2014-12-05 06:48:05'),
(25, 'AMG ORGANISER', 'B66957577', 'ac0d437d9c446d54fd38fbbf1.jpg', 'AMG ORGANISER', 2, 22, 1, 0, '2014-12-05 06:52:52', '2014-12-05 06:52:52'),
(26, 'AMG ORGANISER', 'B66957578', '4ffa442d91fc57913690043b4.jpg', 'AMG ORGANISER', 2, 22, 1, 0, '2014-12-05 06:53:41', '2014-12-05 06:53:41'),
(27, 'AMG SMARTPHONE SLEEVE', 'B66952503', '1c122a0c96556d376ef0d4bf7.jpg', 'AMG SMARTPHONE SLEEVE', 2, 22, 1, 0, '2014-12-05 06:54:44', '2014-12-05 06:54:44'),
(28, 'AMG TRAVEL WALLET', 'B66959921', '6965f6688c125b0c2420b5375.jpg', 'AMG TRAVEL WALLET', 2, 22, 1, 0, '2014-12-05 06:55:49', '2014-12-05 06:55:49'),
(29, 'AMG TRAVEL WALLET', 'B66959921', '81017d6045af4ec62c710d12a.jpg', 'AMG TRAVEL WALLET', 2, 22, 1, 0, '2014-12-05 06:59:39', '2014-12-05 06:59:39'),
(30, 'AMG VINTAGE BELT', 'B66959972', '0dc7ddbea8426a312ce4b9d7e.jpg', 'AMG VINTAGE BELT', 2, 22, 1, 0, '2014-12-05 07:00:54', '2014-12-05 07:00:54'),
(31, 'AMG VINTAGE CREDIT CARD WALLET', 'B66952530', 'a8e7fe02ff356ea5dec56768d.jpg', 'AMG VINTAGE CREDIT CARD WALLET', 2, 22, 1, 0, '2014-12-05 07:02:01', '2014-12-05 07:02:01'),
(32, 'AMG VINTAGE WALLET', 'B66959971', '1039b91434517a2876fe6841a.jpg', 'AMG VINTAGE WALLET', 2, 22, 1, 0, '2014-12-05 07:03:50', '2014-12-05 07:03:50'),
(33, 'AMG VINTAGE WALLET', 'B66959971', '726b86e4c93a69af9cab3faee.jpg', 'AMG VINTAGE WALLET', 2, 22, 1, 0, '2014-12-05 07:05:24', '2014-12-05 07:05:24'),
(34, 'AMG VINTAGE WEEKEND BAG', 'B66959970', '87346ed974b6e5f050c121ac8.jpg', 'AMG VINTAGE WEEKEND BAG', 2, 22, 1, 0, '2014-12-05 07:06:16', '2014-12-05 07:06:16'),
(35, 'AMG VINTAGE KEY RING', 'B66959973', 'a6f36ef6082918dbe869e799f.jpg', 'AMG VINTAGE KEY RING', 2, 22, 1, 0, '2014-12-05 07:07:37', '2014-12-05 07:07:37'),
(36, 'WOMENâ€™S POLO SHIRT', 'B66953793', 'f8396c92240cb445a94b900a1.jpg', 'WOMENâ€™S POLO SHIRT', 2, 21, 1, 0, '2014-12-05 07:08:25', '2014-12-05 07:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_collection_categories`
--

CREATE TABLE IF NOT EXISTS `lifestyle_collection_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `lifestyle_collection_categories`
--

INSERT INTO `lifestyle_collection_categories` (`id`, `name`, `is_publish`, `order`, `created_date`, `modified_date`) VALUES
(5, 'Men', 1, 0, '2014-11-19 04:41:30', '2014-11-19 04:41:30'),
(6, 'Women', 1, 0, '2014-11-19 04:41:48', '2014-11-19 04:41:48'),
(7, 'Others', 1, 0, '2014-11-19 04:42:01', '2014-11-19 04:42:01'),
(8, 'Kids', 1, 0, '2014-11-19 04:42:59', '2014-11-19 04:42:59'),
(9, 'Model Cars', 1, 0, '2014-11-19 04:43:37', '2014-11-19 04:43:37'),
(10, 'Cap', 1, 0, '2014-11-19 05:19:28', '2014-11-19 05:19:28'),
(11, 'Collection', 1, 0, '2014-11-19 05:19:38', '2014-11-19 05:19:38'),
(12, 'Luggage', 1, 0, '2014-11-19 05:29:33', '2014-11-19 05:29:33'),
(13, 'Bags', 1, 0, '2014-11-19 05:29:43', '2014-11-19 05:29:43'),
(14, 'Rucksacks', 1, 0, '2014-11-19 05:30:02', '2014-11-19 05:30:02'),
(15, 'Pens', 1, 0, '2014-11-19 05:30:35', '2014-11-19 05:30:35'),
(16, 'Gifts', 1, 0, '2014-11-19 05:32:49', '2014-11-19 05:32:49'),
(17, 'Umberllas', 1, 0, '2014-11-19 05:33:11', '2014-11-19 05:33:11'),
(18, 'Bikes', 1, 0, '2014-11-19 05:34:36', '2014-11-19 05:34:36'),
(19, 'Golf', 1, 0, '2014-11-19 05:34:46', '2014-11-19 05:34:46'),
(20, 'Motorsports', 1, 0, '2014-11-19 05:34:57', '2014-11-19 05:34:57'),
(21, 'Fashion', 1, 0, '2014-11-19 05:35:13', '2014-11-19 05:35:13'),
(22, 'Leather', 1, 0, '2014-11-19 05:35:29', '2014-11-19 05:35:29'),
(23, 'Luggage', 1, 0, '2014-11-19 05:35:41', '2014-11-19 05:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_collection_types`
--

CREATE TABLE IF NOT EXISTS `lifestyle_collection_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `lifestyle_collection_types`
--

INSERT INTO `lifestyle_collection_types` (`id`, `name`, `description`, `image`, `is_publish`, `order`, `created_date`, `modified_date`) VALUES
(2, 'AMG COLLECTION', 'AMG COLLECTION', '5cda45120b75110423dfa8481.png', 1, 8, '2014-11-19 04:39:15', '2014-11-28 03:49:58'),
(3, 'BIKE SPORTS COLLECTION', 'BIKE SPORTS COLLECTION', 'd5493efb16d2f6f16d543dbed.png', 1, 8, '2014-11-19 04:39:40', '2014-11-28 03:49:33'),
(4, 'CLASSIC COLLECTION', 'CLASSIC COLLECTION', '92f8eeacd92d8e483a2ab489e.png', 1, 9, '2014-11-19 04:40:04', '2014-11-28 03:50:27'),
(5, 'ESSENTIALS COLLECTION', 'ESSENTIALS COLLECTION', 'af2b78dc6b343d49960e64739.png', 1, 4, '2014-11-19 04:40:25', '2014-11-28 03:47:56'),
(6, 'SPORTS COLLECTION', 'SPORTS COLLECTION', 'dd83ad252996cdeed8206889a.png', 1, 6, '2014-11-19 04:40:59', '2014-11-28 03:48:44'),
(7, 'WATCHES COLLECTION', 'WATCHES COLLECTION', '848b68c61449cd94962e9bba3.png', 1, 0, '2014-11-19 05:08:11', '2014-11-28 03:45:40'),
(8, 'FASHION COLLECTION', 'FASHION COLLECTION', 'f71453d2e87ffafd5830cade6.png', 1, 1, '2014-11-19 05:08:52', '2014-11-28 03:45:55'),
(9, 'SUNGLASSES COLLECTION', 'SUNGLASSES COLLECTION', '44e4c198f94d6cdd2d0ea0469.png', 1, 3, '2014-11-19 05:10:35', '2014-11-28 03:47:05'),
(10, 'TRAVEL COLLECTION', 'TRAVEL COLLECTION', 'a3f5fee73fe2c47c091f2c8c0.png', 1, 2, '2014-11-19 05:10:53', '2014-11-28 03:46:51'),
(11, 'BUSINESS COLLECTION', 'BUSINESS COLLECTION', '8c9001a05823e282cf8300410.png', 1, 5, '2014-11-19 05:11:41', '2014-11-28 03:48:33'),
(12, 'KEY RINGS', 'KEY RINGS', '490f4d52c44d63dbcdfa9fd90.png', 1, 7, '2014-11-19 05:11:58', '2014-11-28 03:49:01'),
(13, 'PERFUMES', 'Perfumes', '67894aa696d29aaca6d85ff69.png', 1, 9, '2014-11-19 05:18:24', '2014-12-05 05:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location_type_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pobox` varchar(255) NOT NULL,
  `working_hours` text NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `emirate` varchar(100) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `location_type_id` (`location_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `email`, `location_type_id`, `address`, `pobox`, `working_hours`, `telephone`, `fax`, `emirate`, `latitude`, `longitude`, `is_publish`, `order`, `created_date`, `modified_date`) VALUES
(1, 'Deira', '', 6, 'AL Ittihad Street', '1418', '8.00 AM - 5.30 PM', '+97142099776', '+97142970160', 'Dubai', '55.3376', '25.2664', 1, 0, '2014-11-19 03:04:36', '2014-11-19 03:09:47'),
(2, 'Al Quoz', '', 6, '', '1418', '8.00 AM - 5.30 PM', '+97143400501', '', 'Dubai', '', '', 1, 0, '2014-11-19 03:06:16', '2014-11-19 03:10:01'),
(3, 'Sheikh Zayed Road', '', 6, '', '1418', '8.00 AM - 5.30 PM', '+97143233781', '', 'Dubai', '55.2186', '25.1388', 1, 0, '2014-11-19 03:09:29', '2014-11-19 03:09:29'),
(4, 'Rashidiya', '', 6, '5th Street, Old steel Mill Rd.', '1418', '8.00 AM - 5.30 PM', '+97142860777', '', 'Dubai', '55.3645', '25.2282', 1, 0, '2014-11-19 03:11:57', '2014-11-19 03:11:57'),
(5, 'Sharjah', '', 6, 'Industrial Area 6', '1418', '8.00 AM - 5.30 PM', '+97165387382', '', 'Sharjah', '55.4243', '25.315', 1, 0, '2014-11-19 03:13:37', '2014-11-19 03:13:37'),
(6, 'Ras Al Khaimah', '', 6, '', '1418', '8.00 AM- 5.30 PM', '+97172350096', '', 'Ras Al Khaimah', '55.7256', '25.7256', 1, 0, '2014-11-19 03:15:16', '2014-11-19 03:15:16'),
(7, 'Fujairah', '', 6, '', '1418', '8.00 AM- 5.30 PM', '+97192233999', '', 'Fujairah', '56.3302', '25.1321', 1, 0, '2014-11-19 03:17:08', '2014-11-19 03:17:08'),
(8, 'Body and Paint Shop', '', 6, '', '1418', '8.00 AM- 5.30 PM', '+97142670000', '', 'Dubai', '', '', 1, 0, '2014-11-19 03:17:54', '2014-11-19 03:17:54'),
(9, 'Barsha Mall', '', 6, '', '1418', '8.00 AM- 5.30 PM', '+97143850678', '', 'Dubai', '', '', 1, 0, '2014-11-19 03:18:50', '2014-11-19 03:18:50'),
(10, 'Deira', 'service.bookings@gargash.ae', 7, 'AL Ittihad Street', '1418', '8.00 AM- 6.00 PM', '80063723337', '+97142978353', 'Dubai', '55.3376', '25.2664', 1, 0, '2014-11-19 03:21:55', '2014-11-19 03:21:55'),
(11, 'Sheikh Zayed Road', 'service.bookings@gargash.ae', 7, 'Sheikh Zayed Road', '37244', '8.00 AM - 6.00 PM', '80063723337', '+97143233032', 'Dubai', '55.2186', '55.2186', 1, 0, '2014-11-19 03:24:05', '2014-11-19 03:24:05'),
(12, 'Rashidiya', 'service.bookings@gargash.ae', 7, '5th Street, Old steel Mill Rd.', '1418', '8.00 AM - 6.00 PM', '80063723337', '+97142855633', 'Dubai', '55.3645', '25.2282', 1, 0, '2014-11-19 03:26:34', '2014-11-19 03:26:34'),
(13, 'Sharjah', 'service.bookings@gargash.ae', 7, 'Industrial Area 6', '6890', '8.00 AM - 6.00 PM', '80063723337', '+97165385725', 'Sharjah', '55.4243', '25.315', 1, 0, '2014-11-19 03:28:42', '2014-11-19 03:28:42'),
(14, 'Ras Al Khaimah', 'service.bookings@gargash.ae', 7, 'Al Ittihad Street', '2191', '8.00 AM - 6.00 PM, Fridays 2.00 PM - 6.00 PM', '80063723337', '+97172352629', 'Ras Al Khaimah', '55.8744', '25.7256', 1, 0, '2014-11-19 03:32:42', '2014-11-19 03:32:42'),
(15, 'Fujairah', 'service.bookings@gargash.ae', 7, 'Mohammed bin Mattar', '1518', '8.00 AM - 6.00 PM, Fridays 2.00 Pm - 6.00 PM', '80063723337', '+97192233889', 'Fujairah', '55.3304', '25.1316', 1, 0, '2014-11-19 03:35:11', '2014-11-19 03:35:11'),
(16, 'Deira', 'reception.deira@gargash.ae', 3, 'Al Ittihad Street', '1418', '8.00 AM - 8.00 PM', '+97142099777', '+97142690413', 'Dubai', '55.338', '25.2657', 1, 0, '2014-11-19 03:37:49', '2014-11-19 03:37:49'),
(17, 'Sheikh Zayed Road', 'szr.showroom@gargash.ae', 3, 'Sheikh Zayed Road', '37244', '8.00 AM to 1.00 PM,  4.00 PM to 8.00 PM', '+97143476777', '+97143400625', 'Dubai', '55.2186', '25.1388', 1, 0, '2014-11-19 03:41:04', '2014-11-19 03:41:04'),
(18, 'Deira', 'Genievive.Cruz@gargash.ae', 4, 'Al Ittihad Street', '1418', '8.00 AM to  8.00 PM', '+97142667555', '+97142970410', 'Dubai', '55.3374', '25.2657', 1, 0, '2014-11-19 03:49:20', '2014-11-19 03:49:20'),
(19, 'Commercial Vehicales Sales', 'ansil.purayil@gargash.ae', 5, 'Sheikh Zayed Road', '37244', '8.00 AM - 6.00 PM', '+97143476777', '+97143477347', 'Dubai', '55.2199', '25.1388', 1, 0, '2014-11-19 03:51:52', '2014-11-19 03:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `location_types`
--

CREATE TABLE IF NOT EXISTS `location_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pobox` varchar(255) NOT NULL,
  `working_hours` text NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `emirate` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `is_published` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `location_types`
--

INSERT INTO `location_types` (`id`, `name`, `email`, `address`, `pobox`, `working_hours`, `telephone`, `emirate`, `fax`, `latitude`, `longitude`, `is_published`, `order`, `created_date`, `modified_date`) VALUES
(2, 'Customer Contact Center', 'customer.care@gargash.ae', '', '1418', 'Sat-Thu 8:00 AM to 7:00 PM', '80063723337', 'Dubai', '+97142626710', '', '', 1, 0, '2014-11-18 04:28:09', '2014-12-02 20:33:48'),
(3, 'New Cars Showroom', '', '', '', '', '', '', '', '', '', 1, 0, '2014-11-18 04:30:17', '2014-11-18 04:30:17'),
(4, 'Certified Pre-Owned Cars Showroom', '', '', '', '', '', '', '', '', '', 1, 0, '2014-11-18 04:30:39', '2014-11-18 04:30:39'),
(5, 'Commercial Vehicales', '', '', '', '', '', '', '', '', '', 1, 0, '2014-11-18 04:32:54', '2014-11-18 04:32:54'),
(6, 'Parts', '', '', '', '', '', '', '', '', '', 1, 0, '2014-11-18 04:33:09', '2014-11-18 04:33:09'),
(7, 'Service Center', '', '', '', '', '', '', '', '', '', 1, 0, '2014-11-18 04:33:26', '2014-11-18 04:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1:news;2:promotions',
  `title` varchar(255) NOT NULL,
  `short_description` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publish_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valid_till` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `notification_text` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `type`, `title`, `short_description`, `description`, `image`, `status`, `order`, `created_date`, `publish_date`, `valid_till`, `notification_text`) VALUES
(1, 1, 'Lorem Heading', 'Lorem description Lorem description Lorem description Lorem descriptionLorem description Lorem description Lorem description Lorem descriptionLorem description Lorem description Lorem description Lorem description', '<p>Lorem description Lorem description Lorem description Lorem descriptionLorem description Lorem description Lorem description Lorem descriptionLorem description Lorem description Lorem description Lorem descriptionLorem description Lorem description Lorem description Lorem description</p>\r\n', '1416134391images.jpg', 1, 0, '2014-11-08 06:47:00', '2014-11-15 18:30:00', '2014-12-23 18:30:00', NULL),
(2, 2, 'Promotion notificaton test', 'Promotion notificaton test ', '<p>Promotion notificaton test</p>\r\n', '53dbf9aeb6e200bfccbb0445a.jpg', 1, 0, '2014-12-05 07:14:24', '2014-12-23 18:30:00', '0000-00-00 00:00:00', 'Promotion notificaton test'),
(3, 2, 'Promotion notificaton from sandip', 'Promotion notificaton from sandip', '<p>Promotion notificaton from sandip</p>\r\n', '3b149dfaf482b44775498187d.jpeg', 1, 0, '2014-12-04 19:58:00', '2014-12-16 18:30:00', '0000-00-00 00:00:00', 'Promotion notificaton from sandip'),
(4, 2, 'Promotion notificaton test', 'Promotion notificaton test', '<p>Promotion notificaton testPromotion notificaton test</p>\r\n', '6aa69ed46f9987d8c367bb912.jpg', 1, 0, '2014-12-04 20:01:21', '2014-12-09 18:30:00', '0000-00-00 00:00:00', 'Promotion notificaton test'),
(5, 2, 'Promotion notificaton test', 'asdasdas', '<p>asd asdasdasd</p>\r\n', 'a5e39619f1fce756c177f2f4f.jpeg', 1, 0, '2014-12-04 20:09:48', '2014-12-03 18:30:00', '0000-00-00 00:00:00', 'asasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `preowned_cars`
--

CREATE TABLE IF NOT EXISTS `preowned_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `exterier` varchar(255) NOT NULL,
  `trim` varchar(255) NOT NULL,
  `milage` int(255) NOT NULL,
  `cc_bhp` varchar(255) NOT NULL,
  `car_class_id` int(11) NOT NULL,
  `car_model_id` int(11) NOT NULL,
  `model_year` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `pending_notification` varchar(255) NOT NULL,
  `order` int(11) DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_class_id` (`car_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `preowned_cars`
--

INSERT INTO `preowned_cars` (`id`, `name`, `image`, `description`, `exterier`, `trim`, `milage`, `cc_bhp`, `car_class_id`, `car_model_id`, `model_year`, `price`, `pending_notification`, `order`, `created_date`, `modified_date`) VALUES
(1, 'Preowned car 1', '', 'Preowned car 1 description', '1', 'trim 1', 45, '120', 4, 0, 2014, '654000', '1', 0, '2014-11-21 11:06:09', '2014-11-21 11:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `preowned_car_images`
--

CREATE TABLE IF NOT EXISTS `preowned_car_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `preowned_car_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `preowned_car_id` (`preowned_car_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `preowned_car_images`
--

INSERT INTO `preowned_car_images` (`id`, `image`, `preowned_car_id`, `is_publish`, `created_date`, `modified_date`) VALUES
(1, '6a50f4b441bf386fa979ba70f.png', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'f96e41fd2e74eda4fa0792bcc.png', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `name`, `active`, `created`, `modified`) VALUES
(1, 'Customer feedback', 1, '2014-12-04 09:13:43', '2014-12-04 10:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE IF NOT EXISTS `survey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `published` tinyint(1) DEFAULT '1',
  `question_type` int(11) NOT NULL,
  `mandatory` tinyint(1) NOT NULL DEFAULT '1',
  `option_1` varchar(200) NOT NULL,
  `option_2` varchar(200) NOT NULL,
  `option_3` varchar(200) NOT NULL,
  `option_4` varchar(200) NOT NULL,
  `option_5` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `survey_id`, `question`, `published`, `question_type`, `mandatory`, `option_1`, `option_2`, `option_3`, `option_4`, `option_5`, `created`, `modified`) VALUES
(1, 1, 'Were you satisfied with the quality of Service on your last visit ?', 1, 1, 1, 'Very Satisfied', 'Satisfied', 'Neutral', 'Dissatisfied', 'Vey dissatisfied', '2014-12-04 09:43:03', '2014-12-05 10:29:04'),
(2, 1, 'Did our service advisor/service staff welcome you with a smile?', 1, 4, 1, 'Yes', 'No ', 'N/A', '', '', '2014-12-04 10:10:43', '2014-12-05 10:32:31'),
(3, 1, 'Please enter the name of the Service Advisor', 1, 2, 1, '', '', '', '', '', '2014-12-05 10:30:27', '2014-12-05 10:30:27'),
(4, 1, 'Were they punctual, reliable and helpful?', 1, 4, 1, 'Yes', 'No', 'Can''t Say', '', '', '2014-12-05 10:33:54', '2014-12-05 10:33:54'),
(5, 1, 'Were they knowledgeable and honest? ', 1, 4, 1, 'Yes', 'No ', 'Can''t Say', '', '', '2014-12-05 10:34:45', '2014-12-05 10:34:45'),
(6, 1, 'Did you receive your service at the agreed time?', 1, 4, 1, 'Yes', 'No ', 'N/A', '', '', '2014-12-05 10:35:53', '2014-12-05 10:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created`, `modified`) VALUES
(1, 'admin', 'd4a13f10985fc475cd760ae9cbe4657369961561', 'admin@neosoftech.in', '2014-11-08 13:04:14', '2014-11-08 13:04:14');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_models`
--
ALTER TABLE `car_models`
  ADD CONSTRAINT `car_models_ibfk_1` FOREIGN KEY (`car_model_category_id`) REFERENCES `car_model_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `car_model_categories`
--
ALTER TABLE `car_model_categories`
  ADD CONSTRAINT `car_model_categories_ibfk_1` FOREIGN KEY (`car_class_id`) REFERENCES `car_classes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `car_model_category_images`
--
ALTER TABLE `car_model_category_images`
  ADD CONSTRAINT `car_model_category_images_ibfk_1` FOREIGN KEY (`car_model_category_id`) REFERENCES `car_model_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `lifestyle_collections`
--
ALTER TABLE `lifestyle_collections`
  ADD CONSTRAINT `lifestyle_collections_ibfk_1` FOREIGN KEY (`lifestyle_collection_type_id`) REFERENCES `lifestyle_collection_types` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `lifestyle_collections_ibfk_2` FOREIGN KEY (`lifestyle_collection_category_id`) REFERENCES `lifestyle_collection_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`location_type_id`) REFERENCES `location_types` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `preowned_cars`
--
ALTER TABLE `preowned_cars`
  ADD CONSTRAINT `preowned_cars_ibfk_1` FOREIGN KEY (`car_class_id`) REFERENCES `car_classes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `preowned_car_images`
--
ALTER TABLE `preowned_car_images`
  ADD CONSTRAINT `preowned_car_images_ibfk_1` FOREIGN KEY (`preowned_car_id`) REFERENCES `preowned_cars` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
