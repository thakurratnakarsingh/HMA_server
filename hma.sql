-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 09:58 AM
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
-- Database: `hma`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `miscellaneous` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`_id`, `category_name`, `miscellaneous`) VALUES
(1, 'Hot Short Film', 0),
(2, 'Hot Web Series', 0),
(3, 'Extra Hot', 0);

-- --------------------------------------------------------

--
-- Table structure for table `entertainment`
--

CREATE TABLE `entertainment` (
  `_id` int(225) NOT NULL,
  `name` varchar(1023) NOT NULL,
  `category` int(11) NOT NULL,
  `platform` varchar(1023) NOT NULL,
  `screen1` varchar(1023) NOT NULL,
  `screen2` varchar(1023) NOT NULL,
  `screen3` varchar(1023) NOT NULL,
  `screen4` varchar(1023) NOT NULL,
  `screen5` varchar(1023) NOT NULL,
  `language` varchar(1023) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `release_date` varchar(1023) NOT NULL,
  `stars` varchar(1023) NOT NULL,
  `description` varchar(1023) NOT NULL,
  `file_path` varchar(1023) NOT NULL,
  `url` varchar(255) NOT NULL,
  `miscellaneous` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entertainment`
--

INSERT INTO `entertainment` (`_id`, `name`, `category`, `platform`, `screen1`, `screen2`, `screen3`, `screen4`, `screen5`, `language`, `genre`, `release_date`, `stars`, `description`, `file_path`, `url`, `miscellaneous`) VALUES
(1, 'Room Service', 1, 'ITAP', 'D:\\hma_files\\screenShots\\1711778178454-image.jpg', 'D:\\hma_files\\screenShots\\1711778178468-8b8acb5f797dfd0c2323bf8f63935b3d.th.png', 'D:\\hma_files\\screenShots\\1711778178468-56cd0a49ca3d7fcebf7fdcc655f314a6.th.png', 'D:\\hma_files\\screenShots\\1711778178473-77c8ca71bece4f27edecb8be9696c801.th.png', 'D:\\hma_files\\screenShots\\1711778178474-c45e7005a6338ed53d5b1fdb86498ec5.th.png', 'Hindi', '18+, Hot, Romance, Erotic', '28 March 2024 (USA)', 'Various Artist', 'Room Service (2024) Short Film Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1711778176684-Room.Service.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.ong.mkv.mp4', 'https://howblogs.xyz/a8479c', 0),
(2, 'Haveli S01 Part 1', 2, 'Ullu', 'D:\\hma_files\\screenShots\\1711785185859-image.png', 'D:\\hma_files\\screenShots\\1711785188321-613d92e0a6baf04691d7833c8a28fcee.png', 'D:\\hma_files\\screenShots\\1711785188321-83947a3efb291af3a9065d4c2c4edaac.png', 'D:\\hma_files\\screenShots\\1711785188323-42748131e5b5360cd5b1c9adc68b9514.png', 'D:\\hma_files\\screenShots\\1711785188324-e0aaa81ef68230f17a696c40d63af3b1.png', 'Hindi', '18+, Hot, Romance, Erotic', '28 March 2024 (USA)', 'Priyanka Chaurasia (Ruby),Saurabh Sewal (Anand),Priya Gamre (Bua),Ritu Sharma (Iraa)', 'Ruby returns to her hometown with Anand to find her father. But she discovers her aunt\'s dark secrets, leading to chaos.', 'D:\\hma_files\\hma_files\\1711785162417-Haveli.S01P01.1080p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.ong.mkv.mp4', 'https://howblogs.xyz/b6dfcc', 0),
(3, 'Stag', 3, 'Hollywood', 'D:\\hma_files\\screenShots\\1711786887393-MV5BMGNhYjQwYWEtZjMyMi00NjEzLThmMTAtYjViNjEwZTY0MzllXkEyXkFqcGdeQXVyNDQ4NjgyNzg@._V1_.jpg', 'D:\\hma_files\\screenShots\\1711786887406-0a958c3cea6b24f32d6913cc561994a6.jpg', 'D:\\hma_files\\screenShots\\1711786887406-a80ecd4cdbd3226408e76bbd648be5f1.jpg', 'D:\\hma_files\\screenShots\\1711786887406-b0f304a3a57967aa381aef369f15d031.jpg', 'D:\\hma_files\\screenShots\\1711786887407-ed245689baf35c802d9f7d62b7d48414.jpg', 'Tagalog', '18+, Hot, Romance, Erotic', '28 March 2024 (USA)', 'Gold Aceron , Denise Esteban , Arah Alonzo , Aerol Carmelo , Yda Manzano , Allan Paule , Jamie Fabregas', ' N/A', 'D:\\hma_files\\hma_files\\1711786867306-Stag.2024.720p.HEVC.WeB-DL.Tagalog.x265.ESub-SkymoviesHD.ong.mkv.mp4', 'https://howblogs.xyz/4fae48', 0),
(4, 'Unfaithfull Love', 1, 'NeonX', 'D:\\hma_files\\screenShots\\1711791512160-image.png', 'D:\\hma_files\\screenShots\\1711791512206-image.png', 'D:\\hma_files\\screenShots\\1711791512210-unfaithfull_love__2024__neonx_hindi_short_film.jpg', 'D:\\hma_files\\screenShots\\1711791512211-image.png', 'D:\\hma_files\\screenShots\\1711791512254-image.png', 'Hindi', '18+, Hot, Romance, Erotic', '29 March 2024 (USA)', 'Ujjwal & Aashi', 'The character of the story is a woman landlord who finds herself in a difficult mess after her tenant default on the rent for five months. The tenant convinced Her to Grant him some time, but she is still determined to remove him', 'D:\\hma_files\\hma_files\\1711791507541-Unfaithfull.Love.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/d1447a', 0),
(5, 'Tiger, Blood in the Mouth', 3, 'Hollywood', 'D:\\hma_files\\screenShots\\1711791994285-image.jpg', 'D:\\hma_files\\screenShots\\1711791994294-d776fd9bb3df6d9a87a1408264223582.png', 'D:\\hma_files\\screenShots\\1711791994301-e41d2ebc67c99dc03719f6c12309534c.png', 'D:\\hma_files\\screenShots\\1711791994975-f3271616f2b72d345d3457fdb2b08be2.png', 'D:\\hma_files\\screenShots\\1711791994976-f3271616f2b72d345d3457fdb2b08be2.png', 'Spanish', ' 18+, Drama, Sport', '25 August 2016 (Argentina)', 'Leonardo Sbaraglia, Eva De Dominici, Erica Banchi, Benicio Mutti Spinetta, Camila Zolezzi, Osmar Núñez, Claudio Rissi', 'Ramón Alvia is a professional boxer who, although he has won several international championships, is old and is at the end of his career. He resists. In the gym, Ramon discovers among the young boxers Deborah, a beautiful girl', 'D:\\hma_files\\hma_files\\1711791984351-Tiger.Blood.in.the.Mouth.2016.720p.HEVC.WeB-DL.Spanish.x265.MSub-SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/a4fbf2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `_id` int(11) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `miscellaneous` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`_id`, `platform`, `miscellaneous`) VALUES
(1, 'android', ''),
(2, 'ios', '');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `_id` int(255) NOT NULL,
  `name` varchar(1023) NOT NULL,
  `slider_path` varchar(1023) NOT NULL,
  `miscellaneous` varchar(1023) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `splash_screen`
--

CREATE TABLE `splash_screen` (
  `_id` int(11) NOT NULL,
  `splash_name` text NOT NULL,
  `splash_path` varchar(255) NOT NULL,
  `miscellaneous` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `splash_screen`
--

INSERT INTO `splash_screen` (`_id`, `splash_name`, `splash_path`, `miscellaneous`) VALUES
(1, 'mai things', 'D:\\hma files\\splash_images\\98539e9dcdd74c35942cc05102c39f5f', ''),
(2, 'mai things1', 'D:\\hma_files\\splash_images\\974013cf1c346d60a05d6327c0798665', ''),
(3, 'maiLaal', 'D:\\hma_files\\splash_images\\37d314ab89dd32e654e6eb4f91ca4e30.jpg', ''),
(4, 'namarta', 'D:\\hma_files\\splash_images\\1e648711c052b8f82a866d34e1c26a81.jpg', ''),
(5, 'mia_mn', 'D:\\hma_files\\splash_images\\eabaee8a2c387c290d2d8d9add49ecf2.jpg', ''),
(6, 'mia_mim', 'D:\\hma_files\\splash_images\\2ea52657acc392072f0d034806281dcd.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `_id` int(255) NOT NULL,
  `name` varchar(1023) NOT NULL,
  `email` varchar(1023) NOT NULL,
  `password` varchar(1023) NOT NULL,
  `phone` int(255) NOT NULL,
  `otp` int(255) NOT NULL,
  `premiumStart` date NOT NULL,
  `premiumEnd` date NOT NULL,
  `userReferralCode` varchar(1023) NOT NULL,
  `token` varchar(1023) NOT NULL,
  `miscellaneous` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `_id` int(255) NOT NULL,
  `version_name` varchar(255) NOT NULL,
  `version_number` decimal(5,2) DEFAULT NULL,
  `platform` varchar(255) NOT NULL,
  `miscellaneous` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`_id`, `version_name`, `version_number`, `platform`, `miscellaneous`) VALUES
(1, '1.0', 1.01, 'ios', 0),
(2, '1.0', 1.01, 'android', 0),
(3, '1.0', 1.02, 'android', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `entertainment`
--
ALTER TABLE `entertainment`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `splash_screen`
--
ALTER TABLE `splash_screen`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entertainment`
--
ALTER TABLE `entertainment`
  MODIFY `_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `splash_screen`
--
ALTER TABLE `splash_screen`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entertainment`
--
ALTER TABLE `entertainment`
  ADD CONSTRAINT `entertainment_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
