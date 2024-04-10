-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 11:40 AM
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
-- Table structure for table `ads_slider`
--

CREATE TABLE `ads_slider` (
  `_id` int(255) NOT NULL,
  `ads_name` varchar(1023) NOT NULL,
  `ads_url` varchar(1023) NOT NULL,
  `poster_path` varchar(1023) NOT NULL,
  `miscellaneous` varchar(1023) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_slider`
--

INSERT INTO `ads_slider` (`_id`, `ads_name`, `ads_url`, `poster_path`, `miscellaneous`) VALUES
(1, 'XYz', 'www.google.com', 'D:\\hma_files\\ads\\1712737758178-GKFisyHX0AEo5FU.jpg', ''),
(2, 'XYz1', 'www.google.com', 'D:\\hma_files\\ads\\1712737776293-GCdPvxRakAAoMcQ.jpg', ''),
(3, 'XYz2', 'www.google.com', 'D:\\hma_files\\ads\\1712737786256-GKo8i6yXQAAGT6b.jpg', ''),
(4, 'XYz3', 'www.google.com', 'D:\\hma_files\\ads\\1712737797847-GKplAMRXMAMOXxz.jpg', ''),
(5, 'XYz4', 'www.google.com', 'D:\\hma_files\\ads\\1712737807666-GKuX7JEXMAApC2M.jpg', '');

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
(5, 'Tiger, Blood in the Mouth', 3, 'Hollywood', 'D:\\hma_files\\screenShots\\1711791994285-image.jpg', 'D:\\hma_files\\screenShots\\1711791994294-d776fd9bb3df6d9a87a1408264223582.png', 'D:\\hma_files\\screenShots\\1711791994301-e41d2ebc67c99dc03719f6c12309534c.png', 'D:\\hma_files\\screenShots\\1711791994975-f3271616f2b72d345d3457fdb2b08be2.png', 'D:\\hma_files\\screenShots\\1711791994976-f3271616f2b72d345d3457fdb2b08be2.png', 'Spanish', ' 18+, Drama, Sport', '25 August 2016 (Argentina)', 'Leonardo Sbaraglia, Eva De Dominici, Erica Banchi, Benicio Mutti Spinetta, Camila Zolezzi, Osmar Núñez, Claudio Rissi', 'Ramón Alvia is a professional boxer who, although he has won several international championships, is old and is at the end of his career. He resists. In the gym, Ramon discovers among the young boxers Deborah, a beautiful girl', 'D:\\hma_files\\hma_files\\1711791984351-Tiger.Blood.in.the.Mouth.2016.720p.HEVC.WeB-DL.Spanish.x265.MSub-SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/a4fbf2', 0),
(6, 'Date With Love', 1, 'Fugi', 'D:\\hma_files\\screenShots\\1712576227925-image.png', 'D:\\hma_files\\screenShots\\1712576227975-fc7eeefd0e776b249cdfdaf9d3d5d3b1.png', 'D:\\hma_files\\screenShots\\1712576228039-a23fc076cb0ec832127052477ab78bbc.png', 'D:\\hma_files\\screenShots\\1712576228042-659e9a840e5bb2a49e31076c2a35b7c7.png', 'D:\\hma_files\\screenShots\\1712576228048-657bf00e3f9c9424a6e850243b895d7b.png', 'Hindi', ' 18+, Hot, Romance, Erotic', '2 April 2024 (India)', 'Various Artist', 'Date With Love (2024) Short Film Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712576204466-Date.With.Love.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/e2dda3', 0),
(7, 'Udaan', 1, 'Sillyapp', 'D:\\hma_files\\screenShots\\1712576529115-image.png', 'D:\\hma_files\\screenShots\\1712576529144-cf85ef4fed93f7d4541fbe239be941b8.jpg', 'D:\\hma_files\\screenShots\\1712576529145-281bec9bd8dbf0853f9aa2875f8e54cf.jpg', 'D:\\hma_files\\screenShots\\1712576529153-5657eeb94dcc2594a66b4d7b1d9b3573.jpg', 'D:\\hma_files\\screenShots\\1712576529154-91010a2f30eef69e221b0fc10684c008.jpg', 'Hindi', ' 18+, Hot, Romance, Erotic', '4 April 2024 (India)', 'Various Artist', 'Udaan Is A Story Of A Girl Who Comes To A New City To Make Her Dreams True.', 'D:\\hma_files\\hma_files\\1712576509748-Udaan.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/6395fb', 0),
(8, 'Beauty Bomb', 1, 'NeonX', 'D:\\hma_files\\screenShots\\1712576866016-image.png', 'D:\\hma_files\\screenShots\\1712576866043-e83776928e8b7689902c833a97663197.png', 'D:\\hma_files\\screenShots\\1712576866050-d1bb93e7947ac92f23ee5d88fcc83a15.png', 'D:\\hma_files\\screenShots\\1712576866055-bad98f2d909a0f644a5749bf2f08eed0.png', 'D:\\hma_files\\screenShots\\1712576866114-6eb6c03c71f7c95bc8535066570831b2.png', 'Hindi', ' 18+, Hot, Romance, Erotic', '5 April 2024 (India)', 'Ujjwal & Aashi', 'BEAUTY BOMB.\" Explore the adventures of a woman working in the spa industry, whose life takes an exciting change when she meets a client who completely wins her Heart', 'D:\\hma_files\\hma_files\\1712576853276-Beauty.Bomb.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/f898ae', 0),
(9, 'Shameless', 1, 'ShowHit', 'D:\\hma_files\\screenShots\\1712577149493-image.png', 'D:\\hma_files\\screenShots\\1712577149516-e267091fc4bcbd0772caa0523fbb3790.png', 'D:\\hma_files\\screenShots\\1712577149517-58170d1c369f5fdedfbf8ccc25b8ce37.png', 'D:\\hma_files\\screenShots\\1712577149557-450bbd07c0dc7fdbbbb8533830ebfa45.png', 'D:\\hma_files\\screenShots\\1712577149560-0c7675b877d83a8b5f9013442373a6f2.png', 'Hindi', ' 18+, Hot, Romance, Erotic', ' 6 April 2024 (India)', 'Randio & Shilpa', 'The plot centers on a charming couple who have been charmed with one other since elementary school. They are willing to go against what their families’ demand of them; therefore their love has no boundaries', 'D:\\hma_files\\hma_files\\1712577139703-Shameless.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/d2fe73', 0),
(10, 'Party Night', 1, 'Fukrey', 'D:\\hma_files\\screenShots\\1712577440769-image.png', 'D:\\hma_files\\screenShots\\1712577440778-71afffb1f12744f0af3549ab3f83ef5a.png', 'D:\\hma_files\\screenShots\\1712577440781-92b77fde18d36e3f6a20be7e6668257c.png', 'D:\\hma_files\\screenShots\\1712577440787-a3d27f772e00586a5978773a58fb027c.png', 'D:\\hma_files\\screenShots\\1712577440828-dd122edd79006fff030374632fff988e.png', 'Hindi', ' 18+, Hot, Romance, Erotic', ' 6 April 2024 (India)', 'Anam Khan', ' Party Night (2024) FukRey Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712577401208-Party.Night.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/3ab0d6', 0),
(11, 'Jamuniya S03E03', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712676506656-image.png', 'D:\\hma_files\\screenShots\\1712676506751-3de47e819a6a158c5ea67e6cbc3e3307.png', 'D:\\hma_files\\screenShots\\1712676506751-4c3d89bbc45c02189b1c941ffa72b8fd.png', 'D:\\hma_files\\screenShots\\1712676506766-8c5d62405be9e432c3f5a3052dc689de.png', 'D:\\hma_files\\screenShots\\1712676506767-c45ecc1f8d27a9873df89d3e9b3051d8.png', 'Hindi', '18+, Hot, Romance, Erotic', '9 April 2024 (India)', 'Various Artist', 'Jamuniya (2024) MooDX Season 3 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712676503271-Jamuniya.S03EP03.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/9efcbb', 0),
(12, 'Jamuniya S01E01', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712679653601-fX0vMH4.png', 'D:\\hma_files\\screenShots\\1712679653666-0a37b701c6462dbd05e9f70b17a810aa.png', 'D:\\hma_files\\screenShots\\1712679653729-4c55b151e070fe9e548c954b451516d0.png', 'D:\\hma_files\\screenShots\\1712679653733-3486945b7cf239c654fae22a722b6ad2.png', 'D:\\hma_files\\screenShots\\1712679653735-bb1bcd83ffb5fb708c78f2cbd9f2ceab.png', 'Hindi', '18+, Hot, Romance, Erotic', '12 August 2023 (India)', 'Ritu Pandey ', 'Jamuniya (2024) MooDX Season 3 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712679639294-Jamuniya.S01E01.720p.HEVC.HDRip.HINDI.2CH.x265.AAC+~+SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/1f0af1', 0),
(13, 'Jamuniya S01E02', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712681961810-fX0vMH4.png', 'D:\\hma_files\\screenShots\\1712681961832-cnbv.png', 'D:\\hma_files\\screenShots\\1712681961875-dfghhm.png', 'D:\\hma_files\\screenShots\\1712681961888-ertyr.png', 'D:\\hma_files\\screenShots\\1712681961893-fghf.png', 'Hindi', '18+, Hot, Romance, Erotic', '12 August 2023 (India)', 'Ritu Pandey ', 'Jamuniya (2024) MooDX Season 1 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712681958956-Jamuniya.S01E02.720p.HEVC.HDRip.HINDI.2CH.x265.AAC ~ SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/52d773', 0),
(14, 'Jamuniya  S01E03', 2, 'Hollywood', 'D:\\hma_files\\screenShots\\1712729364037-KNGRDBe.png', 'D:\\hma_files\\screenShots\\1712729364079-3cf30c562545056f6e8a35b0c29b41b5.th.png', 'D:\\hma_files\\screenShots\\1712729364104-9a3e4e6b621330777533d6e4ecdf1f86.th.png', 'D:\\hma_files\\screenShots\\1712729364140-34b889d4f5cfb4b135d413cb0677cc3a.th.png', 'D:\\hma_files\\screenShots\\1712729364141-d17265d0958836bc23abe4f189682342.th.png', 'Hindi', '18+, Hot, Romance, Erotic', '22 August 2023 (India)', ' Shakespeare, Ritu Pandey', 'Jamuniya (2023) MooDX Season 1 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712729358446-Jamuniya.S01E03.720p.HEVC.HDRip.HINDI.2CH.x265.AAC ~ SkymoviesHD.mkv.mp4', 'https://howblogs.xyz/44b15c', 0),
(15, 'Jamuniya  S02E01', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712729694267-image.png', 'D:\\hma_files\\screenShots\\1712729694827-6f4a73863f559dec2df5a5749d465405.th.png', 'D:\\hma_files\\screenShots\\1712729694828-49a2fed05433da6c9c2f46f0aa891fd1.th.png', 'D:\\hma_files\\screenShots\\1712729696734-867e976e68593e7c3a26c3de12f67146.th.png', 'D:\\hma_files\\screenShots\\1712729696738-d818f20c9d836f4dff6ce961daccdab0.th.png', 'Hindi', '18+, Hot, Romance, Erotic', '3 November 2023 (India)', ' Shakespeare, Ritu Pandey', 'Jamuniya (2023) MooDX Season 2 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712729681975-Jamuniya.S02E01.720p.HEVC.WeB-DL.HINDI.2CH.x265.AAC-SkymoviesHD.boo.mkv.mp4', 'https://howblogs.xyz/b347e7', 0),
(16, 'Jamuniya  S02E02', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712730225268-image.png', 'D:\\hma_files\\screenShots\\1712730225303-9e27afb4eb586f8839f920ffe6202c99.th.png', 'D:\\hma_files\\screenShots\\1712730225307-22e214f9c8737dcd508c12c5ea2e38ad.th.png', 'D:\\hma_files\\screenShots\\1712730226468-29c2d444c6c4f4557a8e62b050cb27ab.th.png', 'D:\\hma_files\\screenShots\\1712730226468-9152140e83390a65e17814562a19e4fb.th.png', 'Hindi', '18+, Hot, Romance, Erotic', '17 November 2023 (India)', ' Shakespeare, Ritu Pandey', 'Jamuniya (2023) MooDX Season 2 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712730213853-Jamuniya.S02EP02.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.dad.mkv.mp4', 'https://howblogs.xyz/705652', 0),
(17, 'Jamuniya  S03E01', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712730385594-image.png', 'D:\\hma_files\\screenShots\\1712730385645-3f45c2718b7bf7bd9d2a0b7aadc44eca.png', 'D:\\hma_files\\screenShots\\1712730385645-75282257806a7770ef95160b40f390b5.png', 'D:\\hma_files\\screenShots\\1712730385647-a939fe848e0b2fa8aad2b71f366c8929.png', 'D:\\hma_files\\screenShots\\1712730385648-d3e81e9cf5773368af41ebdeb9a5dcad.png', 'Hindi', '18+, Hot, Romance, Erotic', '26 January 2024 (India)', ' Shakespeare, Ritu Pandey', 'Jamuniya (2023) MooDX Season 3 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712730382625-Jamuniya.S03EP1.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.Style.mkv.mp4', 'https://howblogs.xyz/72fca1', 0),
(18, 'Jamuniya  S03E02', 2, 'MoodX', 'D:\\hma_files\\screenShots\\1712730566179-image.png', 'D:\\hma_files\\screenShots\\1712730566197-2c312a61a90a3dc96156b58fca0075d9.png', 'D:\\hma_files\\screenShots\\1712730566200-4f58bf22dd7f5d76b5584147956a326a.png', 'D:\\hma_files\\screenShots\\1712730566243-6098a474b318581ccb4704301c3e4420.png', 'D:\\hma_files\\screenShots\\1712730566244-525835934c50935bd7635cc3b529bfd7.png', 'Hindi', '18+, Hot, Romance, Erotic', '26 March 2024 (UK)', ' Shakespeare, Ritu Pandey', 'Jamuniya (2023) MooDX Season 3 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712730563002-Jamuniya.S03EP02.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.ong.mkv.mp4', 'https://howblogs.xyz/f5bea0', 0),
(19, 'Spicy Love', 1, ' NeonX', 'D:\\hma_files\\screenShots\\1712730990910-image.png', 'D:\\hma_files\\screenShots\\1712730991791-3b1739eb61a8e400334747bea468c35f.png', 'D:\\hma_files\\screenShots\\1712730991794-6dcf374838193b3a50cc4e6fd894d064.png', 'D:\\hma_files\\screenShots\\1712730991798-340c0e04780c0b2046af1cc11091b640.png', 'D:\\hma_files\\screenShots\\1712730991800-a633683bca17a8d71e15a4ab77155bec.png', 'Hindi', '18+, Hot, Romance, Erotic', '9 April 2024 (India)', 'Shilpa Thakur & Randio', 'The couple at the center of this interesting story got married two years ago. Their love develops into an strong bond as each day goes by. Take part in a romantic whirlwind in this drama series', 'D:\\hma_files\\hma_files\\1712730971436-Spicy.Love.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/828527', 0),
(20, 'Sauteli Ma S01E01 ', 2, 'Fugi', 'D:\\hma_files\\screenShots\\1712731482182-image.png', 'D:\\hma_files\\screenShots\\1712731482205-4e51305eaf2a52fc4b87b72fa90e7ee8.png', 'D:\\hma_files\\screenShots\\1712731483420-54874a3946d7bcddc4154a2c7b94c31e.png', 'D:\\hma_files\\screenShots\\1712731484028-201ba7309fc3d8ba94f43a4defdac73e.png', 'D:\\hma_files\\screenShots\\1712731484030-d185ceda36a1f2dfdf04191f30149760.png', 'Hindi', '18+, Hot, Romance, Erotic', '9 February 2024 (India)', 'Various Artist', 'Sauteli Ma (2024) Fugi Season 1 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712731475720-Sauteli.Ma.2024.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.style.mkv.mp4', 'https://howblogs.xyz/fa87a7', 0),
(21, 'Sauteli Ma S01E02', 2, 'Fugi', 'D:\\hma_files\\screenShots\\1712731968864-image.png', 'D:\\hma_files\\screenShots\\1712731971872-1ea1cfcf68cf9c88d00d379669293ffe.png', 'D:\\hma_files\\screenShots\\1712731971873-9393e63789929366086414dac418f590.png', 'D:\\hma_files\\screenShots\\1712731971877-190361fcb5a8fa807bea1e1e59bc8cfa.png', 'D:\\hma_files\\screenShots\\1712731971880-caf4f2df4394b4f78a839398b229e9c9.png', 'Hindi', '18+, Hot, Romance, Erotic', '9 April 2024 (India)', 'Various Artist', 'Sauteli Ma (2024) Fugi Season 1 Free Download & Watch Online', 'D:\\hma_files\\hma_files\\1712731961034-Sauteli.Ma.S01EP02.720p.HEVC.WeB-DL.HINDI.2CH.x265-SkymoviesHD.nexus.mkv.mp4', 'https://howblogs.xyz/b64d6b', 0);

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
-- Indexes for table `ads_slider`
--
ALTER TABLE `ads_slider`
  ADD PRIMARY KEY (`_id`);

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
-- AUTO_INCREMENT for table `ads_slider`
--
ALTER TABLE `ads_slider`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entertainment`
--
ALTER TABLE `entertainment`
  MODIFY `_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
