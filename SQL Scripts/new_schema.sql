-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: groupfour-database.crvi1tvxyfsa.us-east-1.rds.amazonaws.com
-- Generation Time: Apr 23, 2022 at 04:10 PM
-- Server version: 8.0.27
-- PHP Version: 7.3.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT_CODE`
--

CREATE TABLE `ACCOUNT_CODE` (
  `sponsorID` int NOT NULL,
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ACCOUNT_CODE`
--

INSERT INTO `ACCOUNT_CODE` (`sponsorID`, `code`) VALUES
(1, 1683),
(2, 1892),
(3, 1),
(7, 1684),
(9, 1686),
(11, 1893),
(13, 1894),
(14, 1895),
(15, 1896);

-- --------------------------------------------------------

--
-- Table structure for table `APPLICATION`
--

CREATE TABLE `APPLICATION` (
  `applicationsID` int NOT NULL,
  `uID` int NOT NULL,
  `sponsorID` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `APPLICATION`
--

INSERT INTO `APPLICATION` (`applicationsID`, `uID`, `sponsorID`, `status`, `date`) VALUES
(4, 9, 1, 1, '2022-4-10'),
(5, 9, 2, 1, '2022-4-10'),
(6, 59, 2, 1, '2022-4-11'),
(7, 60, 11, 1, '2022-4-11'),
(10, 71, 2, 1, '2022-4-17'),
(12, 9, 2, 1, '2022-4-17'),
(14, 9, 2, 1, '2022-4-18'),
(16, 9, 2, 1, '2022-4-21'),
(17, 80, 1, 1, '2022-4-22'),
(18, 80, 2, 1, '2022-4-22');

-- --------------------------------------------------------

--
-- Table structure for table `CATALOG_IMAGES`
--

CREATE TABLE `CATALOG_IMAGES` (
  `imageid` int NOT NULL,
  `link` varchar(200) NOT NULL,
  `listingId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CATALOG_IMAGES`
--

INSERT INTO `CATALOG_IMAGES` (`imageid`, `link`, `listingId`) VALUES
(1, 'https://i.etsystatic.com/9129800/r/il/981989/3683538353/il_fullxfull.3683538353_3ctp.jpg', 1156488806),
(2, 'https://i.etsystatic.com/9129800/r/il/9b95c0/3635930842/il_fullxfull.3635930842_qvdq.jpg', 1156488806),
(3, 'https://i.etsystatic.com/9129800/r/il/ed233f/3672236628/il_fullxfull.3672236628_etco.jpg', 1156488806),
(4, 'https://i.etsystatic.com/9129800/r/il/39deba/3683536977/il_fullxfull.3683536977_im3f.jpg', 1156488806),
(5, 'https://i.etsystatic.com/9129800/r/il/552550/3683536987/il_fullxfull.3683536987_ct95.jpg', 1156488806),
(6, 'https://i.etsystatic.com/9129800/r/il/e185f3/3683537235/il_fullxfull.3683537235_s5sl.jpg', 1156488806),
(7, 'https://i.etsystatic.com/9129800/r/il/b86cee/3635930614/il_fullxfull.3635930614_h8qn.jpg', 1156488806),
(8, 'https://i.etsystatic.com/9129800/r/il/7a488a/3672236528/il_fullxfull.3672236528_m1tu.jpg', 1156488806),
(9, 'https://i.etsystatic.com/9129800/r/il/4e7efd/3683537177/il_fullxfull.3683537177_lrh0.jpg', 1156488806),
(10, 'https://i.etsystatic.com/9129800/r/il/618edc/3683537229/il_fullxfull.3683537229_bbz2.jpg', 1156488806),
(11, 'https://i.etsystatic.com/9833646/r/il/e60371/1714307091/il_fullxfull.1714307091_bpac.jpg', 234064691),
(12, 'https://i.etsystatic.com/9833646/r/il/3c1be9/649127440/il_fullxfull.649127440_ikbi.jpg', 234064691),
(13, 'https://i.etsystatic.com/9833646/r/il/6f228c/665842257/il_fullxfull.665842257_sb6m.jpg', 234064691),
(14, 'https://i.etsystatic.com/9833646/r/il/8b6ee6/665710956/il_fullxfull.665710956_obpk.jpg', 234064691),
(15, 'https://i.etsystatic.com/9833646/r/il/8354f1/1666835986/il_fullxfull.1666835986_c5xo.jpg', 234064691),
(16, 'https://i.etsystatic.com/9833646/r/il/66d680/665842385/il_fullxfull.665842385_ntgt.jpg', 234064691),
(17, 'https://i.etsystatic.com/9833646/r/il/c61a3e/665842379/il_fullxfull.665842379_emgv.jpg', 234064691),
(18, 'https://i.etsystatic.com/14950800/r/il/3c6a3b/3242339908/il_fullxfull.3242339908_15fp.jpg', 869547756),
(19, 'https://i.etsystatic.com/14950800/r/il/7da78c/3416708408/il_fullxfull.3416708408_kfgf.jpg', 869547756),
(20, 'https://i.etsystatic.com/14950800/r/il/81a67a/3074321086/il_fullxfull.3074321086_qpqw.jpg', 869547756),
(21, 'https://i.etsystatic.com/14950800/r/il/4ddd61/2921165131/il_fullxfull.2921165131_4ubq.jpg', 869547756),
(22, 'https://i.etsystatic.com/14950800/r/il/ab99fc/3074323006/il_fullxfull.3074323006_inu5.jpg', 869547756),
(23, 'https://i.etsystatic.com/14950800/r/il/106455/3306257058/il_fullxfull.3306257058_4418.jpg', 869547756),
(24, 'https://i.etsystatic.com/14950800/r/il/93dab4/3457229783/il_fullxfull.3457229783_btk0.jpg', 869547756),
(25, 'https://i.etsystatic.com/14950800/r/il/b65109/3457229959/il_fullxfull.3457229959_lskq.jpg', 869547756),
(26, 'https://i.etsystatic.com/14950800/r/il/e17687/3074323890/il_fullxfull.3074323890_i3g6.jpg', 869547756),
(27, 'https://i.etsystatic.com/12167934/r/il/077d6c/1651420158/il_fullxfull.1651420158_9mx5.jpg', 637333414),
(28, 'https://i.etsystatic.com/12167934/r/il/203996/2919734751/il_fullxfull.2919734751_n8gw.jpg', 637333414),
(29, 'https://i.etsystatic.com/12167934/r/il/fee84d/2872051928/il_fullxfull.2872051928_gx5i.jpg', 637333414),
(30, 'https://i.etsystatic.com/12167934/r/il/5ee444/2919735219/il_fullxfull.2919735219_3zg2.jpg', 637333414),
(31, 'https://i.etsystatic.com/12167934/r/il/b1187d/2915152559/il_fullxfull.2915152559_nsdu.jpg', 637333414),
(32, 'https://i.etsystatic.com/12167934/r/il/999ce9/2915152689/il_fullxfull.2915152689_2wnm.jpg', 637333414),
(33, 'https://i.etsystatic.com/12167934/r/il/01354b/3633891003/il_fullxfull.3633891003_nrux.jpg', 637333414),
(34, 'https://i.etsystatic.com/12167934/r/il/0d0054/3633891149/il_fullxfull.3633891149_6to0.jpg', 637333414),
(35, 'https://i.etsystatic.com/12167934/r/il/4c5d7e/3586269878/il_fullxfull.3586269878_oaiu.jpg', 637333414),
(36, 'https://i.etsystatic.com/12167934/r/il/028eaa/3586269980/il_fullxfull.3586269980_i696.jpg', 637333414),
(37, 'https://i.etsystatic.com/10262117/r/il/e836fc/1462265635/il_fullxfull.1462265635_3n56.jpg', 227694919),
(38, 'https://i.etsystatic.com/10262117/r/il/8a85ae/979895706/il_fullxfull.979895706_6tvh.jpg', 227694919),
(39, 'https://i.etsystatic.com/10262117/r/il/ded2b8/1380799585/il_fullxfull.1380799585_ryn1.jpg', 227694919),
(40, 'https://i.etsystatic.com/10262117/r/il/cbf829/951100232/il_fullxfull.951100232_3azt.jpg', 227694919),
(41, 'https://i.etsystatic.com/10262117/r/il/6220ba/1333534728/il_fullxfull.1333534728_bpc3.jpg', 227694919),
(42, 'https://i.etsystatic.com/10262117/r/il/b39e24/875806576/il_fullxfull.875806576_l9xf.jpg', 227694919),
(43, 'https://i.etsystatic.com/10262117/r/il/27a711/2381741975/il_fullxfull.2381741975_27d2.jpg', 227694919),
(44, 'https://i.etsystatic.com/10262117/r/il/622c2e/2334186726/il_fullxfull.2334186726_fu4n.jpg', 227694919),
(45, 'https://i.etsystatic.com/10262117/r/il/116107/2334154540/il_fullxfull.2334154540_th17.jpg', 227694919),
(46, 'https://i.etsystatic.com/6729891/r/il/a4fb57/307109597/il_fullxfull.307109597.jpg', 91685909),
(47, 'https://i.etsystatic.com/6729891/r/il/cdabef/1768083252/il_fullxfull.1768083252_oua2.jpg', 91685909),
(48, 'https://i.etsystatic.com/6729891/r/il/5794bf/1767890936/il_fullxfull.1767890936_pfx6.jpg', 91685909),
(49, 'https://i.etsystatic.com/6729891/r/il/26cd04/1768081822/il_fullxfull.1768081822_snis.jpg', 91685909),
(50, 'https://i.etsystatic.com/6729891/r/il/225aaf/1987685789/il_fullxfull.1987685789_ekiw.jpg', 91685909),
(51, 'https://i.etsystatic.com/6729891/r/il/4b25bb/1815536137/il_fullxfull.1815536137_3k08.jpg', 91685909),
(52, 'https://i.etsystatic.com/6729891/r/il/cad323/1459133121/il_fullxfull.1459133121_4zyt.jpg', 91685909),
(53, 'https://i.etsystatic.com/6729891/r/il/e0ccb5/1411870434/il_fullxfull.1411870434_p8f8.jpg', 91685909),
(54, 'https://i.etsystatic.com/6729891/r/il/486104/3041934454/il_fullxfull.3041934454_nq68.jpg', 91685909),
(55, 'https://i.etsystatic.com/5274018/r/il/0ff981/1663301998/il_fullxfull.1663301998_hrnt.jpg', 269384394),
(56, 'https://i.etsystatic.com/5274018/r/il/17f888/1663299422/il_fullxfull.1663299422_8pzq.jpg', 269384394),
(57, 'https://i.etsystatic.com/6793453/r/il/5edb41/1643478762/il_fullxfull.1643478762_cy7w.jpg', 463257100),
(58, 'https://i.etsystatic.com/6793453/r/il/0643ef/1643479422/il_fullxfull.1643479422_m6hr.jpg', 463257100),
(59, 'https://i.etsystatic.com/6793453/r/il/89c823/1643479512/il_fullxfull.1643479512_beay.jpg', 463257100),
(60, 'https://i.etsystatic.com/6793453/r/il/905801/1643479338/il_fullxfull.1643479338_cx05.jpg', 463257100),
(61, 'https://i.etsystatic.com/6793453/r/il/08ba9c/1643480368/il_fullxfull.1643480368_tq8s.jpg', 463257100),
(62, 'https://i.etsystatic.com/6793453/r/il/1c01dd/3438443913/il_fullxfull.3438443913_49h4.jpg', 463257100),
(63, 'https://i.etsystatic.com/6793453/r/il/b568b2/1690903367/il_fullxfull.1690903367_d3g7.jpg', 463257100),
(64, 'https://i.etsystatic.com/6793453/r/il/f843ac/1690903957/il_fullxfull.1690903957_2vi6.jpg', 463257100),
(65, 'https://i.etsystatic.com/6793453/r/il/6a44fa/1890744549/il_fullxfull.1890744549_2x1v.jpg', 463257100),
(66, 'https://i.etsystatic.com/6793453/r/il/c9ca9a/3502840197/il_fullxfull.3502840197_co1a.jpg', 463257100),
(67, 'https://i.etsystatic.com/11203564/r/il/41a11e/3120029706/il_fullxfull.3120029706_qkp3.jpg', 235508467),
(68, 'https://i.etsystatic.com/11203564/r/il/5a8104/3167737863/il_fullxfull.3167737863_jk3b.jpg', 235508467),
(69, 'https://i.etsystatic.com/11203564/r/il/dd3789/3167738671/il_fullxfull.3167738671_etno.jpg', 235508467),
(70, 'https://i.etsystatic.com/11203564/r/il/2b347d/3120016330/il_fullxfull.3120016330_ejv6.jpg', 235508467),
(71, 'https://i.etsystatic.com/11203564/r/il/6282ef/3167738613/il_fullxfull.3167738613_jof1.jpg', 235508467),
(72, 'https://i.etsystatic.com/11203564/r/il/cf7151/3167738683/il_fullxfull.3167738683_pqtg.jpg', 235508467),
(73, 'https://i.etsystatic.com/11203564/r/il/c91d67/3167738561/il_fullxfull.3167738561_mu6w.jpg', 235508467),
(74, 'https://i.etsystatic.com/11203564/r/il/229525/2817026602/il_fullxfull.2817026602_aznx.jpg', 235508467),
(75, 'https://i.etsystatic.com/7142425/r/il/a33735/3273482489/il_fullxfull.3273482489_fdxb.jpg', 236285711),
(76, 'https://i.etsystatic.com/7142425/r/il/1d62da/2431320465/il_fullxfull.2431320465_gt92.jpg', 236285711),
(77, 'https://i.etsystatic.com/7142425/r/il/f3f65f/1437775713/il_fullxfull.1437775713_ehya.jpg', 236285711),
(78, 'https://i.etsystatic.com/7142425/r/il/0e59f3/1569371152/il_fullxfull.1569371152_b123.jpg', 236285711),
(79, 'https://i.etsystatic.com/7142425/r/il/9025b7/1178299454/il_fullxfull.1178299454_3hzl.jpg', 236285711),
(80, 'https://i.etsystatic.com/7142425/r/il/4fb6d9/2383706948/il_fullxfull.2383706948_58jy.jpg', 236285711),
(81, 'https://i.etsystatic.com/7142425/r/il/1cf3e3/2431320455/il_fullxfull.2431320455_ez4y.jpg', 236285711),
(82, 'https://i.etsystatic.com/7142425/r/il/a6b086/2431315835/il_fullxfull.2431315835_63ra.jpg', 236285711),
(83, 'https://i.etsystatic.com/7142425/r/il/d088e6/2431315823/il_fullxfull.2431315823_8d69.jpg', 236285711),
(84, 'https://i.etsystatic.com/7142425/r/il/75f1ca/2385415466/il_fullxfull.2385415466_hy8j.jpg', 236285711),
(85, 'https://i.etsystatic.com/25509531/r/il/e11acd/3650591969/il_fullxfull.3650591969_a0k2.jpg', 1111784545),
(86, 'https://i.etsystatic.com/25509531/r/il/b674e4/3602977096/il_fullxfull.3602977096_9ftg.jpg', 1111784545),
(87, 'https://i.etsystatic.com/25509531/r/il/8c691b/3481307967/il_fullxfull.3481307967_7xk6.jpg', 1111784545),
(88, 'https://i.etsystatic.com/25509531/r/il/3e36d0/3481307951/il_fullxfull.3481307951_bhzg.jpg', 1111784545),
(89, 'https://i.etsystatic.com/25509531/r/il/085182/3602976536/il_fullxfull.3602976536_jfdc.jpg', 1111784545),
(90, 'https://i.etsystatic.com/25509531/r/il/c680db/3433633826/il_fullxfull.3433633826_pjwd.jpg', 1111784545),
(91, 'https://i.etsystatic.com/25509531/r/il/926c77/3481308173/il_fullxfull.3481308173_iaka.jpg', 1111784545),
(92, 'https://i.etsystatic.com/25509531/r/il/321e1a/3602975290/il_fullxfull.3602975290_s59h.jpg', 1111784545),
(93, 'https://i.etsystatic.com/25509531/r/il/763b07/2819894297/il_fullxfull.2819894297_1aby.jpg', 1111784545),
(94, 'https://i.etsystatic.com/25509531/r/il/2309e3/2955095136/il_fullxfull.2955095136_qvve.jpg', 1111784545),
(95, 'https://i.etsystatic.com/14217457/r/il/78ffaa/1196161054/il_fullxfull.1196161054_ov4b.jpg', 515765456),
(96, 'https://i.etsystatic.com/14217457/r/il/2916ba/1243379331/il_fullxfull.1243379331_33g4.jpg', 515765456),
(97, 'https://i.etsystatic.com/14217457/r/il/6cd30c/1196162266/il_fullxfull.1196162266_mr35.jpg', 515765456),
(98, 'https://i.etsystatic.com/11995091/r/il/186be2/1785307331/il_fullxfull.1785307331_ryd3.jpg', 551527256),
(99, 'https://i.etsystatic.com/11995091/r/il/9f0726/2667698525/il_fullxfull.2667698525_jgvc.jpg', 551527256),
(100, 'https://i.etsystatic.com/11995091/r/il/803a90/2667699345/il_fullxfull.2667699345_c5rz.jpg', 551527256),
(101, 'https://i.etsystatic.com/11995091/r/il/70566a/2667698651/il_fullxfull.2667698651_2cfq.jpg', 551527256),
(102, 'https://i.etsystatic.com/11995091/r/il/13f4b8/1432066806/il_fullxfull.1432066806_4c1h.jpg', 551527256),
(103, 'https://i.etsystatic.com/11995091/r/il/613ada/2149042489/il_fullxfull.2149042489_n5ps.jpg', 551527256),
(104, 'https://i.etsystatic.com/11995091/r/il/08806b/2253694095/il_fullxfull.2253694095_kn23.jpg', 551527256),
(105, 'https://i.etsystatic.com/11995091/r/il/aa0284/2206093040/il_fullxfull.2206093040_aqnn.jpg', 551527256),
(106, 'https://i.etsystatic.com/11995091/r/il/55fa18/2253694401/il_fullxfull.2253694401_jd9n.jpg', 551527256),
(107, 'https://i.etsystatic.com/11995091/r/il/8d894f/2253694565/il_fullxfull.2253694565_akyk.jpg', 551527256),
(108, 'https://i.etsystatic.com/16602638/r/il/a343eb/1863684024/il_fullxfull.1863684024_846a.jpg', 703041103),
(109, 'https://i.etsystatic.com/16602638/r/il/b2f18e/1863681288/il_fullxfull.1863681288_r3gu.jpg', 703041103),
(110, 'https://i.etsystatic.com/16602638/r/il/62ac44/1911199775/il_fullxfull.1911199775_9zp2.jpg', 703041103),
(111, 'https://i.etsystatic.com/16602638/r/il/884592/1863682370/il_fullxfull.1863682370_bybc.jpg', 703041103),
(112, 'https://i.etsystatic.com/16602638/r/il/924cf4/1911201657/il_fullxfull.1911201657_remt.jpg', 703041103),
(113, 'https://i.etsystatic.com/16602638/r/il/bcd1fa/1863681414/il_fullxfull.1863681414_cp17.jpg', 703041103),
(114, 'https://i.etsystatic.com/16602638/r/il/07a321/1863679652/il_fullxfull.1863679652_s8mz.jpg', 703041103),
(115, 'https://i.etsystatic.com/16602638/r/il/fe56f7/1863674030/il_fullxfull.1863674030_lhwc.jpg', 703041103),
(116, 'https://i.etsystatic.com/16602638/r/il/c7ab29/1911198071/il_fullxfull.1911198071_i34p.jpg', 703041103),
(117, 'https://i.etsystatic.com/16602638/r/il/5debc4/1911198729/il_fullxfull.1911198729_4d6k.jpg', 703041103),
(118, 'https://i.etsystatic.com/9682856/r/il/b42fb7/2057453661/il_fullxfull.2057453661_7nxe.jpg', 553459264),
(119, 'https://i.etsystatic.com/9682856/r/il/9d2d64/2009863770/il_fullxfull.2009863770_3bis.jpg', 553459264),
(120, 'https://i.etsystatic.com/9682856/r/il/ac854a/2057453749/il_fullxfull.2057453749_4bo6.jpg', 553459264),
(121, 'https://i.etsystatic.com/9682856/r/il/d975a2/2009863860/il_fullxfull.2009863860_ok6p.jpg', 553459264),
(122, 'https://i.etsystatic.com/9682856/r/il/7c4407/2057453861/il_fullxfull.2057453861_3hh7.jpg', 553459264),
(123, 'https://i.etsystatic.com/9682856/r/il/282d22/2009863876/il_fullxfull.2009863876_g8he.jpg', 553459264),
(124, 'https://i.etsystatic.com/9682856/r/il/27b31b/2057453933/il_fullxfull.2057453933_qdra.jpg', 553459264),
(125, 'https://i.etsystatic.com/9682856/r/il/67fd60/2057453937/il_fullxfull.2057453937_rvwp.jpg', 553459264),
(126, 'https://i.etsystatic.com/9682856/r/il/619cce/2057453965/il_fullxfull.2057453965_47hp.jpg', 553459264),
(127, 'https://i.etsystatic.com/9682856/r/il/356b65/2057453971/il_fullxfull.2057453971_e3j5.jpg', 553459264),
(128, 'https://i.etsystatic.com/12427464/r/il/6756d6/3152578565/il_fullxfull.3152578565_kv9t.jpg', 960839733),
(129, 'https://i.etsystatic.com/30439004/r/il/1a9e1e/3337345111/il_fullxfull.3337345111_79ah.jpg', 1060439452),
(130, 'https://i.etsystatic.com/30439004/r/il/36c0b1/3289649446/il_fullxfull.3289649446_sgio.jpg', 1060439452),
(131, 'https://i.etsystatic.com/30439004/r/il/8d41b3/3289649464/il_fullxfull.3289649464_ne77.jpg', 1060439452),
(132, 'https://i.etsystatic.com/30439004/r/il/9900bc/3289649458/il_fullxfull.3289649458_34ho.jpg', 1060439452),
(133, 'https://i.etsystatic.com/30439004/r/il/089825/3289649480/il_fullxfull.3289649480_1zdv.jpg', 1060439452),
(134, 'https://i.etsystatic.com/30439004/r/il/840387/3289649472/il_fullxfull.3289649472_3kag.jpg', 1060439452),
(135, 'https://i.etsystatic.com/30439004/r/il/db4f6b/3224976264/il_fullxfull.3224976264_2crb.jpg', 1060439452),
(136, 'https://i.etsystatic.com/30439004/r/il/9dfe8d/3299589358/il_fullxfull.3299589358_m7lb.jpg', 1060439452),
(137, 'https://i.etsystatic.com/30439004/r/il/8e479d/3198026886/il_fullxfull.3198026886_5til.jpg', 1060439452),
(138, 'https://i.etsystatic.com/26585100/r/il/5ac9f8/3820764835/il_fullxfull.3820764835_pj05.jpg', 1192040352),
(139, 'https://i.etsystatic.com/26585100/r/il/e0f1fe/3773168738/il_fullxfull.3773168738_esg8.jpg', 1192040352),
(140, 'https://i.etsystatic.com/26585100/r/il/2f0707/3820764851/il_fullxfull.3820764851_islz.jpg', 1192040352),
(141, 'https://i.etsystatic.com/17360662/r/il/6c5535/3742834964/il_fullxfull.3742834964_tu3k.jpg', 945416553),
(142, 'https://i.etsystatic.com/17360662/r/il/1187fc/3329386440/il_fullxfull.3329386440_i8t4.jpg', 945416553),
(143, 'https://i.etsystatic.com/17360662/r/il/c8742d/3138802395/il_fullxfull.3138802395_apoi.jpg', 945416553),
(144, 'https://i.etsystatic.com/17360662/r/il/c6b306/3291397043/il_fullxfull.3291397043_135x.jpg', 945416553),
(145, 'https://i.etsystatic.com/17360662/r/il/165866/3271928000/il_fullxfull.3271928000_jsu3.jpg', 945416553),
(146, 'https://i.etsystatic.com/17360662/r/il/8daae5/3771863260/il_fullxfull.3771863260_57e4.jpg', 945416553),
(147, 'https://i.etsystatic.com/17360662/r/il/c70216/3819462941/il_fullxfull.3819462941_7ldh.jpg', 945416553),
(148, 'https://i.etsystatic.com/17360662/r/il/9bcb3f/3397274536/il_fullxfull.3397274536_8yeo.jpg', 945416553),
(149, 'https://i.etsystatic.com/17360662/r/il/ac82b0/3432952804/il_fullxfull.3432952804_15x0.jpg', 945416553),
(150, 'https://i.etsystatic.com/6904217/r/il/24fd60/3032475351/il_fullxfull.3032475351_ncoz.jpg', 992836743),
(151, 'https://i.etsystatic.com/10219712/r/il/5e94ad/2296845343/il_fullxfull.2296845343_f0as.jpg', 212505866),
(152, 'https://i.etsystatic.com/10219712/r/il/9d5fc9/2249244724/il_fullxfull.2249244724_m4xz.jpg', 212505866),
(153, 'https://i.etsystatic.com/10219712/r/il/0b8c34/2296845183/il_fullxfull.2296845183_bwyt.jpg', 212505866),
(154, 'https://i.etsystatic.com/10219712/r/il/edc97b/2296845227/il_fullxfull.2296845227_n0m6.jpg', 212505866),
(155, 'https://i.etsystatic.com/10219712/r/il/7a92d9/2249244852/il_fullxfull.2249244852_fyhs.jpg', 212505866),
(156, 'https://i.etsystatic.com/10219712/r/il/e08fe8/2249244300/il_fullxfull.2249244300_movm.jpg', 212505866),
(157, 'https://i.etsystatic.com/10219712/r/il/ae9bf9/2296844699/il_fullxfull.2296844699_d9i5.jpg', 212505866),
(158, 'https://i.etsystatic.com/10219712/r/il/eca7e1/2771539176/il_fullxfull.2771539176_jhkt.jpg', 212505866),
(159, 'https://i.etsystatic.com/24488138/r/il/478aa3/3476263833/il_fullxfull.3476263833_iwp8.jpg', 1110455543),
(160, 'https://i.etsystatic.com/24488138/r/il/81e435/3476263861/il_fullxfull.3476263861_9tie.jpg', 1110455543),
(161, 'https://i.etsystatic.com/24488138/r/il/98f264/3476263903/il_fullxfull.3476263903_q32m.jpg', 1110455543),
(162, 'https://i.etsystatic.com/24488138/r/il/3c710a/3476263959/il_fullxfull.3476263959_fn3a.jpg', 1110455543),
(163, 'https://i.etsystatic.com/24488138/r/il/5c8c2a/3476264035/il_fullxfull.3476264035_6ksf.jpg', 1110455543),
(164, 'https://i.etsystatic.com/5781158/r/il/f2f389/2912117626/il_fullxfull.2912117626_17ku.jpg', 959083500),
(165, 'https://i.etsystatic.com/6470082/r/il/2305c2/2552276941/il_fullxfull.2552276941_of2z.jpg', 850914476),
(166, 'https://i.etsystatic.com/11189281/r/il/a659fe/3093526727/il_fullxfull.3093526727_mepm.jpg', 1009474489),
(167, 'https://i.etsystatic.com/11189281/r/il/93bf7e/3045798784/il_fullxfull.3045798784_86bs.jpg', 1009474489),
(168, 'https://i.etsystatic.com/11189281/r/il/ffc9b3/3045799000/il_fullxfull.3045799000_6p2q.jpg', 1009474489),
(169, 'https://i.etsystatic.com/6195369/r/il/54220c/2738728022/il_fullxfull.2738728022_jygj.jpg', 926129491),
(170, 'https://i.etsystatic.com/34107503/r/il/217e6f/3825302047/il_fullxfull.3825302047_5qeg.jpg', 1193197782),
(171, 'https://i.etsystatic.com/34107503/r/il/14892c/3825302027/il_fullxfull.3825302027_lw2d.jpg', 1193197782),
(172, 'https://i.etsystatic.com/34107503/r/il/43c545/3825302015/il_fullxfull.3825302015_9spw.jpg', 1193197782),
(173, 'https://i.etsystatic.com/28718219/r/il/84ff7a/3648318684/il_fullxfull.3648318684_l711.jpg', 1159713030),
(174, 'https://i.etsystatic.com/28718219/r/il/61447f/3695933795/il_fullxfull.3695933795_trio.jpg', 1159713030),
(175, 'https://i.etsystatic.com/34877493/r/il/ce3c20/3832985435/il_fullxfull.3832985435_p5dt.jpg', 1195251070),
(176, 'https://i.etsystatic.com/34877493/r/il/0ca34f/3785387902/il_fullxfull.3785387902_45n0.jpg', 1195251070),
(177, 'https://i.etsystatic.com/34877493/r/il/0e14eb/3785388136/il_fullxfull.3785388136_75ed.jpg', 1195251070),
(178, 'https://i.etsystatic.com/34877493/r/il/7a6b05/3785388398/il_fullxfull.3785388398_bm8d.jpg', 1195251070),
(179, 'https://i.etsystatic.com/24486068/r/il/63aed8/3253850899/il_fullxfull.3253850899_etrc.jpg', 1051889145),
(180, 'https://i.etsystatic.com/13736870/r/il/6318bd/3463951249/il_fullxfull.3463951249_jb64.jpg', 1085216615),
(181, 'https://i.etsystatic.com/13736870/r/il/78d828/3381248945/il_fullxfull.3381248945_l47e.jpg', 1085216615),
(182, 'https://i.etsystatic.com/13736870/r/il/b44756/3331045306/il_fullxfull.3331045306_50a1.jpg', 1085216615),
(183, 'https://i.etsystatic.com/13736870/r/il/76b8f7/3378741141/il_fullxfull.3378741141_iekl.jpg', 1085216615),
(184, 'https://i.etsystatic.com/33742672/r/il/8e41ae/3832915175/il_fullxfull.3832915175_15ow.jpg', 1195234182),
(185, 'https://i.etsystatic.com/33742672/r/il/3185c5/3785318910/il_fullxfull.3785318910_dutn.jpg', 1195234182),
(186, 'https://i.etsystatic.com/33742672/r/il/6d5561/3832915047/il_fullxfull.3832915047_4i5h.jpg', 1195234182),
(187, 'https://i.etsystatic.com/33742672/r/il/495f43/3785318934/il_fullxfull.3785318934_jbbf.jpg', 1195234182),
(188, 'https://i.etsystatic.com/33742672/r/il/002cba/3785318950/il_fullxfull.3785318950_7y60.jpg', 1195234182),
(189, 'https://i.etsystatic.com/27929254/r/il/0ed6ee/3242349022/il_fullxfull.3242349022_31g2.jpg', 1061629629),
(190, 'https://i.etsystatic.com/27929254/r/il/2de8bb/3290038137/il_fullxfull.3290038137_qwia.jpg', 1061629629),
(191, 'https://i.etsystatic.com/27929254/r/il/1cbbe7/3290037477/il_fullxfull.3290037477_hp0d.jpg', 1061629629),
(192, 'https://i.etsystatic.com/27929254/r/il/f9ec13/3290037843/il_fullxfull.3290037843_80eg.jpg', 1061629629),
(193, 'https://i.etsystatic.com/27402096/r/il/86274e/3579336813/il_fullxfull.3579336813_iq09.jpg', 1122179018),
(194, 'https://i.etsystatic.com/27402096/r/il/5018e9/3568591017/il_fullxfull.3568591017_t1gr.jpg', 1122179018),
(195, 'https://i.etsystatic.com/27402096/r/il/9b1d04/3568591015/il_fullxfull.3568591015_coln.jpg', 1122179018),
(196, 'https://i.etsystatic.com/27402096/r/il/fab4b5/3520954590/il_fullxfull.3520954590_esp4.jpg', 1122179018),
(197, 'https://i.etsystatic.com/27402096/r/il/5c6a0c/3520954620/il_fullxfull.3520954620_nr9t.jpg', 1122179018),
(198, 'https://i.etsystatic.com/29442766/r/il/be60c4/3330224088/il_fullxfull.3330224088_6cpt.jpg', 1071088518),
(199, 'https://i.etsystatic.com/29442766/r/il/348e32/3330216020/il_fullxfull.3330216020_dgd6.jpg', 1071088518),
(200, 'https://i.etsystatic.com/29442766/r/il/94ef40/3330252806/il_fullxfull.3330252806_9qow.jpg', 1071088518),
(201, 'https://i.etsystatic.com/13376748/r/il/3d45bb/3527434369/il_fullxfull.3527434369_7j4c.jpg', 965235357),
(202, 'https://i.etsystatic.com/13376748/r/il/752104/3527434565/il_fullxfull.3527434565_scpc.jpg', 965235357),
(203, 'https://i.etsystatic.com/13376748/r/il/648463/2929087437/il_fullxfull.2929087437_qaff.jpg', 965235357),
(204, 'https://i.etsystatic.com/32649722/r/il/d2c0de/3722645622/il_fullxfull.3722645622_9j95.jpg', 1133477875),
(205, 'https://i.etsystatic.com/32649722/r/il/ddbf03/3722641988/il_fullxfull.3722641988_nx65.jpg', 1133477875),
(206, 'https://i.etsystatic.com/32649722/r/il/c248b2/3770225969/il_fullxfull.3770225969_lfn9.jpg', 1133477875),
(207, 'https://i.etsystatic.com/32649722/r/il/eb4301/3722642962/il_fullxfull.3722642962_rqj5.jpg', 1133477875),
(208, 'https://i.etsystatic.com/32649722/r/il/aa812c/3770226969/il_fullxfull.3770226969_f76q.jpg', 1133477875),
(209, 'https://i.etsystatic.com/32649722/r/il/773fff/3722643904/il_fullxfull.3722643904_h21n.jpg', 1133477875),
(210, 'https://i.etsystatic.com/32649722/r/il/baa534/3722644428/il_fullxfull.3722644428_dpzr.jpg', 1133477875),
(211, 'https://i.etsystatic.com/27230778/r/il/5d8c9e/3782377187/il_fullxfull.3782377187_oidk.jpg', 956945572),
(212, 'https://i.etsystatic.com/27230778/r/il/fa3210/3774454141/il_fullxfull.3774454141_88nq.jpg', 956945572),
(213, 'https://i.etsystatic.com/27230778/r/il/aeab8b/3774456019/il_fullxfull.3774456019_4ssk.jpg', 956945572),
(214, 'https://i.etsystatic.com/27739437/r/il/97bc0d/3665537714/il_fullxfull.3665537714_kpd0.jpg', 964491916),
(215, 'https://i.etsystatic.com/27739437/r/il/ed1069/3713145239/il_fullxfull.3713145239_fvwt.jpg', 964491916),
(216, 'https://i.etsystatic.com/27739437/r/il/0ab43c/3239926469/il_fullxfull.3239926469_tof4.jpg', 964491916),
(217, 'https://i.etsystatic.com/27739437/r/il/b67c7f/3239926559/il_fullxfull.3239926559_r6gc.jpg', 964491916),
(218, 'https://i.etsystatic.com/27739437/r/il/e2b787/3239926627/il_fullxfull.3239926627_a0mh.jpg', 964491916),
(219, 'https://i.etsystatic.com/27739437/r/il/8ed006/2895218834/il_fullxfull.2895218834_r04s.jpg', 964491916),
(220, 'https://i.etsystatic.com/16739172/r/il/dd6954/3603084173/il_fullxfull.3603084173_p6cx.jpg', 1169058395),
(221, 'https://i.etsystatic.com/16739172/r/il/22fa6c/3625703032/il_fullxfull.3625703032_pm59.jpg', 1169058395),
(222, 'https://i.etsystatic.com/16739172/r/il/c30de1/3625703026/il_fullxfull.3625703026_t7gm.jpg', 1169058395),
(223, 'https://i.etsystatic.com/16739172/r/il/14b80f/3249291452/il_fullxfull.3249291452_77qz.jpg', 1169058395),
(224, 'https://i.etsystatic.com/16739172/r/il/8e8957/3249226234/il_fullxfull.3249226234_5jh4.jpg', 1169058395),
(225, 'https://i.etsystatic.com/6098802/r/il/615385/564921010/il_fullxfull.564921010_ngpz.jpg', 179544150),
(226, 'https://i.etsystatic.com/6098802/r/il/730116/564921584/il_fullxfull.564921584_8rky.jpg', 179544150),
(227, 'https://i.etsystatic.com/6098802/r/il/4f7aa4/564921726/il_fullxfull.564921726_h4xu.jpg', 179544150),
(228, 'https://i.etsystatic.com/6098802/r/il/36acfd/471566903/il_fullxfull.471566903_knxa.jpg', 179544150),
(229, 'https://i.etsystatic.com/23018851/r/il/5fcc58/3316226599/il_fullxfull.3316226599_3y58.jpg', 1068732625),
(230, 'https://i.etsystatic.com/23018851/r/il/3e632a/3316226381/il_fullxfull.3316226381_i35y.jpg', 1068732625),
(231, 'https://i.etsystatic.com/23018851/r/il/89734b/3268544444/il_fullxfull.3268544444_nuq3.jpg', 1068732625),
(232, 'https://i.etsystatic.com/23018851/r/il/1abb5d/3268544498/il_fullxfull.3268544498_ed3a.jpg', 1068732625),
(233, 'https://i.etsystatic.com/23018851/r/il/a2778e/3268544402/il_fullxfull.3268544402_hsnm.jpg', 1068732625),
(234, 'https://i.etsystatic.com/23018851/r/il/d5873b/3776487595/il_fullxfull.3776487595_4ols.jpg', 1068732625),
(235, 'https://i.etsystatic.com/23018851/r/il/a74b2f/3590651757/il_fullxfull.3590651757_rgl4.jpg', 1068732625),
(236, 'https://i.etsystatic.com/16692528/r/il/65ee67/1558361485/il_fullxfull.1558361485_a3x4.jpg', 616161609),
(237, 'https://i.etsystatic.com/16692528/r/il/15b8d6/1510897370/il_fullxfull.1510897370_tgc3.jpg', 616161609),
(238, 'https://i.etsystatic.com/16692528/r/il/dba6b3/1558361565/il_fullxfull.1558361565_byjt.jpg', 616161609),
(239, 'https://i.etsystatic.com/16692528/r/il/dd7fee/1510897478/il_fullxfull.1510897478_fuee.jpg', 616161609),
(240, 'https://i.etsystatic.com/22875668/r/il/26c3ca/3097061589/il_fullxfull.3097061589_bg2x.jpg', 1010418203),
(241, 'https://i.etsystatic.com/22875668/r/il/811fd9/3283928996/il_fullxfull.3283928996_9yta.jpg', 1010418203),
(242, 'https://i.etsystatic.com/22875668/r/il/33b928/3228014707/il_fullxfull.3228014707_avrk.jpg', 1010418203),
(243, 'https://i.etsystatic.com/22875668/r/il/94c071/3180304222/il_fullxfull.3180304222_6f46.jpg', 1010418203),
(244, 'https://i.etsystatic.com/22875668/r/il/f11afd/3180304260/il_fullxfull.3180304260_7rmb.jpg', 1010418203),
(245, 'https://i.etsystatic.com/22875668/r/il/3281fc/3180304288/il_fullxfull.3180304288_poqz.jpg', 1010418203),
(246, 'https://i.etsystatic.com/22875668/r/il/025595/3744184407/il_fullxfull.3744184407_3ifp.jpg', 1010418203),
(247, 'https://i.etsystatic.com/22875668/r/il/50e1a0/3228014867/il_fullxfull.3228014867_awje.jpg', 1010418203),
(248, 'https://i.etsystatic.com/23706829/r/il/464402/3684136835/il_fullxfull.3684136835_8xd5.jpg', 1153262267),
(249, 'https://i.etsystatic.com/23706829/r/il/d681bc/3684137059/il_fullxfull.3684137059_8hzt.jpg', 1153262267),
(250, 'https://i.etsystatic.com/23706829/r/il/814831/3570573160/il_fullxfull.3570573160_96uh.jpg', 1153262267),
(251, 'https://i.etsystatic.com/18581688/r/il/59976d/3786681752/il_fullxfull.3786681752_owur.jpg', 1195609916),
(252, 'https://i.etsystatic.com/18581688/r/il/b2196e/3786683320/il_fullxfull.3786683320_r0dl.jpg', 1195609916),
(253, 'https://i.etsystatic.com/18581688/r/il/e2dd54/3834281439/il_fullxfull.3834281439_rzms.jpg', 1195609916),
(254, 'https://i.etsystatic.com/18581688/r/il/d24735/3834282219/il_fullxfull.3834282219_dknh.jpg', 1195609916),
(255, 'https://i.etsystatic.com/18581688/r/il/5d3ba9/3786684082/il_fullxfull.3786684082_k7ht.jpg', 1195609916),
(256, 'https://i.etsystatic.com/18581688/r/il/8dd26b/3834281975/il_fullxfull.3834281975_e25l.jpg', 1195609916),
(257, 'https://i.etsystatic.com/18581688/r/il/3554e6/3741613540/il_fullxfull.3741613540_ls88.jpg', 1195609916),
(258, 'https://i.etsystatic.com/18581688/r/il/732cbd/3789201769/il_fullxfull.3789201769_cofd.jpg', 1195609916),
(259, 'https://i.etsystatic.com/18581688/r/il/3a854c/3741614418/il_fullxfull.3741614418_4y1g.jpg', 1195609916),
(260, 'https://i.etsystatic.com/18581688/r/il/4f5516/3741614722/il_fullxfull.3741614722_jgs2.jpg', 1195609916),
(261, 'https://i.etsystatic.com/28437765/r/il/c2911d/3429697555/il_fullxfull.3429697555_eqrk.jpg', 1084536634),
(262, 'https://i.etsystatic.com/28437765/r/il/32e93f/3388299854/il_fullxfull.3388299854_cul0.jpg', 1084536634),
(263, 'https://i.etsystatic.com/28437765/r/il/1a4714/3382025854/il_fullxfull.3382025854_b10j.jpg', 1084536634),
(264, 'https://i.etsystatic.com/28437765/r/il/dc8192/3382025628/il_fullxfull.3382025628_tbg8.jpg', 1084536634),
(265, 'https://i.etsystatic.com/28437765/r/il/f6e1fa/3382025638/il_fullxfull.3382025638_kugq.jpg', 1084536634),
(266, 'https://i.etsystatic.com/28437765/r/il/dafc5b/3429697851/il_fullxfull.3429697851_5jua.jpg', 1084536634),
(267, 'https://i.etsystatic.com/28437765/r/il/54a34e/3382026010/il_fullxfull.3382026010_5aiz.jpg', 1084536634),
(268, 'https://i.etsystatic.com/28437765/r/il/f27fcf/3382026064/il_fullxfull.3382026064_1io6.jpg', 1084536634),
(269, 'https://i.etsystatic.com/28437765/r/il/f34b49/3429698087/il_fullxfull.3429698087_4xzd.jpg', 1084536634),
(270, 'https://i.etsystatic.com/28437765/r/il/19cad2/3429698127/il_fullxfull.3429698127_jea5.jpg', 1084536634),
(271, 'https://i.etsystatic.com/28547998/r/il/d0ba9f/3505917747/il_fullxfull.3505917747_8mvd.jpg', 1061151451),
(272, 'https://i.etsystatic.com/28547998/r/il/e7d65f/3505909049/il_fullxfull.3505909049_sxr5.jpg', 1061151451),
(273, 'https://i.etsystatic.com/28547998/r/il/1e9c0c/3505917757/il_fullxfull.3505917757_jkat.jpg', 1061151451),
(274, 'https://i.etsystatic.com/5400716/r/il/a995cb/2990762299/il_fullxfull.2990762299_65bs.jpg', 981366081),
(275, 'https://i.etsystatic.com/5400716/r/il/8b94c1/2990762233/il_fullxfull.2990762233_g85i.jpg', 981366081),
(276, 'https://i.etsystatic.com/5400716/r/il/927cbe/2943065398/il_fullxfull.2943065398_2pna.jpg', 981366081),
(277, 'https://i.etsystatic.com/5400716/r/il/c9080a/2990762069/il_fullxfull.2990762069_4fa9.jpg', 981366081),
(278, 'https://i.etsystatic.com/5894700/r/il/1abfba/3738199964/il_fullxfull.3738199964_n34f.jpg', 1196902639),
(279, 'https://i.etsystatic.com/5894700/r/il/c48b57/3785788421/il_fullxfull.3785788421_iixq.jpg', 1196902639),
(280, 'https://i.etsystatic.com/5894700/r/il/bac7ef/3785788493/il_fullxfull.3785788493_ps9b.jpg', 1196902639),
(281, 'https://i.etsystatic.com/5894700/r/il/cd496b/3738198984/il_fullxfull.3738198984_tbgy.jpg', 1196902639),
(282, 'https://i.etsystatic.com/5894700/r/il/6224f2/3785788411/il_fullxfull.3785788411_4mco.jpg', 1196902639),
(283, 'https://i.etsystatic.com/5894700/r/il/dd030e/3738197258/il_fullxfull.3738197258_4ddi.jpg', 1196902639),
(284, 'https://i.etsystatic.com/5894700/r/il/4a8e2c/3738197590/il_fullxfull.3738197590_jlo9.jpg', 1196902639),
(285, 'https://i.etsystatic.com/22446470/r/il/24b2c9/3849423945/il_fullxfull.3849423945_79j5.jpg', 1213572657),
(286, 'https://i.etsystatic.com/22446470/r/il/12fbd7/3849423997/il_fullxfull.3849423997_inx1.jpg', 1213572657),
(287, 'https://i.etsystatic.com/22446470/r/il/75134e/3849424017/il_fullxfull.3849424017_43wm.jpg', 1213572657),
(288, 'https://i.etsystatic.com/22446470/r/il/9c0004/3849423959/il_fullxfull.3849423959_o6sp.jpg', 1213572657),
(289, 'https://i.etsystatic.com/21346268/r/il/6e0766/3796822612/il_fullxfull.3796822612_scnt.jpg', 1197714220),
(290, 'https://i.etsystatic.com/21346268/r/il/aa3833/3844363373/il_fullxfull.3844363373_hbuk.jpg', 1197714220),
(291, 'https://i.etsystatic.com/21346268/r/il/4303e8/3844377509/il_fullxfull.3844377509_14hm.jpg', 1197714220),
(292, 'https://i.etsystatic.com/21346268/r/il/109d90/3352271429/il_fullxfull.3352271429_kxya.jpg', 1197714220),
(293, 'https://i.etsystatic.com/21346268/r/il/6fdfc7/3796822738/il_fullxfull.3796822738_ior5.jpg', 1197714220),
(294, 'https://i.etsystatic.com/21346268/r/il/a7639a/3844363511/il_fullxfull.3844363511_9oq8.jpg', 1197714220),
(295, 'https://i.etsystatic.com/21346268/r/il/4e7dd5/3845458679/il_fullxfull.3845458679_taoj.jpg', 1197714220),
(296, 'https://i.etsystatic.com/15510015/r/il/93028f/3172723301/il_fullxfull.3172723301_9md2.jpg', 1030577939),
(297, 'https://i.etsystatic.com/15510015/r/il/e0516e/2329437796/il_fullxfull.2329437796_f3s3.jpg', 1030577939),
(298, 'https://i.etsystatic.com/15510015/r/il/7fbd0c/2346102366/il_fullxfull.2346102366_i02z.jpg', 1030577939);

-- --------------------------------------------------------

--
-- Table structure for table `DRIVER_POINTS`
--

CREATE TABLE `DRIVER_POINTS` (
  `DPointID` int NOT NULL,
  `uID` int DEFAULT NULL,
  `totalPoints` int NOT NULL,
  `sponsorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DRIVER_POINTS`
--

INSERT INTO `DRIVER_POINTS` (`DPointID`, `uID`, `totalPoints`, `sponsorID`) VALUES
(21, 2, 5907, 2),
(22, 9, 3923, 2),
(23, 10, 1, 2),
(24, 12, 10, 2),
(25, 9, 3555, 1),
(26, 11, 11, 1),
(27, 10, -6, 1),
(28, 14, -4097, 2),
(30, 59, 9314, 2),
(31, 60, 2147478193, 11),
(32, 71, 111, 2),
(35, 80, 10000, 2),
(36, 80, 17972, 1);

-- --------------------------------------------------------

--
-- Table structure for table `LOCKOUT`
--

CREATE TABLE `LOCKOUT` (
  `lockID` int NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `attempts` int DEFAULT '0',
  `lock_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `LOCKOUT`
--

INSERT INTO `LOCKOUT` (`lockID`, `username`, `attempts`, `lock_time`) VALUES
(1, 'username1', 0, '3/7/2022, 3:11:40 PM');

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN_ATTEMPTS`
--

CREATE TABLE `LOGIN_ATTEMPTS` (
  `loginsID` int NOT NULL,
  `date` varchar(25) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `success` int NOT NULL,
  `uID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `LOGIN_ATTEMPTS`
--

INSERT INTO `LOGIN_ATTEMPTS` (`loginsID`, `date`, `username`, `success`, `uID`) VALUES
(1, '0000-00-00 00:00:00', 'admin', 0, NULL),
(2, '0000-00-00 00:00:00', 'driver', 0, NULL),
(3, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(4, '0000-00-00 00:00:00', 'admin', 1, NULL),
(5, '0000-00-00 00:00:00', 'egg', 0, NULL),
(6, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(8, '0000-00-00 00:00:00', 'admin', 1, NULL),
(9, '0000-00-00 00:00:00', 'driver3', 0, NULL),
(10, '0000-00-00 00:00:00', 'test', 0, NULL),
(11, '0000-00-00 00:00:00', 'admin', 1, NULL),
(13, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(14, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(18, '0000-00-00 00:00:00', 'deploymenttestuser', 0, NULL),
(20, '0000-00-00 00:00:00', 'test', 0, NULL),
(21, '0000-00-00 00:00:00', 'admin', 0, NULL),
(22, '0000-00-00 00:00:00', 'admin', 0, NULL),
(23, '0000-00-00 00:00:00', 'abmin', 0, NULL),
(24, '0000-00-00 00:00:00', 'admin', 1, NULL),
(27, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(28, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(29, '0000-00-00 00:00:00', 'driver@email.net', 1, NULL),
(32, '0000-00-00 00:00:00', 'driver', 1, NULL),
(33, '0000-00-00 00:00:00', 'driver', 1, NULL),
(34, '0000-00-00 00:00:00', 'driver', 1, NULL),
(35, '0000-00-00 00:00:00', 'driver', 1, NULL),
(36, '0000-00-00 00:00:00', 'admin', 1, NULL),
(37, '0000-00-00 00:00:00', 'driver', 1, NULL),
(38, '0000-00-00 00:00:00', 'admin', 1, NULL),
(39, '0000-00-00 00:00:00', 'admin', 1, NULL),
(40, '0000-00-00 00:00:00', 'admin', 1, NULL),
(41, '0000-00-00 00:00:00', 'admin', 1, NULL),
(42, '0000-00-00 00:00:00', 'admin', 1, NULL),
(43, '0000-00-00 00:00:00', 'admin', 1, NULL),
(44, '0000-00-00 00:00:00', 'admin', 1, NULL),
(45, '0000-00-00 00:00:00', 'admin', 1, NULL),
(46, '0000-00-00 00:00:00', 'driver', 1, NULL),
(47, '0000-00-00 00:00:00', 'admin', 0, NULL),
(48, '0000-00-00 00:00:00', 'admin', 1, NULL),
(49, '0000-00-00 00:00:00', 'admin', 1, NULL),
(50, '0000-00-00 00:00:00', 'admin', 1, NULL),
(51, '0000-00-00 00:00:00', 'driver', 1, NULL),
(54, '0000-00-00 00:00:00', 'admin', 1, NULL),
(55, '0000-00-00 00:00:00', 'admin', 1, NULL),
(56, '0000-00-00 00:00:00', 'admin', 1, NULL),
(57, '0000-00-00 00:00:00', 'driver', 1, NULL),
(58, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(59, '0000-00-00 00:00:00', 'admin', 1, NULL),
(60, '0000-00-00 00:00:00', 'admin', 1, NULL),
(61, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(62, '0000-00-00 00:00:00', 'driver', 1, NULL),
(63, '0000-00-00 00:00:00', 'admin', 1, NULL),
(64, '0000-00-00 00:00:00', 'sponsor', 0, NULL),
(65, '0000-00-00 00:00:00', 'sponsor', 0, NULL),
(66, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(67, '0000-00-00 00:00:00', 'driver', 0, NULL),
(68, '0000-00-00 00:00:00', 'driver', 1, NULL),
(69, '0000-00-00 00:00:00', 'admin', 0, NULL),
(70, '0000-00-00 00:00:00', 'admin', 1, NULL),
(71, '0000-00-00 00:00:00', 'walmarte', 0, NULL),
(72, '0000-00-00 00:00:00', 'walmarte', 0, NULL),
(73, '0000-00-00 00:00:00', 'walmarte', 0, NULL),
(74, '0000-00-00 00:00:00', 'walmarte', 0, NULL),
(75, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(76, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(77, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(78, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(79, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(80, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(81, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(82, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(83, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(84, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(85, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(86, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(87, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(88, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(89, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(90, '0000-00-00 00:00:00', '', 0, NULL),
(91, '0000-00-00 00:00:00', '', 0, NULL),
(92, '0000-00-00 00:00:00', '', 0, NULL),
(93, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(94, '0000-00-00 00:00:00', 's', 0, NULL),
(95, '0000-00-00 00:00:00', 'walmarte', 0, NULL),
(96, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(97, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(98, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(99, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(100, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(101, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(104, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(107, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(108, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(109, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(110, '0000-00-00 00:00:00', 'sponsor', 0, NULL),
(111, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(112, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(113, '0000-00-00 00:00:00', 'dhd', 0, NULL),
(114, '0000-00-00 00:00:00', 'admin', 0, NULL),
(115, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(116, '0000-00-00 00:00:00', 'driver1', 0, NULL),
(117, '0000-00-00 00:00:00', 'driver12', 0, NULL),
(118, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(119, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(120, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(121, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(122, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(123, '0000-00-00 00:00:00', 'mail@mail.net', 0, NULL),
(124, '0000-00-00 00:00:00', 'mail@mail.net', 0, NULL),
(125, '0000-00-00 00:00:00', 'mail@mail.net', 0, NULL),
(126, '0000-00-00 00:00:00', 'mail@mail.net', 0, NULL),
(127, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(128, '0000-00-00 00:00:00', 'sponsor@emai.net', 0, NULL),
(129, '0000-00-00 00:00:00', 'driver1@email.net', 0, NULL),
(130, '0000-00-00 00:00:00', 'sponsor@email.net', 0, NULL),
(131, '0000-00-00 00:00:00', 'sponsor@email.net', 0, NULL),
(132, '0000-00-00 00:00:00', 'sponsor@email.net', 0, NULL),
(133, '0000-00-00 00:00:00', 'sponsor@email.net', 0, NULL),
(134, '0000-00-00 00:00:00', 'amazone@email.net', 0, NULL),
(135, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(136, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(137, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(138, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(139, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(140, '0000-00-00 00:00:00', 'driver@email.net', 1, NULL),
(142, '0000-00-00 00:00:00', 'amazone@emai.net', 0, NULL),
(143, '0000-00-00 00:00:00', 'amazone@emai.net', 0, NULL),
(144, '0000-00-00 00:00:00', 'amazone@emai.net', 0, NULL),
(145, '0000-00-00 00:00:00', 'amazone@email.net', 0, NULL),
(146, '0000-00-00 00:00:00', 'amazone@email.net', 0, NULL),
(147, '0000-00-00 00:00:00', 'amazone@email.net', 0, NULL),
(150, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(151, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(152, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(153, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(154, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(155, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(156, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(157, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(158, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(159, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(160, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(161, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(162, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(163, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(164, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(165, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(166, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(167, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(168, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(169, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(170, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(171, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(172, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(173, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(174, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(175, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(176, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(177, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(178, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(179, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(180, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(181, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(182, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(183, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(184, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(185, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(186, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(187, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(188, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(189, '0000-00-00 00:00:00', 'driver1', 0, NULL),
(190, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(191, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(192, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(193, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(194, '0000-00-00 00:00:00', 'driver2', 1, NULL),
(195, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(196, '0000-00-00 00:00:00', 'walmarte', 1, NULL),
(197, '0000-00-00 00:00:00', 'Driver1', 1, NULL),
(198, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(199, '0000-00-00 00:00:00', 'madlads4910@gmail.com', 0, NULL),
(200, '0000-00-00 00:00:00', 'madlads4910', 0, NULL),
(201, '0000-00-00 00:00:00', 'madlads4910', 0, NULL),
(202, '0000-00-00 00:00:00', 'driver', 1, NULL),
(203, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(204, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(205, '0000-00-00 00:00:00', 'Sponsor', 1, NULL),
(206, '0000-00-00 00:00:00', 'driver', 1, NULL),
(207, '0000-00-00 00:00:00', 'driver', 1, NULL),
(209, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(210, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(211, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(212, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(213, '0000-00-00 00:00:00', 'driver1', 1, NULL),
(219, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(220, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(221, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(224, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(239, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(261, '0000-00-00 00:00:00', 'driver@email.net', 0, NULL),
(264, '0000-00-00 00:00:00', 'driver@email.net', 1, NULL),
(265, '0000-00-00 00:00:00', 'driver', 1, NULL),
(280, '0000-00-00 00:00:00', 'driver', 1, NULL),
(281, '0000-00-00 00:00:00', 'driver@email.net', 1, NULL),
(284, '0000-00-00 00:00:00', 'driver', 1, NULL),
(285, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(286, '0000-00-00 00:00:00', 'driver', 1, NULL),
(287, '0000-00-00 00:00:00', 'admin8', 1, NULL),
(294, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(295, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(296, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(297, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(298, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(299, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(300, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(301, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(302, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(303, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(304, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(305, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(306, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(307, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(308, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(309, '0000-00-00 00:00:00', 'sponsor', 1, NULL),
(311, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(312, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(314, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(316, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(319, '0000-00-00 00:00:00', 'testusername', 0, NULL),
(320, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(321, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(322, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(323, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(324, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(325, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(326, '0000-00-00 00:00:00', 'amazone', 1, NULL),
(327, '0000-00-00 00:00:00', 'driver', 1, -1),
(328, '0000-00-00 00:00:00', 'driver', 1, -1),
(329, '0000-00-00 00:00:00', 'driver', 1, -1),
(330, '0000-00-00 00:00:00', 'driver', 1, 2),
(331, '0000-00-00 00:00:00', 'driver', 1, 2),
(333, '0000-00-00 00:00:00', 'ducks', 0, -1),
(336, '0000-00-00 00:00:00', 'driver2', 1, 10),
(337, '0000-00-00 00:00:00', 'ecanous', 1, NULL),
(342, '0000-00-00 00:00:00', 'admin', 1, 4),
(343, '0000-00-00 00:00:00', 'amazone', 1, 14),
(344, '0000-00-00 00:00:00', 'admin', 1, 4),
(345, '0000-00-00 00:00:00', 'admin', 1, 4),
(346, '0000-00-00 00:00:00', 'admin', 1, 4),
(347, '0000-00-00 00:00:00', 'admin', 1, 4),
(348, '0000-00-00 00:00:00', 'admin', 1, 4),
(349, '0000-00-00 00:00:00', 'admin', 1, 4),
(350, '0000-00-00 00:00:00', 'admin', 1, 4),
(351, '0000-00-00 00:00:00', 'admin', 1, 4),
(352, '0000-00-00 00:00:00', 'admin', 1, 4),
(353, '0000-00-00 00:00:00', 'admin', 1, 4),
(354, '0000-00-00 00:00:00', 'admin', 1, 4),
(355, '0000-00-00 00:00:00', 'admin', 1, 4),
(356, '0000-00-00 00:00:00', 'driver1', 0, -1),
(357, '0000-00-00 00:00:00', 'admin', 1, 4),
(358, '0000-00-00 00:00:00', 'driver1', 1, 9),
(361, '0000-00-00 00:00:00', 'driver1', 1, 9),
(362, '0000-00-00 00:00:00', 'driver1', 1, 9),
(363, '0000-00-00 00:00:00', 'driver1', 1, 9),
(364, '0000-00-00 00:00:00', 'driver1', 1, 9),
(365, '0000-00-00 00:00:00', 'driver1', 1, 9),
(366, '0000-00-00 00:00:00', 'driver1', 1, 9),
(367, '0000-00-00 00:00:00', 'driver1', 1, 9),
(368, '0000-00-00 00:00:00', 'driver1', 1, 9),
(369, '0000-00-00 00:00:00', 'driver1', 1, 9),
(370, '0000-00-00 00:00:00', 'driver1', 1, 9),
(371, '0000-00-00 00:00:00', 'driver1', 1, 9),
(372, '0000-00-00 00:00:00', 'driver1', 1, 9),
(373, '0000-00-00 00:00:00', 'driver1', 1, 9),
(374, '0000-00-00 00:00:00', 'driver1', 1, 9),
(375, '0000-00-00 00:00:00', 'driver1', 1, 9),
(376, '0000-00-00 00:00:00', 'driver1', 1, 9),
(377, '0000-00-00 00:00:00', 'driver1', 1, 9),
(378, '0000-00-00 00:00:00', 'driver1', 1, 9),
(379, '0000-00-00 00:00:00', 'driver1', 1, 9),
(380, '0000-00-00 00:00:00', 'driver1', 1, 9),
(381, '0000-00-00 00:00:00', 'driver1', 1, 9),
(382, '0000-00-00 00:00:00', 'driver1', 1, 9),
(383, '0000-00-00 00:00:00', 'driver1', 1, 9),
(384, '0000-00-00 00:00:00', 'driver1', 1, 9),
(385, '0000-00-00 00:00:00', 'admin', 1, 4),
(386, '0000-00-00 00:00:00', 'admin', 1, 4),
(387, '0000-00-00 00:00:00', 'admin', 1, 4),
(388, '0000-00-00 00:00:00', 'driver1', 1, 9),
(389, '0000-00-00 00:00:00', 'admin', 1, 4),
(390, '0000-00-00 00:00:00', 'amazone', 1, 14),
(391, '0000-00-00 00:00:00', 'driver', 0, NULL),
(392, '0000-00-00 00:00:00', 'driver', 1, NULL),
(393, '0000-00-00 00:00:00', 'amazone', 1, 14),
(394, '0000-00-00 00:00:00', 'driver1', 1, 9),
(395, '0000-00-00 00:00:00', 'driver', 1, 2),
(396, '0000-00-00 00:00:00', 'admin', 1, 4),
(397, '0000-00-00 00:00:00', 'admin', 1, 4),
(398, '0000-00-00 00:00:00', 'admin', 1, 4),
(399, '0000-00-00 00:00:00', 'admin', 1, 4),
(400, '0000-00-00 00:00:00', 'admin', 1, 4),
(401, '0000-00-00 00:00:00', 'admin', 1, 4),
(402, '0000-00-00 00:00:00', 'admin', 1, 4),
(403, '0000-00-00 00:00:00', 'admin', 1, 4),
(404, '0000-00-00 00:00:00', 'admin', 1, 4),
(405, '0000-00-00 00:00:00', 'admin', 1, 4),
(406, '0000-00-00 00:00:00', 'admin', 1, 4),
(407, '0000-00-00 00:00:00', 'admin', 1, 4),
(408, '0000-00-00 00:00:00', 'admin', 1, 4),
(409, '0000-00-00 00:00:00', 'admin', 1, 4),
(410, '0000-00-00 00:00:00', 'admin', 1, 4),
(411, '0000-00-00 00:00:00', 'admin', 1, 4),
(412, '0000-00-00 00:00:00', 'admin', 1, 4),
(413, '0000-00-00 00:00:00', 'admin', 1, 4),
(414, '0000-00-00 00:00:00', 'driver1', 1, 9),
(415, '0000-00-00 00:00:00', 'admin', 1, 4),
(416, '0000-00-00 00:00:00', 'admin', 1, 4),
(417, '0000-00-00 00:00:00', 'admin', 1, 4),
(418, '0000-00-00 00:00:00', 'admin', 1, 4),
(419, '0000-00-00 00:00:00', 'admin', 1, 4),
(420, '0000-00-00 00:00:00', 'admin', 1, 4),
(421, '0000-00-00 00:00:00', 'admin', 1, 4),
(422, '0000-00-00 00:00:00', 'admin', 1, 4),
(423, '0000-00-00 00:00:00', 'admin', 1, 4),
(424, '0000-00-00 00:00:00', 'admin', 1, 4),
(425, '0000-00-00 00:00:00', 'dtest', 1, 33),
(426, '0000-00-00 00:00:00', 'admin', 1, 4),
(427, '0000-00-00 00:00:00', 'admin', 1, 4),
(428, '0000-00-00 00:00:00', 'admin', 1, 4),
(429, '0000-00-00 00:00:00', 'dnarula', 1, 35),
(430, '0000-00-00 00:00:00', 'admin', 1, 4),
(431, '0000-00-00 00:00:00', 'dnarula', 1, 36),
(432, '0000-00-00 00:00:00', 'admin', 1, 4),
(433, '0000-00-00 00:00:00', 'admin', 1, 4),
(436, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(437, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(438, '0000-00-00 00:00:00', 'amazone', 1, 14),
(439, '0000-00-00 00:00:00', 'amazone', 1, 14),
(440, '0000-00-00 00:00:00', 'driver', 1, 2),
(442, '0000-00-00 00:00:00', 'amazone', 1, 14),
(443, '0000-00-00 00:00:00', 'driver1', 1, 9),
(444, '0000-00-00 00:00:00', 'admin', 1, 4),
(445, '0000-00-00 00:00:00', 'driver1', 1, 9),
(446, '0000-00-00 00:00:00', 'amazone', 1, 14),
(447, '0000-00-00 00:00:00', 'admin', 1, 4),
(448, '0000-00-00 00:00:00', 'driver1', 1, 9),
(449, '0000-00-00 00:00:00', 'admin', 1, 4),
(450, '0000-00-00 00:00:00', 'amazone', 1, 14),
(451, '0000-00-00 00:00:00', 'driver1', 1, 9),
(452, '0000-00-00 00:00:00', 'amazone', 1, 14),
(453, '0000-00-00 00:00:00', 'admin', 1, 4),
(454, '0000-00-00 00:00:00', 'driver1', 1, 9),
(455, '0000-00-00 00:00:00', 'admin', 1, 4),
(456, '0000-00-00 00:00:00', 'amazone', 1, 14),
(457, '0000-00-00 00:00:00', 'amazone', 1, 14),
(458, '0000-00-00 00:00:00', 'driver1', 1, 9),
(459, '0000-00-00 00:00:00', 'admin', 1, 4),
(460, '0000-00-00 00:00:00', 'driver1', 1, 9),
(461, '0000-00-00 00:00:00', 'admin', 1, 4),
(462, '0000-00-00 00:00:00', 'admin', 1, 4),
(463, '0000-00-00 00:00:00', 'admin', 1, 4),
(464, '0000-00-00 00:00:00', 'admin', 1, 4),
(465, '0000-00-00 00:00:00', 'admin', 1, 4),
(466, '0000-00-00 00:00:00', 'admin', 1, 4),
(467, '0000-00-00 00:00:00', 'driver1', 1, 9),
(468, '0000-00-00 00:00:00', 'amazone', 1, 14),
(469, '0000-00-00 00:00:00', 'amazone', 1, 14),
(470, '0000-00-00 00:00:00', 'admin', 1, 4),
(471, '0000-00-00 00:00:00', 'admin', 1, 4),
(472, '0000-00-00 00:00:00', 'amazone', 1, 14),
(473, '0000-00-00 00:00:00', 'admin', 1, 4),
(474, '0000-00-00 00:00:00', 'admin', 1, 4),
(475, '0000-00-00 00:00:00', 'amazone', 1, 14),
(476, '0000-00-00 00:00:00', 'amazone', 1, 14),
(477, '0000-00-00 00:00:00', 'admin', 1, 4),
(478, '0000-00-00 00:00:00', 'amazone', 1, 14),
(479, '0000-00-00 00:00:00', 'driver1', 1, 9),
(480, '0000-00-00 00:00:00', 'admin', 1, 4),
(481, '0000-00-00 00:00:00', 'amazone', 1, 14),
(482, '0000-00-00 00:00:00', 'driver1', 1, 9),
(485, '0000-00-00 00:00:00', 'admin', 1, 4),
(486, '0000-00-00 00:00:00', 'driver', 1, 2),
(487, '0000-00-00 00:00:00', 'amazone', 1, 14),
(488, '0000-00-00 00:00:00', 'driver1', 1, 9),
(489, '0000-00-00 00:00:00', 'driver', 1, 2),
(492, '0000-00-00 00:00:00', 'driver', 1, 2),
(494, '0000-00-00 00:00:00', 'driver', 1, 2),
(497, '0000-00-00 00:00:00', 'driver1', 1, 9),
(498, '0000-00-00 00:00:00', 'driver', 1, 2),
(499, '0000-00-00 00:00:00', 'amazone', 1, 14),
(500, '0000-00-00 00:00:00', 'driver', 1, 2),
(501, '0000-00-00 00:00:00', 'admin', 1, 4),
(502, '0000-00-00 00:00:00', 'driver', 1, 2),
(503, '0000-00-00 00:00:00', 'sponsor', 1, 3),
(504, '0000-00-00 00:00:00', 'admin', 1, 4),
(505, '0000-00-00 00:00:00', 'admin', 1, 4),
(506, '0000-00-00 00:00:00', 'admin', 1, 4),
(507, '0000-00-00 00:00:00', 'admin', 1, 4),
(510, '0000-00-00 00:00:00', 'driver1', 1, 9),
(511, '0000-00-00 00:00:00', 'driver1', 1, 9),
(512, '0000-00-00 00:00:00', 'driver1', 1, 9),
(513, '0000-00-00 00:00:00', 'driver1', 1, 9),
(514, '0000-00-00 00:00:00', 'driver1', 1, 9),
(515, '0000-00-00 00:00:00', 'driver1', 1, 9),
(516, '0000-00-00 00:00:00', 'driver1', 1, 9),
(517, '0000-00-00 00:00:00', 'driver1', 1, 9),
(518, '0000-00-00 00:00:00', 'driver1', 1, 9),
(519, '0000-00-00 00:00:00', 'driver1', 1, 9),
(520, '0000-00-00 00:00:00', 'driver1', 1, 9),
(521, '0000-00-00 00:00:00', 'driver1', 1, 9),
(522, '0000-00-00 00:00:00', 'driver1', 1, 9),
(523, '0000-00-00 00:00:00', 'driver1', 1, 9),
(524, '0000-00-00 00:00:00', 'driver1', 1, 9),
(525, '0000-00-00 00:00:00', 'admin', 1, 4),
(526, '0000-00-00 00:00:00', 'driver1', 1, 9),
(527, '0000-00-00 00:00:00', 'driver1', 1, 9),
(528, '0000-00-00 00:00:00', 'driver1', 1, 9),
(529, '0000-00-00 00:00:00', 'driver1', 1, 9),
(530, '0000-00-00 00:00:00', 'driver1', 1, 9),
(531, '0000-00-00 00:00:00', 'admin', 1, 4),
(532, '0000-00-00 00:00:00', 'driver1', 1, 9),
(533, '0000-00-00 00:00:00', 'driver1', 1, 9),
(534, '0000-00-00 00:00:00', 'driver1', 1, 9),
(535, '0000-00-00 00:00:00', 'driver1', 1, 9),
(536, '0000-00-00 00:00:00', 'driver1', 1, 9),
(537, '0000-00-00 00:00:00', 'driver1', 1, 9),
(538, '0000-00-00 00:00:00', 'driver1', 1, 9),
(539, '0000-00-00 00:00:00', 'driver1', 1, 9),
(540, '0000-00-00 00:00:00', 'driver1', 1, 9),
(541, '0000-00-00 00:00:00', 'driver1', 1, 9),
(542, '0000-00-00 00:00:00', 'drivver1', 0, -1),
(543, '0000-00-00 00:00:00', 'driver1', 1, 9),
(544, '0000-00-00 00:00:00', 'driver1', 1, 9),
(545, '0000-00-00 00:00:00', 'driver1', 1, 9),
(546, '0000-00-00 00:00:00', 'driver1', 1, 9),
(547, '0000-00-00 00:00:00', 'driver1', 1, 9),
(548, '0000-00-00 00:00:00', 'amazone', 1, 14),
(549, '0000-00-00 00:00:00', 'driver1', 1, 9),
(550, '0000-00-00 00:00:00', 'driver1', 1, 9),
(551, '0000-00-00 00:00:00', 'driver1', 1, 9),
(552, '0000-00-00 00:00:00', 'driver1', 1, 9),
(553, '0000-00-00 00:00:00', 'driver1', 1, 9),
(554, '0000-00-00 00:00:00', 'driver1', 1, 9),
(555, '0000-00-00 00:00:00', 'driver1', 1, 9),
(556, '0000-00-00 00:00:00', 'driver1', 1, 9),
(557, '0000-00-00 00:00:00', 'admin', 1, 4),
(558, '0000-00-00 00:00:00', 'driver1', 1, 9),
(559, '0000-00-00 00:00:00', 'driver1', 1, 9),
(560, '0000-00-00 00:00:00', 'driver1', 1, 9),
(561, '0000-00-00 00:00:00', 'driver1', 1, 9),
(562, '0000-00-00 00:00:00', 'driver1', 1, 9),
(563, '0000-00-00 00:00:00', 'driver1', 1, 9),
(564, '0000-00-00 00:00:00', 'driver1', 1, 9),
(565, '0000-00-00 00:00:00', 'driver1', 1, 9),
(566, '0000-00-00 00:00:00', 'driver1', 1, 9),
(567, '0000-00-00 00:00:00', 'driver1', 1, 9),
(568, '0000-00-00 00:00:00', 'driver1', 1, 9),
(569, '0000-00-00 00:00:00', 'driver1', 1, 9),
(570, '0000-00-00 00:00:00', 'driver1', 1, 9),
(571, '0000-00-00 00:00:00', 'driver1', 1, 9),
(572, '0000-00-00 00:00:00', 'driver1', 1, 9),
(573, '0000-00-00 00:00:00', 'driver1', 1, 9),
(574, '0000-00-00 00:00:00', 'admin', 1, 4),
(575, '0000-00-00 00:00:00', 'driver1', 1, 9),
(576, '0000-00-00 00:00:00', 'driver1', 1, 9),
(577, '0000-00-00 00:00:00', 'driver1', 1, 9),
(578, '0000-00-00 00:00:00', 'driver1', 1, 9),
(579, '0000-00-00 00:00:00', 'driver1', 1, 9),
(580, '0000-00-00 00:00:00', 'driver1', 1, 9),
(581, '0000-00-00 00:00:00', 'admin', 1, 4),
(582, '0000-00-00 00:00:00', 'admin', 1, 4),
(583, '0000-00-00 00:00:00', 'admin', 1, 4),
(584, '0000-00-00 00:00:00', 'driver', 1, 2),
(585, '0000-00-00 00:00:00', 'admin', 1, 4),
(586, '0000-00-00 00:00:00', 'driver', 1, 2),
(587, '0000-00-00 00:00:00', 'admin', 1, 4),
(588, '0000-00-00 00:00:00', 'sponsor', 1, 3),
(589, '0000-00-00 00:00:00', 'driver', 1, 2),
(590, '0000-00-00 00:00:00', 'driver1', 1, 9),
(591, '0000-00-00 00:00:00', 'sponsor1', 0, -1),
(592, '0000-00-00 00:00:00', 'admin', 1, 4),
(593, '0000-00-00 00:00:00', 'driver1', 1, 9),
(594, '0000-00-00 00:00:00', 'driver1', 1, 9),
(595, '0000-00-00 00:00:00', 'admin', 1, 4),
(596, '0000-00-00 00:00:00', 'driver1', 1, 9),
(597, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(598, '0000-00-00 00:00:00', 'driver1', 1, 9),
(599, '0000-00-00 00:00:00', 'driver1', 1, 9),
(600, '0000-00-00 00:00:00', 'driver1', 1, 9),
(601, '0000-00-00 00:00:00', 'driver1', 1, 9),
(602, '0000-00-00 00:00:00', 'driver1', 1, 9),
(603, '0000-00-00 00:00:00', 'driver1', 1, 9),
(604, '0000-00-00 00:00:00', 'driver1', 1, 9),
(605, '0000-00-00 00:00:00', 'driver1', 1, 9),
(606, '0000-00-00 00:00:00', 'driver1', 1, 9),
(607, '0000-00-00 00:00:00', 'driver1', 1, 9),
(608, '0000-00-00 00:00:00', 'driver1', 1, 9),
(609, '0000-00-00 00:00:00', 'driver1', 1, 9),
(610, '0000-00-00 00:00:00', 'driver1', 1, 9),
(611, '0000-00-00 00:00:00', 'driver1', 1, 9),
(612, '0000-00-00 00:00:00', 'driver1', 1, 9),
(613, '0000-00-00 00:00:00', 'driver1', 1, 9),
(614, '0000-00-00 00:00:00', 'driver1', 1, 9),
(615, '0000-00-00 00:00:00', 'driver1', 1, 9),
(616, '0000-00-00 00:00:00', 'driver1', 1, 9),
(617, '0000-00-00 00:00:00', 'amazone', 1, 14),
(618, '0000-00-00 00:00:00', 'driver1', 1, 9),
(619, '0000-00-00 00:00:00', 'driver1', 1, 9),
(620, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(621, '0000-00-00 00:00:00', 'driver1', 1, 9),
(622, '0000-00-00 00:00:00', 'driver1', 1, 9),
(623, '0000-00-00 00:00:00', 'driver1', 1, 9),
(624, '0000-00-00 00:00:00', 'driver1', 1, 9),
(625, '0000-00-00 00:00:00', 'driver1', 1, 9),
(626, '0000-00-00 00:00:00', 'driver1', 1, 9),
(627, '0000-00-00 00:00:00', 'driver1', 1, 9),
(628, '0000-00-00 00:00:00', 'driver1', 1, 9),
(629, '0000-00-00 00:00:00', 'driver1', 1, 9),
(630, '0000-00-00 00:00:00', 'driver1', 1, 9),
(631, '0000-00-00 00:00:00', 'driver1', 1, 9),
(632, '0000-00-00 00:00:00', 'driver1', 1, 9),
(633, '0000-00-00 00:00:00', 'driver1', 1, 9),
(634, '0000-00-00 00:00:00', 'driver1', 1, 9),
(635, '0000-00-00 00:00:00', 'amazone', 1, 14),
(636, '0000-00-00 00:00:00', 'driver1', 1, 9),
(637, '0000-00-00 00:00:00', 'driver1', 1, 9),
(638, '0000-00-00 00:00:00', 'driver1', 1, 9),
(639, '0000-00-00 00:00:00', 'driver1', 1, 9),
(640, '0000-00-00 00:00:00', 'admin', 1, 4),
(641, '0000-00-00 00:00:00', 'driver1', 1, 9),
(642, '0000-00-00 00:00:00', 'driver1', 1, 9),
(643, '0000-00-00 00:00:00', 'driver1', 1, 9),
(644, '0000-00-00 00:00:00', 'driver1', 1, 9),
(645, '0000-00-00 00:00:00', 'driver1', 1, 9),
(648, '0000-00-00 00:00:00', 'driver1', 1, 9),
(650, '0000-00-00 00:00:00', 'driver1', 1, 9),
(651, '0000-00-00 00:00:00', 'driver1', 1, 9),
(653, '0000-00-00 00:00:00', 'driver1', 1, 9),
(654, '0000-00-00 00:00:00', 'amazone', 1, 14),
(655, '0000-00-00 00:00:00', 'driver1', 1, 9),
(656, '0000-00-00 00:00:00', 'admin', 1, 4),
(657, '0000-00-00 00:00:00', 'amazone', 1, 14),
(658, '0000-00-00 00:00:00', 'amazone', 1, 14),
(659, '0000-00-00 00:00:00', 'amazone', 1, 14),
(660, '0000-00-00 00:00:00', 'amazone', 1, 14),
(661, '0000-00-00 00:00:00', 'driver', 1, 2),
(662, '0000-00-00 00:00:00', 'driver', 1, 2),
(663, '0000-00-00 00:00:00', 'driver1', 1, 9),
(664, '0000-00-00 00:00:00', 'driver1', 1, 9),
(667, '0000-00-00 00:00:00', 'driver1', 1, 9),
(668, '0000-00-00 00:00:00', 'driver1', 1, 9),
(669, '0000-00-00 00:00:00', 'amazone', 1, 14),
(670, '0000-00-00 00:00:00', 'driver1', 1, 9),
(671, '0000-00-00 00:00:00', 'amazone', 1, 14),
(672, '0000-00-00 00:00:00', 'amazone', 1, 14),
(673, '0000-00-00 00:00:00', 'amazone', 1, 14),
(674, '0000-00-00 00:00:00', 'amazone', 1, 14),
(675, '0000-00-00 00:00:00', 'driver1', 1, 9),
(676, '0000-00-00 00:00:00', 'amazone', 1, 14),
(677, '0000-00-00 00:00:00', 'amazone', 1, 14),
(678, '0000-00-00 00:00:00', 'amazone', 1, 14),
(679, '0000-00-00 00:00:00', 'amazone', 1, 14),
(680, '0000-00-00 00:00:00', 'amazone', 1, 14),
(681, '0000-00-00 00:00:00', 'driver1', 1, 9),
(682, '0000-00-00 00:00:00', 'amazone', 1, 14),
(683, '0000-00-00 00:00:00', 'driver1', 1, 9),
(684, '0000-00-00 00:00:00', 'amazone', 1, 14),
(685, '0000-00-00 00:00:00', 'amazone', 1, 14),
(688, '0000-00-00 00:00:00', 'amaone', 0, -1),
(689, '0000-00-00 00:00:00', 'amazone', 1, 14),
(690, '0000-00-00 00:00:00', 'admin', 1, 4),
(691, '0000-00-00 00:00:00', 'admin', 1, 4),
(692, '0000-00-00 00:00:00', 'admin', 1, 4),
(693, '0000-00-00 00:00:00', 'ecanous@clemson.edu', 0, -1),
(694, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(695, '0000-00-00 00:00:00', 'admin', 1, 4),
(696, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(698, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(699, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(700, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(701, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(702, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(703, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(704, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(707, '0000-00-00 00:00:00', 'admin', 1, 4),
(708, '0000-00-00 00:00:00', 'admin', 1, 4),
(709, '0000-00-00 00:00:00', 'admin', 1, 4),
(710, '0000-00-00 00:00:00', 'admin', 1, 4),
(711, '0000-00-00 00:00:00', 'admin', 1, 4),
(712, '0000-00-00 00:00:00', 'admin', 1, 4),
(713, '0000-00-00 00:00:00', 'admin', 1, 4),
(714, '0000-00-00 00:00:00', 'admin', 1, 4),
(715, '0000-00-00 00:00:00', 'admin', 1, 4),
(716, '0000-00-00 00:00:00', 'admin', 1, 4),
(717, '0000-00-00 00:00:00', 'admin', 1, 4),
(718, '0000-00-00 00:00:00', 'admin', 1, 4),
(719, '0000-00-00 00:00:00', 'admin', 1, 4),
(720, '0000-00-00 00:00:00', 'admin', 1, 4),
(721, '0000-00-00 00:00:00', 'admin', 1, 4),
(722, '0000-00-00 00:00:00', 'admin', 1, 4),
(723, '0000-00-00 00:00:00', 'admin', 1, 4),
(724, '0000-00-00 00:00:00', 'admin', 1, 4),
(725, '0000-00-00 00:00:00', 'admin', 1, 4),
(726, '0000-00-00 00:00:00', 'admin', 1, 4),
(727, '0000-00-00 00:00:00', 'admin', 1, 4),
(728, '0000-00-00 00:00:00', 'admin', 1, 4),
(729, '0000-00-00 00:00:00', 'admin', 1, 4),
(730, '0000-00-00 00:00:00', 'admin', 1, 4),
(731, '0000-00-00 00:00:00', 'amazone', 1, 14),
(732, '0000-00-00 00:00:00', 'admin', 1, 4),
(733, '0000-00-00 00:00:00', 'amazone', 1, 14),
(734, '0000-00-00 00:00:00', 'amazone', 1, 14),
(735, '0000-00-00 00:00:00', 'amazone', 1, 14),
(736, '0000-00-00 00:00:00', 'amazone', 1, 14),
(737, '0000-00-00 00:00:00', 'admin', 1, 4),
(739, '0000-00-00 00:00:00', 'amazone', 1, 14),
(740, '0000-00-00 00:00:00', 'amazone', 1, 14),
(741, '0000-00-00 00:00:00', 'driver1', 1, 9),
(742, '0000-00-00 00:00:00', 'driver1', 1, 9),
(743, '0000-00-00 00:00:00', 'amazone', 1, 14),
(744, '0000-00-00 00:00:00', 'amazone', 1, 14),
(745, '0000-00-00 00:00:00', 'amazone', 1, 14),
(746, '0000-00-00 00:00:00', 'amazone', 1, 14),
(747, '0000-00-00 00:00:00', 'driver1', 1, 9),
(748, '0000-00-00 00:00:00', 'amazone', 1, 14),
(749, '0000-00-00 00:00:00', 'amazone', 1, 14),
(750, '0000-00-00 00:00:00', 'amazone', 1, 14),
(751, '0000-00-00 00:00:00', 'driver1', 1, 9),
(752, '0000-00-00 00:00:00', 'amazone', 1, 14),
(753, '0000-00-00 00:00:00', 'driver1', 1, 9),
(754, '0000-00-00 00:00:00', 'driver1', 1, 9),
(755, '0000-00-00 00:00:00', 'driver1', 1, 9),
(756, '0000-00-00 00:00:00', 'driver1', 1, 9),
(757, '0000-00-00 00:00:00', 'amazone', 1, 14),
(758, '0000-00-00 00:00:00', 'admin', 1, 4),
(759, '0000-00-00 00:00:00', 'amazone', 1, 14),
(760, '0000-00-00 00:00:00', 'driver1', 1, 9),
(763, '0000-00-00 00:00:00', 'admin', 1, 4),
(764, '0000-00-00 00:00:00', 'madlads4910@gmail.com', 0, -1),
(765, '0000-00-00 00:00:00', 'madlads4910@gmail.com', 0, -1),
(766, '0000-00-00 00:00:00', 'madlads4910@gmail.com', 0, -1),
(767, '0000-00-00 00:00:00', 'madlads4910@gmail.com', 0, -1),
(768, '0000-00-00 00:00:00', 'driver1', 1, 9),
(769, '0000-00-00 00:00:00', 'username2', 1, 50),
(770, '0000-00-00 00:00:00', 'username2', 1, 50),
(771, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(772, '0000-00-00 00:00:00', 'admin', 1, 4),
(773, '0000-00-00 00:00:00', 'driver1', 1, 9),
(774, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(775, '0000-00-00 00:00:00', 'driver1', 1, 9),
(776, '0000-00-00 00:00:00', 'admin', 1, 4),
(777, '0000-00-00 00:00:00', 'amazone', 1, 14),
(778, '0000-00-00 00:00:00', 'admin', 1, 4),
(779, '0000-00-00 00:00:00', 'admin', 1, 4),
(780, '0000-00-00 00:00:00', 'admin', 1, 4),
(781, '0000-00-00 00:00:00', 'admin', 1, 4),
(782, '0000-00-00 00:00:00', 'admin', 1, 4),
(783, '0000-00-00 00:00:00', 'admin', 1, 4),
(784, '0000-00-00 00:00:00', 'amazone', 1, 14),
(785, '0000-00-00 00:00:00', 'amazone', 1, 14),
(786, '0000-00-00 00:00:00', 'amazone', 1, 14),
(787, '0000-00-00 00:00:00', 'amazone', 1, 14),
(788, '0000-00-00 00:00:00', 'amazone', 1, 14),
(789, '0000-00-00 00:00:00', 'amazone', 1, 14),
(790, '0000-00-00 00:00:00', 'amazone', 1, 14),
(791, '0000-00-00 00:00:00', 'amazone', 1, 14),
(792, '0000-00-00 00:00:00', 'admin', 1, 4),
(793, '0000-00-00 00:00:00', 'driver1', 1, 9),
(794, '0000-00-00 00:00:00', 'admin', 1, 4),
(795, '0000-00-00 00:00:00', 'admin', 1, 4),
(796, '0000-00-00 00:00:00', 'admin', 1, 4),
(797, '0000-00-00 00:00:00', 'admin', 1, 4),
(798, '0000-00-00 00:00:00', 'admin', 1, 4),
(799, '0000-00-00 00:00:00', 'admin', 1, 4),
(800, '0000-00-00 00:00:00', 'admin', 1, 4),
(801, '0000-00-00 00:00:00', 'admin', 1, 4),
(802, '0000-00-00 00:00:00', 'admin', 1, 4),
(803, '0000-00-00 00:00:00', 'admin', 1, 4),
(804, '0000-00-00 00:00:00', 'admin', 1, 4),
(805, '0000-00-00 00:00:00', 'admin', 1, 4),
(806, '0000-00-00 00:00:00', 'admin', 1, 4),
(807, '0000-00-00 00:00:00', 'admin', 1, 4),
(808, '0000-00-00 00:00:00', 'admin', 1, 4),
(809, '0000-00-00 00:00:00', 'admin', 1, 4),
(810, '0000-00-00 00:00:00', 'admin', 1, 4),
(811, '0000-00-00 00:00:00', 'admin', 1, 4),
(812, '0000-00-00 00:00:00', 'admin', 1, 4),
(813, '0000-00-00 00:00:00', 'admin', 1, 4),
(814, '0000-00-00 00:00:00', 'admin', 1, 4),
(815, '0000-00-00 00:00:00', 'admin', 1, 4),
(816, '0000-00-00 00:00:00', 'driver1', 1, 9),
(817, '0000-00-00 00:00:00', 'admin', 1, 4),
(818, '0000-00-00 00:00:00', 'driver1', 1, 9),
(819, '0000-00-00 00:00:00', 'driver1', 1, 9),
(820, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(821, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(822, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(823, '0000-00-00 00:00:00', 'driver1', 1, 9),
(824, '0000-00-00 00:00:00', 'amazone', 1, 14),
(825, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(826, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(827, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(828, '0000-00-00 00:00:00', 'driver1', 1, 9),
(829, '0000-00-00 00:00:00', 'driver1', 1, 9),
(830, '0000-00-00 00:00:00', 'driver1', 1, 9),
(831, '0000-00-00 00:00:00', 'driver1', 1, 9),
(832, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(833, '0000-00-00 00:00:00', 'driver1', 1, 9),
(834, '0000-00-00 00:00:00', 'driver1', 1, 9),
(835, '0000-00-00 00:00:00', 'driver1', 1, 9),
(836, '0000-00-00 00:00:00', 'amazone', 1, 14),
(839, '0000-00-00 00:00:00', 'admin', 1, 4),
(840, '0000-00-00 00:00:00', 'admin', 1, 4),
(841, '0000-00-00 00:00:00', 'amazone', 1, 14),
(842, '0000-00-00 00:00:00', 'amazone', 1, 14),
(843, '0000-00-00 00:00:00', 'amazone', 1, 14),
(844, '0000-00-00 00:00:00', 'admin', 1, 4),
(846, '0000-00-00 00:00:00', 'admin', 1, 4),
(847, '0000-00-00 00:00:00', 'admin', 1, 4),
(848, '0000-00-00 00:00:00', 'admin', 1, 4),
(849, '0000-00-00 00:00:00', 'admin', 1, 4),
(850, '0000-00-00 00:00:00', 'admin', 1, 4),
(853, '0000-00-00 00:00:00', 'admin', 1, 4),
(854, '0000-00-00 00:00:00', 'amazone', 1, 14),
(855, '0000-00-00 00:00:00', 'spon9', 1, 55),
(856, '0000-00-00 00:00:00', 'spon8', 0, -1),
(857, '0000-00-00 00:00:00', 'spon9', 1, 55),
(858, '0000-00-00 00:00:00', 'spon7', 1, 58),
(861, '0000-00-00 00:00:00', 'admin', 1, 4),
(862, '0000-00-00 00:00:00', 'admin', 1, 4),
(865, '0000-00-00 00:00:00', 'spon7', 1, 58),
(866, '0000-00-00 00:00:00', 'admin', 1, 4),
(867, '0000-00-00 00:00:00', 'clemson123', 1, 59),
(868, '0000-00-00 00:00:00', 'amazone', 1, 14),
(869, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(870, '0000-00-00 00:00:00', 'mjparks', 1, 60),
(871, '0000-00-00 00:00:00', 'amazone', 1, 14),
(872, '0000-00-00 00:00:00', 'amazone', 1, 14),
(873, '0000-00-00 00:00:00', 'mjparks', 1, 60),
(874, '0000-00-00 00:00:00', 'coolguy2000', 1, 61),
(875, '0000-00-00 00:00:00', 'mjparks', 1, 60),
(876, '0000-00-00 00:00:00', 'admin', 1, 4),
(877, '0000-00-00 00:00:00', 'coolguy2000', 1, 61),
(878, '0000-00-00 00:00:00', 'admin', 1, 4),
(879, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(880, '0000-00-00 00:00:00', 'admin', 1, 4),
(881, '0000-00-00 00:00:00', 'admin', 1, 4),
(882, '0000-00-00 00:00:00', 'amazone', 1, 14),
(883, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(884, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(885, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(886, '0000-00-00 00:00:00', 'amazone', 1, 14),
(887, '0000-00-00 00:00:00', 'admin', 1, 4),
(888, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(889, '0000-00-00 00:00:00', 'amazone', 1, 14),
(890, '0000-00-00 00:00:00', 'admin', 1, 4),
(891, '0000-00-00 00:00:00', 'admin', 1, 4),
(892, '0000-00-00 00:00:00', 'coolguy2000', 1, 61),
(893, '0000-00-00 00:00:00', 'admin', 1, 4),
(894, '0000-00-00 00:00:00', 'amazone', 1, 14),
(895, '0000-00-00 00:00:00', 'admin', 1, 4),
(896, '0000-00-00 00:00:00', 'clemson1234', 1, 59),
(897, '0000-00-00 00:00:00', 'admin', 1, 4),
(898, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(899, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(900, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(901, '0000-00-00 00:00:00', 'spon7', 1, 58),
(902, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(903, '0000-00-00 00:00:00', 'admin', 1, 4),
(904, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(905, '0000-00-00 00:00:00', 'spon7', 1, 58),
(906, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(907, '0000-00-00 00:00:00', 'admin', 1, 4),
(908, '0000-00-00 00:00:00', 'spon7', 1, 58),
(909, '0000-00-00 00:00:00', 'admin', 1, 4),
(910, '0000-00-00 00:00:00', 'mjdriver', 1, 62),
(911, '0000-00-00 00:00:00', 'admin', 1, 4),
(912, '0000-00-00 00:00:00', 'admin', 1, 4),
(913, '0000-00-00 00:00:00', 'walmartd', 0, -1),
(914, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(915, '0000-00-00 00:00:00', 'spon7', 1, 58),
(916, '0000-00-00 00:00:00', 'admin', 1, 4),
(917, '0000-00-00 00:00:00', 'driver1', 1, 9),
(918, '0000-00-00 00:00:00', 'admin', 1, 4),
(919, '0000-00-00 00:00:00', 'driver1', 1, 9),
(920, '0000-00-00 00:00:00', 'driver1', 1, 9),
(922, '0000-00-00 00:00:00', 'driver1', 1, 9),
(923, '0000-00-00 00:00:00', 'amazone', 1, 14),
(924, '0000-00-00 00:00:00', 'amazone', 1, 14),
(925, '0000-00-00 00:00:00', 'admin', 1, 4),
(926, '0000-00-00 00:00:00', 'admin', 1, 4),
(927, '0000-00-00 00:00:00', 'amazone', 1, 14),
(928, '0000-00-00 00:00:00', 'driver1', 1, 9),
(929, '0000-00-00 00:00:00', 'amazone', 1, 14),
(930, '0000-00-00 00:00:00', 'admin', 1, 4),
(931, '0000-00-00 00:00:00', 'driver1', 1, 9),
(932, '0000-00-00 00:00:00', 'admin', 1, 4),
(933, '0000-00-00 00:00:00', 'driver1', 1, 9),
(934, '0000-00-00 00:00:00', 'amazone', 1, 14),
(935, '0000-00-00 00:00:00', 'driver1', 1, 9),
(946, '0000-00-00 00:00:00', 'admin', 1, 4),
(947, '0000-00-00 00:00:00', 'admin', 1, 4),
(948, '0000-00-00 00:00:00', 'admin', 1, 4),
(949, '0000-00-00 00:00:00', 'admin', 1, 4),
(952, '0000-00-00 00:00:00', 'admin', 1, 4),
(953, '0000-00-00 00:00:00', 'admin', 1, 4),
(957, '0000-00-00 00:00:00', 'admin', 1, 4),
(958, '0000-00-00 00:00:00', 'admin', 1, 4),
(959, '0000-00-00 00:00:00', 'admin', 1, 4),
(960, '0000-00-00 00:00:00', 'admin', 1, 4),
(961, '0000-00-00 00:00:00', 'admin', 1, 4),
(962, '0000-00-00 00:00:00', 'admin', 1, 4),
(963, '0000-00-00 00:00:00', 'admin', 1, 4),
(964, '0000-00-00 00:00:00', 'admin', 1, 4),
(965, '0000-00-00 00:00:00', 'admin', 1, 4),
(966, '0000-00-00 00:00:00', 'admin', 1, 4),
(967, '0000-00-00 00:00:00', 'admin', 1, 4),
(968, '0000-00-00 00:00:00', 'admin', 1, 4),
(969, '0000-00-00 00:00:00', 'admin', 1, 4),
(970, '0000-00-00 00:00:00', 'admin', 1, 4),
(971, '0000-00-00 00:00:00', 'admin', 1, 4),
(972, '0000-00-00 00:00:00', 'admin', 1, 4),
(973, '0000-00-00 00:00:00', 'admin', 1, 4),
(974, '0000-00-00 00:00:00', 'admin', 1, 4),
(975, '0000-00-00 00:00:00', 'admin', 1, 4),
(976, '0000-00-00 00:00:00', 'admin', 1, 4),
(977, '0000-00-00 00:00:00', 'admin', 1, 4),
(978, '0000-00-00 00:00:00', 'admin', 1, 4),
(979, '0000-00-00 00:00:00', 'admin', 1, 4),
(980, '0000-00-00 00:00:00', 'admin', 1, 4),
(981, '0000-00-00 00:00:00', 'admin', 1, 4),
(982, '0000-00-00 00:00:00', 'admin', 1, 4),
(983, '0000-00-00 00:00:00', 'admin', 1, 4),
(984, '0000-00-00 00:00:00', 'admin', 1, 4),
(985, '0000-00-00 00:00:00', 'admin', 1, 4),
(986, '0000-00-00 00:00:00', 'admin', 1, 4),
(987, '0000-00-00 00:00:00', 'admin', 1, 4),
(988, '0000-00-00 00:00:00', 'admin', 1, 4),
(989, '0000-00-00 00:00:00', 'admin', 1, 4),
(990, '0000-00-00 00:00:00', 'admin', 1, 4),
(991, '0000-00-00 00:00:00', 'driver1', 1, 9),
(992, '0000-00-00 00:00:00', 'admin', 1, 4),
(993, '0000-00-00 00:00:00', 'admin', 1, 4),
(994, '0000-00-00 00:00:00', 'driver1', 1, 9),
(995, '0000-00-00 00:00:00', 'admin', 1, 4),
(996, '0000-00-00 00:00:00', 'admin', 1, 4),
(997, '0000-00-00 00:00:00', 'amazone', 1, 14),
(998, '0000-00-00 00:00:00', 'amazone', 1, 14),
(999, '0000-00-00 00:00:00', 'admin', 1, 4),
(1000, '0000-00-00 00:00:00', 'amazone', 1, 14),
(1001, '0000-00-00 00:00:00', 'admin', 1, 4),
(1008, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1009, '0000-00-00 00:00:00', 'admin', 1, 4),
(1010, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1011, '0000-00-00 00:00:00', 'admin', 1, 4),
(1012, '0000-00-00 00:00:00', 'admin', 1, 4),
(1013, '0000-00-00 00:00:00', 'admin', 1, 4),
(1014, '0000-00-00 00:00:00', 'admin', 1, 4),
(1015, '0000-00-00 00:00:00', 'admin', 1, 4),
(1016, '0000-00-00 00:00:00', 'admin', 1, 4),
(1017, '0000-00-00 00:00:00', 'admin', 1, 4),
(1018, '0000-00-00 00:00:00', 'admin', 1, 4),
(1019, '0000-00-00 00:00:00', 'admin', 1, 4),
(1020, '0000-00-00 00:00:00', 'admin', 1, 4),
(1021, '0000-00-00 00:00:00', 'admin', 1, 4),
(1022, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1025, '0000-00-00 00:00:00', 'admin', 1, 4),
(1026, '0000-00-00 00:00:00', 'amazone', 1, 14),
(1027, '0000-00-00 00:00:00', 'driver1', 1, 9),
(1028, '0000-00-00 00:00:00', 'driver1', 1, 9),
(1029, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1030, '0000-00-00 00:00:00', 'admin', 1, 4),
(1031, '0000-00-00 00:00:00', 'admin', 1, 4),
(1032, '0000-00-00 00:00:00', 'driver1', 1, 9),
(1033, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1034, '0000-00-00 00:00:00', 'admin', 1, 4),
(1035, '0000-00-00 00:00:00', 'admin', 1, 4),
(1036, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1037, '0000-00-00 00:00:00', 'admin', 1, 4),
(1038, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1039, '0000-00-00 00:00:00', 'admin', 1, 4),
(1040, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1041, '0000-00-00 00:00:00', 'admin', 1, 4),
(1042, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1044, '0000-00-00 00:00:00', 'admin', 1, 4),
(1045, '0000-00-00 00:00:00', 'ecanous', 1, 29),
(1047, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1049, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1050, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1051, '0000-00-00 00:00:00', 'amazone', 1, 14),
(1052, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1053, '0000-00-00 00:00:00', 'amazone', 1, 14),
(1054, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1055, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1056, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1057, '0000-00-00 00:00:00', 'admin', 1, 4),
(1058, '0000-00-00 00:00:00', 'walmartd', 0, -1),
(1059, '0000-00-00 00:00:00', 'walmartu', 0, -1),
(1060, '0000-00-00 00:00:00', 'walmartu', 0, -1),
(1061, '0000-00-00 00:00:00', 'walmartu', 0, -1),
(1062, '0000-00-00 00:00:00', 'driver1', 1, 9),
(1063, '0000-00-00 00:00:00', 'admin', 1, 4),
(1064, '0000-00-00 00:00:00', 'Clemson', 0, -1),
(1065, '0000-00-00 00:00:00', 'Clemson1234', 0, -1),
(1066, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1067, '0000-00-00 00:00:00', 'amazone', 1, 14),
(1068, '0000-00-00 00:00:00', 'walmarte', 1, 13),
(1069, '4/16/2022, 10:33:01 AM', 'walmarte', 1, 13),
(1070, '4/16/2022, 10:38:08 AM', 'walmarte', 1, 13),
(1071, '4/17/2022, 10:55:06 AM', 'admin', 1, 4),
(1072, '4/17/2022, 10:55:21 AM', 'ecanous', 1, 29),
(1073, '4/17/2022, 10:55:44 AM', 'ecanous', 1, 29),
(1074, '4/17/2022, 11:17:31 AM', 'ecanous', 1, 29),
(1075, '4/17/2022, 11:31:22 AM', 'driver1', 1, 9),
(1076, '4/17/2022, 12:59:48 PM', 'driver1', 1, 9),
(1077, '4/17/2022, 1:19:32 PM', 'admin', 1, 4),
(1078, '4/17/2022, 1:29:08 PM', 'driver1', 1, 9),
(1079, '4/17/2022, 1:30:51 PM', 'driver1', 1, 9),
(1080, '4/17/2022, 1:31:56 PM', 'driver1', 1, 9),
(1081, '4/17/2022, 1:33:02 PM', 'driver1', 1, 9),
(1082, '4/17/2022, 1:35:38 PM', 'walmarte', 1, 13),
(1084, '4/17/2022, 5:54:25 PM', 'clemson', 0, -1),
(1085, '4/17/2022, 5:54:39 PM', 'amazone', 1, 14),
(1086, '4/17/2022, 5:57:44 PM', 'amazone', 1, 14),
(1087, '4/17/2022, 6:00:26 PM', 'amazone', 1, 14),
(1088, '4/17/2022, 6:03:07 PM', 'admin', 1, 4),
(1089, '4/17/2022, 6:34:42 PM', 'admin', 1, 4),
(1090, '4/17/2022, 6:37:14 PM', 'admin', 1, 4),
(1091, '4/17/2022, 2:57:33 PM', 'admin', 1, 4),
(1092, '4/17/2022, 2:57:58 PM', 'ecanous', 1, 29),
(1093, '4/17/2022, 6:59:12 PM', 'JWheeler56TrucksRLife', 1, 71),
(1094, '4/17/2022, 3:00:12 PM', 'amazone', 1, 14),
(1095, '4/17/2022, 7:10:47 PM', 'amazone', 1, 14),
(1096, '4/17/2022, 7:11:17 PM', 'driver1', 1, 9),
(1097, '4/17/2022, 7:12:25 PM', 'amazone', 1, 14),
(1098, '4/17/2022, 7:12:39 PM', 'amazone', 1, 14),
(1099, '4/17/2022, 7:17:58 PM', 'amazone', 1, 14),
(1100, '4/17/2022, 7:18:13 PM', 'walmarte', 1, 13),
(1101, '4/17/2022, 7:19:35 PM', 'driver1', 1, 9),
(1102, '4/17/2022, 7:23:06 PM', 'driver1', 1, 9),
(1103, '4/17/2022, 7:23:34 PM', 'driver1', 1, 9),
(1104, '4/17/2022, 7:25:11 PM', 'driver2fdsf', 0, -1),
(1105, '4/17/2022, 7:25:36 PM', 'amazone', 1, 14),
(1106, '4/17/2022, 7:28:34 PM', 'amazone', 1, 14),
(1107, '4/17/2022, 7:28:41 PM', 'driver1', 1, 9),
(1108, '4/17/2022, 4:42:28 PM', 'driver1', 1, 9),
(1109, '4/18/2022, 9:52:30 AM', 'driver1', 1, 9),
(1110, '4/18/2022, 11:14:04 AM', 'driver1', 1, 9),
(1111, '4/18/2022, 3:54:10 PM', 'amazone', 1, 14),
(1112, '4/18/2022, 11:59:19 AM', 'walmarte', 1, 13),
(1113, '4/18/2022, 12:04:13 PM', 'driver1', 1, 9),
(1114, '4/18/2022, 4:13:43 PM', 'amazone', 1, 14),
(1115, '4/18/2022, 4:13:57 PM', 'driver1', 1, 9),
(1116, '4/18/2022, 4:14:27 PM', 'driver1', 1, 9),
(1117, '4/18/2022, 4:14:50 PM', 'driver1', 1, 9),
(1118, '4/18/2022, 4:15:38 PM', 'driver1', 1, 9),
(1119, '4/18/2022, 4:18:35 PM', 'driver1', 1, 9),
(1120, '4/18/2022, 4:19:25 PM', 'admin', 1, 4),
(1121, '4/18/2022, 4:19:40 PM', 'driver1', 1, 9),
(1122, '4/18/2022, 4:21:33 PM', 'newtestdriver', 1, 72),
(1123, '4/18/2022, 4:21:50 PM', 'newtestdriver', 1, 72),
(1124, '4/18/2022, 4:23:45 PM', 'newtestdriver', 1, 72),
(1125, '4/18/2022, 4:24:33 PM', 'admin', 1, 4),
(1126, '4/18/2022, 4:25:54 PM', 'NewSpons', 1, 73),
(1127, '4/18/2022, 4:26:08 PM', 'admin', 1, 4),
(1128, '4/18/2022, 4:27:43 PM', 'newadmin', 1, 74),
(1129, '4/18/2022, 4:29:19 PM', 'Driver1', 0, -1),
(1130, '4/18/2022, 4:29:24 PM', 'driver1', 1, 9),
(1131, '4/18/2022, 4:33:23 PM', 'amazone', 1, 14),
(1132, '4/18/2022, 4:35:25 PM', 'driver1', 1, 9),
(1133, '4/18/2022, 4:38:21 PM', 'amazone', 1, 14),
(1134, '4/18/2022, 4:40:49 PM', 'driver1', 1, 9),
(1135, '4/18/2022, 4:41:14 PM', 'amazone', 1, 14),
(1136, '4/18/2022, 4:41:26 PM', 'driver1', 1, 9),
(1137, '4/18/2022, 4:45:03 PM', 'newadmin', 1, 74),
(1138, '4/18/2022, 4:46:39 PM', 'newadmin', 1, 74),
(1139, '4/18/2022, 4:59:01 PM', 'driver1', 1, 9),
(1140, '4/18/2022, 5:04:35 PM', 'amazone', 1, 14),
(1141, '4/18/2022, 5:07:14 PM', 'newadmin', 1, 74),
(1142, '4/18/2022, 5:07:35 PM', 'newadmin', 1, 74),
(1143, '4/18/2022, 5:11:18 PM', 'NewSpons', 1, 73),
(1144, '4/18/2022, 5:11:36 PM', 'ecanous', 1, 29),
(1145, '4/18/2022, 5:11:40 PM', 'NewSpons', 1, 73),
(1146, '4/18/2022, 5:12:00 PM', 'ecanous', 1, 29),
(1147, '4/18/2022, 5:13:36 PM', 'driver1', 1, 9),
(1148, '4/18/2022, 5:27:44 PM', 'admin', 1, 4),
(1149, '4/18/2022, 5:28:20 PM', 'amazone', 1, 14),
(1150, '4/18/2022, 5:28:51 PM', 'driver1', 1, 9),
(1151, '4/18/2022, 1:59:35 PM', 'driver1', 1, 9),
(1152, '4/18/2022, 4:35:23 PM', 'walmarte', 1, 13),
(1153, '4/18/2022, 4:39:57 PM', 'Walmarte', 0, 13),
(1154, '4/18/2022, 4:40:34 PM', 'walmarte', 1, 13),
(1155, '4/18/2022, 4:43:04 PM', 'walmarte', 1, 13),
(1157, '4/18/2022, 9:26:37 PM', 'driver1', 1, 9),
(1158, '4/18/2022, 5:27:37 PM', 'driver1', 1, 9),
(1159, '4/18/2022, 9:52:59 PM', 'admin', 1, 4),
(1160, '4/18/2022, 11:31:57 PM', 'admin', 1, 4),
(1161, '4/19/2022, 12:10:19 AM', 'driver1', 1, 9),
(1162, '4/18/2022, 9:05:00 PM', 'admin', 1, 4),
(1163, '4/18/2022, 9:05:16 PM', 'amazone', 1, 14),
(1164, '4/18/2022, 9:05:27 PM', 'driver1', 1, 9),
(1165, '4/18/2022, 9:21:04 PM', 'driver1', 0, 9),
(1166, '4/18/2022, 9:21:18 PM', 'admin', 1, 4),
(1167, '4/19/2022, 1:23:56 AM', 'admin', 0, 4),
(1168, '4/19/2022, 1:24:01 AM', 'admin', 1, 4),
(1169, '4/18/2022, 9:25:44 PM', 'driver1', 1, 9),
(1170, '4/18/2022, 9:28:02 PM', 'amazone', 1, 14),
(1171, '4/18/2022, 9:45:05 PM', 'admin', 1, 4),
(1172, '4/18/2022, 11:36:46 PM', 'driver1', 1, 9),
(1173, '4/18/2022, 11:40:04 PM', 'amazone', 1, 14),
(1174, '4/18/2022, 11:41:00 PM', 'amazone', 1, 14),
(1175, '4/18/2022, 11:42:19 PM', 'amazone', 1, 14),
(1177, '4/19/2022, 10:11:22 AM', 'driver1', 1, 9),
(1178, '4/19/2022, 10:36:10 AM', 'driver1', 1, 9),
(1179, '4/19/2022, 11:51:31 AM', 'driver1', 1, 9),
(1180, '4/19/2022, 1:02:13 PM', 'driver1', 1, 9),
(1181, '4/19/2022, 5:05:29 PM', 'driver1', 1, 9),
(1182, '4/19/2022, 1:25:59 PM', 'driver1', 1, 9),
(1183, '4/19/2022, 3:26:14 PM', 'driver1', 1, 9),
(1184, '4/19/2022, 3:26:53 PM', 'driver1', 1, 9),
(1185, '4/19/2022, 3:27:55 PM', 'driver1', 1, 9),
(1186, '4/19/2022, 3:30:16 PM', 'driver1', 1, 9),
(1187, '4/19/2022, 3:31:05 PM', 'driver1', 1, 9),
(1188, '4/19/2022, 7:37:43 PM', 'admin', 1, 4),
(1189, '4/19/2022, 7:39:42 PM', 'driver1', 1, 9),
(1190, '4/19/2022, 7:40:16 PM', 'driver1', 1, 9),
(1191, '4/19/2022, 3:40:24 PM', 'driver1', 1, 9),
(1192, '4/19/2022, 3:41:27 PM', 'driver1', 1, 9),
(1193, '4/19/2022, 3:42:44 PM', 'driver1', 1, 9),
(1194, '4/19/2022, 3:43:39 PM', 'driver1', 1, 9),
(1195, '4/19/2022, 4:13:05 PM', 'driver1', 1, 9),
(1196, '4/19/2022, 4:23:00 PM', 'driver1', 1, 9),
(1197, '4/19/2022, 4:23:24 PM', 'driver1', 1, 9),
(1198, '4/19/2022, 5:11:35 PM', 'driver1', 1, 9),
(1199, '4/19/2022, 5:14:22 PM', 'driver1', 1, 9),
(1200, '4/19/2022, 5:14:22 PM', 'driver1', 1, 9),
(1201, '4/19/2022, 5:14:39 PM', 'driver1', 1, 9),
(1202, '4/19/2022, 5:17:31 PM', 'driver1', 1, 9),
(1203, '4/19/2022, 5:18:36 PM', 'driver1', 1, 9),
(1204, '4/19/2022, 5:24:24 PM', 'driver1', 1, 9),
(1205, '4/19/2022, 5:25:56 PM', 'walmarte', 1, 13),
(1206, '4/19/2022, 5:26:26 PM', 'driver1', 1, 9),
(1207, '4/19/2022, 5:27:42 PM', 'driver1', 1, 9),
(1208, '4/19/2022, 5:29:57 PM', 'driver1', 1, 9),
(1209, '4/19/2022, 5:31:29 PM', 'driver1', 1, 9),
(1210, '4/19/2022, 5:32:50 PM', 'driver1', 1, 9),
(1211, '4/19/2022, 5:33:24 PM', 'driver1', 1, 9),
(1212, '4/19/2022, 5:33:55 PM', 'driver1', 1, 9),
(1213, '4/19/2022, 5:42:06 PM', 'driver1', 1, 9),
(1214, '4/19/2022, 9:43:37 PM', 'driver1', 1, 9),
(1215, '4/19/2022, 9:43:02 PM', 'driver1', 1, 9),
(1216, '4/19/2022, 9:43:32 PM', 'walmarte', 1, 13),
(1217, '4/20/2022, 6:43:41 PM', 'driver1', 1, 9),
(1218, '4/20/2022, 6:46:27 PM', 'amazone', 1, 14),
(1219, '4/20/2022, 6:47:36 PM', 'driver1', 1, 9),
(1220, '4/20/2022, 6:35:53 PM', 'driver1', 1, 9),
(1221, '4/20/2022, 6:38:08 PM', 'amazone', 1, 14),
(1222, '4/20/2022, 6:38:50 PM', 'driver1', 1, 9),
(1225, '4/21/2022, 4:28:44 AM', 'driver1', 1, 9),
(1226, '4/21/2022, 11:44:41 AM', 'walmarte', 1, 13),
(1227, '4/21/2022, 11:45:35 AM', 'admin', 1, 4),
(1228, '4/21/2022, 11:53:40 AM', 'admin', 1, 4),
(1229, '4/21/2022, 12:00:06 PM', 'admin', 1, 4),
(1230, '4/21/2022, 12:04:38 PM', 'admin', 1, 4),
(1231, '4/21/2022, 12:14:04 PM', 'admin', 1, 4),
(1232, '4/21/2022, 12:15:00 PM', 'admin', 1, 4),
(1233, '4/21/2022, 12:21:44 PM', 'admin', 1, 4),
(1234, '4/21/2022, 12:35:40 PM', 'admin', 1, 4),
(1235, '4/21/2022, 12:45:48 PM', 'admin', 1, 4),
(1236, '4/21/2022, 12:47:00 PM', 'walmarte', 1, 13),
(1238, '4/21/2022, 5:13:49 PM', 'admin', 0, 4),
(1239, '4/21/2022, 5:13:53 PM', 'admin', 1, 4),
(1240, '4/21/2022, 3:11:08 PM', 'ecanous', 1, 29),
(1241, '4/21/2022, 7:20:16 PM', 'ecanous', 1, 29),
(1242, '4/21/2022, 7:20:34 PM', 'driver1', 1, 9),
(1243, '4/21/2022, 3:27:55 PM', 'amazone', 1, 14),
(1244, '4/21/2022, 3:28:06 PM', 'driver1', 1, 9),
(1245, '4/21/2022, 3:28:36 PM', 'amazone', 1, 14),
(1246, '4/21/2022, 3:36:15 PM', 'ecanous', 1, 29);
INSERT INTO `LOGIN_ATTEMPTS` (`loginsID`, `date`, `username`, `success`, `uID`) VALUES
(1247, '4/21/2022, 7:40:56 PM', 'driver1', 1, 9),
(1248, '4/21/2022, 7:41:13 PM', 'driver1', 1, 9),
(1249, '4/21/2022, 7:41:23 PM', 'amazone', 1, 14),
(1250, '4/21/2022, 7:59:17 PM', 'admin', 1, 4),
(1251, '4/21/2022, 8:00:49 PM', 'driver1', 1, 9),
(1252, '4/21/2022, 8:01:12 PM', 'driver1', 1, 9),
(1253, '4/21/2022, 8:01:25 PM', 'admin', 0, 4),
(1254, '4/21/2022, 8:01:30 PM', 'admin', 1, 4),
(1255, '4/21/2022, 6:30:02 PM', 'ecanous', 1, 29),
(1256, '4/22/2022, 2:48:30 PM', 'admin', 1, 4),
(1257, '4/22/2022, 2:53:00 PM', 'DemoAdmin', 1, 78),
(1258, '4/22/2022, 2:53:43 PM', 'DemoAdmin', 1, 78),
(1259, '4/22/2022, 2:54:17 PM', 'driver1', 1, 9),
(1260, '4/22/2022, 2:54:26 PM', 'walmarte', 1, 13),
(1261, '4/22/2022, 2:55:45 PM', 'DemoSponsor', 1, 79),
(1262, '4/22/2022, 2:57:40 PM', 'DemoSponsor', 1, 79),
(1263, '4/22/2022, 2:58:17 PM', 'amazone', 1, 14),
(1264, '4/22/2022, 2:58:56 PM', 'DemoDriver', 1, 80),
(1265, '4/22/2022, 2:59:31 PM', 'driver1', 1, 9),
(1266, '4/22/2022, 2:59:59 PM', 'DemoSponsor', 1, 79),
(1267, '4/22/2022, 3:00:37 PM', 'DemoDriver', 1, 80),
(1268, '4/22/2022, 11:01:40 AM', 'DemoDriver', 1, 80),
(1269, '4/22/2022, 11:06:11 AM', 'DemoDriver', 1, 80),
(1270, '4/22/2022, 11:11:50 AM', 'DemoDriver', 1, 80),
(1271, '4/22/2022, 11:12:03 AM', 'amazone', 1, 14),
(1272, '4/22/2022, 11:12:36 AM', 'DemoSponsor', 1, 79),
(1273, '4/22/2022, 11:13:05 AM', 'DemoDriver', 1, 80),
(1275, '4/22/2022, 3:18:54 PM', 'DemoDriver', 1, 80),
(1276, '4/22/2022, 3:19:05 PM', '', 0, -1),
(1277, '4/22/2022, 3:19:06 PM', '', 0, -1),
(1278, '4/22/2022, 3:19:13 PM', 'DemoDriver', 1, 80),
(1279, '4/22/2022, 12:28:45 PM', 'driver1', 1, 9),
(1280, '4/22/2022, 12:31:19 PM', 'walmarte', 1, 13),
(1281, '4/22/2022, 12:32:18 PM', 'driver1', 1, 9),
(1283, '4/23/2022, 3:56:15 PM', 'ecanouse@gmail.com', 0, 29),
(1284, '4/23/2022, 3:56:20 PM', 'ecanous', 1, 29),
(1285, '4/23/2022, 3:57:09 PM', 'ecanous', 0, 29),
(1286, '4/23/2022, 3:57:14 PM', 'ecanous', 0, 29),
(1287, '4/23/2022, 3:57:15 PM', 'ecanous', 0, 29),
(1288, '4/23/2022, 12:03:10 PM', 'ecanous', 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER`
--

CREATE TABLE `ORDER` (
  `orderID` int NOT NULL,
  `uID` int NOT NULL,
  `status` int NOT NULL,
  `total` int NOT NULL,
  `date` date DEFAULT NULL,
  `sponsorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ORDER`
--

INSERT INTO `ORDER` (`orderID`, `uID`, `status`, `total`, `date`, `sponsorID`) VALUES
(7, 9, 1, 925, '2022-04-01', 1),
(8, 9, 1, 0, '2022-04-01', 1),
(12, 9, 1, 3986, '2022-04-01', 1),
(13, 9, 1, 393, '2022-04-01', 1),
(14, 9, 1, 393, '2022-04-01', 1),
(15, 9, 1, 393, '2022-04-01', 1),
(16, 9, 1, 393, '2022-04-01', 1),
(17, 9, 0, 393, '2022-04-01', 1),
(18, 9, 0, 393, '2022-04-02', 1),
(19, 9, 1, 3234, '2022-04-02', 2),
(20, 9, 1, 393, '2022-04-03', 1),
(23, 2, 1, 4097, '2022-04-06', 2),
(24, 9, 1, 4097, '2022-04-06', 2),
(25, 9, 1, 393, '2022-04-06', 1),
(26, 9, 1, 393, '2022-04-06', 1),
(27, 9, 1, 393, '2022-04-06', 1),
(28, 9, 1, 393, '2022-04-06', 1),
(29, 9, 1, 393, '2022-04-06', 1),
(30, 9, 1, 393, '2022-04-06', 1),
(31, 9, 1, 393, '2022-04-06', 1),
(32, 9, 1, 393, '2022-04-06', 1),
(33, 9, 1, 393, '2022-04-06', 1),
(34, 9, 1, 393, '2022-04-06', 1),
(35, 9, 0, 1318, '2022-04-07', 1),
(36, 60, 1, 2727, '2022-04-11', 11),
(37, 60, 1, 2727, '2022-04-11', 11),
(38, 59, 1, 786, '2022-04-11', 2),
(39, 9, 1, 413, '2022-04-12', 1),
(40, 9, 1, 413, '2022-04-12', 1),
(41, 71, 0, 271, '2022-04-17', 2),
(42, 71, 1, 790, '2022-04-17', 2),
(43, 9, 1, 270, '2022-04-18', 2),
(44, 9, 0, 1117, '2022-04-18', 1),
(45, 9, 1, 824, '2022-04-18', 1),
(46, 9, 1, 786, '2022-04-18', 2),
(47, 9, 1, 412, '2022-04-20', 1),
(48, 80, 1, 1528, '2022-04-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER_ITEMS`
--

CREATE TABLE `ORDER_ITEMS` (
  `itemID` int NOT NULL,
  `listingId` int NOT NULL,
  `orderID` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ORDER_ITEMS`
--

INSERT INTO `ORDER_ITEMS` (`itemID`, `listingId`, `orderID`, `name`, `price`, `quantity`) VALUES
(13, 1156488806, 7, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(14, 269384394, 7, 'Nylon Webbing by the Yard - 27...', 532, 1),
(15, 1156488806, 8, 'Mouse in a Suitcase Crochet Pattern', 393, 0),
(18, 1156488806, 12, 'Mouse in a Suitcase Crochet Pattern', 393, 2),
(19, 91685909, 12, 'Pick Case Guitar Banjo Mandolin...', 3200, 1),
(20, 1156488806, 13, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(21, 1156488806, 14, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(22, 1156488806, 15, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(23, 1156488806, 16, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(24, 1156488806, 17, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(25, 1156488806, 18, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(26, 515765456, 19, 'Black Rose Google Pixel Case Phone...', 3234, 1),
(27, 1156488806, 20, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(30, 1111784545, 23, 'Brown & Beige Lens Protection iPhone...', 2525, 1),
(31, 1156488806, 23, 'Mouse in a Suitcase Crochet Pattern', 786, 2),
(32, 1111784545, 24, 'Brown & Beige Lens Protection iPhone...', 2525, 1),
(33, 1156488806, 24, 'Mouse in a Suitcase Crochet Pattern', 786, 2),
(34, 1156488806, 25, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(35, 1156488806, 26, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(36, 1156488806, 27, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(37, 1156488806, 28, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(38, 1156488806, 29, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(39, 1156488806, 30, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(40, 1156488806, 31, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(41, 1156488806, 32, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(42, 1156488806, 33, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(43, 1156488806, 34, 'Mouse in a Suitcase Crochet Pattern', 393, 1),
(44, 1156488806, 35, 'Mouse in a Suitcase Crochet Pattern', 393, 2),
(45, 269384394, 35, 'Nylon Webbing by the Yard - 27...', 532, 1),
(46, 1196902639, 36, 'Shawn Mendes Wonder North America...', 2727, 1),
(47, 1196902639, 37, 'Shawn Mendes Wonder North America...', 2727, 1),
(48, 1156488806, 38, 'Mouse in a Suitcase Crochet Pattern', 786, 1),
(49, 1156488806, 39, 'Mouse in a Suitcase Crochet Pattern', 413, 1),
(50, 1156488806, 40, 'Mouse in a Suitcase Crochet Pattern', 413, 1),
(51, 703041103, 41, 'Orange and Cream, Layered DIY Clay...', 271, 1),
(52, 1156488806, 42, 'Mouse in a Suitcase Crochet Pattern', 790, 1),
(53, 703041103, 43, 'Orange and Cream, Layered DIY Clay...', 270, 1),
(54, 269384394, 44, 'Nylon Webbing by the Yard - 27...', 559, 2),
(55, 1156488806, 45, 'Mouse in a Suitcase Crochet Pattern', 412, 2),
(56, 1156488806, 46, 'Mouse in a Suitcase Crochet Pattern', 786, 1),
(57, 1156488806, 47, 'Mouse in a Suitcase Crochet Pattern', 412, 1),
(58, 1156488806, 48, 'Mouse in a Suitcase Crochet Pattern', 412, 1),
(59, 269384394, 48, 'Nylon Webbing by the Yard - 27...', 558, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PASSWORD_CHANGES`
--

CREATE TABLE `PASSWORD_CHANGES` (
  `passwordID` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int NOT NULL,
  `changeType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PASSWORD_CHANGES`
--

INSERT INTO `PASSWORD_CHANGES` (`passwordID`, `date`, `uID`, `changeType`) VALUES
(10, '2022-03-21 18:08:10', 29, 'RESET'),
(11, '2022-04-05 03:45:45', 29, 'UPDATE'),
(12, '2022-04-05 03:48:35', 29, 'UPDATE'),
(13, '2022-04-05 03:49:17', 29, 'UPDATE'),
(14, '2022-04-06 02:48:31', 2, 'UPDATE'),
(15, '2022-04-06 02:48:44', 3, 'UPDATE'),
(16, '2022-04-10 18:58:39', 10, 'UPDATE'),
(17, '2022-04-11 15:34:37', 59, 'UPDATE'),
(18, '2022-04-11 15:34:39', 59, 'UPDATE'),
(19, '2022-04-11 15:36:19', 60, 'UPDATE'),
(20, '2022-04-11 15:41:02', 60, 'UPDATE'),
(21, '2022-04-11 15:41:34', 60, 'UPDATE'),
(22, '2022-04-11 15:42:13', 60, 'UPDATE'),
(23, '2022-04-11 15:45:22', 61, 'UPDATE'),
(24, '2022-04-11 15:46:06', 3, 'UPDATE'),
(25, '2022-04-11 15:47:56', 59, 'UPDATE'),
(26, '2022-04-11 15:49:30', 63, 'UPDATE'),
(27, '2022-04-11 15:51:43', 66, 'UPDATE'),
(28, '2022-04-11 16:50:05', 2, 'UPDATE'),
(29, '2022-04-11 16:50:08', 2, 'UPDATE'),
(30, '2022-04-13 00:41:06', 2, 'UPDATE'),
(31, '2022-04-13 00:41:10', 2, 'UPDATE'),
(32, '2022-04-13 01:04:32', 2, 'UPDATE'),
(33, '2022-04-13 01:04:35', 2, 'UPDATE'),
(34, '2022-04-13 12:11:07', 2, 'UPDATE'),
(35, '2022-04-17 14:55:15', 29, 'UPDATE'),
(36, '2022-04-17 14:55:34', 29, 'UPDATE'),
(37, '2022-04-17 17:56:38', 71, 'UPDATE'),
(38, '2022-04-17 17:58:18', 71, 'UPDATE'),
(39, '2022-04-17 18:00:40', 71, 'UPDATE'),
(40, '2022-04-17 18:03:47', 71, 'UPDATE'),
(41, '2022-04-17 18:36:00', 71, 'UPDATE'),
(42, '2022-04-17 18:37:22', 29, 'UPDATE'),
(43, '2022-04-17 18:37:31', 29, 'UPDATE'),
(44, '2022-04-17 18:57:41', 29, 'UPDATE'),
(45, '2022-04-17 18:59:02', 71, 'UPDATE'),
(46, '2022-04-18 16:22:39', 72, 'UPDATE'),
(47, '2022-04-18 16:24:03', 72, 'UPDATE'),
(48, '2022-04-18 16:46:27', 74, 'RESET'),
(49, '2022-04-18 17:07:26', 74, 'UPDATE'),
(50, '2022-04-18 17:11:29', 73, 'UPDATE'),
(51, '2022-04-18 17:11:50', 29, 'UPDATE'),
(52, '2022-04-22 14:53:34', 78, 'UPDATE'),
(53, '2022-04-23 16:03:00', 29, 'RESET');

-- --------------------------------------------------------

--
-- Table structure for table `POINT_ADJUSTMENT`
--

CREATE TABLE `POINT_ADJUSTMENT` (
  `adjustmentID` int NOT NULL,
  `pointReason` varchar(50) NOT NULL,
  `pointValue` int NOT NULL,
  `date` date DEFAULT NULL,
  `DPointID` int DEFAULT NULL,
  `sponsorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `POINT_ADJUSTMENT`
--

INSERT INTO `POINT_ADJUSTMENT` (`adjustmentID`, `pointReason`, `pointValue`, `date`, `DPointID`, `sponsorID`) VALUES
(32, 'Great Driving!', 5, '2022-03-10', 21, 2),
(33, 'Free Points!', 10, '2022-03-10', 22, 2),
(34, 'Great Driving!', -2, '2022-03-10', 21, 2),
(35, 'Great Driving!', 3, '2022-03-10', 23, 2),
(36, 'Great Driving!', 10, '2022-03-10', 24, 2),
(37, 'Bad Driving!', -2, '2022-03-10', 23, 2),
(38, 'Great Driving!', 10, '2022-03-10', 25, 1),
(39, 'Bad Driving!', -3, '2022-03-10', 25, 1),
(40, 'Great Driving!', 2, '2022-03-10', 26, 1),
(41, 'Bad Driving!', -1, '2022-03-10', 27, 1),
(42, 'Free Points!', 10, '2022-03-10', 25, 1),
(43, 'Free Points!', 9, '2022-03-10', 26, 1),
(44, 'Bad Driving!', -5, '2022-03-10', 27, 1),
(45, 'Great Driving!', 4, '2022-03-11', 22, 2),
(46, 'Free Points!', 1000, '2022-03-31', 25, 1),
(47, 'Purchase Made on 2022-4-1', -925, '2022-04-01', 25, 1),
(48, 'Great Driving!', 4, '2022-04-01', 22, 2),
(49, 'Purchase Made on 2022-4-1', 0, '2022-04-01', 25, 1),
(50, 'Free Points!', 10000, '2022-04-01', 25, 1),
(51, 'Purchase Made on 2022-4-1', -3986, '2022-04-01', 25, 1),
(52, 'Purchase Made on 2022-4-1', -393, '2022-04-01', 25, 1),
(53, 'Purchase Made on 2022-4-1', -393, '2022-04-01', 25, 1),
(54, 'Purchase Made on 2022-4-1', -393, '2022-04-01', 25, 1),
(55, 'Purchase Made on 2022-4-1', -393, '2022-04-01', 25, 1),
(56, 'Purchase Made on 2022-4-1', -393, '2022-04-01', 25, 1),
(57, 'Purchase Made on 2022-4-2', -393, '2022-04-02', 25, 1),
(58, 'Great Driving!', 10000, '2022-04-02', 22, 2),
(59, 'Purchase Made on 2022-4-2', -3234, '2022-04-02', 22, 2),
(94, 'Order Refund for order $17', 393, '2022-04-02', 25, 1),
(95, 'Order Refund for order #18', 393, '2022-04-02', 25, 1),
(96, 'Purchase Made on 2022-4-3', -393, '2022-04-03', 25, 1),
(97, 'Free Points!', 10000, '2022-04-06', 21, 2),
(98, 'Purchase Made on 2022-4-6', -4097, '2022-04-06', 21, 2),
(99, 'Purchase Made on 2022-4-6', -4097, '2022-04-06', 22, 2),
(100, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(101, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(102, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(103, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(104, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(105, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(106, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(107, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(108, 'Purchase Made on 2022-4-6', -393, '2022-04-06', 25, 1),
(109, 'Purchase Made on 2022-4-7', -1318, '2022-04-07', 25, 1),
(110, 'Order Refund for order #35', 1318, '2022-04-07', 25, 1),
(111, 'Great Driving!', 2147483647, '2022-04-11', 31, 11),
(112, 'Purchase Made on 2022-4-11', -2727, '2022-04-11', 31, 11),
(113, 'Purchase Made on 2022-4-11', -2727, '2022-04-11', 31, 11),
(114, 'Free Points!', 10000, '2022-04-11', 30, 2),
(115, 'Purchase Made on 2022-4-11', -786, '2022-04-11', 30, 2),
(116, 'Purchase Made on 2022-4-12', -413, '2022-04-12', 25, 1),
(117, 'Purchase Made on 2022-4-12', -413, '2022-04-12', 25, 1),
(118, 'Continued awesomeness', 200, '2022-04-17', 32, 2),
(119, 'OOPS', -10, '2022-04-17', 32, 2),
(120, 'Fixing the oops', 10, '2022-04-17', 32, 2),
(121, 'Purchase Made on 2022-4-17', -271, '2022-04-17', 32, 2),
(122, 'Order Refund for order #41', 271, '2022-04-17', 32, 2),
(123, 'Purchase Made on 2022-4-17', -790, '2022-04-17', 32, 2),
(124, 'Great Driving!', 1, '2022-04-17', 22, 2),
(125, 'Great Driving!', 300, '2022-04-18', 22, 2),
(126, '2000 points', 2000, '2022-04-18', 22, 2),
(127, 'Bad Driving!', -10, '2022-04-18', 22, 2),
(128, 'Purchase Made on 2022-4-18', -270, '2022-04-18', 22, 2),
(129, 'Purchase Made on 2022-4-18', -1117, '2022-04-18', 25, 1),
(130, 'Order Refund for order #44', 1117, '2022-04-18', 25, 1),
(131, 'Purchase Made on 2022-4-18', -824, '2022-04-18', 25, 1),
(132, 'Purchase Made on 2022-4-18', -786, '2022-04-18', 22, 2),
(133, 'Great Driving!', 50, '2022-04-19', 25, 1),
(134, 'Purchase Made on 2022-4-20', -412, '2022-04-20', 25, 1),
(136, 'Great Driving!', 10000, '2022-04-22', 35, 2),
(137, 'Free Points!', 20000, '2022-04-22', 36, 1),
(138, 'Bad Driving!', -500, '2022-04-22', 36, 1),
(139, 'Purchase Made on 2022-4-22', -1528, '2022-04-22', 36, 1),
(140, 'Keep up the good work', 50, '2022-04-22', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `RESET_CODE`
--

CREATE TABLE `RESET_CODE` (
  `resetId` int NOT NULL,
  `code` int NOT NULL,
  `email` varchar(25) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `RESET_CODE`
--

INSERT INTO `RESET_CODE` (`resetId`, `code`, `email`, `time`) VALUES
(1, 611050, 'ecanouse@gmail.com', '2022-03-15 18:34:54'),
(2, 495293, 'ecanouse@gmail.com', '2022-03-17 20:02:47'),
(3, 296098, 'ecanouse@gmail.com', '2022-03-17 20:06:57'),
(4, 687280, 'ecanouse@gmail.com', '2022-03-21 17:00:29'),
(5, 869528, 'ecanouse@gmail.com', '2022-03-21 17:50:37'),
(6, 635756, 'noel@clemson.edu', '2022-04-17 18:00:50'),
(7, 322595, 'noel@clemson.edu', '2022-04-17 18:08:09'),
(8, 935698, 'ecanouse@gmail.com', '2022-04-17 18:41:43'),
(9, 716777, 'devin.j.narula@gmail.com', '2022-04-18 16:45:36'),
(10, 374971, 'devin.j.narula@gmail.com', '2022-04-18 16:46:49'),
(11, 490081, 'devin.j.narula@gmail.com', '2022-04-18 16:50:53'),
(12, 231654, 'ecanouse@gmail.com', '2022-04-21 00:55:43'),
(13, 966059, 'ecanouse@gmail.com', '2022-04-21 00:58:47'),
(14, 568251, 'ecanouse@gmail.com', '2022-04-21 00:59:12'),
(15, 613671, 'ecanouse@gmail.com', '2022-04-21 01:01:19'),
(16, 893345, 'ecanouse@gmail.com', '2022-04-21 01:05:21'),
(17, 724419, 'ecanouse@gmail.com', '2022-04-21 14:21:51'),
(18, 863693, 'ecanouse@gmail.com', '2022-04-22 23:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR_CATALOG`
--

CREATE TABLE `SPONSOR_CATALOG` (
  `catalogID` int NOT NULL,
  `listingId` int NOT NULL,
  `sponsorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SPONSOR_CATALOG`
--

INSERT INTO `SPONSOR_CATALOG` (`catalogID`, `listingId`, `sponsorID`) VALUES
(1, 1156488806, 1),
(2, 234064691, 1),
(3, 869547756, 1),
(4, 1013693015, 1),
(5, 637333414, 1),
(6, 227694919, 1),
(7, 91685909, 1),
(8, 269384394, 1),
(9, 463257100, 1),
(10, 235508467, 1),
(13, 1111784545, 2),
(14, 1156488806, 2),
(20, 703041103, 2),
(22, 1153262267, 2),
(24, 1084536634, 2),
(25, 1061151451, 2),
(26, 981366081, 2),
(27, 1196902639, 11),
(28, 1213572657, 2),
(29, 1197714220, 2),
(30, 1030577939, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR_ORG`
--

CREATE TABLE `SPONSOR_ORG` (
  `sponsorID` int NOT NULL,
  `orgName` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` char(5) NOT NULL,
  `pointsPerDollar` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SPONSOR_ORG`
--

INSERT INTO `SPONSOR_ORG` (`sponsorID`, `orgName`, `email`, `street`, `city`, `state`, `zip`, `pointsPerDollar`) VALUES
(1, 'Walmart', 'walmart@email.net', '123 Walmart St', 'Walmart City', 'SC', '12345', 105),
(2, 'Amazon', 'amazon@email.net', '123 Amazon St', 'Amazon City', 'SC', '12345', 200),
(3, 'The New Organization', 'thenew@organization.com', '890 Street Dr', 'Citytropolis', 'ST', '12345', 100),
(6, 'The New Organization', 'thenew@organization.com', '890 Street Dr', 'Citytropolis', 'ST', '12345', 100),
(7, 'FedEx', 'fedex@fedex.web', '3434 Fedex St', 'Fedville', 'FE', '54612', 100),
(9, 'UPS', 'ups@mail.ups', '888 UPS Lane', 'UPSity', 'UP', '12345', 100),
(10, 'Test', 'test@email.net', '123 test st', 'Test', 'TT', '34532', 2),
(11, 'Ninestar', 'jaross@clemson.edu', 'states avenue', 'juneau', 'AK', '99801', 100),
(12, 'spontest', 'spontest@gmail.com', '123 clemson street', 'clemson', 'sc', '29631', 1),
(13, 'Aramark', 'ara@mark.mail', '234 Aramark Trail', 'Aramarkey', 'AR', '78956', 100),
(14, 'Clemson', 'clem@son.edu', '123 Clemson Cove', 'Clemson', 'SC', '29632', 100),
(15, 'New Org Signup', 'neworgsignup@email.net', '123 street st', 'Clemson', 'SC', '29631', 100);

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `uID` int NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `userType` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`uID`, `lname`, `fname`, `username`, `password`, `email`, `phone`, `userType`, `status`) VALUES
(2, 'Guy', 'Driver', 'driver', 'U2FsdGVkX1/PLM3Esh8pq0VVK0vqISeIHiHY0f9wWD4=', 'driver@email.net', '0987654562', 0, 1),
(3, 'Girl', 'Sponsor', 'sponsor', 'U2FsdGVkX19Ot4eRInSfK3Caka5Kpub6iComU0luapU=', 'sponsor@email.net', '0987654562', 1, 1),
(4, 'Person', 'Admin', 'admin', 'U2FsdGVkX1/WfTGySOSx5y9++KY5wRxfVNkZ2b45QtA=', 'admin@email.net', '0987654562', 2, 1),
(9, 'Test1', 'Driver1', 'driver1', 'U2FsdGVkX1/uY5Li1H7IZaYHy+I0AtFe/4JyGaIQwnI=', 'driver1@email.net', '1363258522', 0, 1),
(10, 'Test2', 'Driver2', 'driver2', 'U2FsdGVkX1/Cpxug2tzwL6TONMjb+Fz9PxKPMME/KA4=', 'driver2@email.net', '8351057676', 0, 1),
(11, 'Test3', 'Driver3', 'driver3', 'U2FsdGVkX1/uY5Li1H7IZaYHy+I0AtFe/4JyGaIQwnI=', 'driver3@email.net', '9874565673', 0, 1),
(12, 'Test4', 'Driver4', 'driver4', 'U2FsdGVkX1/uY5Li1H7IZaYHy+I0AtFe/4JyGaIQwnI=', 'driver4@email.net', '8375906512', 0, 1),
(13, 'Employee', 'Walmart', 'walmarte', 'U2FsdGVkX1/uY5Li1H7IZaYHy+I0AtFe/4JyGaIQwnI=', 'walmarte@email.net', '7425900654', 1, 1),
(14, 'Employee', 'Amazon', 'amazone', 'U2FsdGVkX1/uY5Li1H7IZaYHy+I0AtFe/4JyGaIQwnI=', 'amazone@email.net', '3557852536', 1, 1),
(27, 'name', 'admin', 'admin8', 'U2FsdGVkX1967k0R7wyqfudHhbuEQ+1HrmBA9B29wlA=', 'ad@mail.com', '123-456-8883', 2, 1),
(28, 'User', 'New', 'newUser4', 'U2FsdGVkX1/E44Qg6608/uDDWtmMcF4Wxh+X48oJUl8=', 'newuser@mail.com', '1234567890', 0, 1),
(29, 'Canouse', 'Elise', 'ecanous', 'U2FsdGVkX19OV11u8JRTGvPG+ob1aO3IgQc+2Br+zGw=', 'ecanouse@gmail.com', '1112223333', 0, 1),
(41, 'Driver', 'New', 'newUtypeDriver', 'U2FsdGVkX1/VnLKCV7yx70/GtjXqg+xAlCy10vWGi24=', 'driver@drivermail.com', '1234567890', 0, 0),
(42, 'user9', 'user9', 'user9', 'U2FsdGVkX19+pOvX+6c7+ba2CkA78oL3DEWwEirmH7M=', 'mail@ymail.mail', '1111111111', 0, 0),
(43, 'test', 'test', 'testsignup', 'U2FsdGVkX1/rlbDrK43TlsdffQ7nex+TWk8XVQF/2bA=', 'testsign@email.net', '7593853033', 0, 0),
(44, 'test2', 'test2', 'testsignup2', 'U2FsdGVkX1+LtIjx4yod4qsR3UiIOCDcKzwM/cSHu9M=', 'test2email@email.net', '7693038596', 0, 0),
(45, 'test3', 'test3', 'signuptest3', 'U2FsdGVkX19m1295R2yz0q/dXnTuUV54qKP4BXTaghc=', 'test3email@email.net', '7694837594', 0, 0),
(46, 'name', 'user', 'uname', 'U2FsdGVkX1/wmIWCh6r1exr9iRCW9NiWfiu3qJbvGY8=', 'name@user.mil', '2222222222', 0, 0),
(47, 'name', 'spon', 'sponname', 'U2FsdGVkX1/pE+lf+51CJiU1w8o+nKrkfgIibijKIKI=', 'spon@name.mail', '3333333333', 1, 0),
(50, 'Goodwin', 'Patrick', 'username2', 'U2FsdGVkX19T/EXfGwujK3nh+balvSF5MxHYE4ohH+Q=', 'phgoodw@clemson.edu', '1231231234', 0, 1),
(51, 'lastname', 'name', 'newspon', 'U2FsdGVkX1+d1vKVDTx3SJ4MEYgWNxTN9WCm484NzAE=', 'newspon@spon.spon', '1112223333', 1, 1),
(52, 'Canouse', 'Elise', 'asdfasdf', 'U2FsdGVkX1/3FBsLxKCDjQbiImvzvx9md6NrvKbf/6A=', 'email@email.email', '4564564563', 1, 1),
(53, 'lastname', 'user', 'uname7', 'U2FsdGVkX19QfLfl7Dm08Wf9xqblSlkTVnkdzz1N+f8=', 'newuser@user.user', '1112223333', 1, 1),
(54, 'spon8', 'sponsor', 'sponsor8', 'U2FsdGVkX1+MQnUcqPRD5d2c3bEtMf4spt8tloVN6nw=', 'sponsor8@spon.8', '1112223333', 1, 1),
(55, 'spon9', 'spon', 'spon9', 'U2FsdGVkX1/dtiFCQOQM1/gJuBhVog9j6EHQZabRxrE=', 'spon9@mail.spon', '1234567890', 1, 1),
(56, 'spon', 'ups', 'upsspon', 'U2FsdGVkX18FmL2Ovir7H0LvUDrXzpWBjrY8TL73ngA=', 'spon@ups.ups', '1234567890', 1, 1),
(57, 'spon12', 'spon', 'spon12', 'U2FsdGVkX1/b+rfoUsaQRIwOgQSGVha+9A/ZEo29HrU=', 'spon@12.spon12', '7778889999', 1, 1),
(58, 'spon7', 'spon', 'spon7', 'U2FsdGVkX1/SSXSNgE1Ut1Ezb6AnGhOwnQZT/hBYOKQ=', 'spon7@7mail.spon', '7894561230', 1, 1),
(59, 'funk', 'nick', 'Clemson12345', 'U2FsdGVkX18EhLuIvaXswDNKYyVXmnyEi8SIVFiiIv0=', 'Clemsontest@gmail.com', '8031234567', 0, 1),
(60, 'Parks', 'Michael', 'mjparks', 'U2FsdGVkX19cEd6AduN9OnhuhYoFY5XbqbTkx5Da+U8=', 'mjparks@clemson.edu', '7044848000', 0, 1),
(61, 'Ross', 'Joe', 'coolguy2000', 'U2FsdGVkX1+LdP7A1SZd8J8iXhl2Kspgj2QUZJ+7V6c=', 'jaross@clemson.edu', '101-555-6192', 1, 1),
(62, 'Driverman', 'Michaeldriver', 'mjdriver', 'U2FsdGVkX1+oUY47NEZ0tWTijgKeSkH7EWEiwjtPdHE=', 'johntest@yahoo.com', '7043498105', 1, 1),
(63, 'test', 'sponsorrr', 'spontest', 'U2FsdGVkX18GuXnLjDLicNaVuXu2elrxR3Q2WdFmULQ=', 'spontest@gmail.com', '8031234567', 1, 1),
(64, 'sponsordude', 'sponsorman', 'mrsponsor100', 'U2FsdGVkX1/sIerKK3YLv/tw2+CpGppAcno/BZcbpxQ=', 'sponsor@sponsor.sponsor', '1111111111', 1, 1),
(65, 'test', 'admintest', 'admintest', 'U2FsdGVkX19VI1R1Hxx0morX0eDtlpAMKKLHS+dB2G0=', 'admintest@gmail.com', '8021234567', 2, 1),
(66, 'Driver', 'New', 'newdriver2', 'U2FsdGVkX19X3at8oDlK3uDAdhU80SdBLBHSKaCGvVo=', 'ndriver2@clemson.edu', '7046942069', 0, 1),
(67, 'admin', 'admin', 'admin221', 'U2FsdGVkX19zb+l+l4iv5eeORs/CzR+owrgupyNvVjs=', 'admin@admin.admin', '2222222222', 2, 1),
(68, 'spon1', 'sponsor', 'spon1', 'U2FsdGVkX1+bBtNorpzYDKGyTf3Tb6aDAk0pigz3b98=', 'spon1@spon.1', '1234567890', 1, 1),
(69, 'spon2', 'sponsor', 'spon2', 'U2FsdGVkX19gy1pUb+WS0Nm4C0y90zQndD0vSl4RML0=', 'spon2@mail.spon', '7894561523', 1, 1),
(70, '14spon', 'spon', 'spon14', 'U2FsdGVkX1/g0RZrDGLYS89k/8wchWGauaAkCrzTSFY=', 'spon@mail.spmail', '1112223333', 1, 1),
(71, 'Wheeler', 'Jimberly', 'JWheeler56TrucksRLife', 'U2FsdGVkX1+uXQrodtWCdSO2AxV8pk4WsSUDhQpplyw=', 'noel@clemson.edu', '774-328-Truk', 0, 1),
(72, 'Driver', 'Newtest', 'newtestdriver', 'U2FsdGVkX1/f4FMO7u0Vh3JbsWSyltP85W4KL84EALs=', 'newtestdriver@gmail.com', '2345678765', 0, 1),
(73, 'Test', 'TestSpons', 'NewSpons', 'U2FsdGVkX1+27h0fvY3Vn/T2V8ATBHDyuZSojmlVza8=', 'newspons@email.net', '2345678654', 1, 1),
(74, 'Test', 'NewAdmin', 'newadmin', 'U2FsdGVkX1/f5fgZkLefudoyM9rFcVZYui+gEeBgxoA=', 'newadmin@gmail.com', '2345678762', 2, 1),
(75, 'Signup', 'Driver', 'signupdriver', 'U2FsdGVkX1/iUklSwThNxH9DlO+d/4aInlvjH4rtL/c=', 'signupdriver@email.net', '739876598', 0, 1),
(76, 'Signup', 'Sponsor', 'signupspons', 'U2FsdGVkX1+3U3QIJdT3q+lRhQh5XjqYEw/PD5Io+Ys=', 'signupspons@email.net', '749873409', 1, 1),
(77, 'Sponsor', 'Amazon', 'AmazonSpons', 'U2FsdGVkX1/iSwb9vCmuvPo12KIH4bJTgpRsqfFPsgw=', 'AmazonSpons@email.net', '876587623', 1, 1),
(78, 'Demo', 'Admin', 'DemoAdmin', 'U2FsdGVkX19GiZ3m6hYCizOwf/BkR0JO+t/039lsyAM=', 'demoadmin@email.net', '2547687123', 2, 1),
(79, 'Demo', 'Sponsor', 'DemoSponsor', 'U2FsdGVkX18Nv7V0HCjrgcJ7celUCUO+u1qAq4dsmdc=', 'DemoSponsor@email.net', '7609125643', 1, 1),
(80, 'Driver', 'Demo', 'DemoDriver', 'U2FsdGVkX1+FNExPu7E8qKH6NB0W9eTPeoLmKbG0J2E=', 'demodriver@email.net', '1234376543', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `USER_SPONSOR_REL`
--

CREATE TABLE `USER_SPONSOR_REL` (
  `relID` int NOT NULL,
  `uID` int NOT NULL,
  `sponsorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `USER_SPONSOR_REL`
--

INSERT INTO `USER_SPONSOR_REL` (`relID`, `uID`, `sponsorID`) VALUES
(2, 3, 2),
(4, 10, 1),
(5, 11, 1),
(6, 12, 2),
(7, 13, 1),
(8, 14, 2),
(10, 10, 2),
(19, 11, 2),
(30, 9, 1),
(32, 56, 9),
(34, 58, 2),
(35, 61, 11),
(37, 60, 11),
(38, 63, 2),
(39, 59, 12),
(40, 64, 11),
(42, 69, 14),
(43, 70, 2),
(44, 71, 2),
(46, 73, 1),
(47, 2, 2),
(48, 2, 1),
(50, 76, 15),
(51, 77, 2),
(52, 9, 2),
(53, 79, 1),
(54, 80, 1),
(55, 80, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCOUNT_CODE`
--
ALTER TABLE `ACCOUNT_CODE`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `sponsorId` (`sponsorID`);

--
-- Indexes for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  ADD PRIMARY KEY (`applicationsID`),
  ADD KEY `FK_uID_idx` (`uID`),
  ADD KEY `FK_APPSponsorID_idx` (`sponsorID`);

--
-- Indexes for table `CATALOG_IMAGES`
--
ALTER TABLE `CATALOG_IMAGES`
  ADD PRIMARY KEY (`imageid`);

--
-- Indexes for table `DRIVER_POINTS`
--
ALTER TABLE `DRIVER_POINTS`
  ADD PRIMARY KEY (`DPointID`),
  ADD KEY `FK_sponsorID_idx` (`sponsorID`),
  ADD KEY `FK_PointsUID_idx` (`uID`);

--
-- Indexes for table `LOCKOUT`
--
ALTER TABLE `LOCKOUT`
  ADD PRIMARY KEY (`lockID`);

--
-- Indexes for table `LOGIN_ATTEMPTS`
--
ALTER TABLE `LOGIN_ATTEMPTS`
  ADD PRIMARY KEY (`loginsID`),
  ADD KEY `FK_loginUID_idx` (`uID`);

--
-- Indexes for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `FK_OrderUID_idx` (`uID`),
  ADD KEY `FK_OrderSponsorID_idx` (`sponsorID`);

--
-- Indexes for table `ORDER_ITEMS`
--
ALTER TABLE `ORDER_ITEMS`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `FK_orderID_idx` (`orderID`);

--
-- Indexes for table `PASSWORD_CHANGES`
--
ALTER TABLE `PASSWORD_CHANGES`
  ADD PRIMARY KEY (`passwordID`),
  ADD KEY `FK_PasswordUID_idx` (`uID`);

--
-- Indexes for table `POINT_ADJUSTMENT`
--
ALTER TABLE `POINT_ADJUSTMENT`
  ADD PRIMARY KEY (`adjustmentID`),
  ADD KEY `DPointID_idx` (`DPointID`),
  ADD KEY `FK_PointSponsorID_idx` (`sponsorID`);

--
-- Indexes for table `RESET_CODE`
--
ALTER TABLE `RESET_CODE`
  ADD PRIMARY KEY (`resetId`);

--
-- Indexes for table `SPONSOR_CATALOG`
--
ALTER TABLE `SPONSOR_CATALOG`
  ADD PRIMARY KEY (`catalogID`),
  ADD KEY `FK_sponsorID_idx` (`sponsorID`);

--
-- Indexes for table `SPONSOR_ORG`
--
ALTER TABLE `SPONSOR_ORG`
  ADD PRIMARY KEY (`sponsorID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `USER_SPONSOR_REL`
--
ALTER TABLE `USER_SPONSOR_REL`
  ADD PRIMARY KEY (`relID`),
  ADD KEY `FK_uID_idx` (`uID`),
  ADD KEY `FK_sponsorID_idx` (`sponsorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACCOUNT_CODE`
--
ALTER TABLE `ACCOUNT_CODE`
  MODIFY `code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1897;

--
-- AUTO_INCREMENT for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  MODIFY `applicationsID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `CATALOG_IMAGES`
--
ALTER TABLE `CATALOG_IMAGES`
  MODIFY `imageid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `DRIVER_POINTS`
--
ALTER TABLE `DRIVER_POINTS`
  MODIFY `DPointID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `LOCKOUT`
--
ALTER TABLE `LOCKOUT`
  MODIFY `lockID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `LOGIN_ATTEMPTS`
--
ALTER TABLE `LOGIN_ATTEMPTS`
  MODIFY `loginsID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1289;

--
-- AUTO_INCREMENT for table `ORDER`
--
ALTER TABLE `ORDER`
  MODIFY `orderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ORDER_ITEMS`
--
ALTER TABLE `ORDER_ITEMS`
  MODIFY `itemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `PASSWORD_CHANGES`
--
ALTER TABLE `PASSWORD_CHANGES`
  MODIFY `passwordID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `POINT_ADJUSTMENT`
--
ALTER TABLE `POINT_ADJUSTMENT`
  MODIFY `adjustmentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `RESET_CODE`
--
ALTER TABLE `RESET_CODE`
  MODIFY `resetId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `SPONSOR_CATALOG`
--
ALTER TABLE `SPONSOR_CATALOG`
  MODIFY `catalogID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `SPONSOR_ORG`
--
ALTER TABLE `SPONSOR_ORG`
  MODIFY `sponsorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `uID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `USER_SPONSOR_REL`
--
ALTER TABLE `USER_SPONSOR_REL`
  MODIFY `relID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCOUNT_CODE`
--
ALTER TABLE `ACCOUNT_CODE`
  ADD CONSTRAINT `ACCOUNT_CODE_ibfk_1` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `APPLICATION`
--
ALTER TABLE `APPLICATION`
  ADD CONSTRAINT `FK_APPSponsorID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`),
  ADD CONSTRAINT `FK_APPUID` FOREIGN KEY (`uID`) REFERENCES `USER` (`uID`);

--
-- Constraints for table `DRIVER_POINTS`
--
ALTER TABLE `DRIVER_POINTS`
  ADD CONSTRAINT `FK_PointsUID` FOREIGN KEY (`uID`) REFERENCES `USER` (`uID`),
  ADD CONSTRAINT `FK_sponsorID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`);

--
-- Constraints for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD CONSTRAINT `FK_OrderSponsorID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`),
  ADD CONSTRAINT `FK_OrderUID` FOREIGN KEY (`uID`) REFERENCES `USER` (`uID`);

--
-- Constraints for table `ORDER_ITEMS`
--
ALTER TABLE `ORDER_ITEMS`
  ADD CONSTRAINT `FK_orderID` FOREIGN KEY (`orderID`) REFERENCES `ORDER` (`orderID`);

--
-- Constraints for table `PASSWORD_CHANGES`
--
ALTER TABLE `PASSWORD_CHANGES`
  ADD CONSTRAINT `FK_PasswordUID` FOREIGN KEY (`uID`) REFERENCES `USER` (`uID`);

--
-- Constraints for table `POINT_ADJUSTMENT`
--
ALTER TABLE `POINT_ADJUSTMENT`
  ADD CONSTRAINT `FK_DPointID` FOREIGN KEY (`DPointID`) REFERENCES `DRIVER_POINTS` (`DPointID`),
  ADD CONSTRAINT `FK_PointSponsorID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`);

--
-- Constraints for table `SPONSOR_CATALOG`
--
ALTER TABLE `SPONSOR_CATALOG`
  ADD CONSTRAINT `FK_CatalogSponsorID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`);

--
-- Constraints for table `USER_SPONSOR_REL`
--
ALTER TABLE `USER_SPONSOR_REL`
  ADD CONSTRAINT `FK_sID` FOREIGN KEY (`sponsorID`) REFERENCES `SPONSOR_ORG` (`sponsorID`),
  ADD CONSTRAINT `FK_uID` FOREIGN KEY (`uID`) REFERENCES `USER` (`uID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
