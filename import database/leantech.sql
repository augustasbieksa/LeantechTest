-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Lap 26 d. 15:03
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leantech`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `tel`, `email`, `message`, `time`) VALUES
(1, 'vardenis pavardenis', '86860022556', 'vardenis@mail.com', 'I would like to ask a few questions', '2017-11-25 20:32:41'),
(93, 'Augustas Biekša', ' 37061670287', 'augustas.bieksa@gmail.com', 'This is a testing message.\nMore text in here.\nTesting Message', '2017-11-26 13:07:46'),
(96, 'Vardenis Pavardenis', ' 3706000000', 'email@email.com', 'This is a text message to test if the text area is working fine.', '2017-11-26 13:53:29'),
(97, 'Name Surname', '', 'test.email@email.com', 'This is a test message without phone number to show that phone field is not required to send the message', '2017-11-26 13:54:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
