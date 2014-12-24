-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2014 at 10:52 AM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_gargash`
--

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `car_classes`
--

INSERT INTO `car_classes` (`id`, `name`, `description`, `image`, `is_publish`, `created_date`, `modified_date`) VALUES
(4, 'A-Class', 'test test', '141544184901.jpg', 1, '2014-11-07 22:17:29', '2014-11-10 00:41:56'),
(5, 'new', 'new', '1415860683banner.jpg', 1, '2014-11-13 06:37:41', '2014-11-13 06:38:03'),
(6, 'new1', '123', '', 1, '2014-11-13 06:38:19', '2014-11-13 06:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE IF NOT EXISTS `car_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `car_model_category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `cylinder_arrangement` varchar(255) NOT NULL,
  `displacement` int(11) NOT NULL,
  `rated_output` varchar(255) NOT NULL,
  `rated_torque` varchar(255) NOT NULL,
  `compration_ratio` varchar(255) NOT NULL,
  `acceleration` varchar(255) NOT NULL,
  `top_speed` int(11) NOT NULL,
  `total_displacement` int(11) NOT NULL,
  `rpm` int(11) NOT NULL,
  `max_torque` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `tank_capacity` varchar(255) NOT NULL,
  `mixture_preparation` varchar(255) NOT NULL,
  `drive_system` varchar(255) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_model_category_id` (`car_model_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`id`, `name`, `car_model_category_id`, `description`, `cylinder_arrangement`, `displacement`, `rated_output`, `rated_torque`, `compration_ratio`, `acceleration`, `top_speed`, `total_displacement`, `rpm`, `max_torque`, `fuel`, `tank_capacity`, `mixture_preparation`, `drive_system`, `is_publish`, `created_date`, `modified_date`) VALUES
(2, 'test', 3, 'dfsd', '43', 5756, '6867', '786', '2:54', '57', 654, 5756, 5, '654', '565', '345', 'dfshfhfgyt', 'fgfdghyrt', 1, '2014-11-08 00:15:29', '2014-11-08 00:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `car_model_categories`
--

CREATE TABLE IF NOT EXISTS `car_model_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `car_class_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_class_id` (`car_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `car_model_categories`
--

INSERT INTO `car_model_categories` (`id`, `name`, `description`, `image`, `car_class_id`, `is_publish`, `created_date`, `modified_date`) VALUES
(2, 'New', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', '1415445361images.jpg', 4, 1, '2014-11-07 23:16:01', '2014-11-07 23:16:01'),
(3, 'test', 'test', '1415446423Audi-A1.jpg', 4, 1, '2014-11-07 23:33:43', '2014-11-07 23:37:16');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `car_model_category_images`
--

INSERT INTO `car_model_category_images` (`id`, `image`, `type`, `car_model_category_id`, `is_publish`) VALUES
(1, '1416028321Audi-A1.jpg', 1, 3, 1),
(2, '1416028508images.jpg', 2, 3, 1),
(3, '1416028518bus4.jpg', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_collections`
--

CREATE TABLE IF NOT EXISTS `lifestyle_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lifestyle_collection_type_id` int(11) NOT NULL,
  `lifestyle_collection_category_id` int(11) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lifestyle_collection_type_id` (`lifestyle_collection_type_id`),
  KEY `lifestyle_collection_category_id` (`lifestyle_collection_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lifestyle_collections`
--

INSERT INTO `lifestyle_collections` (`id`, `name`, `image`, `description`, `lifestyle_collection_type_id`, `lifestyle_collection_category_id`, `is_publish`, `created_date`, `modified_date`) VALUES
(1, 'test1', '1415684117images.jpg', 'test2', 1, 4, 1, '2014-11-11 05:21:42', '2014-11-11 05:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_collection_categories`
--

CREATE TABLE IF NOT EXISTS `lifestyle_collection_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lifestyle_collection_categories`
--

INSERT INTO `lifestyle_collection_categories` (`id`, `name`, `is_publish`, `created_date`, `modified_date`) VALUES
(4, 'test', 1, '2014-11-10 01:32:35', '2014-11-10 01:32:35');

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lifestyle_collection_types`
--

INSERT INTO `lifestyle_collection_types` (`id`, `name`, `description`, `image`, `is_publish`, `created_date`, `modified_date`) VALUES
(1, 'test', 'test', '1415621764images.jpg', 1, '2014-11-09 23:38:19', '2014-11-10 00:16:04');

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `location_type_id` (`location_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `email`, `location_type_id`, `address`, `pobox`, `working_hours`, `telephone`, `fax`, `emirate`, `latitude`, `longitude`, `is_publish`, `created_date`, `modified_date`) VALUES
(1, 'test1', 'test2@test.com', 1, 'test', 'test123', '8', '14154654765476', '13435465767', '11', '19.2343443351', '19.2392343431', 1, '2014-11-13 05:45:49', '2014-11-13 06:03:18');

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location_types`
--

INSERT INTO `location_types` (`id`, `name`, `email`, `address`, `pobox`, `working_hours`, `telephone`, `emirate`, `fax`, `latitude`, `longitude`, `is_published`, `created_date`, `modified_date`) VALUES
(1, 'test', 'test@test.com', 'test123', 'abc', 'Test', '465465756', '10.2', '022-33453565', '19.345744839', '18.374835545', 1, '2014-11-12 05:50:56', '2014-11-12 05:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1:news;2:promotions',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `type`, `title`, `description`, `image`, `status`, `created_date`) VALUES
(2, 2, 'Test', 'test', '1416023244a4d63c425999d0064cb401f0333a05c8.jpg', 1, '2014-11-15 03:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `preowned_cars`
--

CREATE TABLE IF NOT EXISTS `preowned_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `exterier` varchar(255) NOT NULL,
  `trim` varchar(255) NOT NULL,
  `milage` varchar(255) NOT NULL,
  `cc_bhp` varchar(255) NOT NULL,
  `car_class_id` int(11) NOT NULL,
  `model_year` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `pending_notification` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `car_class_id` (`car_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
