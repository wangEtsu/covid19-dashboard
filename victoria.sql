-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 10:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_cases`
--

-- --------------------------------------------------------

--
-- Table structure for table `victoria`
--

CREATE TABLE `victoria` (
  `ID` int(11) NOT NULL,
  `lga` varchar(255) NOT NULL,
  `population` int(10) DEFAULT NULL,
  `cases` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `victoria`
--

INSERT INTO `victoria` (`ID`, `lga`, `population`, `cases`) VALUES
(81, 'Alpine (S)', 12814, 1),
(82, 'Ararat (RC)', 11845, 7),
(83, 'Ballarat (C)', 109505, 58),
(84, 'Banyule (C)', 131631, 450),
(85, 'Bass Coast (S)', 36320, 10),
(86, 'Baw Baw (S)', 53396, 16),
(87, 'Bayside (C)', 106862, 248),
(88, 'Benalla (RC)', 14037, 3),
(89, 'Boroondara (C)', 183199, 272),
(90, 'Brimbank (C)', 209523, 2024),
(91, 'Buloke (S)', 6124, 0),
(92, 'Campaspe (S)', 37622, 10),
(93, 'Cardinia (S)', 112159, 203),
(94, 'Casey (C)', 353872, 1061),
(95, 'Central Goldfields (S)', 13186, 2),
(96, 'Colac-Otway (S)', 21564, 137),
(97, 'Corangamite (S)', 16020, 3),
(98, 'Darebin (C)', 164184, 666),
(99, 'East Gippsland (S)', 47316, 7),
(100, 'Frankston (C)', 142643, 250),
(101, 'Gannawarra (S)', 10472, 2),
(102, 'Glen Eira (C)', 156511, 232),
(103, 'Glenelg (S)', 19674, 20),
(104, 'Golden Plains (S)', 23722, 18),
(105, 'Greater Bendigo (C)', 118093, 99),
(106, 'Greater Dandenong (C)', 168201, 541),
(107, 'Greater Geelong (C)', 258934, 366),
(108, 'Greater Shepparton (C)', 66498, 52),
(109, 'Hepburn (S)', 15975, 2),
(110, 'Hindmarsh (S)', 5588, 0),
(111, 'Hobsons Bay (C)', 97751, 503),
(112, 'Horsham (RC)', 19921, 14),
(113, 'Hume (C)', 233471, 1664),
(114, 'Indigo (S)', 16701, 1),
(115, 'Kingston (C)', 165782, 300),
(116, 'Knox (C)', 164538, 166),
(117, 'Latrobe (C)', 75561, 56),
(118, 'Loddon (S)', 7504, 5),
(119, 'Macedon Ranges (S)', 50231, 57),
(120, 'Manningham (C)', 127573, 166),
(121, 'Mansfield (S)', 9176, 10),
(122, 'Maribyrnong (C)', 93448, 596),
(123, 'Maroondah (C)', 118558, 104),
(124, 'Melbourne (C)', 178955, 884),
(125, 'Melton (C)', 164895, 1151),
(126, 'Mildura (RC)', 55777, 6),
(127, 'Mitchell (S)', 46082, 89),
(128, 'Moira (S)', 29925, 12),
(129, 'Monash (C)', 202847, 337),
(130, 'Moonee Valley (C)', 130294, 811),
(131, 'Moorabool (S)', 35049, 38),
(132, 'Moreland (C)', 185767, 1052),
(133, 'Mornington Peninsula (S)', 167636, 185),
(134, 'Mount Alexander (S)', 19754, 9),
(135, 'Moyne (S)', 16953, 2),
(136, 'Murrindindi (S)', 14570, 9),
(137, 'Nillumbik (S)', 65094, 137),
(138, 'Northern Grampians (S)', 11402, 3),
(139, 'Other', 0, 193),
(140, 'Port Phillip (C)', 115601, 294),
(141, 'Pyrenees (S)', 7472, 3),
(142, 'Queenscliffe (B)', 2940, 2),
(143, 'South Gippsland (S)', 29914, 11),
(144, 'Southern Grampians (S)', 16100, 2),
(145, 'Stonnington (C)', 117768, 260),
(146, 'Strathbogie (S)', 10781, 2),
(147, 'Surf Coast (S)', 33456, 15),
(148, 'Swan Hill (RC)', 20649, 5),
(149, 'Towong (S)', 6040, 0),
(150, 'Wangaratta (RC)', 29187, 2),
(151, 'Warrnambool (C)', 35181, 13),
(152, 'Wellington (S)', 44380, 16),
(153, 'West Wimmera (S)', 3841, 1),
(154, 'Whitehorse (C)', 178739, 217),
(155, 'Whittlesea (C)', 230238, 1206),
(156, 'Wodonga (RC)', 42083, 2),
(157, 'Wyndham (C)', 270487, 2265),
(158, 'Yarra (C)', 101495, 461),
(159, 'Yarra Ranges (S)', 159462, 249),
(160, 'Yarriambiack (S)', 6639, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `victoria`
--
ALTER TABLE `victoria`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `victoria`
--
ALTER TABLE `victoria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
