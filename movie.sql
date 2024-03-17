-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 08:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_15_140512_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `content` text NOT NULL,
  `featured_image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `type`, `content`, `featured_image`, `created_at`, `updated_at`) VALUES
(5, 'Demon slayer', 'Anime', 'หลังปีศาจโจมตีจนทำให้ครอบครัวถูกสังหารและน้องสาวต้องคำสาป ทันจิโร่ก็ก้าวเข้าสู่เส้นทางอันตรายเพื่อหาทางรักษาน้องและแก้แค้นให้กับสิ่งที่ตนเองสูญเสียไป', 'images/posts/featured-images/XbBPrYp0ccFd1o7UCzBnOm9A0H67aFqzF6rHcBCK.jpg', '2023-10-04 10:02:19', '2023-10-04 12:34:37'),
(7, 'SPY x FAMILY', 'Anime', 'สายลับ นักฆ่า และผู้มีโทรจิตเสแสร้งใช้ชีวิตเป็นครอบครัวเดียวกัน โดยต่างมีแรงจูงใจซุกซ่อน พร้อมทั้งปิดบังตัวตนที่แท้จริงไม่ให้อีกฝ่ายรู้', 'images/posts/featured-images/4uQv6QCVwHUso6UWps7GXEmYYZlWXUDlPX1GHMfN.jpg', '2023-10-04 10:13:55', '2023-10-04 12:34:21'),
(8, 'CYBERPUNK: อาชญากรแดนเถื่อน', 'Anime', 'ในโลกอนาคตอันเสื่อมทรามที่เต็มไปด้วยการทุจริตและการปลูกถ่ายชิ้นส่วนไซเบอร์ เด็กข้างถนนที่มีพรสวรรค์แต่ใจร้อนบุ่มบ่าม มุ่งมั่นที่จะเป็นเอดจ์รันเนอร์ ทหารรับจ้างนอกกฎหมาย', 'images/posts/featured-images/WekMvveDf1expCSLx3IFP9HwZNokUkDBXlPeKh3W.jpg', '2023-10-04 10:50:17', '2023-10-04 12:33:44'),
(9, 'Lookism', 'Anime', 'ในสังคมที่ให้ความสำคัญกับรูปร่างหน้าตาภายนอก หนุ่มมัธยมปลายนอกคอกที่ถูกมองว่าเป็นตัวประหลาด แอบใช้ชีวิตสองขั้วในร่างที่ต่างกันราวฟ้ากับเหว', 'images/posts/featured-images/Cyk5U7B5ppgP31ZbxfqgW6dZoVVNec92J3RV789j.jpg', '2023-10-04 12:35:59', '2023-10-04 12:35:59'),
(10, 'ผ่าพิภพไททัน', 'Anime', 'เมื่อบ้านเกิดของเขาถูกทำลาย เอเรน เยเกอร์ ตั้งใจแน่วแน่ที่จะต่อสู้กับยักษ์ไททันที่ทำลายเผ่าพันธ์ุมนุษย์', 'images/posts/featured-images/Ss94kjNrUrmlOf1pmeg31zmqCVaMAYg6qVz6YbjX.jpg', '2023-10-04 12:36:24', '2023-10-04 12:36:24'),
(12, 'มหาเวทย์ผนึกมาร', 'Anime', 'เมื่อไม่อาจหนีความตายได้พ้น ยูจิ นักเรียนมัธยมที่กลืนนิ้วต้องสาปเข้าไปตัดสินใจตามล่าหานิ้วที่เหลืออีก 19 นิ้วมากลืนกิน เพื่อผนึกคำสาปมรณะและตายไปพร้อมกับมัน', 'images/posts/featured-images/m8isnJdpX3uIPbiRVXNxfNhvOrWxMA1Gg6L5Qn1M.jpg', '2023-10-04 12:37:08', '2023-10-04 12:37:08'),
(13, 'ราชันย์แห่งภูต', 'Anime', 'อาซาคุระ โย ผู้สืบทอดพลังภูตก้าวลงสู่สนามประลองที่จัดขึ้นทุก 500 ปี และต้องฟาดฟันกับชาแมนทั่วสารทิศเพื่อชิงตำแหน่งชาแมนคิงเพียงหนึ่งเดียว', 'images/posts/featured-images/6IbtukvJwYm5xGhub1k2l5qSnGPBt1qqukbJgE0T.jpg', '2023-10-04 12:37:57', '2023-10-04 12:37:57'),
(14, 'ซอม 100～100 สิ่งที่อยากทำก่อนจะกลายเป็นซอมบี้～', 'Anime', 'ในซีรีส์อนิเมะที่ดัดแปลงจากมังงะชุดนี้ หนุ่มวัย 24 ปีที่ทุ่มเททำงานถวายหัว ตัดสินใจหันมาใช้ชีวิตและทำในสิ่งที่ใจอยาก หลังจากประเทศโดนซอมบี้บุก', 'images/posts/featured-images/t01aISg4vDHOin75X5hCxDb8IA2vvFI63c6JyP4V.jpg', '2023-10-04 12:38:44', '2023-10-04 12:38:44'),
(15, 'โคทาโร่อยู่คนเดียว', 'Anime', 'หนุ่มน้อยเดียวดายย้ายเข้ามาอยู่ที่อะพาร์ตเมนต์ซอมซ่อเพียงลำพังและผูกมิตรกับนักเขียนการ์ตูนถังแตกที่อยู่ห้องติดกัน', 'images/posts/featured-images/itGPF6ZExg4O00XFogQ7X56Mgds7S0w0QCX3VUF3.jpg', '2023-10-04 12:39:24', '2023-10-04 12:39:24'),
(16, 'Monster Hunter', 'Movie', 'พายุทรายปริศนาทำให้ผู้กองอาร์ทมิสกับสมาชิกในหน่วยหลุดเข้าไปในโลกใหม่สุดหฤโหด และต้องรับมือกับสัตว์ประหลาดขนาดมหึมาที่ไม่สะทกสะท้านต่ออาวุธใดๆ', 'images/posts/featured-images/jUnYMMl8IfILWDHyD0DuYbagrMNcfnsUKh9gPiX4.jpg', '2023-10-04 12:49:41', '2023-10-04 13:02:44'),
(17, 'The Sand Man', 'Series', 'หลังจากถูกจองจำมาเนิ่นนาน มอร์เฟียส ราชาแห่งความฝัน ก็ออกเดินทางข้ามโลกเพื่อตามหาสิ่งที่ถูกพรากไปและทวงคืนพลังอำนาจที่เคยมี', 'images/posts/featured-images/KGrI8k8yayuVKm2mV3ZYPbR3kDe3O0jpNYfgdAJB.jpg', '2023-10-04 12:49:55', '2023-10-04 13:47:14'),
(18, 'สงครามอสูรเหล็ก', 'Movie', 'เจค ลูกชายของสแต็กเกอร์ เพนเทคอสต์จับมือกับพลขับเพื่อนเก่าและแฮกเกอร์เจาะระบบเยเกอร์ เพื่อรับมือกับหายนะครั้งใหม่จากอสุรกายไคจูในอภิมหาสงครามกอบกู้มนุษยชาติ', 'images/posts/featured-images/oFqpYXGDU48fRru3OXO6OCoOzgkJFITxBDi2CTfz.jpg', '2023-10-04 13:04:29', '2023-10-04 13:04:29'),
(19, 'คนระห่ำภารกิจเดือด 2', 'Movie', 'หลังรอดตายมาได้ ไทเลอร์ เรค ทหารหน่วยคอมมานโดมือฉมังก็ต้องออกปฏิบัติภารกิจสุดอันตรายอีกครั้ง เพื่อช่วยครอบครัวของแก๊งอาชญากรโหดที่ถูกคุมขังไว้', 'images/posts/featured-images/1CLB9FaW1cRZ7FHSuuelJUgDRaQdmRZDJ8juJIie.jpg', '2023-10-04 13:05:12', '2023-10-04 13:05:31'),
(20, 'Mortal Engines', 'Movie', 'หญิงสาวคนหนึ่งและเพื่อนขบถร่วมอุดมการณ์ต้องหาทางหยุดยั้ง \"ลอนดอน\" เมืองยักษ์เคลื่อนที่ที่ไล่เขมือบทุกอย่างที่ขวางหน้าในโลกยุคหลังโลกาวินาศ', 'images/posts/featured-images/yIBePpzmDn7UypLEJmvsnjA9kS0FwRiSNv6sqwsn.jpg', '2023-10-04 13:09:02', '2023-10-04 13:09:57'),
(21, 'มนุษย์ลุง...ชื่ออ๊อตโต้', 'Movie', 'ชายวัยเกษียณอารมณ์ฉุนเฉียวที่โกรธเคืองโลกและรู้สึกด้านชาเพราะตรอมใจ เตรียมจบชีวิตตัวเอง แต่แผนกลับต้องล่มเพราะครอบครัวหนึ่งที่โผล่เข้ามาเติมสีสันให้ชีวิตของเขา', 'images/posts/featured-images/krXurLKUtRB49g9lyFdIAJSsJN9eQ9SlMun2zhM9.jpg', '2023-10-04 13:09:49', '2023-10-04 13:09:53'),
(22, 'Crawl', 'Movie', 'ผู้หญิงคนหนึ่งหาทางช่วยพ่อจากพายุเฮอริเคนที่พัดถล่ม จนตัวเองลงไปติดอยู่ที่ชั้นใต้ดินของบ้านซึ่งมีน้ำท่วมขัง และต้องเผชิญหน้ากับเพชฌฆาตในสายน้ำที่จ้องขย้ำเหยื่อ', 'images/posts/featured-images/LT8KNZmCaPyrhBneOvWHLT4PyPKuxEpU7MqacXbX.jpg', '2023-10-04 13:11:08', '2023-10-04 13:11:14'),
(23, 'อินไทม์ ล่าเวลาสุดนรก', 'Movie', 'หลังจากโดนปรักปรำว่าเป็นฆาตกร ชายหนุ่มคนหนึ่งต้องต่อสู้เพื่อเอาตัวรอดในโลกอนาคตที่ผู้คนมีอายุขัยเพียง 25 ปี และคนที่มีเงินเท่านั้นที่จะซื้อเวลาต่อชีวิตได้', 'images/posts/featured-images/bErLtPO0mGWkEFWaJ9lvYmZ93ann52aUrpL1oExV.jpg', '2023-10-04 13:12:11', '2023-10-04 13:12:11'),
(24, 'GREEN BOOK', 'Movie', 'เป็นภาพยนตร์ชีวประวัติสัญชาติอเมริกัน แนวตลก-ชีวิต ในปี ค.ศ. 2018 ภาพยนตร์ได้รับแรงบันดาลใจจากเรื่องจริงในการออกทัวร์ในดีปเซาท์ของนักเปียโนแนวแจ๊สและคลาสสิก ชาวจาเมกา – อเมริกัน ที่ชื่อ \"ดอน เชอร์ลีย์\" และคนเฝ้าร้านชาวอิตาลี-อเมริกัน \"โทนี วัลเลลองกา\" ที่มารับหน้าที่เป็นคนขับรถและบอดีการ์ดของเชอร์ลีย์', 'images/posts/featured-images/pDhQjHrNgZzUSXkUZV1E8HZff2GJ8SXqi42trjMW.jpg', '2023-10-04 13:15:05', '2023-10-04 13:17:48'),
(25, 'Gemini Man', 'Movie', 'หลังจากที่เฮนรี่ได้สังหารผู้ก่อการร้ายคนสุดท้ายให้กับองค์กร บนรถไฟที่วิ่งด้วยความเร็ว 238 กิโลเมตรต่อชั่วโมงได้สำเร็จ ซึ่งไม่เคยมีใครทำได้มาก่อน เขาจึงอยากเกษียณราชการเพื่ออยู่อย่างสงบ แต่เมื่อเขามารู้ทีหลังว่า คนที่เขาฆ่านั้นเป็นศาสตราจารย์ชีววิทยา ไม่ใช่ผู้ก่อการร้ายอย่างที่เขาเข้าใจ ชีวิตของเขาจึงไม่ปลอดภัยอีกต่อไป', 'images/posts/featured-images/B4NpS8sigS1hlPhl7tPR79oqECJpx0JnSfZQcP1E.jpg', '2023-10-04 13:16:15', '2023-10-04 13:17:45'),
(26, 'Godzilla: King of the Monsters', 'Movie', 'องค์กรโมนาร์ชที่กำลังศึกษาเกี่ยวกับสิ่งมีชีวิตยุคก่อนที่ปัจจุบันเรียกว่าไคจู  ซึ่งประกอบไปด้วยตัวหลัก ๆ ดังนี้ ก็อตซิลล่า กิโดร่า โรแดน มอธร่า ซึ่งมีอยู่มาวันหนึ่งมีกลุ่มคนที่คิดจะจัดสมดุลโลกอีกครั้งโดยใช้เหล่าไคจูที่หลับไหลอยู่', 'images/posts/featured-images/ukuVeuATerAz6gnMo72iaBZPgyUZj60tMq4uVv2w.jpg', '2023-10-04 13:17:32', '2023-10-04 13:17:41'),
(27, 'Resident Evil: ผีชีวะ', 'Series', 'หลายปีหลังจากที่โลกต้องย่อยยับเพราะวิกฤตไวรัสระบาด เจด เวสเกอร์พยายามเอาชีวิตรอดท่ามกลางผู้ติดเชื้อ โดยมีเป้าหมายที่จะล้างบางกลุ่มคนมีส่วนร่วมในการจุดชนวนวิกฤตนี้', 'images/posts/featured-images/VCBtvjUPMvXlS865vckeHVboAVVgbIFQ4WmJKeBq.jpg', '2023-10-04 13:19:00', '2023-10-04 13:19:00'),
(28, '1899', 'Series', 'เหตุการณ์ลึกลับได้เปลี่ยนเส้นทางของเรือบรรทุกผู้อพยพลำหนึ่งที่มุ่งหน้าไปยังนิวยอร์กในปี 1899 ปริศนาอันซับซ้อนจะถูกเปิดเผยต่อผู้โดยสารที่กำลังสับสน', 'images/posts/featured-images/hWW2WVKUcNg7HvBhdbwgSbKrjXFHHuHMs6tNEs9Q.jpg', '2023-10-04 13:19:23', '2023-10-04 13:19:23'),
(29, 'อลิสในแดนมรณะ', 'Series', 'นักเล่นเกมผู้ไร้เป้าหมายชีวิตและเพื่อน 2 คนได้หลุดเข้าไปในโลกคู่ขนานของโตเกียว ซึ่งบีบให้พวกเขาต้องเล่นเกมเสี่ยงตายเพื่อเอาชีวิตรอด', 'images/posts/featured-images/1eShv32l9TO6koEag3W67MJDltgPfFgudOvemiro.jpg', '2023-10-04 13:19:52', '2023-10-04 13:19:52'),
(30, 'เล่นแร่แปรวิญญาณ', 'Series', 'จอมเวทหญิงพลังแกร่งกล้าผู้ใช้ร่างหญิงตาบอดโคจรมาพบกับคุณชายตระกูลสูงศักดิ์ที่ต้องการให้นางช่วยเปลี่ยนโชคชะตา', 'images/posts/featured-images/lYfHM622gZVsN8WPEhxWBGpHe3jnioK72jTmZt18.jpg', '2023-10-04 13:20:22', '2023-10-04 13:20:22'),
(31, 'The Glory', 'Series', 'หลายปีหลังผ่านพ้นชีวิตวัยเรียนที่ถูกข่มเหงรังแกสารพัด ผู้หญิงคนหนึ่งจึงเริ่มปฏิบัติการล้างแค้นอย่างแยบยล เพื่อลงโทษคนที่ทำให้เธอเจ็บ... ให้เจ็บยิ่งกว่า', 'images/posts/featured-images/Z6fyFFaw2skvtIz5dOFILVf8MQwLglFN2c0yJdOp.jpg', '2023-10-04 13:20:50', '2023-10-04 13:20:50'),
(32, 'เพศศึกษา (หลักสูตรเร่งรัก)', 'Series', 'โอทิสหนุ่มติ๋มสุดเนิร์ดฉลาดปราดเปรื่องเรื่องเพศศึกษาเพราะมีแม่เป็นนักบำบัด ทำให้เมฟเพื่อนจอมขบถเสนอไอเดียตั้งคลินิกบำบัดทางเพศในโรงเรียน', 'images/posts/featured-images/QNQnCJWIzTbS6PMDSEVRz992VbIOUgGhAeu6RVuW.jpg', '2023-10-04 13:21:22', '2023-10-04 13:21:22'),
(33, 'Wednesday', 'Series', 'เวนส์เดย์ แอดดัมส์ผู้ฉลาดเฉลียว ช่างประชดประชัน และไร้อารมณ์ความรู้สึก สืบเหตุฆาตกรรม จนเจอทั้งเพื่อนและศัตรูใหม่ในสถาบันเนเวอร์มอร์', 'images/posts/featured-images/C1lC7DOILYoEhURCBNEFhs6aMmYCugcD9BGrRxQE.jpg', '2023-10-04 13:21:44', '2023-10-04 13:21:44'),
(34, 'สเตรนเจอร์ ธิงส์', 'Series', 'เมื่อเด็กชายคนหนึ่งหายตัวไป เมืองเล็กๆ แห่งนี้ก็ค้นพบเรื่องลึกลับซึ่งเกี่ยวพันกับการทดลองลับ พลังเหนือธรรมชาติอันน่าหวาดกลัว และเด็กหญิงแปลกประหลาดคนหนึ่ง', 'images/posts/featured-images/iNEvUNQl7qF6WY54FOKL8oL1z5vnrr8MTVNrsUVo.jpg', '2023-10-04 13:22:11', '2023-10-04 13:22:11'),
(35, 'Ghost Doctor: ผีหมอ หมอผี', 'Series', 'วิญญาณศัลยแพทย์มือทองผู้อวดดีเข้าสิงร่างแพทย์ประจำบ้านน้องใหม่ที่ไม่ประสีประสา เขาจึงกลายเป็นคุณหมอมือฉมัง ที่ทุกคนต่างเรียกหาเพียงชั่วข้ามคืน', 'images/posts/featured-images/ZEnSd6u6MOlo29hVnqqgTFjpP5X57NYwwv5L7rBy.jpg', '2023-10-04 13:22:35', '2023-10-04 13:22:35'),
(36, 'บากิ', 'Anime', 'ระหว่างที่ฮันมะ บากิ แชมป์ศิลปะการต่อสู้พยายามฝึกฝนอย่างหนักเพื่อให้เหนือกว่าพ่อผู้เป็นตำนานของตัวเอง นักโทษประหารสุดโหด 5 คนได้มุ่งหน้ามายังโตเกียวเพื่อท้าสู้กับเขา', 'images/posts/featured-images/DQglwft7i9qozGPanuabaIHy1QoZaKcq1p2HcRR1.jpg', '2023-10-04 13:29:50', '2023-10-04 13:29:50'),
(38, '65 ผจญนรกล้านปี', 'Movie', 'หลังรอดชีวิตจากอุบัติเหตุยานตก นักบินอวกาศพร้อมผู้โดยสารก็ฝ่าฟันอุปสรรคขวากหนามในโลกยุคก่อนประวัติศาสตร์ เพื่อไปให้ถึงพาหนะหลบหนี ที่เป็นความหวังเพียงหนึ่งเดียว', 'images/posts/featured-images/iQG5cBKoYNMtns6ZLB4i93Vmy72E9LVTg7Mj6ClE.jpg', '2023-10-06 09:32:53', '2023-10-06 09:32:53'),
(39, 'มอง อย่าให้เห็น (บาร์เซโลนา)', 'Movie', 'ขณะที่หายนะปริศนาจ้องล้างบางมนุษยชาติ ภัยร้ายใหม่ยิ่งทวีความน่าสะพรึงกลัว ในภาพยนตร์สานต่อเรื่องราวจากผลงานบล็อกบัสเตอร์ \"มอง อย่าให้เห็น\" ซึ่งครั้งนี้เกิดในบาร์เซโลนา', 'images/posts/featured-images/mwnlOYksXyJXopsOii3nSJjVACVQPMmf4ggRuY4Z.jpg', '2023-10-06 09:34:22', '2023-10-06 09:34:22'),
(40, 'มหาเวทย์ผนึกมาร ซีโร่ เดอะมูฟวี่', 'Anime', 'นักเรียนม.ปลายผู้ท้อแท้สมัครเข้าเรียนที่โรงเรียนมัธยมปลายไสยศาสตร์ เพื่อลบล้างคำสาปอันรุนแรงที่คอยตามหลอกหลอน ผลงานนี้เล่าเรื่องราวก่อนเหตุการณ์ในซีรีส์ \"มหาเวทย์ผนึกมาร\"', 'images/posts/featured-images/7fzYYrLOIccnmSTGVlWNXNAUeN3YUjonVfGZwOhV.jpg', '2023-10-06 09:58:36', '2023-10-06 09:58:36'),
(41, 'โฮมทาวน์ ชะชะช่า', 'Series', 'ทันตแพทย์สาวจากเมืองใหญ่มาเปิดคลินิกในชุมชนชายทะเลที่กลมเกลียวเหมือนครอบครัว และได้พบหนุ่มเจ้าเสน่ห์ที่ไม่ได้ทำงานเป็นหลักแหล่งและมีนิสัยตรงข้ามกันทุกอย่าง', 'images/posts/featured-images/GAIemXV2LNIfXUYpWRwFFW8iBHbtErdxRlwsDTJ8.jpg', '2023-10-06 10:02:37', '2023-10-06 10:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kerkchai Chotthaisong', 'Frankvirus3693@gmail.com', NULL, '$2y$10$S/Ok1NHyH4MiKGaG4HN8/ODngl4dz/3KFSCph4uTdlxC4ml8BVk5O', NULL, '2023-10-04 06:50:35', '2023-10-04 06:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
