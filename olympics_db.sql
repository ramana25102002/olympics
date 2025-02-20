-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olympics_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `olympic_winners`
--

CREATE TABLE `olympic_winners` (
  `id` int(11) NOT NULL,
  `olympic_year` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `medal_type` enum('Gold','Silver','Bronze') NOT NULL,
  `native_country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `olympic_winners`
--

INSERT INTO `olympic_winners` (`id`, `olympic_year`, `player_name`, `sport`, `medal_type`, `native_country`) VALUES
(1, 2000, 'Michael Phelps', 'Swimming', 'Gold', 'USA'),
(2, 2004, 'Usain Bolt', 'Athletics', 'Gold', 'Jamaica'),
(3, 2008, 'Michael Phelps', 'Swimming', 'Gold', 'USA'),
(4, 2012, 'Mo Farah', 'Athletics', 'Gold', 'UK'),
(5, 2016, 'Simone Biles', 'Gymnastics', 'Gold', 'USA'),
(6, 2020, 'Neeraj Chopra', 'Javelin Throw', 'Gold', 'India'),
(7, 2024, 'Katie Ledecky', 'Swimming', 'Gold', 'USA'),
(8, 2024, 'Novak Djokovic', 'Tennis', 'Silver', 'Serbia'),
(9, 2024, 'Mutaz Essa Barshim', 'High Jump', 'Bronze', 'Qatar'),
(10, 2000, 'Ian Thorpe', 'Swimming', 'Gold', 'Australia'),
(11, 2000, 'Cathy Freeman', 'Athletics', 'Gold', 'Australia'),
(12, 2000, 'Naoko Takahashi', 'Marathon', 'Gold', 'Japan'),
(13, 2004, 'Hicham El Guerrouj', 'Athletics', 'Gold', 'Morocco'),
(14, 2004, 'Kelly Holmes', 'Athletics', 'Gold', 'UK'),
(15, 2004, 'Liu Xiang', '110m Hurdles', 'Gold', 'China'),
(16, 2008, 'Usain Bolt', '100m Sprint', 'Gold', 'Jamaica'),
(18, 2008, 'Yelena Isinbayeva', 'Pole Vault', 'Gold', 'Russia'),
(19, 2012, 'Mo Farah', '5000m', 'Gold', 'UK'),
(20, 2012, 'David Rudisha', '800m', 'Gold', 'Kenya'),
(21, 2012, 'Serena Williams', 'Tennis', 'Gold', 'USA'),
(23, 2016, 'Wayde van Niekerk', '400m Sprint', 'Gold', 'South Africa'),
(24, 2016, 'Usain Bolt', '200m Sprint', 'Gold', 'Jamaica'),
(26, 2020, 'Caeleb Dressel', 'Swimming', 'Gold', 'USA'),
(27, 2020, 'Elaine Thompson-Herah', '100m Sprint', 'Gold', 'Jamaica'),
(28, 2024, 'Armand Duplantis', 'Pole Vault', 'Gold', 'Sweden'),
(32, 2024, 'Noah Lyles', '200m Sprint', 'Gold', 'USA'),
(33, 2024, 'Sydney McLaughlin', '400m Hurdles', 'Gold', 'USA'),
(34, 2024, 'Hidilyn Diaz', 'Weightlifting', 'Gold', 'Philippines'),
(35, 2024, 'Yulimar Rojas', 'Triple Jump', 'Gold', 'Venezuela'),
(39, 2000, 'Michael Johnson', '400m Sprint', 'Gold', 'USA'),
(40, 2000, 'Steven Redgrave', 'Rowing', 'Gold', 'UK'),
(41, 2000, 'Rulon Gardner', 'Wrestling', 'Gold', 'USA'),
(42, 2004, 'Hicham El Guerrouj', '1500m', 'Gold', 'Morocco'),
(45, 2004, 'Justin Gatlin', '100m Sprint', 'Gold', 'USA'),
(46, 2004, 'Yana Klochkova', 'Swimming', 'Gold', 'Ukraine'),
(47, 2004, 'Kosuke Kitajima', 'Breaststroke Swimming', 'Gold', 'Japan'),
(51, 2008, 'Christine Ohuruogu', '400m', 'Gold', 'UK'),
(52, 2008, 'Kenenisa Bekele', '5000m', 'Gold', 'Ethiopia'),
(53, 2008, 'Matthew Mitcham', 'Diving', 'Gold', 'Australia'),
(57, 2012, 'Katie Taylor', 'Boxing', 'Gold', 'Ireland'),
(58, 2012, 'Nathan Adrian', 'Swimming', 'Gold', 'USA'),
(59, 2012, 'Gabby Douglas', 'Gymnastics', 'Gold', 'USA'),
(63, 2016, 'Monica Puig', 'Tennis', 'Gold', 'Puerto Rico'),
(64, 2016, 'Ryan Murphy', 'Swimming', 'Gold', 'USA'),
(65, 2016, 'Shaunae Miller-Uibo', '400m', 'Gold', 'Bahamas'),
(69, 2020, 'Ariarne Titmus', 'Swimming', 'Gold', 'Australia'),
(70, 2020, 'Adam Peaty', 'Breaststroke Swimming', 'Gold', 'UK'),
(71, 2020, 'Clarisse Agbegnenou', 'Judo', 'Gold', 'France'),
(80, 2024, 'Tobi Amusan', '100m Hurdles', 'Gold', 'Nigeria'),
(81, 2024, 'Anna Kiesenhofer', 'Cycling', 'Gold', 'Austria'),
(82, 2000, 'Maria Mutola', '800m', 'Gold', 'Mozambique'),
(83, 2000, 'Goran Ivanisevic', 'Tennis', 'Silver', 'Croatia'),
(84, 2000, 'Valentina Vezzali', 'Fencing', 'Gold', 'Italy'),
(85, 2000, 'Pieter van den Hoogenband', 'Swimming', 'Gold', 'Netherlands'),
(86, 2000, 'Mihaela Melinte', 'Hammer Throw', 'Gold', 'Romania'),
(87, 2004, 'Shawn Crawford', '200m Sprint', 'Gold', 'USA'),
(88, 2004, 'Stefano Baldini', 'Marathon', 'Gold', 'Italy'),
(89, 2004, 'Tetyana Hladyr', 'Archery', 'Silver', 'Ukraine'),
(90, 2004, 'Horacio Muratore', 'Basketball', 'Gold', 'Argentina'),
(91, 2004, 'Alexei Nemov', 'Gymnastics', 'Bronze', 'Russia'),
(92, 2008, 'Natalie du Toit', 'Open Water Swimming', 'Gold', 'South Africa'),
(93, 2008, 'Zhang Juanjuan', 'Archery', 'Gold', 'China'),
(94, 2008, 'Asafa Powell', '100m Sprint', 'Bronze', 'Jamaica'),
(95, 2008, 'Stephanie Rice', 'Swimming', 'Gold', 'Australia'),
(96, 2008, 'Maris Strombergs', 'BMX Cycling', 'Gold', 'Latvia'),
(97, 2012, 'Kirani James', '400m', 'Gold', 'Grenada'),
(98, 2012, 'Nadeshda Ostapchuk', 'Shot Put', 'Silver', 'Belarus'),
(99, 2012, 'Epke Zonderland', 'Gymnastics', 'Gold', 'Netherlands'),
(100, 2012, 'Dani King', 'Cycling', 'Gold', 'UK'),
(101, 2012, 'Sebastian Brendel', 'Canoeing', 'Gold', 'Germany'),
(102, 2016, 'Bruno Schmidt', 'Beach Volleyball', 'Gold', 'Brazil'),
(103, 2016, 'Kristin Armstrong', 'Cycling', 'Gold', 'USA'),
(104, 2016, 'Markus Eisenbichler', 'Ski Jumping', 'Silver', 'Germany'),
(105, 2016, 'Maggie Steffens', 'Water Polo', 'Gold', 'USA'),
(106, 2016, 'Hassan Yazdani', 'Wrestling', 'Gold', 'Iran'),
(107, 2020, 'Jessica Fox', 'Canoe Slalom', 'Gold', 'Australia'),
(108, 2020, 'Lovlina Borgohain', 'Boxing', 'Bronze', 'India'),
(109, 2020, 'Tatjana Schoenmaker', 'Swimming', 'Gold', 'South Africa'),
(110, 2020, 'Jade Carey', 'Gymnastics', 'Gold', 'USA'),
(111, 2020, 'Ma Long', 'Table Tennis', 'Gold', 'China'),
(112, 2024, 'Nafi Thiam', 'Heptathlon', 'Gold', 'Belgium'),
(113, 2024, 'Johannes Vetter', 'Javelin Throw', 'Gold', 'Germany'),
(114, 2024, 'Marcell Jacobs', '100m Sprint', 'Gold', 'Italy'),
(115, 2024, 'Dina Asher-Smith', '200m Sprint', 'Gold', 'UK'),
(116, 2024, 'Mondo Duplantis', 'Pole Vault', 'Gold', 'Sweden'),
(117, 2024, 'Sifan Hassan', '5000m', 'Gold', 'Netherlands'),
(118, 2024, 'Gustav Iden', 'Triathlon', 'Gold', 'Norway'),
(119, 2024, 'Mariya Lasitskene', 'High Jump', 'Gold', 'Russia'),
(120, 2024, 'Aline Rotter-Focken', 'Wrestling', 'Gold', 'Germany'),
(121, 2024, 'Anastasija Zolotic', 'Taekwondo', 'Gold', 'USA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `olympic_winners`
--
ALTER TABLE `olympic_winners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `olympic_winners`
--
ALTER TABLE `olympic_winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
