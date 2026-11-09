-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2026 at 05:14 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `title`, `location`, `price`, `rating`, `image`) VALUES
(1, 'City Tour Guide', 'Colombo', 30.00, 4.5, 'https://www.lankayp.com/img/lk/r/1459993044-57-jeromwin-tours.jpg'),
(2, 'Hill Country Tour', 'Kandy', 80.00, 4.7, 'https://www.lankayp.com/img/lk/d/1554577450-82-east-coast-travels-srilanka-car-and-driver-hire.jpg'),
(3, 'Safari Guide', 'Yala', 120.00, 4.9, 'https://www.lankayp.com/img/lk/h/1373971389_30891.jpg'),
(4, 'Indigo ocean travels', 'Colombo', 120.00, 4.5, 'https://www.lankayp.com/img/lk/m/1666520869-18-taxi-in-sri-lanka.jpg'),
(5, 'I DRIVE TOURS (PVT) LTD', 'Negombo', 90.00, 4.3, 'https://www.lankayp.com/img/lk/h/1666520931-24-taxi-in-sri-lanka.jpg'),
(6, 'Arabiers Tours Majestic City', 'Colombo', 200.00, 4.8, 'https://www.lankayp.com/img/lk/s/1666520911-20-taxi-in-sri-lanka.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `guests` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `type`, `item_id`, `date`, `guests`) VALUES
(4, 2, 'hotels', 1, '2026-03-27', 7),
(5, 2, 'hotels', 1, '2026-03-27', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `location`, `price`, `rating`, `image`) VALUES
(1, 'Cinnamon Grand', 'Colombo', 120.00, 4.5, 'https://images.unsplash.com/photo-1566073771259-6a8506099945'),
(2, 'Jetwing Blue', 'Negombo', 90.00, 4.3, 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa'),
(3, 'Shangri-La', 'Colombo', 70.00, 4.8, 'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b'),
(4, 'Cinnamon Life', 'Colombo', 120.00, 4.5, 'https://s.yimg.com/ny/api/res/1.2/sqjXH9t.TmHQNc1tJ9ySDA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD04Mjc-/https://media.zenfs.com/en/evening_standard_239/04706e3a959cf7a4d4454e62fd800d09'),
(5, 'Sea Breeze', 'Bandaramulla', 100.00, 4.3, 'https://tse3.mm.bing.net/th/id/OIP.sulRB2iBY49atnYU67aVnwHaEw?rs=1&pid=ImgDetMain&o=7&rm=3'),
(6, 'Spice House', 'Mirissa', 65.00, 4.8, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/2d/4c/04/the-spice-house-mirissa.jpg?w=1400&h=-1&s=1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Saubhagya Gunawardhana', 'kishanisaubhgya897@gmail.com', '$2b$10$jUD2aJ/4eqUQta0tZYgxT.64SnJ9gQvOVUWn7EsgbLpYdF29ET1G6', 'user'),
(2, 'Imasha Madushani', 'Imasha123@gmail.com', '$2b$10$39v6wnjBfaswqGdCFUNrYeTx4z0HvdDJ25hYFfovdgmKxwlXGlWyO', 'user'),
(3, 'Sajith Prasad', 'sajith123@gmail.com', '$2b$10$2hBOliamfVe9t/OYvZopOOvD8PJYTngMRGFwtS2KRFs7.vT2bFZiu', 'user'),
(4, 'Himali', 'himali@gmail.com', '$2b$10$fsj5Em0R.kdnxm3h/ryL.OZiciKQXQfI1tJOJxa2sx9m4U7AY3VvW', 'user'),
(5, 'Sajith Prasad', 'sajith@gmail.com', '$2b$10$96.UVJmVQS2lUDQhtt3BtuRqswYutbN3.6aCo6U/CMKS6nXv1.adi', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `title`, `location`, `price`, `rating`, `image`) VALUES
(1, 'Toyota Prius', 'Colombo', 50.00, 4.5, 'https://tse2.mm.bing.net/th/id/OIP.SLzblgHb__U2TUIiyrQf6QHaD5?rs=1&pid=ImgDetMain&o=7&rm=3'),
(2, 'Honda Vezel', 'Kandy', 65.00, 4.6, 'https://tse3.mm.bing.net/th/id/OIP.gN-Dt7Asz3PmxgJ1lXwO-QHaEK?rs=1&pid=ImgDetMain&o=7&rm=3'),
(3, 'Nissan Caravan', 'Galle', 90.00, 4.7, 'https://th.bing.com/th/id/R.195496830872f875ee11cacb641f51ab?rik=xZ7WHH1VbvpNAA&riu=http%3a%2f%2falsaqerrental.com%2fen%2fwp-content%2fuploads%2f2023%2f07%2fsa7.jpg&ehk=1Kd6qznbq9rbfe%2fotDYaFYwlzYHawLV7pVKB9O0H%2b2k%3d&risl=&pid=ImgRaw&r=0'),
(4, 'Lamborghini', 'Colombo', 120.00, 4.5, 'https://tse1.mm.bing.net/th/id/OIP.8ukpVQCPgiqinqNnJzVZiAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3'),
(5, 'V8 ', 'Negombo', 120.00, 4.3, 'https://tse2.mm.bing.net/th/id/OIP.Df7MAImANdWhVAEa-bAoFAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3'),
(6, 'Hybrid', 'Kandy', 100.00, 4.8, 'https://tse2.mm.bing.net/th/id/OIP.xkuZFxcyUlONFKj1CmuzvAHaEo?w=1920&h=1200&rs=1&pid=ImgDetMain&o=7&rm=3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
