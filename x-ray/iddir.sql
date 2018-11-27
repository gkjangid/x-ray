-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2018 at 06:41 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iddir`
--

-- --------------------------------------------------------

--
-- Table structure for table `ab3asb7eRt54sdEs_transaction_history`
--

CREATE TABLE `ab3asb7eRt54sdEs_transaction_history` (
  `transaction_id` int(11) NOT NULL,
  `transaction_type` enum('month','year') NOT NULL DEFAULT 'month' COMMENT '1=3 Months,2=1 Year',
  `transaction_client_id` int(11) NOT NULL,
  `transaction_plan_id` int(20) NOT NULL,
  `transaction_amount` varchar(250) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_payer_id` varchar(250) DEFAULT NULL,
  `transaction_txn_id` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `abb7e69drEs_style_preferences`
--

CREATE TABLE `abb7e69drEs_style_preferences` (
  `sp_id` int(10) NOT NULL,
  `sp_title` varchar(250) NOT NULL,
  `sp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abb7e69drEs_style_preferences`
--

INSERT INTO `abb7e69drEs_style_preferences` (`sp_id`, `sp_title`, `sp_date`) VALUES
(4, 'scandinavian', '2017-08-01'),
(5, 'modern', '2017-08-18'),
(6, 'industrial', '2017-08-01'),
(7, 'retro', '2017-08-01'),
(11, 'Country', '2017-08-08'),
(12, 'Eclectic', '2017-10-27'),
(13, 'Contemporary', '2017-08-08'),
(14, 'Mid Century Modern', '2017-08-08'),
(15, 'Transitional', '2017-08-08'),
(16, 'Hollywood Glam', '2017-08-08'),
(17, 'Coastal', '2017-08-08'),
(18, 'Minimalist', '2017-09-27'),
(19, 'Mediterranean', '2017-09-27'),
(20, 'Asian/Oriental', '2018-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `bF4eg64s_membership_plans`
--

CREATE TABLE `bF4eg64s_membership_plans` (
  `plan_id` int(10) NOT NULL,
  `plan_title` varchar(250) NOT NULL,
  `plan_features_homepage` int(10) NOT NULL,
  `plan_listing` int(10) NOT NULL,
  `plan_repost_credits` int(10) NOT NULL,
  `plan_portfolio_upload` int(10) NOT NULL,
  `plan_designer_profile` enum('0','1') NOT NULL DEFAULT '0',
  `plan_max_skills` int(10) NOT NULL,
  `plan_client_endorsement` enum('0','1') NOT NULL DEFAULT '0',
  `plan_per_month_price` float NOT NULL,
  `plan_3month_price` float NOT NULL,
  `plan_year_price` float NOT NULL,
  `plan_added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bF4eg64s_membership_plans`
--

INSERT INTO `bF4eg64s_membership_plans` (`plan_id`, `plan_title`, `plan_features_homepage`, `plan_listing`, `plan_repost_credits`, `plan_portfolio_upload`, `plan_designer_profile`, `plan_max_skills`, `plan_client_endorsement`, `plan_per_month_price`, `plan_3month_price`, `plan_year_price`, `plan_added_date`) VALUES
(1, 'PROMO', 0, 5, 0, 5, '1', 0, '1', 0, 0, 0, '2017-10-27'),
(2, 'Business', 1, 5, 50, 5, '1', 0, '1', 34, 102, 360, '2017-08-06'),
(3, 'Premium', 2, 10, 100, 10, '1', 0, '1', 45, 135, 480, '2017-07-18'),
(4, 'Premium Pro', 3, 20, 200, 15, '1', 0, '1', 65, 195, 720, '2017-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `isd_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country_time_diff` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `country_timezone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country_ttf` float(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `isd_code`, `country_time_diff`, `country_timezone`, `country_ttf`) VALUES
(1, 'Afghanistan', '0093', '4:30', 'AFG', 120.00),
(2, 'Algeria ', '00213', '1', 'DZA', 120.00),
(3, 'Andorra ', '00376', '1', 'AND', 120.00),
(4, 'Angola ', '00244', '1', 'AGO', 120.00),
(5, 'Anguilla 3', '001 809 497', '', '', 120.00),
(6, 'Antigua ', '001 809', '', '', 120.00),
(7, 'Antilles Aruba ', '00599', '', '', 120.00),
(8, 'Argentina ', '0054', '-3', 'ARG', 120.00),
(9, 'Armenia ', '00374', '4', 'ARM', 120.00),
(10, 'Aruba ', '00297-8', '', '', 0.00),
(11, 'Ascension ', '00247', '', '', 0.00),
(12, 'Australia ', '0061', '8', 'AUS', 0.00),
(13, 'Austria ', '0043', '1', 'AUT', 120.00),
(14, 'Azerbaidjan ', '00994', '', '', 0.00),
(15, 'Azores Island ', '00351', '', '', 0.00),
(16, 'Bahamas ', '001 242', '-5', 'BHS', 0.00),
(17, 'Bahrain ', '00973', '3', 'BHR', 120.00),
(18, 'Bangladesh', '00880', '6', 'BGD', 0.00),
(19, 'Barbados ', '001', '-4', 'BRB', 0.00),
(20, 'Belarus ', '00375', '2', 'BLR', 0.00),
(21, 'Belgium ', '0032', '1', 'BEL', 120.00),
(22, 'Belize ', '00501', '-6', 'BLZ', 0.00),
(23, 'Benin ', '00229', '1', 'BEN', 0.00),
(24, 'Bermuda ', '001 441', '', '', 0.00),
(25, 'Bhutan ', '00975', '6', 'BTN', 120.00),
(26, 'Bolivia ', '00591', '-4', 'BOL', 0.00),
(28, 'Botswana ', '00267', '2', 'BWA', 0.00),
(29, 'Brazil ', '0055', '-2', 'BRA', 0.00),
(30, 'British Virzin Island ', '001', '', '', 120.00),
(31, 'Brunei ', '00673', '8', 'BRN', 0.00),
(32, 'Bukina Faso ', '00226', '', '', 0.00),
(33, 'Bulgaria ', '00359', '2', 'BGR', 0.00),
(34, 'Barma ', '0095', '', '', 120.00),
(35, 'Burundi ', '00257', '3', 'BDI', 0.00),
(36, 'Caimen Island ', '001 345', '', '', 0.00),
(37, 'Cameroon ', '00237', '1', 'CMR', 0.00),
(38, 'Canada ', '001', '-3:3', 'CAN', 0.00),
(39, 'Canary Island ', '0034', '', '', 0.00),
(40, 'Cape Verde Is. ', '00238', '', '', 0.00),
(41, 'Central African Republic ', '00236', '1', 'CAF', 0.00),
(42, 'Chad ', '00235', '1', 'TCD', 0.00),
(43, 'Chile ', '0056', '-4', 'CHL', 0.00),
(44, 'China ', '0086', '8', 'CHN', 0.00),
(45, 'Christmas Is. ', '0061 91', '', '', 0.00),
(46, 'Cocos Island ', '0061 91', '', '', 0.00),
(47, 'Cooks Keeling Is. ', '0061', '', '', 0.00),
(48, 'Colombia ', '0057', '-5', 'COL', 0.00),
(49, 'Combodia ', '00855', '', '', 0.00),
(50, 'Comoros ', '00269', '3', 'COM', 0.00),
(51, 'Congo ', '00242', '', '', 0.00),
(52, 'Cook Island ', '00682', '', '', 0.00),
(53, 'Costarica ', '00506', '', '', 0.00),
(54, 'Cote D\'Ivoire ', '00225', '0', 'CIV', 0.00),
(55, 'Crotia ', '00385', '', '', 0.00),
(56, 'Cuba ', '0053', '-5', 'CUB', 0.00),
(57, 'Cyprus ', '00357', '2', 'CYP', 0.00),
(58, 'Czech ', '00420', '', '', 0.00),
(59, 'Czechoslovakia ', '0042', '', '', 0.00),
(60, 'Denmark ', '0045', '1', 'DNK', 0.00),
(61, 'Diego Grancia ', '00246', '', '', 0.00),
(62, 'Djibouti ', '00253', '3', 'DJI', 0.00),
(63, 'Dominica ', '001', '-4', 'DMA', 0.00),
(64, 'Dominican Rep', '001 809', '', '', 0.00),
(65, 'Ecuador ', '00593', '-5', 'ECU', 0.00),
(66, 'Egypt ', '0020', '2', 'EGY', 0.00),
(67, 'El Salvadoor ', '00503', '', '', 0.00),
(68, 'Equatorial ', '00240', '', '', 0.00),
(69, 'Eritrea ', '00291', '3', 'ERI', 0.00),
(70, 'Fakland Is. ', '00500', '', '', 0.00),
(71, 'Faroe Islands ', '00298', '', '', 0.00),
(72, 'Fiji ', '00679', '12', 'FJI', 0.00),
(73, 'Finland', '00358', '2', 'FIN', 0.00),
(74, 'France', '0033', '1', 'FRA', 0.00),
(75, 'Frenceh Guiana', '00594', '', '', 0.00),
(76, 'French Polynesia', '00689', '', '', 250.00),
(77, 'Gabon ', '00241', '1', 'GAB', 0.00),
(78, 'Gambia', '00220', '', '', 0.00),
(79, 'Germany', '0049', '1', 'DEU', 0.00),
(80, 'Ghana ', '00233', '0', 'GHA', 0.00),
(81, 'Gibralter ', '00350', '', '', 0.00),
(82, 'Greece ', '0030', '2', 'GRC', 0.00),
(83, 'Greenland ', '00299', '', '', 0.00),
(84, 'Guadeloupe ', '00590', '', '', 0.00),
(85, 'Guam ', '001', '', '', 0.00),
(86, 'Guyana', '00592', '-3', 'GUY', 0.00),
(87, 'Guantanamo Bay', '5399', '', '', 0.00),
(88, 'Haiti ', '00509', '-5', 'HTI', 0.00),
(89, 'Hawaii ', '001', '', '', 0.00),
(90, 'Hondurus ', '00504', '', '', 0.00),
(91, 'Hong Kong ', '00852', '', '', 0.00),
(92, 'Hungary ', '0036', '1', 'HUN', 0.00),
(93, 'Ice Land ', '00354', '', '', 0.00),
(94, 'India', '0091', '5:30', 'IND', 250.00),
(95, 'Indonesia ', '0062', '7', 'IDN', 250.00),
(97, 'Iran ', '0098', '3:30', 'IRN', 0.00),
(98, 'Iraq ', '00964', '3', 'IRQ', 0.00),
(99, 'Ireland ', '00353', '0', 'IRL', 0.00),
(100, 'Israel ', '00972', '', '', 0.00),
(101, 'Itlay ', '0039', '', '', 0.00),
(102, 'Ivory Cost ', '00225', '', '', 0.00),
(103, 'Jamaica ', '001 809', '-5', 'JAM', 0.00),
(104, 'Japan ', '0081', '9', 'JPN', 0.00),
(105, 'Jordan ', '00962', '2', 'JOR', 0.00),
(106, 'Kazakistan ', '007', '', '', 0.00),
(107, 'Kenya ', '00254', '3', 'KEN', 0.00),
(108, 'Kiribati ', '00686', '12', 'KIR', 0.00),
(109, 'Korea Republic ', '00850', '', '', 0.00),
(110, 'Kuwait ', '00965', '3', 'KWT', 0.00),
(111, 'Kyrgazstan ', '00996', '', '', 0.00),
(112, 'Laos ', '00856', '7', 'LAO', 0.00),
(113, 'Latvia ', '00371', '2', 'LVA', 0.00),
(114, 'Lebanon ', '00961', '2', 'LBN', 0.00),
(115, 'Lesotho ', '00266', '3', 'LSO', 0.00),
(116, 'Liberia ', '00231', '0', 'LBR', 0.00),
(117, 'Libya ', '00218', '2', 'LBY', 0.00),
(118, 'Liechtenstein ', '00423', '1', 'LIE', 0.00),
(119, 'Lithuania ', '00370', '2', 'LTU', 0.00),
(120, 'Luxembourg ', '00352', '1', 'LUX', 0.00),
(121, 'Macao ', '00853', '', '', 0.00),
(122, 'Macedonia ', '00389', '1', 'MKD', 0.00),
(123, 'Madeira ', '00351', '', '', 0.00),
(124, 'Maine (ME) ', '00207', '', '', 0.00),
(125, 'Malawi ', '00265', '2', 'MWI', 0.00),
(126, 'Malaysia ', '0060', '8', 'MYS', 0.00),
(127, 'Maldives ', '00960', '5', 'MDV', 0.00),
(128, 'Mali ', '00223', '0', 'MLI', 0.00),
(129, 'Malta ', '00356', '1', 'MLT', 0.00),
(130, 'Marisat ', '00871, 00872', '', '', 0.00),
(131, 'Marshal Island ', '00692', '', '', 0.00),
(132, 'Mauritania ', '00222', '0', 'MRT', 0.00),
(133, 'Mauritius ', '00230', '4', 'MUS', 0.00),
(134, 'Mexico ', '0052', '-6', 'MEX', 0.00),
(135, 'Mocronesia ', '00691', '', '', 0.00),
(136, 'Moldova ', '00373', '2', 'MDA', 0.00),
(137, 'Monaco ', '00377', '1', 'MCO', 0.00),
(138, 'Morocco ', '00212', '0', 'MAR', 0.00),
(139, 'Mozambique ', '00258', '2', 'MOZ', 0.00),
(140, 'Mrtinique ', '00596', '', '', 0.00),
(141, 'Myanmar ', '0095', '', '', 0.00),
(142, 'Namibia ', '00264', '1', 'NAM', 0.00),
(143, 'Nauru ', '00674', '12', 'NRU', 0.00),
(144, 'Nepal ', '00977', '5:45', 'NPL', 0.00),
(145, 'Netherlands ', '0031', '1', 'NLD', 0.00),
(146, 'Nevis ', '001 809 469', '', '', 0.00),
(147, 'New Caledonia ', '00687', '', '', 0.00),
(148, 'New hampshire (NH) ', '00603', '', '', 0.00),
(149, 'New Zealand ', '0064', '12', 'NZL', 0.00),
(150, 'Nicaragua ', '00505', '-6', 'NIC', 0.00),
(151, 'Nieu Island ', '00683', '', '', 0.00),
(152, 'Niger ', '00227', '1', 'NER', 0.00),
(153, 'Nigeria ', '00234', '1', 'NGA', 0.00),
(154, 'Norfolk Island ', '00672 3', '', '', 0.00),
(155, 'North Dakota ', '00701', '', '', 0.00),
(156, 'Norway ', '0047', '1', 'NOR', 0.00),
(157, 'Noth MarianaIs ', '00670', '', '', 0.00),
(158, 'Pakistan ', '0092', '5', 'PAK', 0.00),
(159, 'Palau ', '00680', '9', 'PLW', 0.00),
(160, 'Panama ', '00507', '-5', 'PAN', 0.00),
(161, 'Papua New Guinea ', '00675', '10', 'PNG', 250.00),
(162, 'Paraguay ', '00595', '-4', 'PRY', 0.00),
(163, 'Peru ', '0051', '-5', 'PER', 0.00),
(164, 'Philippines ', '0063', '8', 'PHL', 0.00),
(165, 'Poland ', '0048', '1', 'POL', 0.00),
(166, 'Portugal ', '00351', '0', 'PRT', 0.00),
(167, 'Puerto Rico ', '001 809', '', '', 0.00),
(168, 'Qatar', '00974', '3', 'QAT', 0.00),
(169, 'Reunion ', '00262', '', '', 0.00),
(170, 'Romania ', '0040', '2', 'ROM', 0.00),
(171, 'Russian Federation ', '007', '', '', 0.00),
(172, 'Rwanda ', '00250', '2', 'RWA', 0.00),
(173, 'Samoa Western ', '00685', '', '', 250.00),
(174, 'Samoa.USA ', '00684', '', '', 0.00),
(175, 'San Marino ', '00378', '1', 'SMR', 0.00),
(176, 'Sao Tome Pincpe ', '00239', '', '', 0.00),
(177, 'Saudi Arabia ', '00966', '3', 'SAU', 0.00),
(178, 'Senegal ', '00221', '0', 'SEN', 0.00),
(179, 'Seychelles ', '00248', '4', 'SYC', 0.00),
(180, 'Sierra Leone ', '00232', '0', 'SLE', 0.00),
(181, 'Singapore ', '0065', '8', 'SGP', 0.00),
(182, 'Slovania ', '00386', '', '', 0.00),
(183, 'Soloman Is. ', '00677', '', '', 250.00),
(184, 'Somalia ', '00252', '3', 'SOM', 0.00),
(185, 'South Africa ', '0027', '2', 'ZAF', 250.00),
(186, 'South Carolina (SC) ', '00803, 843, 864', '', '', 0.00),
(187, 'South Dakota (SD) ', '00605', '', '', 0.00),
(188, 'Spain ', '0034', '1', 'ESP', 0.00),
(189, 'Spanish North Africa ', '0034', '', '', 0.00),
(190, 'Srilanka ', '0094', '', '', 0.00),
(191, 'St. Christopher ', '00869', '', '', 250.00),
(192, 'St. Lucia ', '00758', '', '', 0.00),
(193, 'St. Piere ', '00508', '', '', 0.00),
(194, 'St. Vincent ', '00784', '', '', 0.00),
(195, 'Sudan ', '00249', '3', 'SDN', 0.00),
(196, 'Suriname ', '00597', '-3', 'SUR', 0.00),
(197, 'Swaziland ', '00268', '2', 'SWZ', 0.00),
(198, 'Sweden ', '0046', '1', 'SWE', 0.00),
(199, 'Switzerland ', '0041', '1', 'CHE', 0.00),
(200, 'Syria ', '00963', '2', 'SYR', 0.00),
(201, 'Taiwan ', '00886', '8', 'TWN', 250.00),
(202, 'Tajikistan', '00992', '5', 'TJK', 0.00),
(203, 'Tanzania ', '00255', '3', 'TZA', 250.00),
(204, 'Thailand ', '0066', '7', 'THA', 0.00),
(205, 'Togo ', '00228', '0', 'TGO', 0.00),
(206, 'Tonga ', '00676', '13', 'TON', 0.00),
(207, 'Trinidad and Tobago ', '001 809', '-4', 'TTO', 0.00),
(208, 'Tunisia ', '00216', '1', 'TUN', 0.00),
(209, 'Turkey ', '0090', '2', 'TUR', 0.00),
(210, 'Turkmenistan', '00993', '5', 'TKM', 0.00),
(211, 'Turks & Caicos Island ', '001 644', '', '', 250.00),
(212, 'Tuvalu ', '00688', '12', 'TUV', 0.00),
(213, 'Uganda', '00256', '3', 'UGA', 0.00),
(214, 'Ukraine', '00380', '2', 'UKR', 0.00),
(215, 'U. A. E. ', '00971', '', '', 120.00),
(216, 'United Kingdom ', '0044', '0', 'GBR', 0.00),
(217, 'Uruguay ', '00598', '-3', 'URY', 0.00),
(218, 'USA ', '001', '', '', 0.00),
(219, 'Uzbekistan ', '00998', '5', 'UZB', 0.00),
(220, 'Vanuatu ', '00678', '11', 'VUT', 0.00),
(221, 'Vatican City ', '0039-6', '', '', 0.00),
(222, 'Venezuela ', '0058', '-4:3', 'VEN', 0.00),
(223, 'Vietnam ', '0084', '7', 'VNM', 0.00),
(224, 'Virgin Is U. K. ', '001 809 49', '', '', 0.00),
(225, 'Virgin Is U. S. A. ', '001 809', '', '', 0.00),
(226, 'Walls & Futuna ', '00681', '', '', 0.00),
(227, 'West Virginia (WV) ', '00304', '', '', 0.00),
(228, 'Western Samoa ', '00685', '', '', 0.00),
(229, 'Yemen, AR ', '00967', '', '', 0.00),
(230, 'Yugoslavia ', '00381', '', '', 0.00),
(231, 'Zaire ', '00243', '', '', 0.00),
(232, 'Zambia ', '00260', '2', 'ZMB', 0.00),
(233, 'Zanzibar', '00255', '', '', 0.00),
(234, 'Zimbabwe ', '00263', '2', 'ZWE', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fa8a41b5_admin_id` int(11) NOT NULL,
  `fa8a41b5_admin_type` enum('admin','staff') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `fa8a41b5_admin_nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nickname must not contain "@"',
  `fa8a41b5_admin_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fa8a41b5_admin_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fa8a41b5_admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fa8a41b5_admin_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fa8a41b5_admin_pass_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fa8a41b5_admin_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fa8a41b5_admin_id`, `fa8a41b5_admin_type`, `fa8a41b5_admin_nickname`, `fa8a41b5_admin_first_name`, `fa8a41b5_admin_last_name`, `fa8a41b5_admin_email`, `fa8a41b5_admin_password`, `fa8a41b5_admin_pass_key`, `fa8a41b5_admin_picture`) VALUES
(1, 'admin', 'ADMIN', 'Don', 'T', 'dw@direct-id.sg', 'f368d955ee171ae3e4d1f05013efe2ab', '0ee3feb6c095bee65d381e3dda76c20d', '1503279403-7274.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4f0d1c_favourite`
--

CREATE TABLE `d6f4f0d1c_favourite` (
  `fav_id` int(20) NOT NULL,
  `fav_user_id` int(20) NOT NULL,
  `fav_portfolio_id` int(20) NOT NULL,
  `fav_added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4f0d1c_favourite`
--

INSERT INTO `d6f4f0d1c_favourite` (`fav_id`, `fav_user_id`, `fav_portfolio_id`, `fav_added_date`) VALUES
(1, 152, 216, '2018-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4f0d1c_homepage`
--

CREATE TABLE `d6f4f0d1c_homepage` (
  `hm_id` int(10) NOT NULL,
  `hm_heading` varchar(255) DEFAULT NULL,
  `hm_sub_heading` varchar(255) DEFAULT NULL,
  `hm_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4f0d1c_homepage`
--

INSERT INTO `d6f4f0d1c_homepage` (`hm_id`, `hm_heading`, `hm_sub_heading`, `hm_image`) VALUES
(1, 'CREATE YOUR NIRVANA fddfg', 'Singapore’s Interior designer professional directory', '70XoZNjEaA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4f0d1c_homepage_portfolios`
--

CREATE TABLE `d6f4f0d1c_homepage_portfolios` (
  `hpp_id` int(10) NOT NULL,
  `hpp_type` enum('trending','discover') NOT NULL,
  `hpp_portfolio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4f0d1c_homepage_portfolios`
--

INSERT INTO `d6f4f0d1c_homepage_portfolios` (`hpp_id`, `hpp_type`, `hpp_portfolio`) VALUES
(3, 'trending', '198,201,221'),
(4, 'discover', '216,108,109,110,119,120,121,122');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4f0d1c_liked_portfolios`
--

CREATE TABLE `d6f4f0d1c_liked_portfolios` (
  `like_id` int(20) NOT NULL,
  `like_user_id` int(20) NOT NULL,
  `like_portfolio_id` int(20) NOT NULL,
  `like_added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4f0d1c_liked_portfolios`
--

INSERT INTO `d6f4f0d1c_liked_portfolios` (`like_id`, `like_user_id`, `like_portfolio_id`, `like_added_date`) VALUES
(24, 121, 100, '2017-12-17'),
(26, 182, 243, '2018-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_addon_packages`
--

CREATE TABLE `d6f4fad3ds20d1c_addon_packages` (
  `ap_id` int(11) NOT NULL,
  `ap_title` varchar(255) NOT NULL,
  `ap_credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_addon_packages`
--

INSERT INTO `d6f4fad3ds20d1c_addon_packages` (`ap_id`, `ap_title`, `ap_credits`) VALUES
(1, 'Starter', 5),
(2, 'Medium', 12),
(3, 'Professional', 55);

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_category`
--

CREATE TABLE `d6f4fad3ds20d1c_category` (
  `category_id` int(255) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `category_home_status` enum('0','1') NOT NULL DEFAULT '1',
  `category_added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_category`
--

INSERT INTO `d6f4fad3ds20d1c_category` (`category_id`, `category_title`, `category_image`, `category_home_status`, `category_added_date`) VALUES
(4, 'Scandinavian', '1506577240-70701.jpg', '0', '2017-09-28 01:40:40'),
(5, 'contemporary', '15065773101506577310-17320.jpg', '1', '2017-09-28 01:41:51'),
(6, 'minimalist', '1502174103-25074.jpg', '1', '2017-08-08 02:35:03'),
(7, 'Industrial', '15065776601506577660-88453.jpg', '1', '2017-09-28 01:47:41'),
(8, 'Asian Flavours', '15021722001502172200-58646.jpg', '0', '2017-08-08 02:03:20'),
(9, 'Country', '1506578525-37598.jpg', '0', '2017-09-28 02:02:05'),
(11, 'Modern', '15065785871506578587-83874.jpg', '1', '2017-09-28 02:03:07'),
(12, 'Transitional', '15065786311506578631-69704.jpg', '1', '2017-09-28 02:03:52'),
(13, 'Commercial', '1505369956-39745.jpg', '1', '2017-09-14 02:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_configuration`
--

CREATE TABLE `d6f4fad3ds20d1c_configuration` (
  `config_id` int(11) NOT NULL,
  `config_text_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_text_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_text_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d6f4fad3ds20d1c_configuration`
--

INSERT INTO `d6f4fad3ds20d1c_configuration` (`config_id`, `config_text_group`, `config_text_key`, `config_text`, `config_text_value`) VALUES
(1, 'SITE_CONFIG', 'site_name', 'Site Name', 'Wedding'),
(2, 'SITE_CONFIG', 'site_title', 'Site Title', 'Wedding'),
(3, 'SITE_CONFIG', 'meta_keyword', 'Meta Keyword', 'Wedding'),
(4, 'SITE_CONFIG', 'meta_description', 'Meta Description', 'Wedding,directid'),
(5, 'SOCIAL_LINKS', 'social_link_facebook', 'Facebook Page Link', 'https://www.facebook.com/directID'),
(6, 'SOCIAL_LINKS', 'social_link_twitter', 'Twitter Page Link', 'https://twitter.com/'),
(7, 'SOCIAL_LINKS', 'social_link_gmail', 'Google Page Link', 'https://plus.google.com/'),
(8, 'SITE_CONFIG', 'company_address', 'Company Address', '99 Duxton Road Singapore 089543'),
(9, 'SITE_CONFIG', 'company_contact', 'Company Contact Number', '(658) 753-0733'),
(10, 'SITE_CONFIG', 'register_mail_id', 'Company Contact Email', 'letschat@direct-id.sg'),
(12, 'SITE_CONFIG', 'company_favicon', 'Company Favicon', ''),
(13, 'SITE_CONFIG', 'company_logo', 'Company Logo', ''),
(14, 'SITE_CONFIG', 'company_desc', 'About Company', 'We are here to provide more information or answer any questions you may have and uncover the best interior designers. '),
(15, 'SITE_CONFIG', 'company_lat', 'Company Latitude', '36.778259'),
(16, 'SITE_CONFIG', 'company_long', 'Company Longitude', '-119.417931'),
(17, 'SOCIAL_LINKS', 'social_link_linkedin', 'Linked In Link', 'https://www.linkedin.com/company-beta/13363102/'),
(18, 'SITE_CONFIG', 'paypal_email', 'PayPal Account', 'dw@direct-id.sg'),
(19, 'SITE_CONFIG', 'site_mode', 'Site Mode', '1'),
(20, 'SITE_CONFIG', 'paypal_signature_key', 'PayPal Signature Key', 'AFcWxV21C7fd0v3bYYYRCpSSRl31AhTB2zKmxAPVC-6bL4kn78hqTNIO'),
(21, 'SITE_CONFIG', 'site_paypal_mode', 'Site PayPal Mode (Sandbox/Live-Check the checkbox to switch to live mode) ', '0'),
(22, 'SITE_CONFIG', 'site_paypal_password', 'Site PayPal Password', 'G4B3YAPNXXFWR2QW'),
(23, 'SITE_CONFIG', 'site_paypal_username', 'Site PayPal Username', 'dw_api1.direct-id.sg'),
(24, 'SITE_CONFIG', 'fb_appid', 'Facebook App Id', '2275678072657979'),
(25, 'SITE_CONFIG', 'fb_secret', 'Facebook Secret Key', '9359a0d20ff4c97f248c646c2a6f0b56'),
(26, 'SITE_CONFIG', 'google_clientsecret', 'Google Secret Key', 'uz2Ht2SAb5XU7k7Z3vxqeG--'),
(27, 'SITE_CONFIG', 'google_client_id', 'Google Client Id', '355853326856-ikk87s50o9dd7l56pemp2h3o9tnpjkn9.apps.googleusercontent.com'),
(28, 'SITE_CONFIG', 'google_developerkey', 'Google Developer Key', 'AIzaSyCqT269Czc5EIAonh1Ib2w3SW2_S5cGRPM'),
(29, 'SITE_CONFIG', 'recaptcha_site_key', 'Recaptcha Site Key', '6Le1biIUAAAAAFDZ3XaAwd3PYlx_hMhsuthxmsNM'),
(30, 'SITE_CONFIG', 'recaptcha_secret_key', 'Recaptcha Secret Key', '6Le1biIUAAAAAGf_gp-Mf7vwwWDcrdWBlQRd7DCh'),
(31, 'SITE_CONFIG', 'annual_plan_discount', 'Annual Plan discount (in $)', '60'),
(32, 'SOCIAL_LINKS', 'social_link_instagram', 'Instagram Page Link', 'https://www.instagram.com/direct_id.sg/');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_countries`
--

CREATE TABLE `d6f4fad3ds20d1c_countries` (
  `country_id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `country_name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d6f4fad3ds20d1c_countries`
--

INSERT INTO `d6f4fad3ds20d1c_countries` (`country_id`, `sortname`, `country_name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_credits_details`
--

CREATE TABLE `d6f4fad3ds20d1c_credits_details` (
  `cd_credit_id` int(255) NOT NULL,
  `cd_credit_price` float(22,7) NOT NULL,
  `cd_credits` int(10) NOT NULL,
  `cd_pro_user_id` int(255) NOT NULL,
  `cd_transaction_type` enum('c','d') NOT NULL,
  `cd_transaction_id` varchar(255) NOT NULL,
  `cd_transaction_date` datetime NOT NULL,
  `cd_portfolio_id` int(255) NOT NULL,
  `cd_package_id` int(255) NOT NULL,
  `cd_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_credits_details`
--

INSERT INTO `d6f4fad3ds20d1c_credits_details` (`cd_credit_id`, `cd_credit_price`, `cd_credits`, `cd_pro_user_id`, `cd_transaction_type`, `cd_transaction_id`, `cd_transaction_date`, `cd_portfolio_id`, `cd_package_id`, `cd_status`) VALUES
(1, 100.0000000, 250, 172, 'c', '', '2018-05-25 06:22:31', 0, 3, '0'),
(2, 25.0000000, 50, 186, 'c', '', '2018-06-07 10:21:21', 0, 1, '0'),
(3, 25.0000000, 50, 131, 'c', '', '2018-07-09 01:11:38', 0, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_credit_packages`
--

CREATE TABLE `d6f4fad3ds20d1c_credit_packages` (
  `cp_id` int(255) NOT NULL,
  `cp_title` varchar(255) NOT NULL,
  `cp_description` text NOT NULL,
  `cp_price` float(22,7) NOT NULL,
  `cp_credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_credit_packages`
--

INSERT INTO `d6f4fad3ds20d1c_credit_packages` (`cp_id`, `cp_title`, `cp_description`, `cp_price`, `cp_credits`) VALUES
(1, 'Bronze', 'It is a long established fact that a reader will be distracted by the readable content of a', 25.0000000, 50),
(2, 'Silver', 'It is a long established fact that a reader will be distracted by the readable content of a', 50.0000000, 200),
(3, 'Gold', 'It is a long established fact that a reader will be distracted by the readable content of a', 100.0000000, 250),
(4, 'Platinum', 'It is a long established fact that a reader will be distracted by the readable content of a', 200.0000000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_designer_accomplishments`
--

CREATE TABLE `d6f4fad3ds20d1c_designer_accomplishments` (
  `da_id` int(255) NOT NULL,
  `da_user_id` int(255) NOT NULL,
  `da_certification_name` varchar(255) NOT NULL,
  `da_certification_authority` varchar(255) NOT NULL,
  `da_certification_timeperiod` varchar(255) NOT NULL,
  `da_certification_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_designer_accomplishments`
--

INSERT INTO `d6f4fad3ds20d1c_designer_accomplishments` (`da_id`, `da_user_id`, `da_certification_name`, `da_certification_authority`, `da_certification_timeperiod`, `da_certification_number`) VALUES
(17, 1, 'LI', 'Lorem Ipsum Designs', '2009-2011', '5814585465'),
(66, 98, 'Renovation for Public Housing', 'BCA Singapore', '2017', ''),
(69, 100, 'CERTIFICATE IN RISK MANAGEMENT IMPLEMENTATION PLAN ', 'WDA', '2016', '160000000282058'),
(70, 100, 'CERTIFICATE IN RENOVATION FOR PUBLIC HOUSING', 'BCA', '2017', 'RCPH/17/00047'),
(73, 101, 'DEGREE IN INTERIOR DESIGN', '', '2008', ''),
(75, 102, 'DEGREE IN ARCHITECTURE', '', '2008', ''),
(76, 103, 'Degree in Architecture', '', '2014', ''),
(81, 106, 'Certificate in Risk Management Implementation plan', 'WDA', '2016', '160000000282058'),
(82, 106, 'CERTIFICATE IN RENOVATION FOR PUBLIC HOUSING', 'BCA', '2017', 'RCPH/17/00047'),
(84, 109, 'DEGREE IN INTERIOR DESIGN', '', '2008', ''),
(86, 110, 'DEGREE IN ARCHITECTURE', '', '2008', ''),
(88, 111, 'DEGREE IN ARCHITECTURE', '', '2014', ''),
(90, 116, 'dsfsdf', 'sfdsfdsf', '2011', '33434'),
(92, 118, 'asdada', 'asdsada', '2000', '632154'),
(93, 128, 'Renovation for Public Housing', 'BCA Singapore', '2011', ''),
(97, 131, 'Certification in risk management implementation plan ', 'WDA', '2016', '16000000282058'),
(98, 131, 'Certificate in Renovation for public housing ', 'BCA', '2017', 'RCPH/17/00047'),
(100, 133, 'Renovation for Public Housing', 'BCA Singapore', '2016', ''),
(102, 134, 'Degree in Architecture', '', '2008', ''),
(104, 135, 'Degree in Architecture', '', '2014', ''),
(108, 136, 'bachelor in Interior Design', 'Laselle ', '2011', ''),
(110, 138, 'Renovation for Public Housing', 'BCA Singapore', '2016', ''),
(113, 139, 'Bachelor\'s degree, Interior Architecture (HONS)', 'Lasalle-SIA College of the Arts', '2012', ''),
(115, 141, 'Rhodec Institute (UK)', '', '', ''),
(118, 146, 'Diploma in Interior Design', 'University of Washington', '2012', ''),
(122, 147, 'Diploma in Interior Design', 'LASALLE College of the Arts', '2013', '7089'),
(123, 147, 'NITE in Building Drafting (Architectural)', 'Institute of Technical Education', '2007', '037426'),
(124, 147, 'Bachelor of Arts in Interior Design', 'Goldsmiths\' College University of London', '2014', '00001498'),
(129, 149, 'Diploma In Interior Design ', 'Nanyang Academy of Fine Arts', '2001', ''),
(130, 149, '', '', '', ''),
(131, 158, 'Building Construction Safety Supervisor (BCSS)', '', '', ''),
(132, 158, 'Essential Knowledge in Construction Regulations & Management for Licensed Builders', '', '', ''),
(149, 167, 'Bachelor Of Design (Interior Design)', 'Swinburne University', '2011', ''),
(150, 167, 'Council Member', 'Society of Interior Designers Singapore (SIDS)', '2018', ''),
(151, 166, 'Diploma in Interior Design ', '', '', ''),
(152, 166, 'Diploma in Animation', '', '', ''),
(165, 175, 'International Property Awards', 'Asia Pacific Property Awards 5 Star', '2015-2016', ''),
(166, 175, '', 'International Property Awards', '2013-2014', ''),
(167, 175, 'International Design and Architecture Awards', 'Residential £1 TO £2.5 Million', '2013', ''),
(168, 175, 'International Design and Architecture Awards', '', '2013', ''),
(175, 181, 'Renovation of Public Housing', 'BCA Academy', '2015', 'RCPH/15/00500'),
(176, 181, 'Diploma in Design (Interior Design)', 'Lasalle College of the Arts', '2005', ''),
(177, 181, 'Bizsafe Workshop for CEO/Top Management', 'BizSafe', '2015', 'WFTH-Bizsafe1-0090'),
(178, 181, 'Develop and Manage Business Development Strategies to enlarge Clientele', 'Singapore Workforce Development Agency (WDA)', '2013', '140000000261631'),
(179, 181, 'Promote and Publicise Creative Works & Services', 'Singapore Workforce Development Agency (WDA)', '2013', '140000000261621'),
(180, 181, 'Develop a Risk Management Implementation Plan', 'Singapore Workforce Development Agency (WDA)', '2015', '150000000046775'),
(181, 181, 'A\'Design Award Winner for Interior Space and Exhibition Design Category (Italy)', 'A Design Award & Competition', '2016', '55224'),
(182, 181, 'Silver Award Marina One Residences Residential (Non-Landed)', 'Society of Interior Designers Singapore', '2017', ''),
(183, 181, 'Singapore Luminary Award Residential (Non-Landed)', 'Society of Interior Designers Singapore', '2017', ''),
(184, 181, 'Singapore Luminary Award (Public Institutions)', 'Society of Interior Designers Singapore', '2017', ''),
(185, 181, 'Best of Houzz Award Service (Australia)', 'Houzz Australia', '2016', ''),
(186, 181, 'Singapore Design Class', 'Accredited by Designer Business Chamber Singapore (DBCS)', '2016', ''),
(187, 181, 'German Design Nominee', 'German Design Award - Germany', '2018', ''),
(192, 182, 'Bachelor Of Design (Interior Design) ', 'Swinburne University ', '2011', ''),
(193, 182, 'Council Member', 'Society of Interior Designers Singapore (SIDS)', '2018', ''),
(196, 187, 'Era technology communication art & design', 'West college Scotland', 'Advanced diploma in multimedia  interior design (2017)', '');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_faqs`
--

CREATE TABLE `d6f4fad3ds20d1c_faqs` (
  `faq_id` int(11) NOT NULL,
  `faq_question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faq_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `faq_last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d6f4fad3ds20d1c_faqs`
--

INSERT INTO `d6f4fad3ds20d1c_faqs` (`faq_id`, `faq_question`, `faq_answer`, `faq_last_updated`) VALUES
(10, 'Does Direct-ID.sg receive referral fees from designers?', '<p>Direct-ID.sg supports your discerning selection of qualified designers based on your needs and preference. We endeavour a successful connection between designers and homeowners so no referral fees are involved.&nbsp;</p>\r\n', '2017-09-29 00:25:23'),
(11, 'Professionals: What is a Listing?', '<p>A listing is a portfolio of a designer&#39;s completed project. A free account allows 2 portfolio listings.&nbsp;</p>\r\n\r\n<p><a href=\"http://www.direct-id.sg/membership-plans\">Read more...&nbsp;</a></p>\r\n', '2017-09-28 23:57:37'),
(12, 'How do I join?', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">You must have a profile on Direct-ID.sg. Join by reading the terms and fill out the form located <a href=\"http://www.direct-id.sg/register\">here</a>.</span></p>\r\n', '2017-09-28 23:34:27'),
(13, 'Can I change my username?', '<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">We advise against changing your username. Doing so will change the address of your public profile, break existing web links to your profile, and impact search engine results for your uploaded photos, client endorsements and portfolio listings.</span></p>\r\n\r\n<p><span style=\"font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">If you still want to change your username, drop us an email at letschat@direct-id.sg with your existing user information.</span></p>\r\n', '2017-09-28 23:30:05'),
(14, 'For Professionals: \"How to create a effective interior design profile\" Step by step tutorial', '<p><iframe allowfullscreen=\"1\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/VbduvV2BVxs?rel=0\" width=\"560\"></iframe><br />\r\n&nbsp;</p>\r\n', '2018-01-22 23:09:11'),
(15, 'If I work with an ID firm, can I still sign up?', '<p>Yes of course! You may update your company particulars on your profile.&nbsp;<br />\r\n<br />\r\nWe welcome all interior designers, doesn&#39;t matter if you work with a company or on your own.&nbsp;</p>\r\n', '2018-02-27 17:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_for_credit_transaction`
--

CREATE TABLE `d6f4fad3ds20d1c_for_credit_transaction` (
  `fc_transaction_id` int(255) NOT NULL,
  `fc_transaction_amount` float(22,7) NOT NULL,
  `fc_transaction_user_id` int(255) NOT NULL,
  `fc_transaction_txn_id` varchar(255) NOT NULL,
  `fc_transaction_plan_id` int(255) NOT NULL,
  `fc_transaction_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_keywords`
--

CREATE TABLE `d6f4fad3ds20d1c_keywords` (
  `key_id` int(11) NOT NULL,
  `key_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d6f4fad3ds20d1c_keywords`
--

INSERT INTO `d6f4fad3ds20d1c_keywords` (`key_id`, `key_text`, `key_value`) VALUES
(1, 'email_address', 'Email Address'),
(2, 'password', 'Password'),
(3, 'remember_me', 'Remember me'),
(4, 'login_btn', 'Log In'),
(5, 'login_heading', 'Log In'),
(6, 'field_required_msg', 'This field is required'),
(7, 'email_address_valid_msg', 'Please enter valid email address'),
(8, 'username_text', 'User Name'),
(10, 'dashboard_text', 'Dashboard'),
(11, 'logout_text', 'Logout'),
(12, 'profile_heading', 'Profile'),
(13, 'profile_update_msg', 'Your account settings has been updated'),
(14, 'try_again_msg', 'There is a problem, please try again after some time.'),
(15, 'logged_out_msg', 'You are now logged out.'),
(16, 'invalid_credentials_msg', 'Invalid credentials'),
(17, 'welcome_msg', 'Welcome to {site_name} dashboard'),
(18, 'firstname', 'First Name'),
(19, 'lastname', 'Last Name'),
(20, 'upload_profile_image', 'Upload your profile Image'),
(21, 'confirm_box_title', 'Are you sure?'),
(22, 'image_remove_confirmation', 'You will not be able to recover this imaginary file!'),
(23, 'confirm_btn_text', 'Yes'),
(24, 'cancel_btn_text', 'Cancel'),
(25, 'image_extention_error', 'Uploaded file is not a valid image. Only JPG,PNG and JPEG files are allowed.'),
(26, 'profile_avatar_updated', 'Your profile avatar has been updated'),
(27, 'no_info_updated', 'No Information has been changed'),
(28, 'email_exist_msg', 'already exists,please enter any other email address'),
(29, 'username_exist_msg', 'already exists,please enter any other username'),
(30, 'allow_letters_help_msg', 'Please enter only Letters,Numbers and underscores '),
(31, 'strong_pwd_help_text', 'Contains Uppercase Letters, Lowercase Letters, Numbers, Symbols'),
(32, 'pwd_length_help_text', 'Minimum 6 characters in length'),
(33, 'username_pwd_not_same_msg', 'Username and password must not be same'),
(34, 'site_settings_heading', 'Configuration Settings'),
(35, 'settings_updated_msg', 'Site settings has been updated'),
(36, 'general_setting_text', 'General Settings'),
(37, 'social_link_text', 'Social Links'),
(38, 'company_details_text', 'Company Details'),
(39, 'pages_heading', 'Pages'),
(40, 'edit_page_heading', 'Edit Page'),
(41, 'requested_item_not_found', 'Requested record is not found'),
(42, 'page_updated_msg', 'Page has been updated'),
(43, 'check_info_msg', 'Please re-check provided information'),
(44, 'email_page_heading', 'Email Templates'),
(45, 'edit_email_heading', 'Edit Email Template'),
(46, 'template_updated_msg', 'Email template has been updated'),
(47, 'faq_heading', 'Faqs'),
(48, 'add_faq_heading', 'Add Faq'),
(49, 'faq_added_msg', 'Faq has been added'),
(50, 'edit_faq_heading', 'Edit Faq'),
(51, 'faq_updated_msg', 'Faq has been updated'),
(52, 'record_remove_msg', 'Record(s) has been deleted from database'),
(53, 'page_title_text', 'Page Title'),
(54, 'page_desc_text', 'Page Description'),
(55, 'update_btn_text', 'Update'),
(56, 'page_media_text', 'Page Media'),
(57, 'change_btn_text', 'Change'),
(58, 'remove_btn_text', 'Remove'),
(59, 'select_btn_text', 'Select'),
(60, 'serial_number_text', 'S.No.'),
(61, 'last_modified_text', 'Last Modified'),
(62, 'actions_text', 'Actions'),
(63, 'subject_text', 'Subject'),
(64, 'temp_title_text', 'Template Title'),
(65, 'template_text_heading', 'Template Text'),
(66, 'add_btn', 'Add New'),
(67, 'question_text', 'Question'),
(68, 'answer_text', 'Answer'),
(69, 'edit_btn_text', 'Edit'),
(70, 'multi_delete_btn', 'Delete Selected'),
(71, 'save_btn_text', 'Save'),
(72, 'global_settings_text', 'Global Settings'),
(73, 'verification_email_sent_msg', 'Verification Mail Has Been Sent To Your Email Address.'),
(75, 'account_not_activated_msg', 'Your Account is not verified. Please Verify your account first.'),
(76, 'account_blocked_msg', 'Your Account Is Blocked By site Admin'),
(77, 'forgot_pwd_heading', 'Forgot Password'),
(78, 'reset_pwd_heading', 'Reset Password'),
(79, 'invalid_request_msg', 'Invalid Request!!'),
(80, 'pwd_changed_msg', 'Password Changed Successfully'),
(81, 'email_not_registered_msg', 'not registered.');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_pages`
--

CREATE TABLE `d6f4fad3ds20d1c_pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `page_images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_last_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d6f4fad3ds20d1c_pages`
--

INSERT INTO `d6f4fad3ds20d1c_pages` (`page_id`, `page_title`, `page_desc`, `page_images`, `page_last_updated_on`) VALUES
(1, 'fdgdfgdfgdf', '<p>sdvgfsd</p>\r\n', 'Tulips-1486460345-71852.jpg', '2018-07-20 10:03:22'),
(2, 'Terms of use f', '<div class=\"termsContentDiv\">\r\n<h4>Terms of Service</h4>\r\n\r\n<ol>\r\n	<li><strong>ACCEPTANCE OF TERMS </strong>\r\n\r\n	<ol>\r\n		<li><span>By using and accessing <a href=\"http://www.direct-id.com.sg\">http://www.direct-id.com.sg</a> (the &quot;<strong>Website</strong>&quot;), you conclude a legally binding agreement with us, Comrades in IdeasPte Ltd (&quot;<strong>we</strong>&quot; or &quot;<strong>us</strong>&quot;), the owner and administrator of the Website. </span></li>\r\n		<li><span>You accept without limitation or qualification the Terms of Service, including the Privacy Policy http://www.direct-id.com.sg/customer- service/privacy. </span></li>\r\n		<li><span>We may amend these Terms of Service at any time by posting a revised version on the Website. However, an individual notice will not be sent to you. Any amended Terms of Service shall replace all previous versions of the same. If you do not agree to the amendments or changes to the Terms of Service, you should immediately cease use of any of the services on the Website. After any such amendment becomes effective, we will deem your continued use of the Website to constitute acceptance and agreement to such amendment.&nbsp; </span></li>\r\n		<li><span>We will, from time to time, post on the Website, guidelines and rules relating to the use of the Website. All such guidelines or rules are hereby incorporated by reference into the Terms of Service. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>USE OF THE WEBSITE </strong></span>\r\n	<ol>\r\n		<li><span>You agree to comply with the Policy of Acceptable Use http://www.direct-id.com.sg/customer-service/acceptable-use in using the Website. We may remove or delete any content that you have provided on the Website if we, in our absolute discretion, suspect that you have violated the Policy of Acceptable Use. </span></li>\r\n		<li><span>In carrying out any transactions with us on or in relation to the Website or registering an account with us on the Website, you warrant that: &bull; </span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>you are above 21 years of age.</span></li>\r\n			<li><span>you are using your actual identity</span></li>\r\n			<li><span>the personal data that you have provided to us are true, accurate, complete, and current</span></li>\r\n			<li><span>you will maintain and promptly update your personal particulars and ensure that such information is kept true, accurate, complete, and current. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>Children (users below the age of 21 years) are not eligible to use the Website or provide any personal data on the Website unsupervised. If you are below 21 years of age, you may use the Website and/or provide any personal data on the Website only after you have obtained consent from your parents/legal guardian or if you are under the supervision of your parent/legal guardian. </span></li>\r\n		<li><span>In the event that we have given you (or where you have chosen) a password which enables you to access certain parts of the Website, you acknowledge that you are fully responsible for maintaining the confidentiality of your password, and all activities occurring under your account. </span></li>\r\n		<li><span>You agree to notify us of any breach of security of your password.</span></li>\r\n		<li><span>We will not be liable for any loss or damage arising from your failure to comply with this Clause 2.</span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>DID MATERIAL </strong></span>\r\n	<ol>\r\n		<li><span>By using and accessing the Website, you will be exposed to information, data, text, software, photographs, graphics, video, messages or other materials that we and/or other users of the Website upload, post, email, transmit or otherwise make available on the Website (&quot;<strong>DID Material</strong>&quot;) whether publicly or privately. </span></li>\r\n		<li><span>You understand DID Material may be offensive, indecent or objectionable. </span></li>\r\n		<li><span>You understand that DID Material may only be used for the your own and non-commercial use, and not for publication, distribution, transmission, retransmission, redistribution, broadcast, reproduction or circulation to someone else in the same company or organisation, and not for posting to other websites or forums, newsgroups, mailing lists, electronic bulletin boards, or Internet Relay Chats operated by other websites. </span></li>\r\n		<li><span>You agree not to reproduce, display or otherwise provide access to the Website or DID Material on another website or server. </span></li>\r\n		<li><span>We are, under no circumstances, liable for any DID Material, including but not limited to, any errors or omissions in any DID Material, or for any loss or damage of any kind incurred as a result of the use of any DID Material posted, emailed, transmitted or otherwise made available on the Website. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>DISCLAIMER OF WARRANTIES </strong></span>\r\n	<ol>\r\n		<li><span>Your use of the Website is at your sole risk. We disclaim all warranties of any kind, whether express or implied. </span></li>\r\n		<li><span>We reserve the right at any time and from time to time to modify and discontinue, temporarily or permanently, any services of the Website (or any part thereof) with or without notice. You agree that we shall not be liable to you or to any third party for any modification, suspension or discontinuance of such services. </span></li>\r\n		<li><span>We make no warranty that: </span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>the Website will meet your requirements; </span></li>\r\n			<li><span>the Website will be uninterrupted, timely, secure and error-free; </span></li>\r\n			<li><span>any results that may be obtained from the use of the Website will be accurate or reliable; and </span></li>\r\n			<li><span>the quality of any products, services, information or other material purchased or obtained by you through the Website will meet your expectations. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>We cannot and do not endorse, and cannot be responsible for, the messages, views, opinions, research and recommendations of individuals, users, and organisations of deemed interest, or advocate any patronage of any particular service provider, course of treatment or commercial dealings in any securities, investments or classes of securities or investments nor does the inclusion on the Website of a link to other website(s) or resources imply any form of endorsement by us. </span></li>\r\n		<li><span>We do not actively review or edit the messages, views, opinions, research and recommendations of users, even if such messages, views, opinions, research and recommendations are made by the users using the Website. While the information on the Website has been obtained from sources believed to be reliable, none of the data, news, information, reports or opinions nor any of the recommendations (if any) has been customised for any speci c person or class of persons. Therefore, please use the Website at your own risk. </span></li>\r\n		<li><span>By making available information and data onpursuant on the Website, including facts, views, opinions and recommendations of individuals and organisations of deemed interest, we and our content providers are not giving or purporting to give or representing or holding themselves out as giving financial, investment, tax, legal and other professional advice. You shall always seek the relevant professional advice before otherwise making any such decisions. </span></li>\r\n		<li><span>We may monitor or review any areas on the Website where you transmit or post communications for the purpose of promoting its efficiency, usefulness and appropriateness of use. However, we do not undertake to monitor or review every posting or communication, and we disclaim any and all liability relating to all DID Material, whether or not arising under the laws of copyright, trademarks, libel, privacy, obscenity, or otherwise.</span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>INDEMNITIES </strong></span>\r\n	<ol>\r\n		<li><span>You agree to indemnify and hold us, and our subsidiaries, affiliates, officers, agents or other partners, and employees, harmless from any claim or demand, including attorneys&#39; fees, made by any third party due to or arising out of any content that you submit, post, transmit or make available on the Website, your use of the Website, your connection to the Website, your violation of the Terms of Service, or your violation of any rights of another party. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>LIMITATION OF LIABILITY </strong></span>\r\n	<ol>\r\n		<li><span>We shall not be liable to you for any direct, indirect, incidental, special, consequences or exemplary damages, including but not limited to damages for loss of profits, goodwill, use, data or other intangible losses (even if we have been advised of the possibility of such damages), resulting from: </span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>the use or the inability to use the Website; </span></li>\r\n			<li><span>the cost of procurement of substitute goods and services resulting from any goods, data, information or services purchased or obtained or messages received or transactions entered into through or from the Website; </span></li>\r\n			<li><span>unauthorized access to or alteration of your transmissions or data; &bull; statements or conduct of any third party on the Website; and &bull; any other matter relating to the Website. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>Any claim of any nature whatsoever by either party against the other party and any action against the other party must be commenced within 2 years after the date on which the cause of action arises, following which the aggrieved party shall have no further claim whatsoever against the other party. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>PRIVACY POLICY </strong> </span>\r\n	<ol>\r\n		<li><span>All personal data about you is subject to our Privacy Policy <a href=\"http://www.direct-id.com.sg/customer-service/privacy\">http://www.direct-id.com.sg/customer-service/privacy</a></span></li>\r\n		<li><span>The Privacy Policy <a href=\"http://www.direct-id.com.sg/customer-service/privacy\">http://www.direct-id.com.sg/customer-service/privacy</a> is deemed incorporated into the Terms of Service by reference to this Clause. </span>\r\n		<p>&nbsp;</p>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>COPYRIGHT INFRINGEMENT POLICY </strong></span>\r\n	<ol>\r\n		<li><span>If you believe that your copyright has been infringed, please complete our standard notice of infringement (PDF available here <a href=\"http://www.direct-id.com.sg/customer-service/notice-of-infringement\">http://www.direct-id.com.sg/customer-service/notice-of-infringement</a>) and send a copy of the duly completed form to us via email&nbsp;at: </span>&nbsp;letschat@direct-id.sg\r\n		<div>&nbsp;</div>\r\n		</li>\r\n		<li><span>Please note that we will only accept and act on notices in the English language that comply with this Terms of Service. Any notices that do not comply with the above will be rejected, and we will not take any action in relation to such rejected notices. </span></li>\r\n		<li><span>Within 4 weeks of receipt of a compliant notice of infringement, we will take the actions described below: </span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>expeditiously take reasonable steps to remove or disable access to the allegedly infringing electronic copy; and </span></li>\r\n			<li><span>after removing or disabling access to the allegedly infringing electronic copy, expeditiously take reasonable steps to notify the user who had made that content available (&quot;<strong>Content Owner</strong>&quot;) via the contact details that the user has provided to us. In doing so, we will also provide the Content Owner with a copy of the notice of infringement. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>If the Content Owner provides a counter-notice, and this counter-notice is provided to us within 4 weeks of the date that we notify the Content Owner of the removal or disabling of access to the allegedly infringing content (&quot;<strong>Notification Date</strong>&quot;): </span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>we will expeditiously take reasonable steps to restore, or to restore access to, the allegedly infringing content, if it is technically and practically feasible to do so; and </span></li>\r\n			<li><span>if, before we complete the necessary steps to restore, or to restore access to, the allegedly infringing content (where it is technically and practically feasible to do so), the owner of the copyright in question commences proceedings to prevent the restoration of, or the restoration of access to, the allegedly infringing content, and we are informed of such proceedings, we will cease such steps to restore, or to restore access to, the allegedly infringing content. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>If the Content Owner does not provide a counter-notice within 4 weeks of the Notification Date, we will take no further action and we will consider the case to be closed. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>TERMINATION </strong></span>\r\n	<ol>\r\n		<li>We may, under certain circumstances and without prior notice, at our sole discretion immediately terminate your account (if any).</li>\r\n		<li><span>Cause for such termination shall include without limitation:</span>\r\n		<ol class=\"bulletsClass\">\r\n			<li><span>breaches or violations of the Terms of Service, Policy of Acceptable Use, or other incorporated documents, guidelines or rules; &bull; request by law enforcement or other government agencies; </span></li>\r\n			<li><span>self-initiated account deletions; &bull; infringement of intellectual property rights of others; &bull; discontinuance or material modification to the services on the Website, or part thereof; </span></li>\r\n			<li><span>unexpected technical or security issues or problems; or </span></li>\r\n			<li><span>extended periods of inactivity. </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>Termination of your account shall result in:</span>\r\n		<ol class=\"bulletClass\">\r\n			<li><span>removal of access to and barring of further use to all offerings of the Website that are associated with such account; and &bull; deletion of your password and all related information, les and content associated with or inside your account (or part thereof). </span></li>\r\n		</ol>\r\n		</li>\r\n		<li><span>Termination of your account shall be without prejudice to any other rights or remedies we may be entitled to under the Terms of Service, at law or in equity and shall not affect any accrued rights or liabilities nor the coming into or continuance in force of any provision which is expressly or by implication intended to come into or continue in force on or after such termination. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>INTELLECTUAL PROPERTY RIGHTS </strong></span>\r\n	<ol>\r\n		<li><span>Upon your upload of any images, photographs, and/or listing descriptions onto the Website (the &ldquo;Content&rdquo;), you shall give us a worldwide, royalty-free, irrevocable licence to use, store, host, reproduce, modify, adapt, watermark, communicate, publish, publicly perform, publicly display, create derivative works, and distribute the Content. By uploading the Content, you warrant that you own the copyright of the Content and thus </span></li>\r\n		<li><span>have the requisite rights to licence it to us as stated. We shall have the right to watermark the photographs within the Content and the copyright in thefinal watermarked photographs shall belong solely to us. All other names, products and marks mentioned are the intellectual property rights of their respective owners. No materials provided through the Website, including text, graphics, code, ratings, rankings, databases, aggregated information, DID Material and/or software may be reproduced, modified, adapted, distributed, published, displayed, uploaded, posted, transmitted or hyperlinked in any manner and in any form without our express, prior written approval, and the approval of the respective copyright and trade mark holders. The Website and DID Material are for your personal use only, and you may not engage in any dealings with other parties regarding such services and contents. Such dealings include commercial dealings and dealings which will adversely affect the commercial value of the Website and DID Material. </span></li>\r\n	</ol>\r\n	</li>\r\n	<li><span><strong>GENERAL </strong></span>\r\n	<ol>\r\n		<li>The Terms of Service shall be governed by and construed in accordance with the laws of the Republic of Singapore, and any claims or disputes</li>\r\n		<li><span>of whatever nature shall be subject to the exclusive jurisdiction of the courts of the Republic of Singapore. </span></li>\r\n		<li><span>Our failure to exercise or enforce any right or provision of the Terms of Service shall not constitute a waiver of such right or provision. If any provision of the Terms of Service is found by a court of competent jurisdiction to be invalid, the parties nevertheless agree that the court should endeavour to give e ect to the parties&#39; intentions as re ected in the provision, and the other provisions of the Terms of Service remain in full force and effect. </span></li>\r\n		<li><span>Any account that you may have with us is not transferrable and any rights to such account will terminate upon your death. Upon receipt of a copy of your death certificate, your account will be terminated and all content that you have generated in your account will be permanently deleted. </span></li>\r\n		<li><span>All notifications to us pursuant to the Terms of Service shall be sent via email to letschat@direct-id.sg.</span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n</div>\r\n', NULL, '2017-08-10 21:17:16'),
(3, 'Privacy Policy', '<div class=\"termsContentDiv\">\r\n            	<h4>Privacy Policy</h4>\r\n            <p>Comrades in IdeasPte Ltd (&quot;<strong>we</strong>&quot; or &quot;<strong>us</strong>&quot; or &ldquo;<strong>our</strong>&rdquo;) is the operator of http://www.direct-id.com.sg (the &quot;Website&quot;)and we are committed to safeguarding your personal data.</p>\r\n\r\n<p>This Privacy Policy (together with our Terms of Service http://www.direct-id.com.sg/terms-of-service and any other documents referred to in it) sets out how personal data that we collect from you, or that you provide to us, will be used, processed or disclosed by us, including how certain information would be used to personalise advertising directed at you. This Privacy Policy also sets out the types of personal data we collect, how we keep it secure, as well as how you can access or alter your personal data stored by us. This Privacy Policy covers use of the Website, as well as the Apps, and any other way you may connect to or interact with us through the use of our products and services.</p>\r\n\r\n<p>Please read the following carefully to understand our policy and practices regarding your personal data and how we will treat it.</p>\r\n\r\n<p>Unless restricted by applicable law, you agree that any and all personal data relating to you collected by us or provided by you from time to time may be used, processed, and disclosed for such purposes and to such persons as set out in this Privacy Policy.</p>\r\n\r\n<p>We may amend this Privacy Policy at any time by posting a revised version on the Website. However, an individual notice will not be sent to you. You will be deemed to have acknowledged and agreed to the amended Privacy Policy if you continue to use the Website, the Apps or our products and services after the changes have taken e ect. You are reminded to check this Website from time to time for updates to this Privacy Policy.</p>\r\n\r\n<ol>\r\n	<li><span><strong>COLLECTION OF PERSONAL DATA </strong></span>\r\n    \r\n    	<ol>\r\n        	<li>You can use and browse the Website without disclosing your personal data. You are not required to provide personal data as a condition of using the Website, except as may be necessary for us to be able to provide the products and services which you purchase through our Website, respond to your requests, or in cases where you contact us directly.</li>\r\n            <li>We collect personal data only when you provide it to us in the following situations:\r\n            <ol class=\"bulletsClass\">\r\n            	<li>when you carry out transactions with us on or in relation to the Website or the Apps;</li>\r\n                <li>when you register an account with us on the Website or the Apps;</li>\r\n                <li>when you contact our customer service or sales people by email, telephone, or in person, to resolve any issues that you may be facing or with inquiries or requests; and</li>\r\n                <li>when you subscribe to the services that we are providing on the Website or for our email notifications, and/or newsletters.</li>\r\n            </ol>\r\n            </li>\r\n            \r\n            <li>We may collect certain information on your visits to the Website including, but not limited to track data, location data, and the resources that you access. This information is non-personally identi able information (i.e. it cannot be used to identify you) and may be used by us, or by a third party advertiser, in tailoring advertising specifically for you. For details on how to opt out of providing such information, please see section 6 of this Privacy Policy.</li>\r\n        </ol>\r\n    </li>\r\n    <li><strong>PURPOSES OF USE </strong>\r\n    	<ol>\r\n        	<li><span>The personal data which you provide may be used and processed by us in the aggregate or individually and may be combined with other information for the purpose of managing and operating the Website and the Apps, the scope of which may include, but is not limited to the following:</span>\r\n            	<ol class=\"bulletsClass\">\r\n                	<li>Administering the Website; </li>\r\n\r\n					<li>improving your browsing experience by personalising the Website and the Aps; </li>\r\n\r\n                    <li>enabling your use of the services available on the Website and the Apps; </li>\r\n                    \r\n                    <li>providing to you the products and services that you have specifically requested; &bull; responding to your enquiries or requests pursuant to your emails and/or submission of form(s) on the Website or the Apps; </li>\r\n                    \r\n                    <li>responding to and taking follow-up action on complaints regarding the use of the Website, the Apps or any product or service provided by us;</li>\r\n                    \r\n                    <li>sending you general (non-marketing) commercial communications; </li>\r\n                    \r\n                    <li>performing once and operational administrative matters; and </li>\r\n                    \r\n                    <li>providing third parties with statistical information about our users. Such statistical information may be used to personalise advertising on the Website, but cannot be used to identify any individual user. For details on how to opt out of personalised advertising, please refer to section 6 of this Privacy Policy.</li>\r\n                </ol>\r\n            </li>\r\n            <li>We will not, without your express consent, disclose your personal data to third parties for the purposes of direct marketing. Consent for disclosure of personal data to third parties, for the purposes of receiving marketing communications, is given through our registration form, either online or on paper. You can withdraw your consent by contacting our customer service: http://www.propertyguru.com.sg/contactus. If you have given your consent when registering as a member on the Website, you can also withdraw your consent by revisiting the online registration form: http://www.direct-id.com.sg /user-profile, and unchecking the consent box.\r\n    </li>\r\n        </ol>\r\n    </li>\r\n    \r\n    <li>\r\n    	<span><strong>SECURITY </strong></span>\r\n        \r\n        <ol>\r\n        	<li>we will take reasonable technical and organizational precautions to prevent the loss, misuse or alteration of your personal data.</li>\r\n			<li>We will store all the personal data you provide on secure servers.</li>\r\n			<li>You however understand that the transmission of information via the Internet is not completely secure. Although we will do our best to protect your personal data, we cannot guarantee the security of your personal data transmitted to the Website or the Apps; any transmission is at your own risk.</li>\r\n			<li>Where we have given you (or where you have chosen) a password which enables you to access certain parts of the Website or the Apps, you are responsible for keeping this password confidential. We ask you not to share a password with anyone. We will NEVER ask you for your password other than when you log in to the Website or the Apps, as the case may be.</li>\r\n        </ol>\r\n        \r\n    </li>\r\n    \r\n    \r\n    <li>\r\n    		<span><strong>DISCLOSURE OF PERSONAL DATA </strong></span>\r\n			<ol>\r\n                <li>In order to manage and operate the Website, we may disclose your personal data to any member of our group, which means our affiliates and subsidiaries. We may also disclose your personal data to third parties such as our service providers and professional advisors for the following purposes:\r\n                <ol class=\"bulletsClass\">\r\n                    <li> to comply with any legal requirement;</li>\r\n                    \r\n                    <li>to enforce or apply our Terms of Service <a href=\"http://www.direct-id.com.sg/terms-of-service\">http://www.direct-id.com.sg/terms-of-service</a> and other agreements;</li>\r\n                    \r\n                    <li>to protect our rights, property, and safety, and the rights, property and safety of our affiliates and subsidiaries, other users of the Website and others;</li>\r\n                    \r\n                    <li>in connection with any legal proceedings or prospective legal proceedings; and</li>\r\n                    \r\n                    <li>in connection with a business asset transaction (i.e. the purchase, sale, lease, merger or amalgamation or any other acquisition, disposal or financing of an organisation or a portion of an organisation or of any of the business or assets of an organisation) to which we are a party or a prospective party.</li>\r\n				</ol>                \r\n                </li>\r\n            </ol>\r\n    </li>\r\n    \r\n    <li>\r\n    	<span><strong>IP ADDRESSES </strong></span>\r\n		<ol>\r\n			<li>When you use the Website or the Apps, we may collect and store information about your computer, including where available your IP address, operating system and browser type, for system administration. This is statistical data about our users&#39; browsing actions and patterns, and does not identify any individual.</li>\r\n		</ol>\r\n    </li>\r\n    \r\n    <li>\r\n    	<span><strong>COOKIES </strong></span>\r\n        <ol>\r\n        	<li>Cookies are used on the Website and the Apps to distinguish you from other users of the Website and the Apps. Cookies help us to provide you with a good experience when you browse the Website or use the Apps. Cookies also allow us to improve the Website and the Apps. In addition, cookies are used to personalise the advertising you see on the Website, the Apps, or on other websites. All cookies which we send to you through the Website or the Apps are set to expire in 2 years.</li>\r\n        	<li>We also allow certain third parties to collect information about your online activities through cookies and other technologies when you use the Website or the Apps. These third parties include\r\n            	<ol>\r\n                	<li>business partners, who collect information when you view or interact with one of their advertisements on the Website or the Apps, and</li>\r\n                    <li>advertising networks, who collect information about your interests when you view or interact with one of the advertisements they place on many different web sites on the Internet. The information gathered by these third parties are non- personally identifiable information which is used to make predictions about your characteristics, interests or preferences and to display advertisements on the Website, the Apps, and across the Internet which are tailored to your interests.</li>\r\n                    <li>Please note that we do not have access to or control over the cookies or other technologies which the above-mentioned third parties may use to collect information about your interests. The use of cookies or other technologies by these third parties are not covered by this Privacy Policy and are subject to their own privacy policies.</li>\r\n                </ol>\r\n            </li>\r\n        </ol>\r\n    </li>\r\n	<li>\r\n    	<span><strong>INTERNATIONAL DATA TRANSFERS </strong></span>\r\n        <ol>\r\n        	<li>We may temporarily store, process or transfer your personal data between any of the countries in which we operate in order to enable us to use your personal data in accordance with this Privacy Policy and our Terms of Service http://www.direct-id.com.sg /customer-service/terms- of-service.</li>\r\n\r\n<li>We will take all steps reasonably necessary to ensure that your personal data is treated securely and in accordance with this Privacy Policy.</li>\r\n        </ol>\r\n    </li> \r\n    \r\n    <li>\r\n    	<span><strong>THIRD PARTY WEBSITES </strong></span>\r\n        <ol>\r\n        	<li>The Website and the Apps may, from time to time, contain links to and from the websites of our partner networks and vendors. If you follow a link to any of these websites, please note that these websites have their own privacy policies and that we do not accept any responsibility or liability for these policies. Please check these policies before you submit any personal data to these websites.</li>\r\n        </ol>\r\n    </li> \r\n    \r\n    <li>\r\n    	<span><strong>ACCESS AND CORRECTION </strong></span>\r\n        <ol>\r\n        	<li>Our privacy officer is responsible for ensuring that requests for access to personal data and amendment of personal data are properly dealt with in accordance with the procedures specified herein. For concerns related to personalised advertising, please see section 6.</li>\r\n\r\n			<li>All requests for information or requests for the amendment of personal data held by us shall be made by completing our standard Request for Information/Amendment of Information form (PDF available here <a href=\"http://www.propertyguru.com.sg/customer-service/privacy/request-form\">http://www.propertyguru.com.sg/customer-service/privacy/request-form</a>), and sending a copy of the duly completed form to us via post or fax at:&nbsp;<strong>Comrades in IdeasPte Ltd </strong><p>&lt;Address&gt;</p><p>&lt;person in charge name and contact&gt;</p></li>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<li>Please note that we will only accept and act on requests in the English language that comply with this Privacy Policy, and with the applicable charge(s) paid. Any request that does not comply with the above will be rejected, and we will not take any action in relation to such rejected requests.</li>\r\n\r\n<li>We may refuse to disclose or amend any personal data for the reasons set out in the Personal Data Protection Act 2012.</li>\r\n\r\n<li>As far as reasonably possible, we will respond to your request within ten (10) working days from the date of receipt of the request. If that is not possible, you will be so notified within ten (10) working days from the date of receipt of the request.</li>\r\n\r\n<li>A charge of $10 (including GST) will be imposed on each submission of a request for access to personal data. This charge may be subject to revision by us from time to time. Payment of the applicable charge shall be by way of cheque made out to PropertyGuruPte Ltd, at the time of submission of the request. Please note that we will not accept and act on requests that are not accompanied with payment of the applicable charge.</li>\r\n	</ol>\r\n    </li>\r\n    \r\n    <li>\r\n    	<span><strong>DISCLAIMER </strong></span>\r\n		<ol>\r\n		<li>We shall not be liable for any voluntary disclosure of personal data by you to other users in connection with the use of the Website or the Apps, as the case may be.</li>\r\n        </ol>\r\n    </li>\r\n	<li>\r\n    	<span><strong>CONTACT US </strong></span>\r\n		<ol>	\r\n			<li>Should you require further information about the treatment of your personal data by us, please do not hesitate to contact our privacy officer at:<a name=\"_GoBack\"></a>&lt;email address&gt;.</li>\r\n		</ol>\r\n    </li>	\r\n</ol>\r\n         </div>', '', '2017-07-14 11:52:05'),
(4, 'Acceptable Use Policy', '<div class=\"termsContentDiv\">\r\n            <h4>Acceptable Use Policy </h4>\r\n\r\n<p>In using the services provided by Comrades in IdeasPte Ltd (&quot;<strong>DID</strong>&quot;) on</p>\r\n\r\n<p><a>http://www.direct-id.com.sg/</a> (the &quot;<strong>Website</strong>&quot;), you agree not to:</p>\r\n\r\n<ol>\r\n\r\n<li>violate any law, statute or regulation;</li>\r\n\r\n<li>infringe the copyright, patent, trademark, trade secret or other intellectual property right of any party, including but not limited to <a name=\"_GoBack\"></a>DID;</li>\r\n\r\n<li>sell counterfeit goods;</li>\r\n\r\n<li>sell any goods or provide any services prohibited by law;</li>\r\n\r\n<li>engage in money laundering activities;</li>\r\n\r\n<li>engage in gambling activities;</li>\r\n\r\n<li>engage in any immoral activity or potentially immoral activity, including but not limited to prostitution and pornography;</li>\r\n<li>impersonate any person or entity, or falsely state or otherwise misrepresent your a liation with a person or entity;</li>\r\n<li>act in a manner that is defamatory, libelous, threatening or harassing;</li>\r\n\r\n<li>provide false, inaccurate or misleading information;</li>\r\n\r\n<li>engage in potentially fraudulent, suspicious or illegal activity and/or transactions;</li>\r\n\r\n<li>&quot;stalk&quot; or otherwise harass another user of the Website (&quot;<strong>User</strong>&quot;);</li>\r\n\r\n<li>send unsolicited emails to any User or use CII&#39;s services to collect payments for sending, or assisting in sending unsolicited emails to third parties</li>\r\n\r\n<li>disclose or distribute another User&rsquo;s personal information to a third party, or use such information for marketing purposes without the express consent of that User;</li>\r\n\r\n<li>take any action that imposes an unreasonable or disproportionately large load on DID&#39;s infrastructure;</li>\r\n\r\n<li>upload, or cause to be uploaded, any content to the Website that contains viruses, or any other items that may damage, interfere with, or adversely a ect or hinder access to the Website;</li>\r\n\r\n<li>engage in, nor cause other Users to engage in, spamming, phishing, improper, malicious or, in DID&#39;s absolute discretion, fraudulent clicking, impressions or marketing activities relating to the Website;</li>\r\n\r\n<li>inDID&#39;s absolute discretion, re ect poorly on or tarnish the reputation of DID;</li>\r\n\r\n<li>modify, adapt, reformat, recompile, transmit, publish, license, reverse engineer, disassemble, reconstruct, decompile, copy or create derivative works of, transfer or sell any services on the Website or part thereof, including source codes or algorithms, except as expressly authorised by DID in writing, or to the extent permitted by law;</li>\r\n\r\n<li>alter, remove, cover or otherwise deface any identication, trademark, copyright or other notice from any aspect of the services on the Website;</li>\r\n\r\n<li>use any automation software, hacks, mods or any other unauthorized third-party software designed to access, crawl or collect from DID&#39;s services; and</li>\r\n\r\n<li>use any unauthorized third party software that intercepts, &ldquo;mines&rdquo; or otherwise collects information from or through DID.</li>\r\n\r\n</ol>\r\n</div>', '', '2017-07-14 11:52:05'),
(5, 'Homeowners', '<div class=\"aboutUsMainBg\"> <div class=\"container\" style=\"position:relative;\"> <div class=\"aboutUsTextDiv hidden-xs\">About Us</div>  <div class=\"aboutUsInnerDiv Overflow\"> <div class=\"col-lg-6 col-md-7 col-sm-8\"> <div class=\"aboutContentDiv\"> <h1 class=\"aboutCotentHeading\">Our Mission</h1>  <p><span class=\"clrOrange\">Uncover</span> Interior Designers</p>  <h1 class=\"aboutCotentHeading yelloBtn\">What We Do</h1>  <div class=\"aboutMainContent\"> <p><span style=\"font-size:14px;\"><label>Question.</label><br /> What&#39;s the difference between an interior designer and a contractor? This isn&#39;t a trick question. Most homeowners don&#39;t know the difference, battling to find the right designer for the right job.</span></p>  <p><span style=\"font-size:14px;\">Most people are redirected to design firms based on their budget. However, everything in life comes down to chemistry. Without the personal touch, the design process bubbles over and explodes.</span></p>  <p><span style=\"font-size:14px;\"><span class=\"clrOrange\">Wedding</span> connects you to the individual profiles of skilled designers in Singapore. They are the key to a Pinterest worthy home! Pick the one that suits your style, and meet your own expectations before even getting started.</span></p>  <p><span style=\"font-size:14px;\">By working directly with a designer, you can obtain real information directly.without being shuffled through a portal.</span></p>  <p><span style=\"font-size:14px;\">With <span class=\"clrOrange\"> Wedding</span>, what you see is what you get. No jack-in the-boxes. No hidden surprises.</span></p> </div> </div> </div> </div> </div> </div>', 'Tulips-1486460345-71852.jpg', '0000-00-00 00:00:00'),
(6, 'Professionals', '', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_portfolio`
--

CREATE TABLE `d6f4fad3ds20d1c_portfolio` (
  `portfolio_id` int(255) NOT NULL,
  `portfolio_type` enum('designer','admin') NOT NULL DEFAULT 'designer',
  `portfolio_title` varchar(255) NOT NULL,
  `portfolio_subtitle` varchar(255) DEFAULT NULL,
  `portfolio_description` text NOT NULL,
  `portfolio_category` int(255) NOT NULL,
  `portfolio_subcategory` int(255) NOT NULL,
  `portfolio_addon_packages` varchar(255) NOT NULL,
  `portfolio_user_id` int(255) NOT NULL,
  `portfolio_location` varchar(255) DEFAULT NULL,
  `portfolio_added_date` datetime DEFAULT NULL,
  `portfolio_complete_status` enum('1','2','3') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_portfolio`
--

INSERT INTO `d6f4fad3ds20d1c_portfolio` (`portfolio_id`, `portfolio_type`, `portfolio_title`, `portfolio_subtitle`, `portfolio_description`, `portfolio_category`, `portfolio_subcategory`, `portfolio_addon_packages`, `portfolio_user_id`, `portfolio_location`, `portfolio_added_date`, `portfolio_complete_status`) VALUES
(99, 'admin', 'Subtle 80s', NULL, '.', 12, 9, '', 1, 'unspecified', '2017-09-28 04:19:50', '1'),
(100, 'admin', 'AAID - Minimalist', NULL, '.', 6, 0, '', 1, 'Unspecified', '2017-09-28 04:21:37', '1'),
(101, 'admin', 'KEVIN', NULL, '350sqft compact apartment. \r\nMultiple function furniture', 4, 0, '', 1, 'Unspecified', '2017-09-28 04:23:42', '2'),
(102, 'admin', 'Nordic Forest by Wesley Liu', NULL, '.', 4, 0, '', 1, 'unspecified', '2017-09-28 04:25:00', '1'),
(103, 'admin', 'FILI ', NULL, '.', 16, 0, '', 1, 'unspecified', '2017-09-28 04:26:29', '1'),
(104, 'admin', 'Minimalist X Scandinavian', NULL, '.', 16, 0, '', 1, 'unspecified', '2017-09-28 04:30:11', '1'),
(105, 'admin', 'Less not bore', NULL, '.', 16, 0, '', 1, 'unspecified', '2017-09-28 04:32:23', '1'),
(106, 'admin', 'Cork Textured Wall Feature', NULL, '.', 16, 0, '', 1, 'Newton Singapore', '2017-09-28 04:34:22', '1'),
(107, 'admin', 'The Gentle Minimalist', NULL, '.', 16, 0, '', 1, 'Sentosa Cove Singapore', '2017-09-28 04:35:56', '1'),
(108, 'admin', 'The New Green', NULL, '.', 16, 0, '', 1, 'unspecified', '2017-09-28 04:40:33', '1'),
(109, 'admin', 'Kitchen', NULL, 'The kitchen is usually where a significant portion of the home improvement budget is allocated and one of the most important spaces in one\'s home.', 16, 0, '', 1, 'unspecified', '2017-09-29 00:32:57', '1'),
(110, 'admin', 'Bedrooms', NULL, '.', 19, 0, '', 1, 'Singapore', '2017-09-29 00:36:16', '3'),
(111, 'admin', 'soho', NULL, '..', 16, 0, '', 1, 'newton', '2017-10-01 22:20:22', '1'),
(119, 'admin', 'Kitchen', NULL, 'Singapore', 16, 0, '', 1, 'Singapore', '2017-12-21 07:44:52', '1'),
(120, 'admin', 'Bathroom', NULL, 'Bathroom', 16, 0, '', 1, 'Singapore', '2017-12-21 07:46:10', '1'),
(121, 'admin', 'Bedroom', NULL, 'Singapore', 16, 0, '', 1, 'Singapore', '2017-12-21 07:46:56', '1'),
(122, 'admin', 'Living room ', NULL, 'Singapore', 16, 0, '', 1, 'Singapore', '2017-12-21 07:47:28', '1'),
(175, 'designer', 'Modern barn house', NULL, 'Custom Barn doors and ceiling contours', 9, 0, '', 131, 'Fernvale Road Singapore', '2018-01-09 23:18:03', '1'),
(176, 'designer', 'Monochrome modern', NULL, 'Enlarged and reconfigured kitchen to accommodate baking station. \r\nSpace saving bar counter.', 11, 0, '', 131, 'Tivoli Grande Condominiumn Singapore', '2018-01-09 23:32:19', '1'),
(177, 'designer', 'Chevron/Scandinavian', NULL, 'Efficient use of woodgrained laminates & various surfaces', 4, 0, '', 131, 'Heron Bay Condo Singapore', '2018-01-10 00:01:11', '1'),
(178, 'designer', 'Experimental', NULL, 'Sleek edges', 12, 0, '', 131, 'Ghim Moh Link Singapore', '2018-01-10 00:03:15', '2'),
(179, 'designer', 'Bon Voyage', NULL, 'Travel inspired eclectic space', 4, 0, '', 133, 'Yishun Singapore', '2018-01-11 20:31:46', '1'),
(180, 'designer', 'De Stijl Loft', NULL, 'Iconic De Stijl pattern incorporated throughout the high ceiling mini loft.', 11, 0, '', 133, 'Dawson Road Singapore', '2018-01-11 20:39:13', '1'),
(181, 'designer', 'Sleek modern duplex ', NULL, 'Modern sleek interior\r\nGeometric twists in living room & tv console\r\nGeometric patterns painted along stairwell to draw attention to high ceilings and interesting light fixtures.', 11, 0, '', 133, 'M66 Moonstone Lane Singapore', '2018-01-11 20:43:03', '1'),
(182, 'designer', 'Minimalist family home', NULL, 'Every line incorporated in the interiors were meant to highlight the spaciousness ', 6, 0, '', 133, 'Jurong East Singapore', '2018-01-11 20:48:09', '1'),
(183, 'designer', 'Nail & Beauty Spa salon', NULL, 'Brief:\r\n200sqft\r\nbright and luxurious\r\nmaximum storage space \r\nefficient space planning to create 2 rooms and reception area on top of 5 seats service area', 13, 0, '', 133, 'Punggol Waterway Park, Singapore Singapore', '2018-01-11 20:52:51', '1'),
(184, 'designer', 'Mid century modern blues', NULL, 'Cool colour scheme \r\nMid century modern twist', 5, 0, '', 134, 'Sumang Walk Singapore', '2018-01-11 21:56:45', '1'),
(185, 'designer', 'Scandi Chic', NULL, 'Simple Scandinavian \r\nOptimal use of yard area', 4, 0, '', 134, '808 Chai Chee Avenue Singapore', '2018-01-11 22:04:37', '1'),
(186, 'designer', 'Zen Vibes', NULL, 'Brief:\r\nSimple & efficient space planning ', 6, 0, '', 135, 'Bukit Batok Singapore', '2018-01-11 22:31:36', '1'),
(187, 'designer', 'Diamond In The Rough', NULL, 'They say opposites attract – such was the case for this couple, polar opposites in their vision for the house.\r\nInspired by the couple’s contrasting preferences, we combined the wife’s love of a polished finish with the husband’s desire of a raw, industrial design, to create a final look reminiscent of the journey a diamond takes from raw to polished; dull to shine.\r\nThe transition from industrial to luxury is a common theme throughout the house. To start, walls both industrial and luxurious were placed at different parts of the house to differentiate the raw from the polished.\r\nThe TV cabinet, skillfully carved, was inspired by the raw edges of stone and the angular surface of diamonds. An extension of the theme, this feature was replicated along the passageway ceiling, enhanced with an interplay of lights to further emphasise the journey a diamond takes.\r\nLike what a diamond ring represents, the mirrored doors in the walk-in wardrobe creates a sense of infinite possibilities, with the copper frame and luxurious plush fabric adding the necessary soft touch to the otherwise cold space.\r\nEntering the master bedroom, one would automatically be drawn to the intricate clean-cut dismonesque geometric flower, perfectly complementing the softness of the delicate floral pendent light, inducing a sense of grandiose to the room.', 12, 0, '', 136, 'Singapore', '2018-01-11 22:51:20', '1'),
(188, 'designer', 'Harmony', NULL, 'Deriving its inspiration from the client’s ethnicity, harmony was conceived through the simplification of a traditional Chinese motif that was further morphed into a modernised version of its former self.\r\n\r\nThe newly designed motif was then reinterpreted into a feature display and storage installed in the foyer and the living area of the cosy abode serving as both a daily reminder of the family’s roots in China and the focal point of the room.\r\n\r\nA combination of beech wood, white and gold laminates were applied to complement each other and to create a modern look. The theme of harmony is subtly reiterated in the circular design of the TV console handles created to complete the overall aesthetic of the living room.\r\n\r\nThe seemingly ordinary shelves situated in the bedrooms are in fact oriental Chinese window frames injected with a touch of modernity and brilliance. Accent colours were carefully selected to suffuse the rooms with vibrancy while still maintaining the harmony of the entire space.\r\n', 8, 0, '', 136, '???Leedon HeightsD\'leedon Condo', '2018-01-11 22:53:37', '1'),
(190, 'designer', 'Living By the Bay', NULL, 'A story of a relaxing adventure filled with images of the bright yellow sun and a scalloped shoreline being hugged by the sparkling turquoise waves adapted into a tangible living space — that is where our inspiration was derived. Coupled with the client’s love of scuba diving and the unique and meaningful experiences they had related to the sport, the elegant and comforting, yet exciting design was born.\r\nThe door opens to the foyer which serves as a visual prelude to the beach hut where a distinctive feature cabinet, made of veneer timber planks, was strategically placed to create a cosy, yet eye-catching entrance. The cabinet continues to extend upwards to form a timber ceiling and ends where the black tinted mirrors that creates the illusion of a more spacious apartment stand.\r\nThe cabinet isn’t there only for aesthetic purposes either. It also has ample storage space, a suspended drawer, and a wall opening where a fish tank currently sits. Not only is it the opening the home of the family pet, it also aids in highlighting and connecting the presence of the different spaces within the apartment. On the other side of the cabinet, a fully stocked mini bar hidden from view with a sliding door made entirely out of blackboard minimises clutter.\r\nThe bay settee that flows from the foyer through to the dining area is the focal point of the house and is a tongue-in- cheek interpretation of “living by the bay”. It also serves a multitude of functions, acting as a shoe settee, a TV console, a bay window, and a dining settee all at once. The interior is bathed in a warm light emitted from the concealed lighting, visually connecting the different pockets of space within the apartment.\r\nRecycled blue beer bottles were re-purposed and fixed to one end of the bay settee to create a unique light feature — an obvious nod to the client\'s love for drinking and lounging at the beach. On the other end, frosted glass pebbles were scattered and decorated with a standing lamp to emulate rocks and sea salt stones. To create a sense of warmth and relaxation that the client can come back home to after an exhausting day at work, an incandescent pendant was installed in a quiet corner of the dining area.\r\nTimber was used again as the choice material for the floor of the hallway leading to the bedrooms. To form a more seamless look, the master bedroom, situated at the very end of the hallway, was once more, made out of timber. Towards the living area, the floor planks begin to alternate with the cement screed flooring — creating the illusion of waves crashing against the shore and varying tactile sensations.\r\nThe slightly edgy and industrial quality of the kitchen is a subtle departure from the living area. Upon entrance, the distinctly coloured copper pipes and the contrasting stainless steel countertop are sure to catch your eye. Several of the pipes were artfully bent and stretched along the ceiling, converging to serve as light sources while others were transformed into simple, yet tastefully designed taps.\r\nLiving by the bay heightens an unique and meaningful experience that is inherent to the lifestyle of the client. It sought to create a series of spaces that is elegant, relaxing and yet exciting.', 7, 0, '', 136, 'Singapore', '2018-01-11 23:11:14', '1'),
(191, 'designer', 'Less Is More', NULL, 'A story of a relaxing adventure filled with images of the bright yellow sun and a scalloped shoreline being hugged by the sparkling turquoise waves adapted into a tangible living space — that is where our inspiration was derived. Coupled with the client’s love of scuba diving and the unique and meaningful experiences they had related to the sport, the elegant and comforting, yet exciting design was born.\r\nThe door opens to the foyer which serves as a visual prelude to the beach hut where a distinctive feature cabinet, made of veneer timber planks, was strategically placed to create a cosy, yet eye-catching entrance. The cabinet continues to extend upwards to form a timber ceiling and ends where the black tinted mirrors that creates the illusion of a more spacious apartment stand.\r\nThe cabinet isn’t there only for aesthetic purposes either. It also has ample storage space, a suspended drawer, and a wall opening where a fish tank currently sits. Not only is it the opening the home of the family pet, it also aids in highlighting and connecting the presence of the different spaces within the apartment. On the other side of the cabinet, a fully stocked mini bar hidden from view with a sliding door made entirely out of blackboard minimises clutter.\r\nThe bay settee that flows from the foyer through to the dining area is the focal point of the house and is a tongue-in- cheek interpretation of “living by the bay”. It also serves a multitude of functions, acting as a shoe settee, a TV console, a bay window, and a dining settee all at once. The interior is bathed in a warm light emitted from the concealed lighting, visually connecting the different pockets of space within the apartment.\r\nRecycled blue beer bottles were re-purposed and fixed to one end of the bay settee to create a unique light feature — an obvious nod to the client\'s love for drinking and lounging at the beach. On the other end, frosted glass pebbles were scattered and decorated with a standing lamp to emulate rocks and sea salt stones. To create a sense of warmth and relaxation that the client can come back home to after an exhausting day at work, an incandescent pendant was installed in a quiet corner of the dining area.\r\nTimber was used again as the choice material for the floor of the hallway leading to the bedrooms. To form a more seamless look, the master bedroom, situated at the very end of the hallway, was once more, made out of timber. Towards the living area, the floor planks begin to alternate with the cement screed flooring — creating the illusion of waves crashing against the shore and varying tactile sensations.\r\nThe slightly edgy and industrial quality of the kitchen is a subtle departure from the living area. Upon entrance, the distinctly coloured copper pipes and the contrasting stainless steel countertop are sure to catch your eye. Several of the pipes were artfully bent and stretched along the ceiling, converging to serve as light sources while others were transformed into simple, yet tastefully designed taps.\r\nLiving by the bay heightens an unique and meaningful experience that is inherent to the lifestyle of the client. It sought to create a series of spaces that is elegant, relaxing and yet exciting.', 5, 0, '', 136, 'Sengkang Singapore', '2018-01-11 23:14:08', '1'),
(192, 'designer', 'Peak My Interest', NULL, 'To be updated', 4, 0, '', 136, 'Tampines Singapore', '2018-01-11 23:17:52', '1'),
(193, 'designer', 'Open Closure', NULL, 'OpenClosure\r\nWaterway Sunbeam, Punggol\r\nIn Singapore, with majority of our flats being built to look almost identical – from the floor plans to the finishings – there can’t be much room for creative interior design, right? Wrong. Well, at least not for this cosy apartment situated in Punggol.\r\nTo create the illusion of a roomier living space, numerous walls were demolished and boundaries between the rooms were blurred. Large floor-to-ceiling mirrors were installed in the foyer to visually enlarge the room whilst a multi-functional cabinet was constructed in the living area to form a seamless connection between the former and latter.\r\nCurvilinear forms are littered throughout the house, hidden in the nooks and crannies, obvious only to those who actively search for them. Such as the customised curved dining table that was integrated into the kitchen cabinet as a subtle indicator that dining and cooking share a single spatial experience, as well as the platform that leads up to the sofa and the recreational room. These curves, though unassuming, are consistent, impactful, and perfectly translate the experience of an open space to visitors.\r\nOn the platform, a pull-up coffee table was installed to save space. A large sliding glass door divides the living area and the recreational room beyond it to add to the sense of spaciousness. Concealed roller blinds provide some much needed privacy to the recreational room which doubles up as a guest room.\r\nOn the wall at the end of hallway that leads to the rooms, a full-length mirror was built to enhance the decor and create an illusion of depth. The mirror reflects the curvature of the platform and deceives the mind into thinking that the walkway leads to another space.\r\nTwo bedrooms were merged to form a larger, more versatile space. Beautifully customised pigeon hole cabinets were constructed to isolate the sleeping area from the rest of the room. Glass doors were implemented once again to hide the entrance to the washroom from view and to echo the idea of spaciousness that the design of this flat was based upon.\r\n\r\nmore images:\r\nhttp://roootstudio.com/roootstudio-creation-residential', 5, 0, '', 136, 'Singapore', '2018-01-11 23:20:17', '3'),
(194, 'designer', 'Abode', NULL, 'To be updated', 4, 0, '', 137, 'Toa Payoh Singapore', '2018-01-11 23:40:53', '1'),
(195, 'designer', 'Earth tones ', NULL, 'Created a calming backdrop ', 8, 0, '', 137, 'Sumang Walk Singapore', '2018-01-11 23:42:59', '1'),
(196, 'designer', 'cool calm minimalist', NULL, 'To be updated', 6, 0, '', 137, '308A Punggol Walk Singapore', '2018-01-11 23:44:42', '1'),
(197, 'designer', 'Cool Soho', NULL, 'Interesting twist to ceiling\r\n', 5, 0, '', 137, 'Jalan Tenteram Singapore', '2018-01-11 23:48:09', '1'),
(198, 'designer', 'Scandinavian Makeover', NULL, 'to be updated', 4, 0, '', 137, 'Tanjong Pagar Plaza Singapore', '2018-01-11 23:50:47', '1'),
(199, 'designer', 'Grunge Industrial', NULL, 'To be updated', 7, 0, '', 138, 'Edgedale Plains Singapore', '2018-01-12 00:06:38', '1'),
(200, 'designer', 'Another World', NULL, 'To be updated', 0, 0, '', 138, 'Yishun Ave 1 Singapore', '2018-01-12 00:14:18', '1'),
(201, 'designer', 'Verdure', NULL, 'To be updated', 5, 0, '', 139, 'Holland Road Singapore', '2018-01-12 01:22:34', '1'),
(202, 'designer', 'Fitness Centre', NULL, 'To be updated', 13, 0, '', 141, 'Wenzhou, Zhejiang, China', '2018-01-12 02:08:03', '1'),
(204, 'designer', 'Project @ The Bently Residences', NULL, 'A starter home which is modern but has the character of a mid-century living. Our homeowners wanted a home that\'s warm and welcoming each day as they return home from work. The lighting in the living areas is fitted with choices of various degree of light brightness. From minimum lighting to warm romantic resort ambiance to suit their desired mood.', 0, 0, '', 132, 'Project @ The Bently Residences', '2018-01-18 06:57:13', '1'),
(205, 'designer', 'Urban Beach Home', NULL, 'A New BTO 5 room flat that has a North-East Americana Coastal Decor and Design feel. Its decor and design leans towards that of what you may find in a home in Martha\'s Vineyard, Massachusetts. The home owners didn\'t realise their style for a home until we started to pull design elements together. And this is what we came out with. A very light and airy space with decor elements that both modern yet transitional.', 12, 0, '', 132, 'Project @ 342C Yishun', '2018-01-19 05:03:08', '1'),
(207, 'designer', 'Modern Mid-Century Abode', NULL, 'The latest Ab1 completed project at River Isles Condo @ Punggol. This is a modern home with a hint of mid-century touch. A place designed and decorated to reflect the choices and function of the owners.', 0, 0, '', 132, 'Project @ River Isles', '2018-01-21 04:03:32', '1'),
(208, 'designer', 'Project Asgard', NULL, 'The title of this project was titled and named by our client. You\'ll find out why this project is called that when you look through these beautiful pictures taken. A full gut job in every sense of the word. Gutted, we did. This was a joy for our decor/design consultant to work on. Our client, the home owners, were so proactive in communicating what they like and dislike to help the design to take shape. Most of all, they were very trusting with our consultant at each decision made for their whole house. This is a true transitional style in many sense. The rustic of the furnishings and the furniture, to the colours that both of them likes, to the modernity of which the husband hopes to maintain. This home has a beach home feel yet has the IT part nailed down!', 12, 0, '', 132, 'Project @ Pasir Ris', '2018-01-22 05:14:31', '1'),
(209, 'designer', 'Project Home\'s Hearth', NULL, 'This is a makeover project for a very tired kitchen that was last renovated when it was first built 30 years ago. The home owner decided to have this makeover done right and did not know what style to move towards. Our consultant put on his thinking hat and studied our client.  The end product is a transitional style that mixed in with a bit of our local \"kampong\" (village) feel with its kitchen cabinet\'s having a duo tone look. ', 12, 0, '', 132, 'Project @ Yishun St 81', '2018-01-22 07:37:57', '1'),
(210, 'designer', 'Dark Modern', NULL, 'Dark spaces at the living room and master bedroom to create cosy ambience for young couple', 11, 0, '', 147, 'The Vales Condo @ Sengkang', '2018-02-02 16:11:30', '1'),
(211, 'designer', 'Modern Scandi', NULL, 'Bright and space saving features create a spaceous area at the living and dining area.', 11, 0, '', 147, 'FloraVille@Yio Chu Kang', '2018-02-02 16:16:45', '1'),
(212, 'designer', 'Minimalist 3 Room Resale', NULL, 'Minimalism can make your house look simpler and more spacious with linear and functional creativity.   ', 0, 0, '', 150, 'Bukit Batok West Avenue 4, Singapore', '2018-02-19 01:51:12', '1'),
(213, 'designer', 'French Classic fuse with Scandinavian Minimalism', NULL, 'An all white French Classic wainscoting kitchen with just the right touch of Scandinavian minimalism...', 0, 0, '', 145, 'Bendemeer Light', '2018-02-19 22:33:58', '1'),
(214, 'designer', 'Scantallic Chic Design.', NULL, 'Scandinavian mixes with metallic chic to create a Scantallic Chic design that is fuss free and yet everlasting.', 4, 0, '', 145, 'Vue 8 Residence', '2018-02-22 23:32:29', '1'),
(216, 'designer', 'Cozy Contemporary ', NULL, 'The Design for this space was inspired by Natural, Hard and Soft Elements. We wanted to allow as much natural light to enter the house during the day to give a feel of seamlessness and connectivity with the outdoors. The vinyl flooring was implemented to give a warmth feel to the spatial quality. This enables the space to break from the rigidness of the Sail White walls throughout the house. We kept the kitchen simple with just a one tier cabinet with a tall unit to give a luxurious air space for natural daylighting. This also enables the client to have more room space to play. With minimal carpentry being installed around this house, there\'s mobility for the furnitures for future alterations. Change is Constant :)', 5, 0, '', 152, 'Bishan Street 22, Singapore', '2018-02-28 00:11:21', '1'),
(217, 'designer', 'Urban Minimalist', NULL, 'Drawing from the love for natural patterns, slim line, extra storage and special requirement for child safety.\r\nA combination of marble pattern design laminate and wall paper finish with the additional child safety curves was planned for the final look.', 11, 0, '', 144, 'A Treasure Trove, Punggol, Singapore', '2018-03-14 07:15:14', '1'),
(218, 'designer', 'Modern Country', NULL, 'After seeing owner classic furniture and displays i decided to give her a country feel mixed with modern concepts', 11, 0, '', 144, 'Commonwealth Close, Singapore', '2018-03-14 07:25:49', '1'),
(219, 'designer', 'Modern Minimalist Living/ Dining', NULL, 'Owner\'s requirements led to the inspiration for this project. Simplicity, non cluster. Modern minimalist was proposed. Wood texture was added to provide a warm ambience.', 11, 0, '', 158, 'Bukit Batok', '2018-03-17 23:54:29', '1'),
(220, 'designer', 'Modern Living/ Dining', NULL, 'Design to be modern and stylish. A bold decision to use grey as a staple color, creamy fabrics sofa and light grey curtains helps to compliment it and wood finishes help to bring forth a warm ambience.', 11, 0, '', 158, 'Signature at Yishun EC, Yishun, Singapore', '2018-03-18 12:56:23', '1'),
(221, 'designer', 'A Modern Dark Kitchen', NULL, 'Bye bye Sterile White Kitchen! Here comes Dark Beauty. A sleek, gorgeous, elegant dark kitchen cabinet set, filling the space with formality, richness and depths.', 11, 0, '', 158, 'BTO @ Punggol', '2018-03-18 13:32:18', '1'),
(222, 'designer', 'Nautical Meets Gold', NULL, 'Nautical meets Gold! Contemporary yet exudes a classy charm', 0, 0, '', 145, 'Eastbrook @ Canberra, Singapore', '2018-04-13 06:29:35', '1'),
(223, 'designer', 'Where food and people unite.', NULL, 'Family-orientated theme, with warm lightings and using natural color palette. ', 7, 0, '', 166, 'Punggol Point Road, The Punggol Settlement, Singapore', '2018-05-21 09:32:02', '1'),
(224, 'designer', 'Modern simplicity', NULL, 'Wood with grey will never go wrong!', 11, 0, '', 166, 'Jurong West, Singapore', '2018-05-21 10:02:27', '1'),
(225, 'designer', 'Scandi', NULL, 'Shop House love', 4, 0, '', 166, 'Lorong 4 Realty Park, Singapore', '2018-05-21 10:22:31', '1'),
(227, 'designer', 'Contemporary Chic', NULL, 'Contemporary chic design that encompass white as the core for a clean, classy and spacious feel!', 5, 0, '', 145, 'The Interlace Condo, Singapore', '2018-05-24 05:49:51', '1'),
(229, 'designer', 'Mundi Pharma', NULL, 'Full Renovation', 0, 0, '', 167, 'Asia Square Tower 2, Singapore', '2018-05-31 02:30:13', '1'),
(230, 'designer', 'Franklin Covey', NULL, 'Full Renovation', 0, 0, '', 167, 'Keppel Bay View, Singapore', '2018-05-31 02:33:44', '1'),
(231, 'designer', 'TBC', NULL, 'Full Renovation', 0, 0, '', 167, '79 anson', '2018-05-31 02:35:17', '1'),
(236, 'designer', 'Condo Industrial Chic', NULL, 'From the design details, colors and material selections, our design team gave the apartment an industrial look. The spaces are kept in comfort and aesthetic level. It is about rooms that not only make the owner feel most at ease, but living area that express the best  of who the owner are. The interior reflects the owner’s personal style and creative confident. For the bathroom area, textures are added using interesting tile effects to give the shower space an aged look and feel. The uneven finish mixes with detailed wall mirror, wooden vessel sink and soft lighting make bathroom looked richer in design.', 7, 0, '', 181, 'Lorong 108 Changi, Stillz Residence, Singapore', '2018-06-03 18:03:27', '1'),
(237, 'designer', 'Copper Showroom', NULL, 'This design gallery cum designer workspace is a charming space of chic decorating that utilizes a touch of industrial vintage. The slate wall creates a rustic feel in the room. Our design team plays with irregular 3D geometrical shape to create a copper tone kitchen counter design to bring out timeless yet retro feel for interior. The furniture pieces, paintings and lightings trigger a whole color scheme in interior. The owner’s passion and hobby in art jamming serve to fuel an entire decorating scheme. Spaces are creates not merely for copper design teams to perform their tasks in, it also expanded into spaces that represent dreams and aspirations.', 4, 0, '', 181, '71 Carpmael Road, Singapore', '2018-06-03 18:07:31', '3'),
(238, 'designer', 'Som Tam Thai Restaurant', NULL, 'The restaurant is to create a unique, yet cool and interactive dining experience. Cashier counters are illuminated from within, creating a glowing effect around the perimeter. A lot of natural materials—timber are used to add texture effect to the ceiling and wall. Plants are incorporated on entrance wall with illuminated light to make a plain feature into eye-catching asset. Bright accents, such as chairs upholstered in checked design are used to give a soft touch to the interior. Glass pendant lights bulbs hang from ceiling planes, creating an enhanced a special attention, not only improve overall visibility and setting in the interiors, but also add a touch of class and style overall.', 8, 0, '', 181, 'Orchard Central, Singapore', '2018-06-03 18:13:52', '1'),
(239, 'designer', 'HDB CleanApproach', NULL, 'The open concept of bar counter and dining area is designed to flow nicely into the living area, set the tone for intimate entertaining, giving the homeowners a versatile, people friendly space. The clean layout exudes a warm and welcoming ambiance. The look is kept clean with hi gloss overhead cabinets all in pristine white.  The balcony is designed to offer another cozy space for interaction and relaxing. With perfect views and excellent ventilation, it is no surprise that this conversation space is a favorite spot for both owners and their guests', 5, 0, '', 181, 'HDB @ Hougang Ave 8', '2018-06-03 18:21:07', '1'),
(240, 'designer', 'Landed_Scandinavian Terrace', NULL, 'With the aim of wanting a spacious and entirely new look, the expert team at Copper Design Associates gave 37 Elite Park Avenue a major overhaul to suit needs and wants of the homeowners. \r\nThe open concept of the bar counter and dining area is designed to flow nicely into the living area, setting the tone for intimate entertaining, giving the homeowners a versatile, people friendly place. The clean layout exudes a warm and welcoming ambience. The balcony is designed to offer another cosy space for interaction and relaxing. With the perfect view and excellent ventilation, it is no surprise that this conversation space is a favourite spot for both the homeowners and the guests. \r\nMeant to serve as an outline of the furnishing, the wood timber used around the home injects a warm ambience into the space coupled together with the warm lights used. While the focus was to keep the tone of the wood consistent throughout the house, it was not always easy to have the same shade due to the different mediums of the materials. However, the experienced team of designers at Copper Design Associates know how to make it work. For the table top, they opted for kompacplus New York Teak as it is extremely durable and offers a great contrast from the white cabinets. \r\nThe designers also made use of simple patterns in seemingly innocuous areas of the house such as the partition walls and the gate. Wooden tiles were also placed in a way to make the place look more lively and interesting. \r\nOverall, the team of designers at Copper Design Associates used wooden accents as the main feature together with simple patterns around the house in creating a new look for the house.', 4, 0, '', 181, 'Landed @ Elite Avenue', '2018-06-03 18:29:12', '1'),
(241, 'designer', 'Apartment_Modern Chic', NULL, 'Nestled in the heart of cultural district, this project is inspired by the rich accents of the art culture in Tiong Bahru.\r\nAn individual who have great interest in health and lifestyle, this walk-up unit is reconfigured from relocating the original kitchen as the new master bedroom, to the common bedroom as the new kitchen area.\r\nThe space is strategically planned, creating the user experience of a cosy art gallery home, accompanied by warm lighting and ambient music from the recessed speakers in the ceiling. You will be greeted by the adorable photos of their residence pets before stepping into the open concept living and kitchen area. Hidden at the far end of the corridor, the cosy master bedroom uses many soft lightings and warm finishes on the carpentry. The bed frame is carefully planned between 2 existing columns, furnished with soft cove lighting around the base, giving the bed a ‘lift’ from the bedroom floor. In contrast to the overall colour tone of the space, the master bathroom is on a darker shade with greys, marble and walnut finishes.\r\nWith geometrical elements, such as stripe design as well as the use of material of marble top in the kitchen, the interesting inter-play of original beams creating a conversational piece ceiling with cove lighting.\r\n', 5, 0, '', 181, 'Yong Siak Street, Singapore', '2018-06-03 18:35:45', '1'),
(242, 'designer', 'Condo Futuristic', NULL, 'Inspired by the Sci-Fi movie Passengers starred by Jennifer Lawrence and Chris Pratt, the family approached us to create a bold concept of their home where they can live in the future. The initial gleams of the concept is a monochromatic color palette with futuristic furniture in white angular lines and sophisticated fittings with refined elegance and amazing visual presence. \r\n\r\nBeside the norms of mainstream residential interiors in Singapore with the fluidity and organic forms, the concept must integrate the elements of both sense and sensibility, forms and functions. With the emphasis of ‘no wood’ criteria by the owner, the materials mainly used solid surfacing, metal & glass material which can make the space reflective and appear larger. The difficulty lies in the design of different materials to do the same color, and color differences as small as possible, tones of grey are added to provide the contrast needed to break away the ‘clinic’ look.\r\n\r\nWith the applications of recessed light belts that illuminates to guide you to the bedroom, the interior must merge whole aspect of smart home technology. The detailing is sophisticated and high end. All these aspects were translated into an integral design where space, interior, furniture, media and interaction and technology merge. The house needs to be an immersive and experiential environment.\r\nThe principal consideration are into streamlined shapes of the walls and in the functional application of inclinations and bends. The flowing lines of the walls, the decorative elements and the furniture have made the apartment very comfortable for living. \r\n', 11, 0, '', 181, 'Marina Boulevard, Marina One Residence, Singapore', '2018-06-03 18:41:00', '2'),
(243, 'designer', 'TBC', NULL, 'Full Renovation', 13, 0, '', 182, '79 anson', '2018-06-04 22:27:55', '1'),
(244, 'designer', 'Franklin Covey', NULL, 'Full Renovation', 13, 0, '', 182, 'Keppel Bay View, Singapore', '2018-06-04 22:29:26', '1'),
(245, 'designer', 'Mundi Pharma', NULL, 'Full Renovation', 13, 0, '', 182, 'Asia Square Tower 2, Singapore', '2018-06-04 22:48:56', '1'),
(247, 'designer', 'Modern Elegance ', NULL, 'Providing some privacy without obstructing the views, this home sets a stage for visual indulgence allowing the homeowners to relax within the comfort of their home while at the same time enjoying the scenic surroundings of its desirable location within Sentosa Cove.\r\nDesigner pieces in the living and dining area were carefully selected from Fendi Casa in addition to pieces from Cassina and Fiam Italia positioned through the home adding to the Modern Italian look. Complementing these added luxuries are bespoke customized chandeliers that accentuate the high ceilings, feature wall panelling and soft furniture create a wonderfully tranquil space.\r\nRising over 4 levels, this home caters to a well-travelled extended family, from the large private cinema room adjacent to the built-in wine cellar for the gentleman to an outdoor tropical spa retreat for the ladies. The home also provides a canvas for the aspiring art collector allowing for their artwork to be displayed along viewing corridors on multiple levels. This embodies the refined ability to impress through bespoke design for a homeowner with a keen eye for detail.', 5, 0, '', 186, 'Sentosa ', '2018-06-07 11:06:23', '1'),
(248, 'designer', 'Kismis Residences', NULL, '4 Storey Landed Property / Style: Contemporary \r\n\r\n', 5, 0, '', 186, 'Lorong Kismis, Singapore', '2018-06-07 11:20:48', '1'),
(249, 'designer', 'Corals Condominium ', NULL, '2BR Condo\r\n\r\nSofa Back Rest acts as an dining Bench so it can allow 6 pax for Dining space\r\nDining Pendant Light is by Grafunkt and the rest of the furniture are customised and carpentry works.\r\n\r\nConverted Foyer into Useful space by providing shoe cabinet at an angle and created ledge for flower display or keys drop.\r\n\r\nBedroom 2: Concept is kid room around age of 8-10 . \r\n\r\nMaster Bedroom : Created a mirror with ledge can be utilised as dresser area.\r\n\r\nIt fits a queen size bed only.\r\n\r\n\r\n\r\n', 5, 0, '', 186, 'Harbourfront Avenue, Keppel Bay Tower, Singapore', '2018-06-07 11:31:15', '1'),
(250, 'designer', 'Tanjong Ria Condo', NULL, 'Resale Flat:\r\n\r\nHacked down kitchen wall to create open kitchen concept \r\n\r\nCreated tinted bronze mirror to reflect spaces\r\n\r\nAll of the carpentry are using laminate and beading/moulding are installed on the laminate door to cut costs.\r\n\r\nMaster bath are hacked half way to create open concept bathroom with timber blinds .\r\n\r\n\r\n', 5, 0, '', 186, '121 Tanjong Rhu Road, Singapore', '2018-06-07 11:40:17', '1'),
(251, 'designer', 'Fulcrum', NULL, 'To make full use of the high ceiling , I have created high TV wall with display shelvings to be accessed by movable ladder.\r\n\r\nConcept is inspired by Kelly Hoppen , everything looks neutral so it wont look so heavy in such a small space.\r\n\r\nTo utilise hallway space, I have created a thin ledge to display magazines as a feature wall. \r\n', 5, 0, '', 186, 'Fort Road, Singapore', '2018-06-07 11:44:17', '1'),
(252, 'designer', 'Janet projet', NULL, 'The customer needs a simple, modern design, and the customer’s preference for color is darker.', 11, 0, '', 187, '13a, Hala Datuk 5, Ipoh, Perak, Malaysia', '2018-06-12 03:46:07', '1'),
(253, 'designer', 'hdb kitchen', NULL, 'Dark color with white is relatively simple and looks modern.', 11, 0, '', 187, '@Blk 119B crecent', '2018-06-12 03:50:31', '1'),
(254, 'designer', 'living room', NULL, 'Compare the colors of warn and bring out the feeling of cozy modern style', 11, 0, '', 187, 'Blk 658A #08-701 Punqqol east', '2018-06-12 04:03:14', '1'),
(255, 'designer', 'bedroom project', NULL, 'Designing a small space ? simple modern stlye', 11, 0, '', 187, 'blk 39 #08-01 hindhede walk', '2018-06-12 04:08:02', '1'),
(256, 'designer', 'Modern House @ The Santorini', NULL, 'Unlike conventional condominium units, this particular unit doesn\'t have the iconic balcony access at the end of the living hallway. The balcony has to accessed through a normal aluminium swing door on one of the sides of the door creating a rift in the balancing of the entire house.\r\n\r\nWhat we proposed was to create a Storage Feature Wall that would cover both the door and all the unsightly recess beams. This resulted in a clean, minimalist yet practical feature with lots of storage and mirrors that are placed in the right places to reflect the external view and expand the perceived width of the living room.\r\n\r\n', 11, 0, '', 183, 'The Santorini Condo, Singapore', '2018-07-01 05:06:29', '1'),
(257, 'designer', 'Moroccan Scandinavian', NULL, 'The main inspiration of the house is a strong Scandinavian look with accents of Moroccan flair. The challenge was to incorporate Islamic textures, colours and shapes into the design of the house. \r\n\r\nThe Living Room of this 5 Room Flat, was the most challenging as the space was very big and many considerations had to be made to accommodate the different requirements of the homeowner. As such. we decided to use the kitchen as a backdrop to create an emphasis on the design detail that was put into the wall below the breakfast counter. These tiles were sourced Moroccan tiles that had the geometric shapes required and the colours to match the flooring as well. We then finished the look with a beautiful and rich green colour wall and adorned with handwritten Islamic Calligraphy.\r\n\r\nThe Bedroom had to also incorporate the Islamic Flavours of the house and yet be modern and functional. This was achieved with a special feature glass door that created an elegant and yet traditional feel to the room. ', 0, 0, '', 183, 'BTO @ Anchorvale Crescent, Singapore', '2018-07-01 05:27:57', '1'),
(258, 'designer', 'Scandinavian Suite ', NULL, 'This particular project is interesting, to say the least, the owners\' requirements were to create a study that could fit a bed, and had a study area as well. While preserving the privacy of the bedroom. \r\n\r\nThis resulted in us designing a room that was low, vibrant and also extremely bright without using a lot of mirrors. The large cabinet near the entrance created an abundance of storage space but made the place look very bulky. We then proceeded to design various open niche with different depths to throw the viewers\' depth perception of the cabinet off. This resulted in a design that enabled the homeowner to have lots of storage without it being too bulky.\r\n\r\nThe TV Feature wall carries a rough rustic whitewashed brick design that has a suspended shelf and a TV Console attached to it. The lighting below the TV Console then made the entire room bigger whilst the spotlight above further pushed the brick wall in, expanding the room as a result.', 4, 0, '', 183, 'The Poiz Residences, Singapore', '2018-07-01 05:37:29', '2'),
(259, 'designer', 'Classy and sleek ', NULL, 'Classy and sleek, the house at The Crest condominium denotes dark grey walls and cabinets accompanying with the light marble finishes. Using LED lights in strategic areas, brings out the simple richness of the space, be it for resting or for leisure. Following the client\'s needs, further details were slotted in, such as a pull up table in the living room area as well as the use of metal frameworks along with the carpentry.', 0, 0, '', 193, 'The Crest Condo', '2018-07-06 04:12:05', '1'),
(260, 'designer', 'modern scandinavian', NULL, 'For this project, we tried to achieve tranquility through the use of subtle colors. The lightness of the space is heavily influenced by the furniture and the laminates choices. For the bedroom, however, we used a bolder laminate for the carpentry works to create a different ambiance.', 4, 0, '', 193, 'Bukit Batok West Avenue 8, Singapore', '2018-07-06 04:33:28', '1'),
(261, 'designer', 'Light wood scandinavian', NULL, 'Since the home owner hosts many gatherings, there was a need for a spacious living room. Hence, the TV feature was omitted and substituted with full height display and storage cabinets. A bed is also concealed within the cabinets to cater for additional guests. The bay seating ensured the guests had a place to sit down during functions.\r\nLight wood and white glossy finish was used throughout the whole house allowing the space to look brighter and feel lighter.', 4, 0, '', 193, 'Ka ching road', '2018-07-06 04:39:34', '1'),
(262, 'designer', 'modern scandinavian', NULL, 'The usage of light wood laminates with glossy white finish creates a soothing ambience within the space. As for the kitchen, we decided to use industrial wood finish to create a drastic difference from the other spaces. We designed a multi-functional pegboard where the clients can display and hang items in the study room. The walk-in wardrobe was customised to meet their needs ergonomically. Furthermore, both bathrooms are designed in a way to create a polarity between the light and dark finishes.', 11, 0, '', 193, 'Senja Road, Singapore', '2018-07-06 04:42:43', '1'),
(263, 'designer', 'modern luxury', NULL, 'For this project, we were tasked to redesign the built-in carpentry and completely revamp the common bathroom. Special considerations were taken into making the spaces brighter with the choices of laminates, tiles and paint colours. ', 11, 0, '', 193, 'Woodland drive 70', '2018-07-06 04:49:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_portfolio_images`
--

CREATE TABLE `d6f4fad3ds20d1c_portfolio_images` (
  `p_image_id` int(255) NOT NULL,
  `p_portfolio_id` int(255) NOT NULL,
  `p_user_id` int(255) NOT NULL,
  `p_image_name` varchar(255) NOT NULL,
  `p_image_tag` varchar(255) NOT NULL,
  `p_image_status` enum('0','1') NOT NULL DEFAULT '0',
  `p_added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_portfolio_images`
--

INSERT INTO `d6f4fad3ds20d1c_portfolio_images` (`p_image_id`, `p_portfolio_id`, `p_user_id`, `p_image_name`, `p_image_tag`, `p_image_status`, `p_added_date`) VALUES
(147, 66, 97, 'Img_841506060548.jpg', 'New design of bathroom', '1', '2017-09-22 00:00:00'),
(148, 66, 97, 'Img_8931506060548.jpg', '', '0', '2017-09-22 00:00:00'),
(149, 66, 97, 'Img_991506060549.jpg', '', '0', '2017-09-22 00:00:00'),
(150, 66, 97, 'Img_9721506060549.jpg', '', '0', '2017-09-22 00:00:00'),
(151, 66, 97, 'Img_6731506060550.jpg', '', '0', '2017-09-22 00:00:00'),
(152, 66, 97, 'Img_7601506060551.jpg', '', '0', '2017-09-22 00:00:00'),
(153, 67, 97, 'Img_6211506060721.jpg', '', '1', '2017-09-22 00:00:00'),
(154, 67, 97, 'Img_7251506060722.jpg', '', '0', '2017-09-22 00:00:00'),
(155, 67, 97, 'Img_8621506060723.jpg', '', '0', '2017-09-22 00:00:00'),
(156, 67, 97, 'Img_2141506060724.jpg', '', '0', '2017-09-22 00:00:00'),
(157, 67, 97, 'Img_1811506060724.jpg', '', '0', '2017-09-22 00:00:00'),
(158, 67, 97, 'Img_5861506060725.jpg', '', '0', '2017-09-22 00:00:00'),
(159, 68, 98, 'Img_9101506063123.jpg', '', '1', '2017-09-22 00:00:00'),
(160, 68, 98, 'Img_9891506063125.jpg', '', '0', '2017-09-22 00:00:00'),
(161, 68, 98, 'Img_7591506063126.jpg', '', '0', '2017-09-22 00:00:00'),
(162, 68, 98, 'Img_3641506063126.jpg', '', '0', '2017-09-22 00:00:00'),
(163, 68, 98, 'Img_431506063127.jpg', '', '0', '2017-09-22 00:00:00'),
(164, 69, 98, 'Img_2431506065126.jpg', '', '1', '2017-09-22 00:00:00'),
(165, 69, 98, 'Img_2571506065127.jpg', '', '0', '2017-09-22 00:00:00'),
(166, 69, 98, 'Img_6971506065128.jpg', '', '0', '2017-09-22 00:00:00'),
(167, 69, 98, 'Img_3761506065128.jpg', '', '0', '2017-09-22 00:00:00'),
(168, 69, 98, 'Img_9591506065129.jpg', '', '0', '2017-09-22 00:00:00'),
(169, 70, 100, 'Img_1871506067117.jpg', '', '1', '2017-09-22 00:00:00'),
(170, 70, 100, 'Img_9961506067118.jpg', '', '0', '2017-09-22 00:00:00'),
(171, 70, 100, 'Img_181506067119.jpg', '', '0', '2017-09-22 00:00:00'),
(172, 70, 100, 'Img_9191506067119.jpg', '', '0', '2017-09-22 00:00:00'),
(173, 70, 100, 'Img_6711506067120.jpg', '', '0', '2017-09-22 00:00:00'),
(174, 70, 100, 'Img_511506067120.jpg', '', '0', '2017-09-22 00:00:00'),
(175, 71, 100, 'Img_2771506067237.JPG', '', '1', '2017-09-22 00:00:00'),
(176, 71, 100, 'Img_1821506067238.JPG', '', '0', '2017-09-22 00:00:00'),
(177, 71, 100, 'Img_4021506067239.JPG', '', '0', '2017-09-22 00:00:00'),
(178, 71, 100, 'Img_4101506067240.JPG', '', '0', '2017-09-22 00:00:00'),
(179, 71, 100, 'Img_4291506067240.jpg', '', '0', '2017-09-22 00:00:00'),
(180, 72, 100, 'Img_3441506067358.jpg', '', '1', '2017-09-22 00:00:00'),
(181, 72, 100, 'Img_3231506067358.jpg', '', '0', '2017-09-22 00:00:00'),
(182, 73, 101, 'Img_811506069158.jpg', '', '1', '2017-09-22 00:00:00'),
(183, 73, 101, 'Img_7011506069159.jpg', '', '0', '2017-09-22 00:00:00'),
(184, 73, 101, 'Img_8921506069159.jpg', '', '0', '2017-09-22 00:00:00'),
(185, 73, 101, 'Img_7391506069160.jpg', '', '0', '2017-09-22 00:00:00'),
(186, 73, 101, 'Img_2821506069161.jpg', '', '0', '2017-09-22 00:00:00'),
(187, 74, 101, 'Img_8981506069419.JPG', '', '1', '2017-09-22 00:00:00'),
(188, 74, 101, 'Img_9381506069420.JPG', '', '0', '2017-09-22 00:00:00'),
(189, 74, 101, 'Img_5601506069421.JPG', '', '0', '2017-09-22 00:00:00'),
(190, 74, 101, 'Img_8701506069421.JPG', '', '0', '2017-09-22 00:00:00'),
(191, 74, 101, 'Img_1981506069422.JPG', '', '0', '2017-09-22 00:00:00'),
(192, 75, 101, 'Img_5021506070480.JPG', '', '1', '2017-09-22 00:00:00'),
(193, 76, 102, 'Img_2501506071137.jpg', '', '1', '2017-09-22 00:00:00'),
(194, 76, 102, 'Img_5271506071138.jpg', '', '0', '2017-09-22 00:00:00'),
(195, 76, 102, 'Img_6181506071138.jpg', '', '0', '2017-09-22 00:00:00'),
(196, 76, 102, 'Img_3761506071139.jpg', '', '0', '2017-09-22 00:00:00'),
(197, 76, 102, 'Img_2261506071140.jpg', '', '0', '2017-09-22 00:00:00'),
(198, 77, 102, 'Img_9931506071203.JPG', '', '1', '2017-09-22 00:00:00'),
(199, 77, 102, 'Img_8761506071204.JPG', '', '0', '2017-09-22 00:00:00'),
(200, 77, 102, 'Img_9501506071204.JPG', '', '0', '2017-09-22 00:00:00'),
(201, 77, 102, 'Img_7341506071206.JPG', '', '0', '2017-09-22 00:00:00'),
(202, 78, 106, 'Img_9971506489963.jpg', '', '1', '2017-09-27 00:00:00'),
(203, 78, 106, 'Img_6021506489964.jpg', '', '0', '2017-09-27 00:00:00'),
(204, 78, 106, 'Img_2721506489965.jpg', '', '0', '2017-09-27 00:00:00'),
(205, 78, 106, 'Img_1021506489966.jpg', '', '0', '2017-09-27 00:00:00'),
(206, 78, 106, 'Img_5941506489966.jpg', '', '0', '2017-09-27 00:00:00'),
(207, 79, 106, 'Img_1301506490137.JPG', '', '1', '2017-09-27 00:00:00'),
(208, 79, 106, 'Img_1411506490138.JPG', '', '0', '2017-09-27 00:00:00'),
(209, 79, 106, 'Img_7891506490140.JPG', '', '0', '2017-09-27 00:00:00'),
(210, 79, 106, 'Img_2261506490141.JPG', '', '0', '2017-09-27 00:00:00'),
(211, 79, 106, 'Img_631506490141.jpg', '', '0', '2017-09-27 00:00:00'),
(212, 80, 106, 'Img_941506490835.jpg', '', '1', '2017-09-27 00:00:00'),
(213, 80, 106, 'Img_9481506490836.jpg', '', '0', '2017-09-27 00:00:00'),
(214, 80, 106, 'Img_4771506490837.jpg', '', '0', '2017-09-27 00:00:00'),
(215, 80, 106, 'Img_781506490838.jpg', '', '0', '2017-09-27 00:00:00'),
(216, 80, 106, 'Img_5071506490838.jpg', '', '0', '2017-09-27 00:00:00'),
(218, 81, 107, 'Img_8741506491977.jpg', '', '1', '2017-09-27 00:00:00'),
(219, 81, 107, 'Img_7381506491978.jpg', '', '0', '2017-09-27 00:00:00'),
(220, 81, 107, 'Img_1811506491979.jpg', '', '0', '2017-09-27 00:00:00'),
(221, 81, 107, 'Img_4241506491979.jpg', '', '0', '2017-09-27 00:00:00'),
(222, 81, 107, 'Img_6931506492020.jpg', '', '0', '2017-09-27 00:00:00'),
(223, 82, 107, 'Img_7721506492172.jpg', '', '1', '2017-09-27 00:00:00'),
(224, 82, 107, 'Img_7321506492173.jpg', '', '0', '2017-09-27 00:00:00'),
(225, 82, 107, 'Img_551506492174.jpg', '', '0', '2017-09-27 00:00:00'),
(226, 82, 107, 'Img_441506492174.jpg', '', '0', '2017-09-27 00:00:00'),
(227, 82, 107, 'Img_8841506492175.jpg', '', '0', '2017-09-27 00:00:00'),
(233, 83, 107, 'Img_9451506492643.jpg', '', '1', '2017-09-27 00:00:00'),
(234, 83, 107, 'Img_761506492643.jpg', '', '0', '2017-09-27 00:00:00'),
(235, 83, 107, 'Img_6891506492644.jpg', '', '0', '2017-09-27 00:00:00'),
(236, 83, 107, 'Img_6341506492645.jpg', '', '0', '2017-09-27 00:00:00'),
(237, 83, 107, 'Img_4101506492645.jpg', '', '0', '2017-09-27 00:00:00'),
(238, 84, 107, 'Img_5121506492908.jpg', '', '1', '2017-09-27 00:00:00'),
(239, 84, 107, 'Img_9961506492909.jpg', '', '0', '2017-09-27 00:00:00'),
(240, 84, 107, 'Img_1041506492910.jpg', '', '0', '2017-09-27 00:00:00'),
(241, 84, 107, 'Img_7621506492910.jpg', '', '0', '2017-09-27 00:00:00'),
(242, 84, 107, 'Img_5801506492911.jpg', '', '0', '2017-09-27 00:00:00'),
(243, 85, 107, 'Img_4411506493002.jpg', '', '1', '2017-09-27 00:00:00'),
(244, 85, 107, 'Img_7191506493003.jpg', '', '0', '2017-09-27 00:00:00'),
(245, 85, 107, 'Img_5571506493003.jpg', '', '0', '2017-09-27 00:00:00'),
(246, 85, 107, 'Img_6131506493004.jpg', '', '0', '2017-09-27 00:00:00'),
(247, 85, 107, 'Img_6551506493004.jpg', '', '0', '2017-09-27 00:00:00'),
(248, 86, 108, 'Img_3571506495402.jpg', '', '1', '2017-09-27 00:00:00'),
(249, 86, 108, 'Img_2531506495403.jpg', '', '0', '2017-09-27 00:00:00'),
(250, 86, 108, 'Img_2381506495405.jpg', '', '0', '2017-09-27 00:00:00'),
(251, 86, 108, 'Img_8291506495406.jpg', '', '0', '2017-09-27 00:00:00'),
(252, 86, 108, 'Img_4011506495406.jpg', '', '0', '2017-09-27 00:00:00'),
(253, 87, 108, 'Img_161506496239.jpg', '', '1', '2017-09-27 00:00:00'),
(254, 87, 108, 'Img_9021506496240.jpg', '', '0', '2017-09-27 00:00:00'),
(255, 87, 108, 'Img_6251506496241.jpg', '', '0', '2017-09-27 00:00:00'),
(256, 87, 108, 'Img_4081506496241.jpg', '', '0', '2017-09-27 00:00:00'),
(257, 87, 108, 'Img_911506496242.jpg', '', '0', '2017-09-27 00:00:00'),
(258, 88, 109, 'Img_7321506508059.JPG', '', '1', '2017-09-27 00:00:00'),
(259, 88, 109, 'Img_1191506508060.JPG', '', '0', '2017-09-27 00:00:00'),
(260, 88, 109, 'Img_191506508061.JPG', '', '0', '2017-09-27 00:00:00'),
(261, 88, 109, 'Img_8851506508062.JPG', '', '0', '2017-09-27 00:00:00'),
(262, 88, 109, 'Img_5431506508063.JPG', '', '0', '2017-09-27 00:00:00'),
(263, 89, 109, 'Img_8061506508607.jpg', '', '1', '2017-09-27 00:00:00'),
(264, 89, 109, 'Img_3651506508608.jpg', '', '0', '2017-09-27 00:00:00'),
(265, 89, 109, 'Img_1291506508609.jpg', '', '0', '2017-09-27 00:00:00'),
(266, 89, 109, 'Img_5041506508609.jpg', '', '0', '2017-09-27 00:00:00'),
(267, 89, 109, 'Img_4631506508610.jpg', '', '0', '2017-09-27 00:00:00'),
(268, 90, 109, 'Img_7741506508950.jpg', '', '1', '2017-09-27 00:00:00'),
(269, 90, 109, 'Img_3391506508951.jpg', '', '0', '2017-09-27 00:00:00'),
(270, 90, 109, 'Img_8341506508952.JPG', '', '0', '2017-09-27 00:00:00'),
(271, 90, 109, 'Img_2211506508953.JPG', '', '0', '2017-09-27 00:00:00'),
(272, 91, 109, 'Img_4991506509169.JPG', '', '1', '2017-09-27 00:00:00'),
(273, 91, 109, 'Img_5381506509170.JPG', '', '0', '2017-09-27 00:00:00'),
(274, 91, 109, 'Img_6291506509171.JPG', '', '0', '2017-09-27 00:00:00'),
(275, 91, 109, 'Img_3251506509172.JPG', '', '0', '2017-09-27 00:00:00'),
(276, 91, 109, 'Img_6541506509173.JPG', '', '0', '2017-09-27 00:00:00'),
(277, 92, 109, 'Img_5931506509455.JPG', '', '1', '2017-09-27 00:00:00'),
(278, 92, 109, 'Img_4871506509456.JPG', '', '0', '2017-09-27 00:00:00'),
(279, 92, 109, 'Img_2961506509457.JPG', '', '0', '2017-09-27 00:00:00'),
(280, 92, 109, 'Img_261506509458.JPG', '', '0', '2017-09-27 00:00:00'),
(281, 92, 109, 'Img_8081506509458.JPG', '', '0', '2017-09-27 00:00:00'),
(282, 93, 109, 'Img_8581506509748.JPG', '', '1', '2017-09-27 00:00:00'),
(283, 94, 110, 'Img_431506510858.jpg', '', '1', '2017-09-27 00:00:00'),
(284, 94, 110, 'Img_8061506510858.jpg', '', '0', '2017-09-27 00:00:00'),
(285, 94, 110, 'Img_2841506510859.jpg', '', '0', '2017-09-27 00:00:00'),
(286, 94, 110, 'Img_5581506510861.jpg', '', '0', '2017-09-27 00:00:00'),
(287, 94, 110, 'Img_4811506510862.jpg', '', '0', '2017-09-27 00:00:00'),
(295, 95, 110, 'Img_6151506511706.jpg', '', '1', '2017-09-27 00:00:00'),
(296, 95, 110, 'Img_8461506511707.jpg', '', '0', '2017-09-27 00:00:00'),
(297, 95, 110, 'Img_5051506511707.jpg', '', '0', '2017-09-27 00:00:00'),
(298, 95, 110, 'Img_1561506511780.jpg', '', '0', '2017-09-27 00:00:00'),
(299, 95, 110, 'Img_3781506511781.jpg', '', '0', '2017-09-27 00:00:00'),
(300, 96, 110, 'Img_1361506511960.JPG', '', '1', '2017-09-27 00:00:00'),
(301, 96, 110, 'Img_661506511961.JPG', '', '0', '2017-09-27 00:00:00'),
(302, 96, 110, 'Img_4471506511962.JPG', '', '0', '2017-09-27 00:00:00'),
(303, 96, 110, 'Img_3181506511963.jpg', '', '0', '2017-09-27 00:00:00'),
(304, 96, 110, 'Img_7241506511963.JPG', '', '0', '2017-09-27 00:00:00'),
(305, 97, 110, 'Img_7001506512293.JPG', '', '1', '2017-09-27 00:00:00'),
(306, 97, 110, 'Img_3021506512294.JPG', '', '0', '2017-09-27 00:00:00'),
(307, 98, 111, 'Img_161506573794.JPG', '', '1', '2017-09-28 00:00:00'),
(308, 98, 111, 'Img_1631506573794.JPG', '', '0', '2017-09-28 00:00:00'),
(309, 99, 1, 'Img_731506586790.jpg', '', '1', '2017-09-28 00:00:00'),
(310, 99, 1, 'Img_1051506586791.jpg', '', '0', '2017-09-28 00:00:00'),
(311, 99, 1, 'Img_4841506586792.jpg', '', '0', '2017-09-28 00:00:00'),
(312, 99, 1, 'Img_2901506586792.jpg', '', '0', '2017-09-28 00:00:00'),
(313, 99, 1, 'Img_8881506586793.jpg', '', '0', '2017-09-28 00:00:00'),
(314, 100, 1, 'Img_4581506586897.jpg', '', '1', '2017-09-28 00:00:00'),
(315, 100, 1, 'Img_9081506586898.jpg', '', '0', '2017-09-28 00:00:00'),
(316, 100, 1, 'Img_7031506586900.jpg', '', '0', '2017-09-28 00:00:00'),
(317, 100, 1, 'Img_6741506586901.jpg', '', '0', '2017-09-28 00:00:00'),
(318, 100, 1, 'Img_9391506586902.jpg', '', '0', '2017-09-28 00:00:00'),
(319, 100, 1, 'Img_8561506586903.jpg', '', '0', '2017-09-28 00:00:00'),
(320, 100, 1, 'Img_331506586903.jpg', '', '0', '2017-09-28 00:00:00'),
(321, 100, 1, 'Img_791506586905.jpg', '', '0', '2017-09-28 00:00:00'),
(322, 100, 1, 'Img_1591506586906.jpg', '', '0', '2017-09-28 00:00:00'),
(323, 101, 1, 'Img_2371506587022.jpg', '', '1', '2017-09-28 00:00:00'),
(324, 101, 1, 'Img_3901506587023.jpg', '', '0', '2017-09-28 00:00:00'),
(325, 101, 1, 'Img_8641506587024.jpg', '', '0', '2017-09-28 00:00:00'),
(326, 101, 1, 'Img_4911506587025.jpg', '', '0', '2017-09-28 00:00:00'),
(327, 101, 1, 'Img_481506587025.jpg', '', '0', '2017-09-28 00:00:00'),
(328, 101, 1, 'Img_711506587026.jpg', '', '0', '2017-09-28 00:00:00'),
(329, 101, 1, 'Img_9011506587027.jpg', '', '0', '2017-09-28 00:00:00'),
(330, 101, 1, 'Img_9401506587028.jpg', '', '0', '2017-09-28 00:00:00'),
(331, 101, 1, 'Img_5811506587029.jpg', '', '0', '2017-09-28 00:00:00'),
(332, 101, 1, 'Img_7461506587029.jpg', '', '0', '2017-09-28 00:00:00'),
(333, 101, 1, 'Img_1261506587031.jpg', '', '0', '2017-09-28 00:00:00'),
(334, 101, 1, 'Img_481506587031.jpg', '', '0', '2017-09-28 00:00:00'),
(335, 102, 1, 'Img_4881506587100.jpg', '', '1', '2017-09-28 00:00:00'),
(336, 102, 1, 'Img_4631506587100.jpg', '', '0', '2017-09-28 00:00:00'),
(337, 102, 1, 'Img_171506587101.jpg', '', '0', '2017-09-28 00:00:00'),
(338, 102, 1, 'Img_5591506587102.jpg', '', '0', '2017-09-28 00:00:00'),
(339, 102, 1, 'Img_5221506587103.jpg', '', '0', '2017-09-28 00:00:00'),
(340, 102, 1, 'Img_7881506587104.jpg', '', '0', '2017-09-28 00:00:00'),
(341, 102, 1, 'Img_4161506587105.jpg', '', '0', '2017-09-28 00:00:00'),
(342, 103, 1, 'Img_1051506587189.png', '', '1', '2017-09-28 00:00:00'),
(343, 103, 1, 'Img_4631506587191.png', '', '0', '2017-09-28 00:00:00'),
(344, 103, 1, 'Img_9851506587193.png', '', '0', '2017-09-28 00:00:00'),
(345, 103, 1, 'Img_9041506587196.png', '', '0', '2017-09-28 00:00:00'),
(346, 103, 1, 'Img_6171506587198.png', '', '0', '2017-09-28 00:00:00'),
(347, 104, 1, 'Img_7131506587412.jpg', '', '1', '2017-09-28 00:00:00'),
(348, 104, 1, 'Img_641506587413.jpg', '', '0', '2017-09-28 00:00:00'),
(349, 104, 1, 'Img_6471506587414.jpg', '', '0', '2017-09-28 00:00:00'),
(350, 104, 1, 'Img_9291506587414.jpg', '', '0', '2017-09-28 00:00:00'),
(351, 104, 1, 'Img_4241506587415.jpg', '', '0', '2017-09-28 00:00:00'),
(352, 104, 1, 'Img_6551506587416.jpg', '', '0', '2017-09-28 00:00:00'),
(353, 104, 1, 'Img_8291506587417.jpg', '', '0', '2017-09-28 00:00:00'),
(354, 104, 1, 'Img_5511506587418.jpg', '', '0', '2017-09-28 00:00:00'),
(355, 105, 1, 'Img_2331506587543.jpg', '', '1', '2017-09-28 00:00:00'),
(356, 105, 1, 'Img_7431506587543.jpg', '', '0', '2017-09-28 00:00:00'),
(357, 105, 1, 'Img_8121506587544.jpg', '', '0', '2017-09-28 00:00:00'),
(358, 105, 1, 'Img_9361506587545.jpg', '', '0', '2017-09-28 00:00:00'),
(359, 106, 1, 'Img_3291506587662.jpg', '', '1', '2017-09-28 00:00:00'),
(360, 106, 1, 'Img_9341506587663.jpg', '', '0', '2017-09-28 00:00:00'),
(361, 106, 1, 'Img_3561506587663.jpg', '', '0', '2017-09-28 00:00:00'),
(362, 106, 1, 'Img_9881506587664.jpg', '', '0', '2017-09-28 00:00:00'),
(363, 106, 1, 'Img_1321506587665.jpg', '', '0', '2017-09-28 00:00:00'),
(364, 107, 1, 'Img_931506587756.png', '', '1', '2017-09-28 00:00:00'),
(365, 107, 1, 'Img_5371506587758.png', '', '0', '2017-09-28 00:00:00'),
(366, 107, 1, 'Img_3041506587760.png', '', '0', '2017-09-28 00:00:00'),
(367, 107, 1, 'Img_671506587762.png', '', '0', '2017-09-28 00:00:00'),
(368, 107, 1, 'Img_5421506587764.png', '', '0', '2017-09-28 00:00:00'),
(369, 107, 1, 'Img_531506587766.png', '', '0', '2017-09-28 00:00:00'),
(370, 107, 1, 'Img_9551506587768.png', '', '0', '2017-09-28 00:00:00'),
(371, 108, 1, 'Img_4061506588033.png', '', '1', '2017-09-28 00:00:00'),
(372, 108, 1, 'Img_6711506588035.png', '', '0', '2017-09-28 00:00:00'),
(373, 108, 1, 'Img_3861506588037.png', '', '0', '2017-09-28 00:00:00'),
(374, 108, 1, 'Img_1351506588039.png', '', '0', '2017-09-28 00:00:00'),
(375, 109, 1, 'Img_831506659577.jpg', '', '1', '2017-09-29 00:00:00'),
(376, 109, 1, 'Img_7771506659578.jpg', '', '0', '2017-09-29 00:00:00'),
(377, 109, 1, 'Img_4961506659578.jpg', '', '0', '2017-09-29 00:00:00'),
(378, 109, 1, 'Img_2251506659579.jpg', '', '0', '2017-09-29 00:00:00'),
(379, 109, 1, 'Img_6361506659579.jpg', '', '0', '2017-09-29 00:00:00'),
(380, 109, 1, 'Img_9231506659580.jpeg', '', '0', '2017-09-29 00:00:00'),
(381, 109, 1, 'Img_8781506659581.jpg', '', '0', '2017-09-29 00:00:00'),
(382, 109, 1, 'Img_5901506659581.jpg', '', '0', '2017-09-29 00:00:00'),
(383, 109, 1, 'Img_4061506659582.jpg', '', '0', '2017-09-29 00:00:00'),
(384, 110, 1, 'Img_2501506659776.jpg', '', '1', '2017-09-29 00:00:00'),
(385, 110, 1, 'Img_301506659776.jpg', '', '0', '2017-09-29 00:00:00'),
(386, 110, 1, 'Img_681506659777.jpg', '', '0', '2017-09-29 00:00:00'),
(387, 110, 1, 'Img_7681506659778.jpg', '', '0', '2017-09-29 00:00:00'),
(388, 111, 1, 'Img_3951506910823.jpg', '', '1', '2017-10-01 00:00:00'),
(389, 112, 116, 'Img_4561509104587.jpg', '', '0', '2017-10-27 00:00:00'),
(390, 112, 116, 'Img_671509104588.jpg', '', '0', '2017-10-27 00:00:00'),
(391, 112, 116, 'Img_8741509104589.jpg', '', '1', '2017-10-27 00:00:00'),
(406, 119, 1, 'Img_6971513860292.jpg', '', '1', '2017-12-21 00:00:00'),
(407, 120, 1, 'Img_6411513860370.jpg', '', '1', '2017-12-21 00:00:00'),
(408, 121, 1, 'Img_4911513860416.jpg', '', '1', '2017-12-21 00:00:00'),
(409, 122, 1, 'Img_9841513860448.jpg', '', '1', '2017-12-21 00:00:00'),
(416, 130, 117, 'Img_7901513942782.jpg', '', '1', '2017-12-22 00:00:00'),
(417, 131, 117, 'Img_6201513942905.jpg', '', '1', '2017-12-22 00:00:00'),
(418, 132, 117, 'Img_2651513943325.jpg', '', '1', '2017-12-22 00:00:00'),
(419, 133, 117, 'Img_8721513943363.jpg', '', '1', '2017-12-22 00:00:00'),
(420, 134, 117, 'Img_9481513943405.jpg', '', '1', '2017-12-22 00:00:00'),
(421, 135, 119, 'Img_1611513943526.jpg', '', '1', '2017-12-22 00:00:00'),
(422, 136, 119, 'Img_3581513943558.jpg', '', '1', '2017-12-22 00:00:00'),
(423, 137, 119, 'Img_7011513943605.jpg', '', '1', '2017-12-22 00:00:00'),
(424, 138, 119, 'Img_6811513943693.jpg', '', '1', '2017-12-22 00:00:00'),
(425, 139, 119, 'Img_9351513943769.jpg', 'Bedroom Two', '1', '2017-12-22 00:00:00'),
(426, 140, 116, 'Img_6191513944988.jpg', '', '1', '2017-12-22 00:00:00'),
(427, 141, 116, 'Img_1051513945043.jpg', '', '1', '2017-12-22 00:00:00'),
(428, 142, 116, 'Img_8651513945144.jpg', '', '1', '2017-12-22 00:00:00'),
(429, 143, 116, 'Img_1941513945181.jpg', '', '1', '2017-12-22 00:00:00'),
(430, 144, 124, 'Img_4401513945686.jpg', '', '1', '2017-12-22 00:00:00'),
(431, 145, 124, 'Img_5751513945730.jpg', '', '1', '2017-12-22 00:00:00'),
(432, 146, 124, 'Img_9701513945770.jpg', '', '1', '2017-12-22 00:00:00'),
(433, 147, 124, 'Img_2301513945828.jpg', '', '1', '2017-12-22 00:00:00'),
(445, 156, 118, 'Img_9901514807457.jpg', 'Pink Bed', '0', '2018-01-01 00:00:00'),
(447, 156, 118, 'Img_9541514807571.jpg', 'New bathroom', '0', '2018-01-01 00:00:00'),
(448, 156, 118, 'Img_1151514807621.jpg', 'Vip bathroom', '1', '2018-01-01 00:00:00'),
(449, 155, 118, 'Img_661514807712.jpg', 'bathroom', '0', '2018-01-01 00:00:00'),
(450, 155, 118, 'Img_1741514807712.jpg', 'hall', '1', '2018-01-01 00:00:00'),
(451, 125, 118, 'Img_6331514807806.jpg', 'Love room', '1', '2018-01-01 00:00:00'),
(452, 125, 118, 'Img_1031514807807.jpg', 'Sofa room', '0', '2018-01-01 00:00:00'),
(460, 161, 125, 'Img_4401514879656.jpg', 'Bathroom Styles', '0', '2018-01-02 00:00:00'),
(461, 161, 125, 'Img_6321514879656.jpg', 'Bedroom Kitchen', '1', '2018-01-02 00:00:00'),
(467, 165, 126, 'Img_6171514965059.jpg', 'Bedroom', '1', '2018-01-03 00:00:00'),
(468, 165, 126, 'Img_9431514965060.jpg', 'Bathroom', '0', '2018-01-03 00:00:00'),
(477, 168, 126, 'Img_6931514976139.jpg', 'Outdoor', '0', '2018-01-03 00:00:00'),
(478, 168, 126, 'Img_721514976139.jpg', 'Bedroom', '1', '2018-01-03 00:00:00'),
(479, 168, 126, 'Img_7951514976140.jpg', 'Study', '0', '2018-01-03 00:00:00'),
(480, 168, 126, 'Img_6661514976140.jpg', 'Kitchen', '0', '2018-01-03 00:00:00'),
(481, 168, 126, 'Img_2771514976140.jpg', 'dining', '0', '2018-01-03 00:00:00'),
(482, 168, 126, 'Img_5301514976140.jpg', 'Bathroom', '0', '2018-01-03 00:00:00'),
(483, 168, 126, 'Img_1241514976140.jpg', 'Living room', '0', '2018-01-03 00:00:00'),
(484, 169, 118, 'Img_2801514984804.jpg', 'Living room', '1', '2018-01-03 00:00:00'),
(486, 171, 118, 'Img_3761515134627.png', 'Living room', '1', '2018-01-05 00:00:00'),
(488, 173, 128, 'Img_9921515405967.jpg', 'Dining', '1', '2018-01-08 00:00:00'),
(489, 175, 131, 'Img_841515557883.jpg', 'Kitchen', '1', '2018-01-09 00:00:00'),
(490, 175, 131, 'Img_9181515557887.jpg', 'Dining', '0', '2018-01-09 00:00:00'),
(491, 175, 131, 'Img_4181515557891.jpg', 'Kitchen', '0', '2018-01-09 00:00:00'),
(492, 175, 131, 'Img_5521515557895.jpg', 'Bedroom', '0', '2018-01-09 00:00:00'),
(493, 175, 131, 'Img_5571515557899.jpg', 'Living room', '0', '2018-01-09 00:00:00'),
(494, 176, 131, 'Img_4311515558739.jpg', 'Bathroom', '0', '2018-01-09 00:00:00'),
(495, 176, 131, 'Img_9841515558742.jpg', 'Dining', '1', '2018-01-09 00:00:00'),
(496, 176, 131, 'Img_9761515558744.jpg', 'Bedroom', '0', '2018-01-09 00:00:00'),
(497, 176, 131, 'Img_9741515558747.jpg', 'Kitchen', '0', '2018-01-09 00:00:00'),
(498, 176, 131, 'Img_7201515558750.jpg', 'Dining', '0', '2018-01-09 00:00:00'),
(499, 177, 131, 'Img_6901515560471.jpg', 'Living room', '1', '2018-01-10 00:00:00'),
(500, 177, 131, 'Img_6131515560473.jpg', 'Bedroom', '0', '2018-01-10 00:00:00'),
(501, 177, 131, 'Img_7611515560475.jpg', 'Living room', '0', '2018-01-10 00:00:00'),
(502, 177, 131, 'Img_9931515560476.jpg', 'Bedroom', '0', '2018-01-10 00:00:00'),
(503, 177, 131, 'Img_8091515560478.jpg', 'Dining', '0', '2018-01-10 00:00:00'),
(504, 178, 131, 'Img_2281515560595.jpg', '', '1', '2018-01-10 00:00:00'),
(505, 179, 133, 'Img_1131515720706.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(506, 179, 133, 'Img_6031515720708.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(507, 179, 133, 'Img_8711515720709.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(508, 179, 133, 'Img_5431515720710.JPG', '', '0', '2018-01-11 00:00:00'),
(509, 179, 133, 'Img_7561515720711.JPG', 'Living room', '1', '2018-01-11 00:00:00'),
(510, 180, 133, 'Img_9751515721153.jpg', 'Bedroom', '1', '2018-01-11 00:00:00'),
(511, 180, 133, 'Img_2611515721156.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(512, 180, 133, 'Img_8711515721159.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(513, 180, 133, 'Img_4891515721162.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(514, 181, 133, 'Img_4281515721383.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(515, 181, 133, 'Img_2481515721386.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(516, 181, 133, 'Img_5801515721388.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(517, 181, 133, 'Img_8031515721391.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(518, 181, 133, 'Img_901515721393.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(519, 182, 133, 'Img_7631515721689.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(520, 182, 133, 'Img_1011515721691.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(521, 182, 133, 'Img_171515721694.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(522, 182, 133, 'Img_1861515721697.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(523, 183, 133, 'Img_9911515721971.jpg', '', '0', '2018-01-11 00:00:00'),
(524, 183, 133, 'Img_8021515721974.jpg', '', '1', '2018-01-11 00:00:00'),
(525, 183, 133, 'Img_9821515721977.jpg', '', '0', '2018-01-11 00:00:00'),
(526, 183, 133, 'Img_2891515721979.jpg', '', '0', '2018-01-11 00:00:00'),
(527, 183, 133, 'Img_4011515721982.jpg', '', '0', '2018-01-11 00:00:00'),
(528, 184, 134, 'Img_8291515725805.jpg', '', '0', '2018-01-11 00:00:00'),
(529, 184, 134, 'Img_9591515725806.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(530, 184, 134, 'Img_4571515725806.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(531, 184, 134, 'Img_1371515725807.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(532, 184, 134, 'Img_3311515725807.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(533, 185, 134, 'Img_7141515726317.jpg', '', '0', '2018-01-11 00:00:00'),
(534, 185, 134, 'Img_3011515726320.jpg', '', '1', '2018-01-11 00:00:00'),
(535, 185, 134, 'Img_141515726323.jpg', '', '0', '2018-01-11 00:00:00'),
(536, 185, 134, 'Img_5371515726325.jpg', '', '0', '2018-01-11 00:00:00'),
(537, 185, 134, 'Img_5541515726328.jpg', '', '0', '2018-01-11 00:00:00'),
(538, 186, 135, 'Img_6871515727896.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(539, 186, 135, 'Img_7281515727896.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(540, 186, 135, 'Img_9701515727896.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(541, 186, 135, 'Img_9771515727897.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(542, 186, 135, 'Img_8361515727897.jpg', 'Bedroom', '1', '2018-01-11 00:00:00'),
(543, 187, 136, 'Img_451515729080.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(544, 187, 136, 'Img_3601515729080.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(545, 187, 136, 'Img_7571515729080.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(546, 187, 136, 'Img_1771515729081.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(547, 187, 136, 'Img_4891515729081.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(548, 188, 136, 'Img_7031515729217.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(549, 188, 136, 'Img_331515729217.jpg', '', '0', '2018-01-11 00:00:00'),
(550, 188, 136, 'Img_4471515729217.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(551, 188, 136, 'Img_9061515729218.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(552, 188, 136, 'Img_1011515729218.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(558, 190, 136, 'Img_3691515730274.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(559, 190, 136, 'Img_1261515730275.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(560, 190, 136, 'Img_8261515730275.jpg', 'Dining', '1', '2018-01-11 00:00:00'),
(561, 190, 136, 'Img_6331515730275.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(562, 190, 136, 'Img_2561515730276.jpg', '', '0', '2018-01-11 00:00:00'),
(563, 191, 136, 'Img_5291515730448.jpg', 'Kitchen', '1', '2018-01-11 00:00:00'),
(564, 191, 136, 'Img_4571515730448.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(565, 191, 136, 'Img_1841515730448.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(566, 191, 136, 'Img_1381515730449.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(567, 191, 136, 'Img_2861515730449.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(568, 192, 136, 'Img_9781515730672.jpg', 'Outdoor', '0', '2018-01-11 00:00:00'),
(569, 192, 136, 'Img_9141515730672.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(570, 192, 136, 'Img_9011515730673.jpg', 'Dining', '1', '2018-01-11 00:00:00'),
(571, 192, 136, 'Img_4721515730673.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(572, 192, 136, 'Img_6101515730673.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(573, 193, 136, 'Img_9071515730817.png', '', '1', '2018-01-11 00:00:00'),
(574, 194, 137, 'Img_8361515732053.jpg', '', '0', '2018-01-11 00:00:00'),
(575, 194, 137, 'Img_9871515732053.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(576, 194, 137, 'Img_1361515732053.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(577, 194, 137, 'Img_3161515732054.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(578, 194, 137, 'Img_2661515732054.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(579, 195, 137, 'Img_1181515732179.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(580, 195, 137, 'Img_5461515732179.jpg', '', '1', '2018-01-11 00:00:00'),
(581, 195, 137, 'Img_681515732180.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(582, 195, 137, 'Img_5761515732180.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(583, 195, 137, 'Img_9691515732181.jpg', '', '0', '2018-01-11 00:00:00'),
(584, 196, 137, 'Img_3971515732282.jpg', '', '0', '2018-01-11 00:00:00'),
(585, 196, 137, 'Img_971515732282.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(586, 196, 137, 'Img_5101515732283.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(587, 196, 137, 'Img_6001515732283.jpg', 'Dining', '0', '2018-01-11 00:00:00'),
(588, 196, 137, 'Img_2681515732283.jpg', '', '1', '2018-01-11 00:00:00'),
(589, 197, 137, 'Img_9691515732489.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(590, 197, 137, 'Img_6801515732490.jpg', 'Living room', '0', '2018-01-11 00:00:00'),
(591, 197, 137, 'Img_6141515732490.jpg', 'Bedroom', '1', '2018-01-11 00:00:00'),
(592, 197, 137, 'Img_7931515732490.jpg', '', '0', '2018-01-11 00:00:00'),
(593, 197, 137, 'Img_151515732490.jpg', 'Bedroom', '0', '2018-01-11 00:00:00'),
(594, 198, 137, 'Img_2231515732647.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(595, 198, 137, 'Img_7341515732648.jpg', '', '0', '2018-01-11 00:00:00'),
(596, 198, 137, 'Img_751515732648.jpg', 'Living room', '1', '2018-01-11 00:00:00'),
(597, 198, 137, 'Img_2631515732648.jpg', 'Bathroom', '0', '2018-01-11 00:00:00'),
(598, 198, 137, 'Img_6641515732649.jpg', 'Kitchen', '0', '2018-01-11 00:00:00'),
(599, 199, 138, 'Img_6821515733598.jpg', 'Kitchen', '1', '2018-01-12 00:00:00'),
(600, 199, 138, 'Img_1461515733601.jpg', '', '0', '2018-01-12 00:00:00'),
(601, 199, 138, 'Img_5851515733603.jpg', 'Living room', '0', '2018-01-12 00:00:00'),
(602, 199, 138, 'Img_9911515733605.jpg', 'Kitchen', '0', '2018-01-12 00:00:00'),
(603, 200, 138, 'Img_9541515734058.jpg', 'Living room', '0', '2018-01-12 00:00:00'),
(604, 200, 138, 'Img_9311515734063.jpg', 'Living room', '0', '2018-01-12 00:00:00'),
(605, 200, 138, 'Img_3961515734067.jpg', 'Kitchen', '1', '2018-01-12 00:00:00'),
(606, 200, 138, 'Img_7731515734071.jpg', '', '0', '2018-01-12 00:00:00'),
(607, 200, 138, 'Img_9001515734076.jpg', '', '0', '2018-01-12 00:00:00'),
(608, 201, 139, 'Img_8101515738154.jpg', 'Living room', '1', '2018-01-12 00:00:00'),
(609, 201, 139, 'Img_1041515738155.jpg', 'Dining', '0', '2018-01-12 00:00:00'),
(612, 201, 139, 'Img_6311515738156.jpg', 'Bathroom', '0', '2018-01-12 00:00:00'),
(613, 201, 139, 'Img_2551515738374.jpg', 'Outdoor', '0', '2018-01-12 00:00:00'),
(614, 201, 139, 'Img_4841515738374.jpg', 'Bathroom', '0', '2018-01-12 00:00:00'),
(615, 203, 142, 'Img_3711515754223.jpg', 'Bathroom', '0', '2018-01-12 00:00:00'),
(616, 203, 142, 'Img_8591515754224.jpg', 'Bedroom', '1', '2018-01-12 00:00:00'),
(617, 204, 132, 'Img_6681516276633.JPG', 'Living room', '0', '2018-01-18 00:00:00'),
(618, 204, 132, 'Img_7691516276633.JPG', 'Bedroom', '0', '2018-01-18 00:00:00'),
(619, 204, 132, 'Img_9731516276636.jpeg', 'Living room', '0', '2018-01-18 00:00:00'),
(620, 204, 132, 'Img_2261516276636.jpeg', 'Living room', '0', '2018-01-18 00:00:00'),
(621, 204, 132, 'Img_3331516276637.jpeg', 'Bedroom', '0', '2018-01-18 00:00:00'),
(622, 204, 132, 'Img_6091516276637.jpeg', 'Outdoor', '0', '2018-01-18 00:00:00'),
(623, 204, 132, 'Img_5361516276637.jpeg', 'Living room', '1', '2018-01-18 00:00:00'),
(624, 205, 132, 'Img_8731516356188.jpg', 'Dining', '1', '2018-01-19 00:00:00'),
(625, 205, 132, 'Img_381516356189.jpg', 'Dining', '0', '2018-01-19 00:00:00'),
(626, 205, 132, 'Img_4101516356189.jpg', 'Living room', '0', '2018-01-19 00:00:00'),
(627, 205, 132, 'Img_2911516356190.jpg', 'Living room', '0', '2018-01-19 00:00:00'),
(628, 205, 132, 'Img_281516356190.jpg', 'Living room', '0', '2018-01-19 00:00:00'),
(629, 205, 132, 'Img_2891516356191.jpg', 'Bedroom', '0', '2018-01-19 00:00:00'),
(630, 205, 132, 'Img_1101516356191.jpg', 'Bedroom', '0', '2018-01-19 00:00:00'),
(631, 205, 132, 'Img_181516356192.jpg', 'Dining', '0', '2018-01-19 00:00:00'),
(632, 206, 146, 'Img_5511516366934.jpg', '', '0', '2018-01-19 00:00:00'),
(633, 206, 146, 'Img_9091516366935.jpg', 'Living room', '0', '2018-01-19 00:00:00'),
(634, 206, 146, 'Img_5111516366935.jpg', 'Kitchen', '0', '2018-01-19 00:00:00'),
(635, 206, 146, 'Img_4481516366936.jpg', '', '0', '2018-01-19 00:00:00'),
(636, 206, 146, 'Img_9161516366936.jpg', '', '1', '2018-01-19 00:00:00'),
(637, 206, 146, 'Img_8161516366937.jpg', 'Bedroom', '0', '2018-01-19 00:00:00'),
(638, 207, 132, 'Img_3411516525412.JPG', 'Outdoor', '0', '2018-01-21 00:00:00'),
(639, 207, 132, 'Img_5191516525413.JPG', 'Outdoor', '0', '2018-01-21 00:00:00'),
(640, 207, 132, 'Img_4891516525414.JPG', 'Living room', '0', '2018-01-21 00:00:00'),
(641, 207, 132, 'Img_2411516525414.JPG', 'Living room', '1', '2018-01-21 00:00:00'),
(642, 207, 132, 'Img_3461516525415.JPG', 'Living room', '0', '2018-01-21 00:00:00'),
(643, 207, 132, 'Img_3511516525416.JPG', 'Bedroom', '0', '2018-01-21 00:00:00'),
(644, 207, 132, 'Img_421516525418.JPG', 'Bedroom', '0', '2018-01-21 00:00:00'),
(645, 207, 132, 'Img_9501516525419.JPG', 'Bedroom', '0', '2018-01-21 00:00:00'),
(646, 207, 132, 'Img_4361516525420.JPG', 'Kitchen', '0', '2018-01-21 00:00:00'),
(647, 207, 132, 'Img_7911516525421.JPG', 'Dining', '0', '2018-01-21 00:00:00'),
(648, 208, 132, 'Img_621516616071.JPG', '', '0', '2018-01-22 00:00:00'),
(649, 208, 132, 'Img_8821516616072.JPG', '', '0', '2018-01-22 00:00:00'),
(650, 208, 132, 'Img_7661516616072.JPG', '', '0', '2018-01-22 00:00:00'),
(651, 208, 132, 'Img_1571516616073.JPG', '', '0', '2018-01-22 00:00:00'),
(652, 208, 132, 'Img_6431516616074.JPG', '', '0', '2018-01-22 00:00:00'),
(653, 208, 132, 'Img_6391516616075.jpg', '', '0', '2018-01-22 00:00:00'),
(654, 208, 132, 'Img_9431516616076.jpg', '', '0', '2018-01-22 00:00:00'),
(655, 208, 132, 'Img_8591516616076.jpg', '', '0', '2018-01-22 00:00:00'),
(656, 208, 132, 'Img_5661516616077.jpg', '', '0', '2018-01-22 00:00:00'),
(657, 208, 132, 'Img_251516617793.jpg', 'Outdoor', '0', '2018-01-22 00:00:00'),
(658, 208, 132, 'Img_2701516617794.jpg', 'Outdoor', '1', '2018-01-22 00:00:00'),
(659, 209, 132, 'Img_9351516624677.JPG', 'Kitchen', '1', '2018-01-22 00:00:00'),
(660, 209, 132, 'Img_5501516624678.JPG', 'Kitchen', '0', '2018-01-22 00:00:00'),
(661, 209, 132, 'Img_6101516624679.JPG', 'Kitchen', '0', '2018-01-22 00:00:00'),
(662, 209, 132, 'Img_4231516624680.JPG', 'Kitchen', '0', '2018-01-22 00:00:00'),
(663, 209, 132, 'Img_7371516624681.JPG', 'Kitchen', '0', '2018-01-22 00:00:00'),
(664, 209, 132, 'Img_2531516624682.JPG', 'Kitchen', '0', '2018-01-22 00:00:00'),
(665, 210, 147, 'Img_7231517605890.jpg', 'Living room', '1', '2018-02-02 00:00:00'),
(666, 210, 147, 'Img_2901517605891.jpg', 'Bedroom', '0', '2018-02-02 00:00:00'),
(667, 210, 147, 'Img_9351517605892.jpg', 'Bedroom', '0', '2018-02-02 00:00:00'),
(668, 211, 147, 'Img_4811517606205.jpg', 'Dining', '1', '2018-02-02 00:00:00'),
(669, 211, 147, 'Img_7641517606206.jpg', 'Bedroom', '0', '2018-02-02 00:00:00'),
(670, 211, 147, 'Img_4511517606207.jpg', 'Bathroom', '0', '2018-02-02 00:00:00'),
(671, 211, 147, 'Img_2901517606208.jpg', 'Bathroom', '0', '2018-02-02 00:00:00'),
(672, 212, 150, 'Img_2621519023072.jpg', '', '0', '2018-02-19 00:00:00'),
(673, 212, 150, 'Img_661519023073.jpg', '', '0', '2018-02-19 00:00:00'),
(674, 212, 150, 'Img_3661519023073.jpg', '', '0', '2018-02-19 00:00:00'),
(675, 212, 150, 'Img_4651519023074.jpg', '', '0', '2018-02-19 00:00:00'),
(676, 212, 150, 'Img_1481519023075.jpg', '', '0', '2018-02-19 00:00:00'),
(677, 212, 150, 'Img_4261519023075.jpg', '', '0', '2018-02-19 00:00:00'),
(678, 212, 150, 'Img_5011519023076.jpg', '', '0', '2018-02-19 00:00:00'),
(679, 212, 150, 'Img_9301519023077.jpg', '', '0', '2018-02-19 00:00:00'),
(680, 212, 150, 'Img_6831519023077.jpg', '', '0', '2018-02-19 00:00:00'),
(681, 212, 150, 'Img_2511519023741.jpg', 'Living room', '1', '2018-02-19 00:00:00'),
(687, 213, 145, 'Img_7091519099612.JPG', 'Kitchen', '0', '2018-02-19 00:00:00'),
(699, 214, 145, 'Img_9051519360349.jpg', 'Living room', '0', '2018-02-22 00:00:00'),
(700, 214, 145, 'Img_1611519360349.jpg', 'Living room', '0', '2018-02-22 00:00:00'),
(701, 214, 145, 'Img_1251519360350.jpg', 'Living room', '0', '2018-02-22 00:00:00'),
(702, 214, 145, 'Img_4241519360351.jpg', 'Living room', '0', '2018-02-22 00:00:00'),
(703, 214, 145, 'Img_6671519360351.jpg', 'Dining', '0', '2018-02-22 00:00:00'),
(704, 214, 145, 'Img_3061519360352.jpg', 'Dining', '0', '2018-02-22 00:00:00'),
(705, 214, 145, 'Img_9881519360352.jpg', 'Bedroom', '0', '2018-02-22 00:00:00'),
(706, 214, 145, 'Img_9721519360353.jpg', 'Bedroom', '0', '2018-02-22 00:00:00'),
(707, 214, 145, 'Img_8781519360353.jpg', 'Bedroom', '0', '2018-02-22 00:00:00'),
(708, 214, 145, 'Img_5231519360354.JPG', 'Bedroom', '1', '2018-02-22 00:00:00'),
(709, 214, 145, 'Img_9791519360355.JPG', 'Bedroom', '0', '2018-02-22 00:00:00'),
(710, 214, 145, 'Img_7011519360355.JPG', 'Bedroom', '0', '2018-02-22 00:00:00'),
(721, 216, 152, 'Img_231519794681.jpg', 'Kitchen', '1', '2018-02-28 00:00:00'),
(722, 216, 152, 'Img_1821519794681.JPG', 'Bedroom', '0', '2018-02-28 00:00:00'),
(723, 216, 152, 'Img_1231519794682.jpg', 'Dining', '0', '2018-02-28 00:00:00'),
(724, 216, 152, 'Img_4561519794683.jpg', 'Living room', '0', '2018-02-28 00:00:00'),
(725, 217, 144, 'Img_5441521026114.jpg', '', '1', '2018-03-14 00:00:00'),
(726, 217, 144, 'Img_8041521026117.jpg', '', '0', '2018-03-14 00:00:00'),
(727, 217, 144, 'Img_7891521026119.jpg', '', '0', '2018-03-14 00:00:00'),
(728, 217, 144, 'Img_4301521026120.jpg', '', '0', '2018-03-14 00:00:00'),
(729, 218, 144, 'Img_1671521026749.jpg', 'Dining', '1', '2018-03-14 00:00:00'),
(730, 218, 144, 'Img_9651521026749.jpg', 'Outdoor', '0', '2018-03-14 00:00:00'),
(731, 218, 144, 'Img_5061521026750.jpg', 'Outdoor', '0', '2018-03-14 00:00:00'),
(732, 218, 144, 'Img_1281521026750.jpg', 'Kitchen', '0', '2018-03-14 00:00:00'),
(733, 219, 158, 'Img_5421521345269.JPG', 'Dining', '1', '2018-03-17 00:00:00'),
(734, 219, 158, 'Img_8041521345269.JPG', 'Living room', '0', '2018-03-17 00:00:00'),
(735, 220, 158, 'Img_7961521392183.jpg', '', '1', '2018-03-18 00:00:00'),
(736, 221, 158, 'Img_1421521394338.jpg', '', '1', '2018-03-18 00:00:00'),
(737, 221, 158, 'Img_9431521394338.jpg', '', '0', '2018-03-18 00:00:00'),
(738, 222, 145, 'Img_3181523615375.jpeg', 'Kitchen', '0', '2018-04-13 00:00:00'),
(739, 222, 145, 'Img_9011523615376.jpeg', 'Dining', '1', '2018-04-13 00:00:00'),
(740, 222, 145, 'Img_8941523615378.jpeg', 'Living room', '0', '2018-04-13 00:00:00'),
(741, 222, 145, 'Img_7371523615379.jpeg', 'Kitchen', '0', '2018-04-13 00:00:00'),
(742, 222, 145, 'Img_4741523615381.jpeg', 'Outdoor', '0', '2018-04-13 00:00:00'),
(743, 223, 166, 'Img_6881526909522.jpg', '', '1', '2018-05-21 00:00:00'),
(744, 223, 166, 'Img_7261526909523.jpg', '', '0', '2018-05-21 00:00:00'),
(745, 223, 166, 'Img_8901526909524.jpg', '', '0', '2018-05-21 00:00:00'),
(746, 223, 166, 'Img_1781526909528.jpg', '', '0', '2018-05-21 00:00:00'),
(747, 223, 166, 'Img_9321526910724.jpg', '', '0', '2018-05-21 00:00:00'),
(751, 225, 166, 'Img_9381526912551.jpg', 'Living room', '1', '2018-05-21 00:00:00'),
(752, 225, 166, 'Img_3901526912551.jpg', 'Living room', '0', '2018-05-21 00:00:00'),
(753, 225, 166, 'Img_701526912552.jpg', 'Dining', '0', '2018-05-21 00:00:00'),
(754, 224, 166, 'Img_6771526912692.jpg', 'Living room', '1', '2018-05-21 00:00:00'),
(755, 224, 166, 'Img_8651526912692.jpg', '', '0', '2018-05-21 00:00:00'),
(756, 224, 166, 'Img_9661526912693.jpg', '', '0', '2018-05-21 00:00:00'),
(758, 227, 145, 'Img_6611527155391.jpeg', 'Dining', '0', '2018-05-24 00:00:00'),
(759, 227, 145, 'Img_4081527155393.jpeg', 'Living room', '0', '2018-05-24 00:00:00'),
(760, 227, 145, 'Img_6131527155395.jpeg', 'Living room', '0', '2018-05-24 00:00:00'),
(761, 227, 145, 'Img_8701527155397.jpeg', '', '0', '2018-05-24 00:00:00'),
(762, 227, 145, 'Img_5471527155399.jpeg', 'Living room', '0', '2018-05-24 00:00:00'),
(763, 227, 145, 'Img_5901527155402.jpeg', 'Living room', '0', '2018-05-24 00:00:00'),
(764, 227, 145, 'Img_3441527155405.jpeg', 'Living room', '0', '2018-05-24 00:00:00'),
(765, 227, 145, 'Img_3731527155408.jpeg', 'Dining', '0', '2018-05-24 00:00:00'),
(766, 227, 145, 'Img_2941527155411.jpeg', 'Dining', '1', '2018-05-24 00:00:00'),
(767, 227, 145, 'Img_4341527155413.jpeg', 'Dining', '0', '2018-05-24 00:00:00'),
(769, 227, 145, 'Img_3241527155806.png', '', '0', '2018-05-24 00:00:00'),
(772, 227, 145, 'Img_6691527155926.png', '', '0', '2018-05-24 00:00:00'),
(773, 227, 145, 'Img_551527155927.png', '', '0', '2018-05-24 00:00:00'),
(774, 227, 145, 'Img_2301527155927.png', '', '0', '2018-05-24 00:00:00'),
(778, 214, 145, 'Img_7761527156269.png', '', '0', '2018-05-24 00:00:00'),
(779, 214, 145, 'Img_401527156269.png', '', '0', '2018-05-24 00:00:00'),
(783, 213, 145, 'Img_5791527156424.png', '', '0', '2018-05-24 00:00:00'),
(784, 213, 145, 'Img_2261527156455.png', '', '0', '2018-05-24 00:00:00'),
(785, 213, 145, 'Img_8211527156456.png', '', '0', '2018-05-24 00:00:00'),
(788, 224, 166, 'Img_2841527316954.jpg', 'Living room', '0', '2018-05-26 00:00:00'),
(789, 224, 166, 'Img_7451527316956.jpg', 'Bedroom', '0', '2018-05-26 00:00:00'),
(790, 224, 166, 'Img_5861527316959.jpg', '', '0', '2018-05-26 00:00:00'),
(791, 224, 166, 'Img_1861527316961.jpg', '', '0', '2018-05-26 00:00:00'),
(792, 224, 166, 'Img_1311527316964.jpg', '', '0', '2018-05-26 00:00:00'),
(793, 229, 167, 'Img_4991527748213.jpg', '', '0', '2018-05-31 00:00:00'),
(794, 229, 167, 'Img_2061527748214.jpg', '', '0', '2018-05-31 00:00:00'),
(795, 229, 167, 'Img_8051527748215.jpg', '', '0', '2018-05-31 00:00:00'),
(797, 229, 167, 'Img_9231527748315.jpg', '', '0', '2018-05-31 00:00:00'),
(798, 229, 167, 'Img_7471527748315.jpg', '', '1', '2018-05-31 00:00:00'),
(799, 230, 167, 'Img_8011527748424.jpg', '', '1', '2018-05-31 00:00:00'),
(800, 230, 167, 'Img_3371527748425.jpg', '', '0', '2018-05-31 00:00:00'),
(801, 230, 167, 'Img_6721527748426.jpg', '', '0', '2018-05-31 00:00:00'),
(802, 230, 167, 'Img_5031527748427.jpg', '', '0', '2018-05-31 00:00:00'),
(803, 231, 167, 'Img_411527748517.jpg', '', '1', '2018-05-31 00:00:00'),
(804, 231, 167, 'Img_2861527748522.jpg', '', '0', '2018-05-31 00:00:00'),
(805, 231, 167, 'Img_7681527748525.jpg', '', '0', '2018-05-31 00:00:00'),
(806, 231, 167, 'Img_4801527748529.jpg', '', '0', '2018-05-31 00:00:00'),
(829, 236, 181, 'Img_8201528063407.jpg', '', '0', '2018-06-03 00:00:00'),
(830, 236, 181, 'Img_4951528063410.JPG', '', '0', '2018-06-03 00:00:00'),
(831, 236, 181, 'Img_3121528063413.jpg', '', '0', '2018-06-03 00:00:00'),
(832, 236, 181, 'Img_2141528063416.jpg', '', '0', '2018-06-03 00:00:00'),
(833, 236, 181, 'Img_4931528063418.jpg', '', '0', '2018-06-03 00:00:00'),
(834, 236, 181, 'Img_1701528063421.jpg', '', '1', '2018-06-03 00:00:00'),
(838, 237, 181, 'Img_6431528063659.jpg', '', '1', '2018-06-03 00:00:00'),
(841, 238, 181, 'Img_7811528064032.JPG', '', '0', '2018-06-03 00:00:00'),
(842, 238, 181, 'Img_2681528064035.JPG', '', '0', '2018-06-03 00:00:00'),
(843, 238, 181, 'Img_6571528064036.jpg', '', '0', '2018-06-03 00:00:00'),
(844, 238, 181, 'Img_7371528064039.jpg', '', '1', '2018-06-03 00:00:00'),
(845, 238, 181, 'Img_2631528064042.jpg', '', '0', '2018-06-03 00:00:00'),
(846, 238, 181, 'Img_6171528064044.jpg', '', '0', '2018-06-03 00:00:00'),
(847, 239, 181, 'Img_6111528064467.jpg', '', '0', '2018-06-03 00:00:00'),
(848, 239, 181, 'Img_8041528064468.jpg', '', '1', '2018-06-03 00:00:00'),
(849, 239, 181, 'Img_5651528064469.jpg', '', '0', '2018-06-03 00:00:00'),
(850, 239, 181, 'Img_8641528064470.JPG', 'Kitchen', '0', '2018-06-03 00:00:00'),
(851, 239, 181, 'Img_7901528064472.JPG', 'Living room', '0', '2018-06-03 00:00:00'),
(852, 239, 181, 'Img_1991528064474.jpg', 'Outdoor', '0', '2018-06-03 00:00:00'),
(853, 240, 181, 'Img_3911528064952.JPG', 'Outdoor', '1', '2018-06-03 00:00:00'),
(854, 240, 181, 'Img_9421528064954.JPG', 'Dining', '0', '2018-06-03 00:00:00'),
(855, 240, 181, 'Img_4661528064957.JPG', 'Outdoor', '0', '2018-06-03 00:00:00'),
(856, 240, 181, 'Img_721528064959.JPG', 'Kitchen', '0', '2018-06-03 00:00:00'),
(857, 240, 181, 'Img_9631528064961.jpg', '', '0', '2018-06-03 00:00:00'),
(858, 240, 181, 'Img_4601528064964.jpg', 'Bathroom', '0', '2018-06-03 00:00:00'),
(859, 241, 181, 'Img_1191528065345.JPG', 'Living room', '1', '2018-06-03 00:00:00'),
(860, 241, 181, 'Img_5841528065349.jpg', 'Kitchen', '0', '2018-06-03 00:00:00'),
(861, 242, 181, 'Img_6781528065660.jpg', 'Bedroom', '1', '2018-06-03 00:00:00'),
(862, 242, 181, 'Img_171528065661.jpg', 'Living room', '0', '2018-06-03 00:00:00'),
(863, 241, 181, 'Img_8221528065928.JPG', 'Dining', '0', '2018-06-03 00:00:00'),
(864, 241, 181, 'Img_7941528065930.jpg', 'Bedroom', '0', '2018-06-03 00:00:00'),
(865, 241, 181, 'Img_9501528065933.JPG', 'Bathroom', '0', '2018-06-03 00:00:00'),
(866, 241, 181, 'Img_1661528065935.JPG', 'Kitchen', '0', '2018-06-03 00:00:00'),
(868, 247, 186, 'Img_3931528383983.jpeg', 'Outdoor', '1', '2018-06-07 00:00:00'),
(869, 247, 186, 'Img_6221528383983.jpg', 'Dining', '0', '2018-06-07 00:00:00'),
(870, 247, 186, 'Img_3051528383985.jpeg', '', '0', '2018-06-07 00:00:00'),
(871, 247, 186, 'Img_4341528383985.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(872, 247, 186, 'Img_5981528383986.jpeg', 'Living room', '0', '2018-06-07 00:00:00'),
(873, 247, 186, 'Img_4601528383986.jpg', '', '0', '2018-06-07 00:00:00'),
(874, 247, 186, 'Img_2221528383989.jpeg', 'Living room', '0', '2018-06-07 00:00:00'),
(875, 247, 186, 'Img_281528383989.jpeg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(876, 247, 186, 'Img_9871528383990.jpg', 'Outdoor', '0', '2018-06-07 00:00:00'),
(877, 247, 186, 'Img_5221528383991.jpeg', 'Living room', '0', '2018-06-07 00:00:00'),
(878, 247, 186, 'Img_8251528383992.jpg', '', '0', '2018-06-07 00:00:00'),
(879, 247, 186, 'Img_5841528383993.jpeg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(880, 247, 186, 'Img_2961528383994.jpeg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(881, 247, 186, 'Img_7601528383994.jpg', '', '0', '2018-06-07 00:00:00'),
(882, 248, 186, 'Img_5671528384848.jpg', 'Bedroom', '1', '2018-06-07 00:00:00'),
(883, 248, 186, 'Img_5011528384848.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(884, 248, 186, 'Img_7991528384849.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(885, 248, 186, 'Img_7391528384849.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(886, 248, 186, 'Img_9181528384850.jpg', '', '0', '2018-06-07 00:00:00'),
(887, 248, 186, 'Img_8531528384850.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(888, 248, 186, 'Img_4901528384851.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(889, 248, 186, 'Img_911528384851.jpg', '', '0', '2018-06-07 00:00:00'),
(890, 248, 186, 'Img_3301528384852.jpg', '', '0', '2018-06-07 00:00:00'),
(891, 248, 186, 'Img_8231528384852.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(892, 248, 186, 'Img_6371528384852.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(893, 248, 186, 'Img_8421528384853.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(894, 248, 186, 'Img_6101528384853.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(895, 248, 186, 'Img_9351528384854.jpeg', 'Dining', '0', '2018-06-07 00:00:00'),
(896, 249, 186, 'Img_3721528385475.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(897, 249, 186, 'Img_6421528385475.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(898, 249, 186, 'Img_551528385476.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(899, 249, 186, 'Img_7891528385476.jpg', '', '0', '2018-06-07 00:00:00'),
(900, 249, 186, 'Img_1661528385477.jpg', 'Outdoor', '0', '2018-06-07 00:00:00'),
(901, 249, 186, 'Img_2321528385477.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(902, 249, 186, 'Img_9121528385478.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(903, 249, 186, 'Img_7531528385478.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(904, 249, 186, 'Img_7601528385479.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(905, 249, 186, 'Img_2331528385479.jpg', 'Living room', '1', '2018-06-07 00:00:00'),
(906, 249, 186, 'Img_4891528385480.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(907, 249, 186, 'Img_4461528385480.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(908, 250, 186, 'Img_221528386017.jpg', 'Bedroom', '1', '2018-06-07 00:00:00'),
(909, 250, 186, 'Img_901528386018.jpg', 'Bathroom', '0', '2018-06-07 00:00:00'),
(910, 250, 186, 'Img_8351528386018.jpg', 'Bathroom', '0', '2018-06-07 00:00:00'),
(911, 250, 186, 'Img_2561528386019.jpg', 'Bathroom', '0', '2018-06-07 00:00:00'),
(912, 250, 186, 'Img_6691528386019.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(913, 250, 186, 'Img_7421528386020.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(914, 250, 186, 'Img_3381528386021.jpg', 'Bathroom', '0', '2018-06-07 00:00:00'),
(915, 250, 186, 'Img_9361528386021.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(916, 250, 186, 'Img_2721528386022.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(917, 250, 186, 'Img_941528386022.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(918, 250, 186, 'Img_9221528386023.jpg', 'Dining', '0', '2018-06-07 00:00:00'),
(919, 251, 186, 'Img_7911528386257.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(920, 251, 186, 'Img_3831528386258.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(921, 251, 186, 'Img_7931528386258.jpg', 'Bedroom', '1', '2018-06-07 00:00:00'),
(922, 251, 186, 'Img_5361528386259.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(923, 251, 186, 'Img_9171528386259.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(924, 251, 186, 'Img_6071528386260.jpg', 'Bedroom', '0', '2018-06-07 00:00:00'),
(925, 251, 186, 'Img_9341528386260.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(926, 251, 186, 'Img_5621528386261.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(927, 251, 186, 'Img_9561528386261.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(928, 251, 186, 'Img_9741528386262.jpg', 'Living room', '0', '2018-06-07 00:00:00'),
(930, 252, 187, 'Img_9661528790108.jpg', 'Bedroom', '1', '2018-06-12 00:00:00'),
(931, 252, 187, 'Img_5611528790108.jpg', 'Bedroom', '0', '2018-06-12 00:00:00'),
(932, 253, 187, 'Img_9581528790152.jpg', '', '1', '2018-06-12 00:00:00'),
(933, 253, 187, 'Img_6781528790152.jpg', '', '0', '2018-06-12 00:00:00'),
(934, 254, 187, 'Img_4111528790594.jpg', '', '1', '2018-06-12 00:00:00'),
(935, 254, 187, 'Img_3261528790595.jpg', '', '0', '2018-06-12 00:00:00'),
(936, 255, 187, 'Img_4711528790882.jpeg', '', '1', '2018-06-12 00:00:00'),
(937, 255, 187, 'Img_4681528790883.jpeg', '', '0', '2018-06-12 00:00:00'),
(938, 256, 183, 'Img_8041530435989.jpg', 'Bedroom', '0', '2018-07-01 00:00:00'),
(939, 256, 183, 'Img_2491530435990.jpg', 'Living room', '0', '2018-07-01 00:00:00'),
(940, 256, 183, 'Img_3061530435990.jpg', 'Bedroom', '0', '2018-07-01 00:00:00'),
(941, 256, 183, 'Img_5841530435990.jpg', 'Living room', '1', '2018-07-01 00:00:00'),
(942, 256, 183, 'Img_1061530435991.jpg', 'Living room', '0', '2018-07-01 00:00:00'),
(943, 256, 183, 'Img_7211530435991.jpg', 'Bedroom', '0', '2018-07-01 00:00:00'),
(944, 257, 183, 'Img_7921530437277.jpg', 'Bedroom', '0', '2018-07-01 00:00:00'),
(945, 257, 183, 'Img_5371530437278.jpg', 'Bedroom', '0', '2018-07-01 00:00:00'),
(946, 257, 183, 'Img_5881530437278.jpg', 'Living room', '1', '2018-07-01 00:00:00'),
(947, 258, 183, 'Img_7161530437849.jpg', 'Living room', '1', '2018-07-01 00:00:00'),
(948, 213, 145, 'Img_4371530840362.jpeg', '', '0', '2018-07-05 00:00:00'),
(949, 213, 145, 'Img_6201530840364.jpeg', '', '0', '2018-07-05 00:00:00'),
(950, 213, 145, 'Img_8291530840365.jpeg', '', '0', '2018-07-05 00:00:00'),
(951, 213, 145, 'Img_6751530840367.jpeg', '', '1', '2018-07-05 00:00:00'),
(952, 213, 145, 'Img_1641530840369.jpeg', '', '0', '2018-07-05 00:00:00'),
(953, 259, 193, 'Img_321530864725.jpg', 'Bedroom', '1', '2018-07-06 00:00:00'),
(954, 259, 193, 'Img_331530864726.jpg', 'Living room', '0', '2018-07-06 00:00:00');
INSERT INTO `d6f4fad3ds20d1c_portfolio_images` (`p_image_id`, `p_portfolio_id`, `p_user_id`, `p_image_name`, `p_image_tag`, `p_image_status`, `p_added_date`) VALUES
(955, 259, 193, 'Img_7551530864726.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(956, 259, 193, 'Img_5891530864727.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(957, 259, 193, 'Img_6291530864727.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(958, 259, 193, 'Img_6421530864728.jpg', '', '0', '2018-07-06 00:00:00'),
(959, 259, 193, 'Img_1371530864728.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(960, 259, 193, 'Img_7791530864729.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(961, 260, 193, 'Img_4831530866008.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(962, 260, 193, 'Img_3611530866009.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(963, 260, 193, 'Img_5571530866009.jpg', '', '0', '2018-07-06 00:00:00'),
(964, 260, 193, 'Img_431530866010.jpg', '', '0', '2018-07-06 00:00:00'),
(965, 260, 193, 'Img_8901530866010.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(966, 260, 193, 'Img_2031530866011.jpg', 'Kitchen', '1', '2018-07-06 00:00:00'),
(967, 260, 193, 'Img_5521530866011.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(968, 260, 193, 'Img_9381530866011.jpg', '', '0', '2018-07-06 00:00:00'),
(969, 260, 193, 'Img_481530866012.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(970, 260, 193, 'Img_8041530866012.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(971, 260, 193, 'Img_6151530866012.jpg', '', '0', '2018-07-06 00:00:00'),
(972, 260, 193, 'Img_5661530866013.jpg', 'Kitchen', '0', '2018-07-06 00:00:00'),
(973, 260, 193, 'Img_7241530866013.jpg', '', '0', '2018-07-06 00:00:00'),
(974, 260, 193, 'Img_4931530866014.jpg', '', '0', '2018-07-06 00:00:00'),
(975, 260, 193, 'Img_3001530866014.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(976, 261, 193, 'Img_801530866374.jpg', 'Bedroom', '1', '2018-07-06 00:00:00'),
(977, 261, 193, 'Img_6361530866374.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(978, 261, 193, 'Img_7731530866375.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(979, 261, 193, 'Img_2941530866375.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(980, 261, 193, 'Img_5421530866376.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(981, 261, 193, 'Img_431530866377.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(982, 261, 193, 'Img_9481530866377.jpg', 'Kitchen', '0', '2018-07-06 00:00:00'),
(983, 261, 193, 'Img_8541530866377.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(984, 261, 193, 'Img_2211530866378.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(985, 261, 193, 'Img_9791530866378.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(986, 261, 193, 'Img_9921530866379.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(987, 261, 193, 'Img_351530866379.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(988, 261, 193, 'Img_1961530866380.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(989, 262, 193, 'Img_4491530866563.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(990, 262, 193, 'Img_7211530866563.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(991, 262, 193, 'Img_4781530866564.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(992, 262, 193, 'Img_1401530866564.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(993, 262, 193, 'Img_641530866565.jpg', '', '0', '2018-07-06 00:00:00'),
(994, 262, 193, 'Img_6471530866565.jpg', 'Kitchen', '0', '2018-07-06 00:00:00'),
(995, 262, 193, 'Img_3601530866566.jpg', 'Kitchen', '0', '2018-07-06 00:00:00'),
(996, 262, 193, 'Img_6751530866566.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(997, 262, 193, 'Img_2271530866567.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(998, 262, 193, 'Img_7121530866567.jpg', '', '0', '2018-07-06 00:00:00'),
(999, 262, 193, 'Img_7761530866568.jpg', '', '0', '2018-07-06 00:00:00'),
(1000, 262, 193, 'Img_2751530866568.jpg', 'Living room', '1', '2018-07-06 00:00:00'),
(1001, 262, 193, 'Img_6181530866569.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(1002, 262, 193, 'Img_4581530866569.jpg', '', '0', '2018-07-06 00:00:00'),
(1003, 263, 193, 'Img_3931530866947.jpg', 'Bedroom', '1', '2018-07-06 00:00:00'),
(1004, 263, 193, 'Img_2551530866948.jpg', 'Kitchen', '0', '2018-07-06 00:00:00'),
(1005, 263, 193, 'Img_7991530866948.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(1006, 263, 193, 'Img_3791530866948.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(1007, 263, 193, 'Img_9731530866949.jpg', 'Bathroom', '0', '2018-07-06 00:00:00'),
(1008, 263, 193, 'Img_1171530866950.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(1009, 263, 193, 'Img_3161530866950.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(1010, 263, 193, 'Img_6301530866950.jpg', 'Bedroom', '0', '2018-07-06 00:00:00'),
(1011, 263, 193, 'Img_2941530866951.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(1012, 263, 193, 'Img_7171530866951.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(1013, 263, 193, 'Img_3471530866952.jpg', 'Living room', '0', '2018-07-06 00:00:00'),
(1014, 263, 193, 'Img_8701530866952.jpg', 'Dining', '0', '2018-07-06 00:00:00'),
(1015, 263, 193, 'Img_6491530866953.jpg', 'Dining', '0', '2018-07-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_portfolio_log`
--

CREATE TABLE `d6f4fad3ds20d1c_portfolio_log` (
  `portfolio_log_id` int(255) NOT NULL,
  `portfolio_log_user_id` int(255) NOT NULL,
  `portfolio_log_count` int(10) NOT NULL,
  `portfolio_log_exp_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_portfolio_log`
--

INSERT INTO `d6f4fad3ds20d1c_portfolio_log` (`portfolio_log_id`, `portfolio_log_user_id`, `portfolio_log_count`, `portfolio_log_exp_date`) VALUES
(42, 92, 2, '2018-09-21 01:19:34'),
(43, 93, 2, '2018-09-21 22:23:26'),
(44, 94, 2, '2018-09-22 01:43:37'),
(45, 95, 2, '2018-09-22 01:46:58'),
(46, 96, 2, '2018-09-22 01:49:15'),
(47, 97, 0, '2018-09-22 02:04:10'),
(48, 98, 0, '2018-09-22 02:21:45'),
(49, 99, 2, '2018-09-22 02:40:27'),
(50, 100, 0, '2018-09-22 03:45:50'),
(51, 101, 0, '2018-09-22 04:21:33'),
(52, 102, 0, '2018-09-22 04:56:21'),
(53, 103, 2, '2018-09-22 05:15:40'),
(54, 105, 2, '2018-09-27 00:54:40'),
(55, 106, 0, '2018-09-27 01:04:09'),
(56, 107, 0, '2018-09-27 01:46:40'),
(57, 108, 3, '2018-09-27 02:28:06'),
(58, 109, 0, '2018-09-27 05:47:13'),
(59, 110, 2, '2018-09-27 06:58:20'),
(60, 111, 5, '2018-09-28 00:29:17'),
(61, 114, 0, '2018-10-09 09:23:57'),
(62, 115, 5, '2018-10-12 00:14:39'),
(63, 116, 0, '2018-10-27 07:36:13'),
(64, 117, 0, '2018-11-14 02:27:33'),
(65, 118, 0, '2018-11-30 07:29:46'),
(66, 119, 0, '2018-11-30 07:31:07'),
(67, 124, 0, '2018-12-22 07:26:58'),
(68, 125, 3, '2019-01-02 02:33:54'),
(69, 126, 2, '2019-01-03 01:33:57'),
(70, 127, 5, '2019-01-03 03:36:06'),
(71, 128, 2, '2019-01-08 05:02:10'),
(72, 130, 5, '2019-01-09 22:54:00'),
(73, 131, 1, '2019-01-09 22:57:56'),
(74, 132, 0, '2019-01-11 11:30:19'),
(75, 133, 0, '2019-01-11 20:23:17'),
(76, 134, 2, '2019-01-11 21:14:46'),
(77, 135, 3, '2019-01-11 22:23:47'),
(78, 136, 0, '2019-01-11 22:40:21'),
(79, 137, 0, '2019-01-11 23:24:13'),
(80, 138, 2, '2019-01-11 23:53:52'),
(81, 139, 3, '2019-01-12 01:11:53'),
(82, 140, 5, '2019-01-12 01:30:11'),
(83, 141, 3, '2019-01-12 01:53:45'),
(84, 142, 3, '2019-01-12 05:49:07'),
(85, 143, 5, '2019-01-16 04:47:46'),
(86, 144, 2, '2019-01-19 07:41:37'),
(87, 145, 0, '2019-01-19 07:43:28'),
(88, 146, 3, '2019-01-19 07:46:16'),
(89, 144, 2, '2019-02-01 04:05:28'),
(90, 145, 0, '2019-02-02 02:02:33'),
(91, 146, 5, '2019-02-02 02:51:52'),
(92, 147, 2, '2019-02-02 15:49:00'),
(93, 148, 5, '2019-02-02 16:52:17'),
(94, 149, 5, '2019-02-06 06:28:29'),
(95, 150, 3, '2019-02-08 20:01:35'),
(96, 151, 5, '2019-02-09 02:28:00'),
(97, 152, 3, '2019-02-14 03:26:12'),
(98, 153, 5, '2019-02-14 14:36:35'),
(99, 155, 5, '2019-02-27 12:44:22'),
(100, 156, 5, '2019-03-10 20:38:05'),
(101, 157, 5, '2019-03-11 22:10:21'),
(102, 158, 1, '2019-03-14 07:35:12'),
(103, 159, 5, '2019-03-19 10:50:02'),
(104, 160, 5, '2019-03-27 21:17:43'),
(105, 162, 5, '2019-04-03 03:36:54'),
(106, 163, 5, '2019-04-18 02:18:09'),
(107, 164, 5, '2019-04-19 03:42:20'),
(108, 165, 5, '2019-05-08 22:06:56'),
(109, 166, 1, '2019-05-21 04:25:15'),
(110, 167, 1, '2019-05-22 03:02:12'),
(111, 168, 5, '2019-05-22 05:35:28'),
(112, 169, 5, '2019-05-23 04:04:30'),
(113, 170, 5, '2019-05-23 04:14:48'),
(114, 171, 5, '2019-05-23 07:16:35'),
(115, 172, 5, '2019-05-25 06:00:35'),
(116, 175, 5, '2019-05-28 04:12:20'),
(117, 176, 5, '2019-05-31 11:15:07'),
(118, 177, 5, '2019-05-31 23:32:23'),
(119, 178, 1, '2019-06-01 03:00:08'),
(120, 179, 5, '2019-06-01 03:17:35'),
(121, 167, 5, '2019-06-01 03:48:48'),
(122, 180, 5, '2019-06-02 05:11:09'),
(123, 181, 0, '2019-06-03 16:31:13'),
(124, 182, 1, '2019-06-04 22:21:14'),
(125, 183, 2, '2019-06-05 03:34:11'),
(126, 184, 5, '2019-06-05 03:35:20'),
(127, 185, 5, '2019-06-05 16:31:00'),
(128, 186, 0, '2019-06-06 23:03:38'),
(129, 187, 0, '2019-06-12 03:16:08'),
(130, 188, 5, '2019-06-12 03:59:42'),
(131, 189, 5, '2019-06-13 00:40:50'),
(132, 191, 5, '2019-06-22 15:19:18'),
(133, 192, 5, '2019-06-30 11:30:11'),
(134, 193, 0, '2019-07-06 03:45:17'),
(135, 194, 5, '2019-07-12 03:32:58'),
(136, 195, 5, '2019-07-13 04:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_portfolio_views`
--

CREATE TABLE `d6f4fad3ds20d1c_portfolio_views` (
  `pv_id` int(20) NOT NULL,
  `pv_portfolio_id` int(20) NOT NULL,
  `pv_count` int(20) NOT NULL,
  `pv_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_portfolio_views`
--

INSERT INTO `d6f4fad3ds20d1c_portfolio_views` (`pv_id`, `pv_portfolio_id`, `pv_count`, `pv_date`) VALUES
(28, 43, 14, '2017-09-22'),
(29, 44, 5, '2017-09-26'),
(36, 56, 2, '2017-08-18'),
(45, 57, 4, '2017-09-22'),
(46, 53, 1, '2017-09-21'),
(47, 66, 1, '2017-09-22'),
(48, 70, 10, '2017-09-26'),
(49, 73, 8, '2017-09-26'),
(50, 72, 3, '2017-09-25'),
(51, 77, 5, '2017-09-26'),
(52, 74, 7, '2017-09-26'),
(53, 71, 2, '2017-09-26'),
(54, 76, 2, '2017-09-25'),
(55, 75, 4, '2017-09-26'),
(56, 68, 1, '2017-09-22'),
(57, 79, 46, '2018-01-05'),
(58, 80, 41, '2018-01-08'),
(59, 86, 38, '2018-01-08'),
(60, 85, 20, '2018-01-05'),
(61, 95, 11, '2018-01-02'),
(62, 96, 20, '2018-01-03'),
(63, 82, 26, '2018-01-02'),
(64, 88, 23, '2017-12-12'),
(65, 92, 12, '2018-01-08'),
(66, 83, 41, '2018-01-06'),
(67, 99, 65, '2018-07-06'),
(68, 109, 72, '2018-06-14'),
(69, 110, 63, '2018-07-06'),
(70, 103, 52, '2018-07-09'),
(71, 111, 71, '2018-07-10'),
(72, 78, 65, '2018-01-09'),
(73, 101, 31, '2018-07-09'),
(74, 106, 32, '2018-07-07'),
(75, 105, 38, '2018-06-26'),
(76, 91, 21, '2018-01-09'),
(77, 108, 22, '2018-07-13'),
(78, 100, 43, '2018-07-12'),
(79, 107, 33, '2018-07-12'),
(80, 89, 23, '2018-01-03'),
(81, 104, 31, '2018-06-01'),
(82, 102, 48, '2018-05-10'),
(83, 94, 11, '2018-01-03'),
(84, 84, 9, '2017-12-21'),
(85, 87, 25, '2018-01-08'),
(86, 90, 11, '2017-12-10'),
(87, 97, 7, '2018-01-03'),
(88, 81, 27, '2018-01-08'),
(89, 93, 14, '2018-01-08'),
(90, 98, 17, '2018-01-02'),
(91, 112, 14, '2018-01-06'),
(92, 113, 25, '2017-12-04'),
(93, 114, 1, '2017-11-30'),
(94, 115, 15, '2017-12-17'),
(95, 116, 27, '2017-12-19'),
(96, 118, 11, '2017-12-26'),
(97, 117, 12, '2017-12-26'),
(98, 123, 1, '2017-12-22'),
(99, 119, 26, '2018-05-21'),
(100, 121, 26, '2018-05-21'),
(101, 120, 32, '2018-06-30'),
(102, 128, 1, '2017-12-22'),
(103, 147, 7, '2018-01-05'),
(104, 122, 14, '2018-05-22'),
(105, 146, 7, '2018-01-07'),
(106, 136, 1, '2017-12-26'),
(107, 142, 2, '2018-01-07'),
(108, 144, 1, '2017-12-26'),
(109, 138, 1, '2017-12-26'),
(110, 143, 1, '2017-12-26'),
(111, 135, 3, '2018-01-07'),
(112, 139, 5, '2018-01-05'),
(113, 137, 1, '2017-12-27'),
(114, 134, 1, '2017-12-27'),
(115, 145, 4, '2018-01-07'),
(116, 130, 1, '2017-12-28'),
(117, 148, 3, '2018-01-02'),
(118, 129, 1, '2018-01-01'),
(119, 149, 1, '2018-01-01'),
(120, 151, 1, '2018-01-01'),
(121, 153, 1, '2018-01-01'),
(122, 154, 2, '2018-01-01'),
(123, 155, 6, '2018-01-08'),
(124, 156, 9, '2018-01-06'),
(125, 160, 10, '2018-01-11'),
(126, 162, 3, '2018-01-04'),
(127, 161, 7, '2018-01-07'),
(128, 125, 1, '2018-01-03'),
(129, 163, 1, '2018-01-03'),
(130, 165, 5, '2018-01-08'),
(131, 167, 7, '2018-01-11'),
(132, 168, 6, '2018-01-07'),
(133, 169, 6, '2018-01-07'),
(134, 166, 3, '2018-01-11'),
(135, 170, 3, '2018-01-05'),
(136, 171, 5, '2018-01-08'),
(137, 172, 3, '2018-01-05'),
(138, 177, 51, '2018-07-13'),
(139, 176, 48, '2018-06-25'),
(140, 178, 68, '2018-07-09'),
(141, 175, 46, '2018-06-25'),
(142, 124, 2, '2018-01-11'),
(143, 182, 44, '2018-07-13'),
(144, 184, 61, '2018-06-13'),
(145, 186, 56, '2018-06-25'),
(146, 187, 60, '2018-07-08'),
(147, 183, 47, '2018-07-04'),
(148, 201, 103, '2018-07-06'),
(149, 199, 54, '2018-07-13'),
(150, 202, 33, '2018-07-09'),
(151, 200, 23, '2018-07-06'),
(152, 203, 9, '2018-01-25'),
(153, 196, 65, '2018-06-23'),
(154, 194, 27, '2018-05-31'),
(155, 192, 43, '2018-05-21'),
(156, 197, 49, '2018-06-24'),
(157, 193, 33, '2018-07-04'),
(158, 191, 47, '2018-06-27'),
(159, 188, 28, '2018-07-05'),
(160, 198, 41, '2018-07-13'),
(161, 180, 25, '2018-07-04'),
(162, 179, 32, '2018-07-13'),
(163, 181, 38, '2018-07-06'),
(164, 190, 39, '2018-07-08'),
(165, 204, 34, '2018-07-07'),
(166, 185, 23, '2018-06-02'),
(167, 206, 2, '2018-01-21'),
(168, 205, 41, '2018-07-11'),
(169, 195, 27, '2018-07-02'),
(170, 207, 36, '2018-06-22'),
(171, 208, 35, '2018-07-04'),
(172, 209, 50, '2018-07-09'),
(173, 210, 33, '2018-06-23'),
(174, 211, 54, '2018-06-24'),
(175, 212, 33, '2018-07-10'),
(176, 213, 42, '2018-07-11'),
(177, 214, 26, '2018-07-05'),
(178, 215, 48, '2018-07-05'),
(179, 216, 40, '2018-06-13'),
(180, 218, 24, '2018-06-21'),
(181, 217, 19, '2018-07-04'),
(182, 219, 26, '2018-07-09'),
(183, 220, 34, '2018-06-24'),
(184, 221, 58, '2018-07-13'),
(185, 222, 31, '2018-07-08'),
(186, 223, 15, '2018-06-03'),
(187, 224, 34, '2018-07-09'),
(188, 225, 17, '2018-07-12'),
(189, 226, 17, '2018-05-31'),
(190, 227, 21, '2018-07-08'),
(191, 229, 7, '2018-06-04'),
(192, 230, 11, '2018-07-11'),
(193, 231, 10, '2018-06-28'),
(194, 232, 18, '2018-07-04'),
(195, 233, 1, '2018-06-01'),
(196, 234, 3, '2018-06-01'),
(197, 235, 14, '2018-07-04'),
(198, 236, 7, '2018-06-10'),
(199, 242, 14, '2018-07-05'),
(200, 240, 11, '2018-07-01'),
(201, 241, 14, '2018-07-13'),
(202, 239, 6, '2018-06-28'),
(203, 238, 5, '2018-06-09'),
(204, 243, 11, '2018-06-24'),
(205, 237, 4, '2018-06-07'),
(206, 245, 6, '2018-07-08'),
(207, 244, 7, '2018-07-04'),
(208, 246, 11, '2018-07-04'),
(209, 250, 9, '2018-06-19'),
(210, 247, 10, '2018-07-04'),
(211, 251, 9, '2018-06-26'),
(212, 249, 8, '2018-06-28'),
(213, 248, 6, '2018-07-04'),
(214, 252, 18, '2018-06-26'),
(215, 253, 8, '2018-07-09'),
(216, 255, 7, '2018-07-05'),
(217, 254, 7, '2018-06-24'),
(218, 256, 7, '2018-07-07'),
(219, 257, 3, '2018-07-08'),
(220, 258, 4, '2018-07-09'),
(221, 259, 4, '2018-07-10'),
(222, 263, 5, '2018-07-13'),
(223, 261, 8, '2018-07-11'),
(224, 262, 5, '2018-07-09'),
(225, 260, 4, '2018-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_settings`
--

CREATE TABLE `d6f4fad3ds20d1c_settings` (
  `id` int(11) NOT NULL,
  `Site_Name` varchar(1000) NOT NULL,
  `Site_Title` varchar(1000) NOT NULL,
  `Meta_Keyword` varchar(1000) NOT NULL,
  `Meta_Description` varchar(1000) NOT NULL,
  `Facebook_Page` varchar(1000) NOT NULL,
  `Twitter_Page` varchar(1000) NOT NULL,
  `Google_Page` varchar(1000) NOT NULL,
  `Company_Address` varchar(1000) NOT NULL,
  `Company_Contact_Number` varchar(1000) NOT NULL,
  `Company_Contact_Email` varchar(1000) NOT NULL,
  `Company_Favicon` varchar(1000) NOT NULL,
  `Company_Logo` varchar(1000) NOT NULL,
  `About_Company` varchar(1000) NOT NULL,
  `Company_Latitude` varchar(1000) NOT NULL,
  `Company_Longitude` varchar(1000) NOT NULL,
  `Linked_Link` varchar(1000) NOT NULL,
  `PayPal_Account` varchar(1000) NOT NULL,
  `Site_Mode` varchar(1000) NOT NULL,
  `PayPal_Signature_Key` varchar(1000) NOT NULL,
  `Site_PayPal_Mode` varchar(1000) NOT NULL,
  `PayPal_Password` varchar(1000) NOT NULL,
  `PayPal_Username` varchar(1000) NOT NULL,
  `Facebook_App` varchar(1000) NOT NULL,
  `Facebook_Secret` varchar(1000) NOT NULL,
  `Google_Secret` varchar(1000) NOT NULL,
  `Google_Client` varchar(1000) NOT NULL,
  `Google_Developer` varchar(1000) NOT NULL,
  `Recaptcha_Site` varchar(1000) NOT NULL,
  `Recaptcha_Secret` varchar(1000) NOT NULL,
  `Annual_Plan` varchar(1000) NOT NULL,
  `Instagram_Page` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_settings`
--

INSERT INTO `d6f4fad3ds20d1c_settings` (`id`, `Site_Name`, `Site_Title`, `Meta_Keyword`, `Meta_Description`, `Facebook_Page`, `Twitter_Page`, `Google_Page`, `Company_Address`, `Company_Contact_Number`, `Company_Contact_Email`, `Company_Favicon`, `Company_Logo`, `About_Company`, `Company_Latitude`, `Company_Longitude`, `Linked_Link`, `PayPal_Account`, `Site_Mode`, `PayPal_Signature_Key`, `Site_PayPal_Mode`, `PayPal_Password`, `PayPal_Username`, `Facebook_App`, `Facebook_Secret`, `Google_Secret`, `Google_Client`, `Google_Developer`, `Recaptcha_Site`, `Recaptcha_Secret`, `Annual_Plan`, `Instagram_Page`) VALUES
(1, 'Wedding', 'Wedding', 'Wedding', 'Wedding,directid', 'https://www.facebook.com/directID', '', 'https://plus.google.com/', '99 Duxton Road Singapore 089543', '(658) 753-0733', 'letschat@direct-id.sg', '', '', 'We are here to provide more information or answer any questions you may have and uncover the best interior designers. ', '36.778259', '-119.417931', 'https://www.linkedin.com/company-beta/13363102/', 'dw@direct-id.sg', '', 'AFcWxV21C7fd0v3bYYYRCpSSRl31AhTB2zKmxAPVC-6bL4kn78hqTNIO', '', 'G4B3YAPNXXFWR2QW', 'dw_api1.direct-id.sg', '2275678072657979', '9359a0d20ff4c97f248c646c2a6f0b56', 'uz2Ht2SAb5XU7k7Z3vxqeG--', '355853326856-ikk87s50o9dd7l56pemp2h3o9tnpjkn9.apps.googleusercontent.com', 'AIzaSyCqT269Czc5EIAonh1Ib2w3SW2_S5cGRPM', '', '', '60', 'https://www.instagram.com/direct_id.sg/');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_skills_category`
--

CREATE TABLE `d6f4fad3ds20d1c_skills_category` (
  `sc_id` int(255) NOT NULL,
  `sc_title` varchar(255) NOT NULL,
  `sc_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_skills_category`
--

INSERT INTO `d6f4fad3ds20d1c_skills_category` (`sc_id`, `sc_title`, `sc_date_added`) VALUES
(3, 'Software', '2017-06-10 08:12:47'),
(4, 'Planning', '2017-06-10 08:12:56'),
(5, 'Project Management', '2017-06-10 08:13:06'),
(6, 'Residential Interior Design Consultancy', '2017-08-17 22:36:54'),
(7, 'Commercial Interior Design Consultancy', '2017-08-18 08:27:12'),
(8, 'Interior Styling', '2017-06-10 08:14:10'),
(9, 'Space Planning', '2017-08-08 20:34:03'),
(10, 'Small Space Specialist', '2017-08-08 20:34:16'),
(11, 'Free Hand Sketch', '2017-08-08 20:34:32'),
(12, 'Furniture Procurement', '2017-08-08 20:34:50'),
(13, 'Qualified Specialist', '2018-01-11 23:31:08'),
(14, 'Carpentry Specialist', '2017-08-18 08:26:49'),
(15, 'Conservation Building', '2017-08-18 08:29:20'),
(16, 'Restoration', '2017-08-18 08:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_skills_subcategory`
--

CREATE TABLE `d6f4fad3ds20d1c_skills_subcategory` (
  `ssc_id` int(255) NOT NULL,
  `ssc_parent_id` int(255) NOT NULL,
  `ssc_parent_title` varchar(255) NOT NULL,
  `ssc_date_added` datetime NOT NULL,
  `ssc_type` enum('site','custom') NOT NULL DEFAULT 'site',
  `ssc_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_skills_subcategory`
--

INSERT INTO `d6f4fad3ds20d1c_skills_subcategory` (`ssc_id`, `ssc_parent_id`, `ssc_parent_title`, `ssc_date_added`, `ssc_type`, `ssc_user_id`) VALUES
(1, 3, '3D Max', '2017-06-10 08:15:36', 'site', NULL),
(3, 3, 'Auto Cad', '2017-06-10 08:15:47', 'site', NULL),
(4, 4, 'Budget planning', '2017-06-10 08:16:06', 'site', NULL),
(7, 7, 'Retail', '2017-09-27 01:10:24', 'site', NULL),
(9, 0, '3D designing', '2017-08-06 00:00:00', 'custom', 85),
(10, 0, '3D Designing', '2017-08-06 00:00:00', 'custom', 85),
(11, 0, 'test skill', '2017-08-06 00:00:00', 'custom', 64),
(12, 0, 'Creative', '2017-08-08 00:00:00', 'custom', 29),
(13, 4, 'Hardworking', '2017-08-08 00:00:00', 'custom', 29),
(14, 0, 'Laughing', '2017-08-09 00:00:00', 'custom', 65),
(15, 0, 'Madness', '2017-08-09 00:00:00', 'custom', 65),
(16, 0, 'Game', '2017-08-09 00:00:00', 'custom', 65),
(17, 0, 'Very Good', '2017-08-09 00:00:00', 'custom', 65),
(18, 6, 'HDB/ CONDO', '2017-08-18 08:27:49', 'site', NULL),
(19, 6, 'Landed', '2017-08-18 08:28:38', 'site', NULL),
(20, 3, 'Sketchup 3D', '2017-08-18 08:39:20', 'site', NULL),
(21, 3, 'Revit', '2017-08-18 08:40:00', 'site', NULL),
(23, 16, 'Furniture', '2017-08-18 08:40:53', 'site', NULL),
(24, 16, 'Interior architecture', '2017-08-18 08:41:24', 'site', NULL),
(25, 0, 'timeline planning', '2017-09-22 00:00:00', 'custom', 98),
(26, 15, 'space planning', '2017-09-22 00:00:00', 'custom', 98),
(27, 3, 'Virtual Walkthrough', '2017-09-27 01:09:22', 'site', NULL),
(28, 7, 'F & B', '2017-09-27 01:10:48', 'site', NULL),
(29, 7, 'Office', '2017-09-27 01:12:14', 'site', NULL),
(30, 0, 'Small Space Specialist', '2017-09-27 00:00:00', 'custom', 106),
(31, 0, 'Free Hand Sketch', '2017-09-27 00:00:00', 'custom', 108),
(32, 0, 'Tesdd', '2017-10-27 00:00:00', 'custom', 116),
(33, 0, 'sadadadasdad', '2017-11-30 00:00:00', 'custom', 118),
(34, 0, 'asdada', '2017-11-30 00:00:00', 'custom', 118),
(35, 0, 'sadsadaa', '2017-11-30 00:00:00', 'custom', 118),
(36, 0, 'ddddddsd', '2017-11-30 00:00:00', 'custom', 118),
(37, 0, 'sssssss', '2017-11-30 00:00:00', 'custom', 118),
(38, 0, 'asdsadsa', '2017-11-30 00:00:00', 'custom', 118),
(42, 8, 'Furniture design', '2018-01-11 23:28:31', 'site', NULL),
(44, 0, 'Adobe PS', '2018-01-11 00:00:00', 'custom', 136),
(45, 8, 'Furniture Sourcing', '2018-01-11 23:28:55', 'site', NULL),
(46, 13, 'Fire Safety Standards', '2018-01-11 23:31:29', 'site', NULL),
(47, 6, 'Architecture', '2018-01-11 23:31:51', 'site', NULL),
(48, 13, 'Professional Engineer', '2018-01-11 23:32:14', 'site', NULL),
(49, 13, 'Green mark', '2018-01-11 23:33:23', 'site', NULL),
(50, 6, 'Landscape', '2018-01-11 23:34:15', 'site', NULL),
(51, 0, 'Negotiation', '2018-01-19 00:00:00', 'custom', 146),
(52, 0, 'The Final 20% finishing touch to each home', '2018-01-21 00:00:00', 'custom', 132),
(53, 0, 'Sweet Home 3D', '2018-02-08 00:00:00', 'custom', 145),
(54, 0, 'Freelance ', '2018-05-21 00:00:00', 'custom', 166),
(55, 0, 'Design & Build', '2018-05-21 00:00:00', 'custom', 166),
(56, 0, 'Commerical space planning', '2018-05-26 00:00:00', 'custom', 166),
(57, 0, 'Conceptual spaces ', '2018-06-01 00:00:00', 'custom', 178),
(58, 0, 'Material selection', '2018-06-01 00:00:00', 'custom', 178),
(59, 0, 'Design Concept', '2018-06-01 00:00:00', 'custom', 179),
(60, 0, 'Photosop', '2018-06-01 00:00:00', 'custom', 179),
(61, 0, 'Health Care Speciality', '2018-06-03 00:00:00', 'custom', 181),
(62, 0, 'Material Development', '2018-06-03 00:00:00', 'custom', 181),
(63, 0, 'Award Winning Speciality', '2018-06-03 00:00:00', 'custom', 181),
(64, 0, 'Photoshop', '2018-06-12 00:00:00', 'custom', 187),
(65, 0, 'Coordination work', '2018-07-06 00:00:00', 'custom', 193);

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_skill_endorse`
--

CREATE TABLE `d6f4fad3ds20d1c_skill_endorse` (
  `se_id` int(20) NOT NULL,
  `se_designer_id` int(20) NOT NULL,
  `se_skill_id` int(20) NOT NULL,
  `se_user_id` int(20) NOT NULL,
  `se_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_skill_endorse`
--

INSERT INTO `d6f4fad3ds20d1c_skill_endorse` (`se_id`, `se_designer_id`, `se_skill_id`, `se_user_id`, `se_date`) VALUES
(26, 100, 4, 104, '2017-09-26'),
(27, 109, 3, 112, '2017-10-01'),
(28, 109, 4, 112, '2017-10-01'),
(29, 109, 5, 112, '2017-10-01'),
(30, 109, 7, 112, '2017-10-01'),
(31, 109, 18, 112, '2017-10-01'),
(32, 109, 19, 112, '2017-10-01'),
(33, 109, 29, 112, '2017-10-01'),
(34, 106, 28, 114, '2017-10-27'),
(35, 106, 18, 114, '2017-10-27'),
(36, 116, 19, 113, '2017-10-27'),
(37, 118, 37, 106, '2017-12-06'),
(38, 118, 36, 106, '2017-12-06'),
(39, 118, 35, 106, '2017-12-06'),
(40, 118, 33, 106, '2017-12-06'),
(41, 109, 3, 129, '2018-01-08'),
(42, 109, 4, 129, '2018-01-08'),
(43, 109, 7, 129, '2018-01-08'),
(44, 109, 19, 129, '2018-01-08'),
(46, 109, 18, 129, '2018-01-08'),
(47, 136, 1, 129, '2018-01-26'),
(48, 136, 3, 129, '2018-01-26'),
(49, 136, 20, 129, '2018-01-26'),
(50, 136, 44, 129, '2018-01-26'),
(52, 145, 29, 129, '2018-02-27'),
(53, 145, 53, 129, '2018-02-27'),
(54, 145, 4, 129, '2018-02-27'),
(55, 145, 18, 129, '2018-02-27'),
(56, 133, 3, 129, '2018-02-27'),
(57, 133, 4, 129, '2018-02-27'),
(58, 133, 7, 129, '2018-02-27'),
(59, 133, 18, 129, '2018-02-27'),
(60, 133, 29, 129, '2018-02-27'),
(61, 134, 3, 129, '2018-02-27'),
(62, 134, 4, 129, '2018-02-27'),
(63, 134, 18, 129, '2018-02-27'),
(64, 139, 1, 129, '2018-02-27'),
(65, 139, 3, 129, '2018-02-27'),
(67, 139, 18, 129, '2018-02-27'),
(68, 139, 19, 129, '2018-02-27'),
(69, 139, 29, 129, '2018-02-27'),
(70, 139, 42, 129, '2018-02-27'),
(71, 139, 45, 129, '2018-02-27'),
(73, 139, 47, 129, '2018-02-27'),
(74, 152, 24, 129, '2018-02-28'),
(75, 152, 26, 129, '2018-02-28'),
(76, 152, 18, 129, '2018-02-28'),
(77, 152, 4, 129, '2018-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_sub_category`
--

CREATE TABLE `d6f4fad3ds20d1c_sub_category` (
  `sub_cat_id` int(255) NOT NULL,
  `sub_cat_title` varchar(255) NOT NULL,
  `sub_cat_parent_id` int(255) NOT NULL,
  `sub_cat_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_sub_category`
--

INSERT INTO `d6f4fad3ds20d1c_sub_category` (`sub_cat_id`, `sub_cat_title`, `sub_cat_parent_id`, `sub_cat_date_added`) VALUES
(14, 'F & B', 13, '2018-01-02 23:16:36'),
(15, 'Retail', 13, '2018-01-02 23:16:46'),
(16, 'Office', 13, '2018-01-02 23:17:02'),
(17, 'others', 13, '2018-01-02 23:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_team`
--

CREATE TABLE `d6f4fad3ds20d1c_team` (
  `team_id` int(11) NOT NULL,
  `team_img` varchar(225) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `team_occupation` varchar(100) DEFAULT NULL,
  `team_facebook` varchar(500) DEFAULT NULL,
  `team_twitter` varchar(500) DEFAULT NULL,
  `team_instagram` varchar(500) DEFAULT NULL,
  `team_google` varchar(500) DEFAULT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d6f4fad3ds20d1c_team`
--

INSERT INTO `d6f4fad3ds20d1c_team` (`team_id`, `team_img`, `team_name`, `team_occupation`, `team_facebook`, `team_twitter`, `team_instagram`, `team_google`, `added_date`) VALUES
(1, '55560rebrand-bg-image.jpg', 'gf', 'http://www.direct-id.sg/directprivateid/add-team', 'http://www.direct-id.sg/directprivateid/add-team', 'http://www.direct-id.sg/directprivateid/add-team', 'http://www.direct-id.sg/directprivateid/add-team', 'http://www.direct-id.sg/directprivateid/add-team', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `d6f4fad3ds20d1c_templates`
--

CREATE TABLE `d6f4fad3ds20d1c_templates` (
  `temp_id` int(11) NOT NULL,
  `temp_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_text` text COLLATE utf8_unicode_ci NOT NULL,
  `temp_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d6f4fad3ds20d1c_templates`
--

INSERT INTO `d6f4fad3ds20d1c_templates` (`temp_id`, `temp_key`, `temp_title`, `temp_subject`, `temp_text`, `temp_updated_on`) VALUES
(1, 'reset_password', 'Reset Password Email', 'Reset Your Password', '<div style=\"width:570px;margin:0 auto;font-family:Arial, Helvetica, sans-serif;background:url({emailBg1})\">\r\n<div style=\"height: 244px;max-width: 380px;padding: 149px 20px 145px 20px;margin: 0 auto;\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:7px; text-align:left;color:#2c3848;\">\r\n			<div style=\"color:#2c3848;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p style=\"color:#2c3848;\">Welcome to {site_title}</p>\r\n\r\n			<p style=\"color:#2c3848;\">To reset your password please click the button below:</p>\r\n\r\n			<p style=\"text-align:center\"><a href=\"{verification_link}\" style=\"border-radius: 6px;padding: 8px 12px;font-size: 14px;font-weight: bold;text-decoration: none;color: #2c3848;padding: 15px 10px;display: block;max-width: 190px;margin: 0 auto;border: 1px solid;\">Reset Password</a></p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>', '2017-09-05 08:16:59'),
(2, 'register_template', 'Registration Email', 'Registration Successful.', '<div style=\"width:570px;margin:0 auto;font-family:Arial, Helvetica, sans-serif;background:url({emailBg1})\">\r\n<div style=\"height: 244px;max-width: 380px;padding: 149px 20px 145px 20px;margin: 0 auto;\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:10px; text-align:left;color:#2c3848;\">\r\n			<div style=\"color:#2c3848;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p style=\"color:#2c3848;\">Welcome to {site_title}</p>\r\n\r\n			<p style=\"color:#2c3848;\">Thank you for using {site_title}! Your registration has been done successfully. Please verify your email address via below link:</p>\r\n\r\n			<p style=\"text-align:center\"><a href=\"{verification_link}\" style=\"border-radius: 6px;padding: 8px 12px;font-size: 14px;font-weight: bold;text-decoration: none;color: #2c3848;padding: 15px 10px;display: block;max-width: 190px;margin: 0 auto;border: 1px solid;\">Verify Email Address</a></p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n', '2017-09-05 08:17:49'),
(3, 'contact_us_admin', 'Contact Us Admin Format', 'Contact Us Mail', '<div style=\"max-width:700px;line-height:0px;background:url({emailBg});margin: 0 auto;background-size:cover;background-position:center;background-color:#3e3e3e;\">\r\n<div style=\"max-width:550px;font-family:Arial, Helvetica, sans-serif; margin:0 auto;padding:80px;text-align:center;background-position:center;background-size:cover;\">\r\n<div>\r\n<div style=\"color:#ffffff;text-align:center;padding:30px 0;margin:0; font-size:24px;letter-spacing:2px;padding-top:0px;\"><img alt=\"\" src=\"{site_logo}\" style=\"display: inline-block;vertical-align: middle;max-width: 26px;margin-right: 7px;\" /><span style=\"vertical-align: middle;font-size: 27px;text-transform: uppercase;\">{site_title}</span></div>\r\n</div>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:url({black_img});background-color:rgba(0,0,0,0.5);box-shadow:3px 3px 9px rgba(0, 0, 0, 0.51); margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:25px; text-align:left;color:#fff;\">\r\n			<div style=\"margin:10px 0px;color:#fff;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p><strong>Contact Information:</strong></p>\r\n\r\n			<div style=\"color:#fff;\">\r\n			<table cellpadding=\"4\" cellspacing=\"2\" style=\"color:#fff; font-size:13px; text-align:left; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Full Name :</strong></td>\r\n						<td>{guest_name}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Email Address :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_email}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Phone No. :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_phone}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Subject :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_subject}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Message :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_message}</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<p>&nbsp;</p>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div style=\"line-height:20px;font-family:Arial, Helvetica, sans-serif; padding:4px;font-size:13px;text-align:center;color:#fff;letter-spacing: 2px;padding:40px 0px;\">\r\n<p>Copyright &copy; {year} {site_title}. All rights reserved.</p>\r\n\r\n<p><strong><a href=\"{website_link}\" style=\"color:inherit;color:#fff;\">Take a visit</a></strong></p>\r\n</div>\r\n</div>\r\n', '2017-08-02 02:49:30'),
(4, 'contact_us_user', 'Contact Us User Mail Format', 'Contact Us Mail ', '<div style=\"width:570px;margin:0 auto;font-family:Arial, Helvetica, sans-serif;background:url({emailBg1})\">\r\n<div style=\"height: 244px;max-width: 380px;padding: 149px 20px 145px 20px;margin: 0 auto;\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:10px; text-align:left;color:#2c3848;\">\r\n			<div style=\"margin:10px 0px;color:#2c3848;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p style=\"color:#2c3848;\">Welcome to {site_title}</p>\r\n\r\n			<p style=\"color:#2c3848;\">We are here to help you. We will contact you soon!</p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n', '2017-09-05 08:18:32'),
(5, 'admin_reset_password', 'Admin Reset Password Email', 'Reset Password.', '<div style=\"width:570px;margin:0 auto;font-family:Arial, Helvetica, sans-serif;background:url({emailBg1})\">\r\n<div style=\"height: 244px;max-width: 380px;padding: 149px 20px 145px 20px;margin: 0 auto;\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:10px; text-align:left;color:#2c3848;\">\r\n			<div style=\"margin:10px 0px;color:#2c3848;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p style=\"color:#2c3848;\">To reset your password please click the button below:</p>\r\n\r\n			<p style=\"text-align:center\"><a href=\"{verification_link}\" style=\"border-radius: 6px;padding: 8px 12px;font-size: 14px;font-weight: bold;text-decoration: none;color: #2c3848;padding: 15px 10px;display: block;max-width: 190px;margin: 0 auto;border: 1px solid;\">Reset Password</a></p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n', '2017-09-05 08:20:07'),
(6, 'designer_contact', 'Designer Contact Format', 'Designer Contact Mail', '<div style=\"max-width:700px;line-height:0px;background:url({emailBg});margin: 0 auto;background-size:cover;background-position:center;background-color:#3e3e3e;\">\r\n<div style=\"max-width:550px;font-family:Arial, Helvetica, sans-serif; margin:0 auto;padding:80px;text-align:center;background-position:center;background-size:cover;\">\r\n<div>\r\n<div style=\"color:#ffffff;text-align:center;padding:30px 0;margin:0; font-size:24px;letter-spacing:2px;padding-top:0px;\"><img alt=\"\" src=\"{site_logo}\" style=\"display: inline-block;vertical-align: middle;max-width: 26px;margin-right: 7px;\" /><span style=\"vertical-align: middle;font-size: 27px;text-transform: uppercase;\">{site_title}</span></div>\r\n</div>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:url({black_img});background-color:rgba(0,0,0,0.5);box-shadow:3px 3px 9px rgba(0, 0, 0, 0.51); margin:5px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"line-height:20px; padding:25px; text-align:left;color:#fff;\">\r\n			<div style=\"margin:10px 0px;color:#fff;\"><strong>Dear {user_name}</strong></div>\r\n\r\n			<p><strong>Contact Information:</strong></p>\r\n\r\n			<div style=\"color:#fff;\">\r\n			<table cellpadding=\"4\" cellspacing=\"2\" style=\"color:#fff; font-size:13px; text-align:left; width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Full Name :</strong></td>\r\n						<td>{guest_name}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Email Address :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_email}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Phone No. :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_phone}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Subject :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_subject}</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"width:30%\"><strong>Message :</strong></td>\r\n						<td style=\"vertical-align:top\">{guest_message}</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<p>&nbsp;</p>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div style=\"line-height:20px;font-family:Arial, Helvetica, sans-serif; padding:4px;font-size:13px;text-align:center;color:#fff;letter-spacing: 2px;padding:40px 0px;\">\r\n<p>Copyright &copy; {year} {site_title}. All rights reserved.</p>\r\n\r\n<p><strong><a href=\"{website_link}\" style=\"color:inherit;color:#fff;\">Take a visit</a></strong></p>\r\n</div>\r\n</div>\r\n', '2018-07-20 06:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `fe270ce0e_clients`
--

CREATE TABLE `fe270ce0e_clients` (
  `dd9cbbf_client_id` int(11) NOT NULL,
  `dd9cbbf_client_type` enum('designer','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `dd9cbbf_client_oauth_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_oauth_provider` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_agree` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `dd9cbbf_client_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_skills` text COLLATE utf8_unicode_ci,
  `dd9cbbf_client_lat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_long` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_company_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_company_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_apartment_design` int(10) DEFAULT NULL,
  `dd9cbbf_client_landed_housing_design` int(10) DEFAULT NULL,
  `dd9cbbf_client_cafe_design` int(10) DEFAULT NULL,
  `dd9cbbf_client_project_management` int(10) DEFAULT NULL,
  `dd9cbbf_client_interior_styling` int(10) DEFAULT NULL,
  `dd9cbbf_client_accomplishments` text COLLATE utf8_unicode_ci,
  `dd9cbbf_client_style_one` int(10) DEFAULT NULL,
  `dd9cbbf_client_style_two` int(10) DEFAULT NULL,
  `dd9cbbf_client_style_three` int(10) DEFAULT NULL,
  `dd9cbbf_client_style_industrial` float DEFAULT NULL,
  `dd9cbbf_client_cover_img` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_inspiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_role_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_first_project` int(20) DEFAULT NULL,
  `dd9cbbf_client_project_completed` int(20) DEFAULT NULL,
  `dd9cbbf_client_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=>Not Active,1=>Active',
  `dd9cbbf_client_paid_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `dd9cbbf_client_subscription_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dd9cbbf_client_plan_id` int(10) DEFAULT NULL,
  `dd9cbbf_client_plan_type` enum('free','month','year') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'free',
  `dd9cbbf_client_payment_type` enum('card','paypal') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'paypal',
  `dd9cbbf_client_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dd9cbbf_client_verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'It is used to verify client email address(0=>not Verified,1=>Verified)',
  `dd9cbbf_client_registered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fe270ce0e_clients`
--

INSERT INTO `fe270ce0e_clients` (`dd9cbbf_client_id`, `dd9cbbf_client_type`, `dd9cbbf_client_oauth_id`, `dd9cbbf_client_oauth_provider`, `dd9cbbf_client_email`, `dd9cbbf_client_agree`, `dd9cbbf_client_password`, `dd9cbbf_client_first_name`, `dd9cbbf_client_last_name`, `dd9cbbf_client_picture`, `dd9cbbf_client_contact_number`, `dd9cbbf_client_address`, `dd9cbbf_client_skills`, `dd9cbbf_client_lat`, `dd9cbbf_client_long`, `dd9cbbf_client_country`, `dd9cbbf_client_company_name`, `dd9cbbf_client_company_address`, `dd9cbbf_client_apartment_design`, `dd9cbbf_client_landed_housing_design`, `dd9cbbf_client_cafe_design`, `dd9cbbf_client_project_management`, `dd9cbbf_client_interior_styling`, `dd9cbbf_client_accomplishments`, `dd9cbbf_client_style_one`, `dd9cbbf_client_style_two`, `dd9cbbf_client_style_three`, `dd9cbbf_client_style_industrial`, `dd9cbbf_client_cover_img`, `dd9cbbf_client_postal_code`, `dd9cbbf_client_inspiration`, `dd9cbbf_client_role_model`, `dd9cbbf_client_first_project`, `dd9cbbf_client_project_completed`, `dd9cbbf_client_status`, `dd9cbbf_client_paid_status`, `dd9cbbf_client_subscription_id`, `dd9cbbf_client_plan_id`, `dd9cbbf_client_plan_type`, `dd9cbbf_client_payment_type`, `dd9cbbf_client_activation_key`, `dd9cbbf_client_verified`, `dd9cbbf_client_registered_on`) VALUES
(104, 'user', NULL, NULL, 'chua.weiming@yahoo.com', '1', '7f2e2f315081a6661abcf40e9ab4db63', 'chua', 'wee ming', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', 'c09e172cf8f6a3f93c83bde85794de16', '1', '2017-09-26 01:53:05'),
(120, 'user', '10156002088649533', 'facebook', 'quan5047@msn.com', '0', '35APWPlrQP', 'Ooi', 'ZhiQuan', '1512614373_.png', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', '', '1', '2017-12-06 21:39:34'),
(121, 'user', NULL, NULL, 'jerinesohwm@gmail.com', '1', '0da3dd0c0ff1abfacc7d8a09227a2b9c', 'Jerine', 'Soh', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', '40ad464d2e3485b9e76fbffdbfe3b74b', '1', '2017-12-17 11:07:01'),
(129, 'user', '10156301878030476', 'facebook', 'drakewoon@hotmail.com', '0', 'L1Mt28TVb5', 'Drake', 'Woon', '15170194741517019474-362.JPG', '88999999', 'sdsdsd', NULL, '', '', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', '', '1', '2018-01-08 05:08:58'),
(130, 'designer', NULL, NULL, 'letschat@direct-id.sg', '1', 'db47b5449cbb3ecf53d0abf4650732c8', 'Cheryl', 'W', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, 1, 'free', 'paypal', 'ac92e6fffb3c19d11722cfff84b37391', '1', '2018-01-09 22:54:00'),
(131, 'designer', NULL, NULL, 'jeff@cre8space.com.sg', '1', '0cb991c8069d4ef37edfe12a529914b5', 'Jeff', 'Loo', '1515557429-35626.jpg', '+6597577416', 'Kim Keat Link Singapore', 'a:6:{i:3;s:1:\"3\";i:20;s:1:\"3\";i:18;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";}', '1.3302379', '103.85524450000003', '196', 'Cre8space', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 6, 5, NULL, '15155573121515557312-48137.jpg', NULL, '', '', 2010, 105, '1', '0', NULL, 1, 'free', 'paypal', '65699d2ef66b4126705761e3aaf3d001', '1', '2018-01-09 22:57:56'),
(132, 'designer', NULL, NULL, 'mf@ab1abode.com', '1', 'ffdb5d4d9bbbb5413d0d524438f827fe', 'Matthew', 'Foo', '1524737298-9513.jpeg', '91789248', '10 Anson Road, #05-17, International Plaza', 'a:11:{i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:50;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";s:5:\"other\";a:1:{i:0;i:52;}}', '1.2760015', '103.84591999999998', '196', 'AB1 LLP', '10 Anson Road, #05-17, International Plaza', NULL, NULL, NULL, NULL, NULL, NULL, 15, 14, 16, NULL, '15166248191516624819-99167.JPG', NULL, '', 'Nate Berkus, Nicole Curtis, Chip &amp;amp;amp; Joanna Gaines', 2013, 9, '1', '0', NULL, 1, 'free', 'paypal', 'dab3ef9fb0e02dfe7fad5c18fb3774cc', '1', '2018-01-11 11:30:18'),
(133, 'designer', NULL, NULL, 'willfu.theroomakers@gmail.com', '1', 'bbbbbe517d38eaf94e75548dae85585f', 'Will', 'Fu', '1515720227-22422.jpg', '+6591090242', 'Toa Payoh Singapore', 'a:5:{i:3;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";}', '1.3343035', '103.85632650000002', '196', 'The Roommakers', '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 4, 17, NULL, '15157203791515720379-21252.JPG', NULL, '', '', 2009, 99, '1', '0', NULL, 1, 'free', 'paypal', '8ea8420813d1b4df0b307c8201fab210', '1', '2018-01-11 20:23:17'),
(134, 'designer', NULL, NULL, 'zoeywong.theroomakers@gmail.com', '1', 'eeeb4234c3d3f820d668cce10526187c', 'Zoey', 'Wong', '1515725025-55084.jpg', '+6581885484', 'Toa Payoh', 'a:3:{i:3;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";}', '', '', '196', 'The Roommakers', 'Toa Payoh', NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, 7, NULL, '1515724974-5122.jpg', NULL, '', '', 2009, 51, '1', '0', NULL, 1, 'free', 'paypal', '75bdda2173015950646824eb8162cb69', '1', '2018-01-11 21:14:46'),
(135, 'designer', NULL, NULL, 'agnesteohtheroomakers@gmail.com', '1', '138dc337dfd1f186cb09489c6d70c196', 'Agnes', 'Teoh', '15157275201515727520-90235.JPG', '+6585155628', 'Toa Payoh Singapore', 'a:7:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";}', '1.3343035', '103.85632650000002', '196', 'The Roommakers', 'Toa Payoh', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 13, NULL, '1515727695-30769.jpg', NULL, '', '', 2016, 3, '1', '0', NULL, 1, 'free', 'paypal', '15f050fae09fccb0cb97f56addbdb794', '1', '2018-01-11 22:23:47'),
(136, 'designer', NULL, NULL, 'sj@roootstudio.com', '1', 'e668080f2b92b42239b1b4c5c8fef08a', 'Shao Jie', 'Yeo', '1515728927-96663.jpg', '+6591171310', 'Kitchener Road Singapore', 'a:4:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";s:5:\"other\";a:1:{i:0;i:44;}}', '1.3097324', '103.8573824', '196', 'Rooot Studio', '137 Kitchener Road #03-01', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '15157308881515730888-41870.jpg', NULL, '', '', 2012, 63, '1', '0', NULL, 1, 'free', 'paypal', '7476c3dce5c223911c473e8b98ea25a0', '1', '2018-01-11 22:40:21'),
(137, 'designer', NULL, NULL, 'ziyun@elpisinterior.com.sg', '1', 'dfdf95c76f5b13ea6a776074deb177c2', 'Zack', 'Liew', '1515731872-74143.jpg', '+6583828400', 'Singapore', 'a:5:{i:3;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:42;s:1:\"8\";i:45;s:1:\"8\";}', '1.3553794', '103.86774439999999', '196', 'Elpis Interior Design Pte Ltd', '4A Pahang Street', NULL, NULL, NULL, NULL, NULL, NULL, 6, 4, 18, NULL, '1515731862-43744.jpg', NULL, '', '', 2014, 38, '1', '0', NULL, 1, 'free', 'paypal', '7d9d50ab5c538a2bba653033e58444be', '1', '2018-01-11 23:24:13'),
(138, 'designer', NULL, NULL, 'lzxjane@gmail.com', '1', 'af6c70913d1449e9edd20440d31e9473', 'Jane', 'Liang', '1515732904-7684.jpg', '+6594309577', 'Jalan Pemimpin Singapore', 'a:3:{i:4;s:1:\"4\";i:18;s:1:\"6\";i:45;s:1:\"8\";}', '1.3509676', '103.84217920000003', '196', 'Belazel\'s Craftsmen', 'Jalan Peminpin', NULL, NULL, NULL, NULL, NULL, NULL, 6, 4, 0, NULL, '15157330601515733060-19025.jpg', NULL, '', '', 2013, 29, '1', '0', NULL, 1, 'free', 'paypal', '144ed3a51ff5b74bf33a726f93e69add', '1', '2018-01-11 23:53:52'),
(139, 'designer', NULL, NULL, 'antsinteriorstudio@gmail.com', '1', '95829c8995a7e1885180e3ca1746147a', 'Vick', 'S', '1515737590-39082.jpg', '+6591859344', 'Singapore', 'a:12:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:47;s:1:\"6\";i:50;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";}', '1.3553794', '103.86774439999999', '196', 'Ants Interior Studio', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1515738399-26387.jpg', NULL, '', '', 2017, 31, '1', '0', NULL, 1, 'free', 'paypal', '00c5048723a14c13457c5776c2f5df0b', '1', '2018-01-12 01:11:53'),
(140, 'designer', NULL, NULL, 'steven@colourboxinterior.com.sg', '1', '7e0ba3d572f9dafb864acc3a4984549f', 'Steven', 'Ong', '', '+6582471528', 'Singapore', 'a:5:{i:3;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:42;s:1:\"8\";i:45;s:1:\"8\";}', '1.3553794', '103.86774439999999', '196', 'Colour Box Interior', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', 2004, 100, '1', '0', NULL, 1, 'free', 'paypal', '7754bd9edd3371f9d1188a66c21c8cf8', '1', '2018-01-12 01:30:11'),
(141, 'designer', NULL, NULL, 'antz@cielodesigns.asia', '1', '06eddb9976d7da91d79655c60920665a', 'Immanuel Anthony', 'Huang', '', '+6582332700', 'Singapore', 'a:8:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:27;s:1:\"3\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";}', '1.3553794', '103.86774439999999', '196', 'Cielo Designs Pte Ltd', 'Sin Ming Lane', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1515740777-8590.png', NULL, '', '', 2009, 90, '1', '0', NULL, 1, 'free', 'paypal', 'adb380e6c8a361b054adf16d0c3fe3a7', '1', '2018-01-12 01:53:45'),
(143, 'designer', NULL, NULL, 'saykiat29@gmail.com', '1', 'a447b9638634f122432f89861fdd5332', 'Gordon', 'Lim', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'd454df0abc67526c988314305b248322', '1', '2018-01-16 04:47:46'),
(144, 'designer', NULL, NULL, 'victoryeong66@gmail.com', '1', '793dce3e35537da4600b5505dbad5274', 'Victor', 'Yeong', '', '93682091', 'Blk 1014, geylang east ave 3', NULL, '', '', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '', '1', '2018-02-01 04:05:28'),
(145, 'designer', NULL, NULL, 'aellex.yeo@nid.com.sg', '1', 'cb3caa82aa68e4cfd00fbce0fe089c6b', 'Aellex', 'Yeo', '15190972361519097236-48505.jpg', '82525636', 'Victory Centre 110 Geylang Lorong 23 #02-10', 'a:8:{i:4;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:45;s:1:\"8\";s:5:\"other\";a:1:{i:0;i:53;}}', '', '', '196', 'NID Interior / Blackboard Consultants Pte Ltd', 'Victory Centre 110 Geylang Lorong 23 #02-10', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 5, NULL, '1518138995-71025.jpg', NULL, 'Simplicity is the ultimate sophistication (Check out my reviews @ https://www.facebook.com/pg/NidDesignStudio/reviews/?ref=page_internal)', 'Leonardo da Vinci', 2015, 48, '1', '0', NULL, 1, 'free', 'paypal', '525f8f9077e5c8121c3b0076bce9e4e3', '1', '2018-02-02 02:02:33'),
(147, 'designer', NULL, NULL, 'dinitial.ben@gmail.com', '1', 'f8f4c525d5cbf4f5047a564637089779', 'Benedict', 'Chan', '', '+6592993747', '366a Tanjong Katong Road Singapore', 'a:13:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:45;s:1:\"8\";i:49;s:2:\"13\";i:26;s:2:\"15\";}', '1.3029856', '103.89667750000001', '196', 'D\'initial Concept Pte Ltd', '366A Tanjong Katong Road', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 5, NULL, '1517605505-97340.jpg', NULL, '', '', 0, 52, '1', '0', NULL, 1, 'free', 'paypal', '71e8fb96c83290d6d6846bd197b46f38', '1', '2018-02-02 15:49:00'),
(148, 'designer', NULL, NULL, 'lcs@bespokeid.sg', '1', '8dc1d59d7e2230a539d199a8dc746ce1', 'Chi Siang', 'Low', '', '+6585222633', 'blk 455C Ang mo kio street 44 #12-25 singapore 563455', NULL, '', '', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '516ef3ec373dfbe54b0a9964246cb1b0', '1', '2018-02-02 16:52:17'),
(149, 'designer', NULL, NULL, 'magdalene@karpentree.sg', '1', '2996e0113c6028eff7a267959e84d0ef', 'Magdalene', 'Xie', '15179271321517927132-88014.JPG', '+6598894246', '201 Henderson Road, Apex @ Henderson, #04-11/12', 'a:15:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";}', '1.2825215', '103.82045219999998', '196', 'Karpentree Ptd Ltd', '10 Anson Road, International Plaza #26-04 S(079903)', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 15, NULL, '15179274981517927498-65731.jpg', NULL, 'Interiors is the natural projection of one\'s Soul', 'Kelly Hoppen', 2002, 69, '1', '0', NULL, 1, 'free', 'paypal', 'fa3dd383137238364ada7aa7de9912e6', '1', '2018-02-06 06:28:29'),
(150, 'designer', NULL, NULL, 'randalltan@nid.com.sg', '1', '1cd83926503f887bd781bf5c3aa8887b', 'Randall', 'Tan', '', '+6593868081', '110 Lorong 23 Geylang, Victory Centre, #02-10, Singapore 388410', 'a:6:{i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";}', '1.3182598', '103.88137860000006', '196', 'NI Interior', '110 Geylang Lor 23 Victory Centre #02-10 Singapore 388410', NULL, NULL, NULL, NULL, NULL, NULL, 18, 13, 0, NULL, '15181390131518139012-19068.jpg', NULL, '', '', 2013, 150, '1', '0', NULL, 1, 'free', 'paypal', 'b0abc358c9bdd918d9643f3dd5e1a8a4', '1', '2018-02-08 20:01:35'),
(151, 'designer', NULL, NULL, 'cchdesignworkshop@gmail.com', '1', 'c9c230515738339696ff1b1d9f984614', 'Chia chen', 'Hsiao', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '89c759828c2ed5122bd3d6ba7b05322e', '1', '2018-02-09 02:28:00'),
(152, 'designer', NULL, NULL, 'padinterior@gmail.com', '1', 'e6e0febb6181356da10db260e2279327', 'RIDZUAN', 'NAIB', '1519791365-94784.jpg', '+6581215261', '250 Bishan Street 22, Singapore', 'a:13:{i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";}', '1.361656', '103.84368489999997', '196', 'PADI INTERIORS', '250 BISHAN ST 22', NULL, NULL, NULL, NULL, NULL, NULL, 13, 19, 17, NULL, '1519791613-40189.jpg', NULL, 'MUSIC , ART, CULTURE &amp;amp;amp; TRADITIONS', 'LENNY KRAVITZ', 2017, 1, '1', '0', NULL, 1, 'free', 'paypal', '', '1', '2018-02-14 03:26:12'),
(153, 'designer', NULL, NULL, 'chiahsiao@gmail.com', '1', 'c4d1d39da9745f4b6c89c363cd848206', 'Jeny', 'Hsiao', '', '+6584608324', '245 Tampines Street 21 Singapore', NULL, '1.3531041', '103.94647370000007', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '366b9b39d158c29c236a6824a109f047', '1', '2018-02-14 14:36:35'),
(154, 'user', '10212835328333037', 'facebook', 'r4randal@gmail.com', '0', 'K2CsHoRHXW', 'Randall', 'Tan', '1519023767_.png', '+6593868081', '122 Ang Mo Kio Avenue 3, Singapore', NULL, '1.370211', '103.843297', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', '', '1', '2018-02-19 02:02:47'),
(155, 'designer', NULL, NULL, 'loon@insidestory.sg', '1', '6a987bf963008f3c36ca32a54c7d679e', 'Seong Yin', 'Loon', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'fdbbd89cf22c37ba10a5d661e3aaa9fa', '1', '2018-02-27 12:44:22'),
(156, 'designer', NULL, NULL, 'kevinteng@thesafehaven.com.sg', '1', 'c146e64cc0716acddb77686648c69661', 'Kevin', 'Teng', '', '6591001396', 'Singapore', NULL, '1.3553794', '103.86774439999999', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '853557d27b3adf774485ff5f4533bf72', '1', '2018-03-10 20:38:05'),
(158, 'designer', NULL, NULL, 'spencer.yeong@gmail.com', '1', 'b9e8bdf73a91e1462f4083804baa4bb9', 'Spencer', 'Yeong', '', '+6581116825', 'Singapore', 'a:10:{i:20;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";}', '1.352083', '103.81983600000001', '196', 'Allure Design Studio', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 13, 4, NULL, NULL, NULL, '', '', 2008, 360, '1', '0', NULL, 1, 'free', 'paypal', '52dd4106454fe29e82976785894fc5c6', '1', '2018-03-14 07:35:12'),
(159, 'designer', NULL, NULL, 'alyssa.dropbox01@gmail.com', '1', 'ef7f52d25245c0965a659dc57d7fcf07', 'c', 'cc', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'cc84f9106251479c5921174419fef131', '1', '2018-03-19 10:50:02'),
(160, 'designer', NULL, NULL, 'designer@example.com', '1', '5f4dcc3b5aa765d61d8327deb882cf99', 'example', 'designer', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '4420262534c6af3ded09ad1648a1bd99', '1', '2018-03-27 21:17:43'),
(161, 'user', NULL, NULL, 'user@example.com', '1', '5f4dcc3b5aa765d61d8327deb882cf99', 'Example', 'User', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', 'e7185b49ee4c8b98dc8b5f6a2b7c69b0', '1', '2018-03-28 02:35:44'),
(162, 'designer', NULL, NULL, 'john.tan.ec@gmail.com', '1', 'f1b805c828c8b5e34b01bbbe30033966', 'John', 'Tan', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'cabb590e5c62de8c9bb32135fdb64656', '1', '2018-04-03 03:36:54'),
(163, 'designer', NULL, NULL, 'dw@direct-id.sg', '1', 'd27347275ca718a260455f047f42d506', 'TAN', 'WAN', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '9282a0df3d6ff62b6ef92f7b69cdf85d', '1', '2018-04-18 02:18:09'),
(164, 'designer', NULL, NULL, 'sales.bridgesco@gmail.com', '1', 'e5e2a7314fb9184379844fa21a37352a', 'BAIKUAN', 'GOH', '1524123831-27575.jpg', '+6590271902', '3004 Ubi Avenue 3, Singapore', NULL, '1.3315221', '103.8933849', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'd8c97e58dd94fff2a767e98ac81e62d3', '1', '2018-04-19 03:42:20'),
(165, 'designer', NULL, NULL, 'ceilynhrey_36@yahoo.com', '1', '34bcf4c8215bb62175af9681b6da0836', 'cherie', 'geduriagao', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'a2cf33e0e4e6b90f15d1bcd9984bca3a', '1', '2018-05-08 22:06:56'),
(166, 'designer', NULL, NULL, 'edwinzyx@gmail.com', '1', '05e59610bf4e52824e198a9c982ca389', 'Edwin', 'Chong', '15269085851526908585-34215.jpg', '+6598442538', 'Jurong West, Singapore', 'a:15:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:49;s:2:\"13\";i:26;s:2:\"15\";i:24;s:2:\"16\";s:5:\"other\";a:3:{i:0;i:54;i:1;i:55;i:2;s:2:\"56\";}}', '1.3403898', '103.70898750000003', '196', 'Edwin Chong', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, 13, NULL, '15269098411526909841-23460.jpg', NULL, '', '', 2012, 30, '1', '0', NULL, 1, 'free', 'paypal', '6692e0a4ec57db9dd2de69289f60f1f5', '1', '2018-05-21 04:25:15'),
(167, 'designer', NULL, NULL, 'danielyen@hotmail.com', '1', '4fa4ada57e6231b81557ed18fdc7fd4e', 'Daniel', 'yen', '15269735441526973544-60653.jpeg', '+6582688994', 'Street E, Singapore', 'a:12:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:49;s:2:\"13\";i:26;s:2:\"15\";i:23;s:2:\"16\";}', '1.2845967', '103.77372170000001', '196', 'APCON Office Interior Design', '10 Kaki Bukit Ave 4, #06-63 Premier @ Kaki Bukit, 415874', NULL, NULL, NULL, NULL, NULL, NULL, 13, 6, 18, NULL, '15269732871526973286-82533.jpg', NULL, 'Company Branding &amp; Identity', 'Zaha Hadid', 2016, 12, '1', '0', NULL, 1, 'free', 'paypal', 'd0f9cb0d5ea87518cac9cc1faf50ea13', '1', '2018-05-22 03:02:12'),
(170, 'designer', NULL, NULL, 'ben@copperda.com', '1', 'e10adc3949ba59abbe56e057f20f883e', 'Ben', 'Than', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '091064100be8f10ecacf7c40429498ac', '1', '2018-05-23 04:14:48'),
(171, 'designer', NULL, NULL, 'kjcreativeeye20@gmail.com', '1', 'e10adc3949ba59abbe56e057f20f883e', 'Kedar', 'Jangir', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'e57ec41e3582f6a4789e9b2180f732b5', '1', '2018-05-23 07:16:35'),
(172, 'designer', NULL, NULL, 'softsketch88@gmail.com', '1', 'c430c8b059686c0f4dd8acf4a2c6849c', 'OrionDesigner', 'DEsigner', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'aa7d681cbccca952efd86db3645ddf3e', '1', '2018-05-25 06:00:35'),
(173, 'user', NULL, NULL, 'swatik4190@gmail.com', '1', 'c430c8b059686c0f4dd8acf4a2c6849c', 'OrionHOme', 'home2', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'free', 'paypal', 'cab482738f3d6f2c6ac6df364183676f', '1', '2018-05-25 06:10:35'),
(175, 'designer', NULL, NULL, 'alan.fan@toposdesign.com', '1', '67a35bc8e1271dbe9a8c0e64ae3fa06a', 'TOPOS Design', 'Associates', '1527495593-77741.png', '+65 67360804', '531 UPPER CROSS STREET #03-29, SINGAPORE 050531', 'a:17:{i:3;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:47;s:1:\"6\";i:50;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:49;s:2:\"13\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";}', '', '', '196', 'TOPOS Design Associates', '531 Upper Cross Street, #03-29 Sigapore 050531', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', 2013, 9, '1', '0', NULL, 1, 'free', 'paypal', 'edca32c2963f03e5ee9bd2c13a3d7785', '1', '2018-05-28 04:12:20'),
(176, 'designer', NULL, NULL, 'kaistudio.co@gmail.com', '1', '8bbcfd935312356f4fb378ef12b150cb', 'Jun Kai', 'Wong', '15277800141527780014-21493.jpeg', '+6597903716', '548 Serangoon North Avenue 3', NULL, '', '', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', '8c65aad49d1e9582fbbb68d7a04a5a2b', '1', '2018-05-31 11:15:07'),
(177, 'designer', NULL, NULL, 'dw@Wedding.com', '1', 'db47b5449cbb3ecf53d0abf4650732c8', 'wan', 'tan', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'e7d6e0659e0255efb99b2312383c102a', '1', '2018-05-31 23:32:23'),
(178, 'designer', NULL, NULL, 'erinna@elidstudio.com', '1', '10bf1400b93a066b143258be3f3458b8', 'E', 'L', '15306839711530683971-55724.jpeg', '+6588134525', 'Woodland', 'a:19:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:27;s:1:\"3\";i:4;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:47;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";s:5:\"other\";a:2:{i:0;i:57;i:1;i:58;}}', '', '', '196', 'Elid Studio', '405 woodland st. 41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '', '', 2018, 4, '1', '0', NULL, 1, 'free', 'paypal', '07160998dd68df74243f3ea715f6d2a8', '1', '2018-06-01 03:00:08'),
(179, 'designer', NULL, NULL, 'jmendoza.id07@gmail.com', '1', 'efbae93c33684b37b2fcc383dc759046', 'Jaypee', 'Mendoza', '', '6592247120', '501 Dunman Road, Singapore', 'a:15:{i:3;s:1:\"3\";i:20;s:1:\"3\";i:21;s:1:\"3\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";s:5:\"other\";a:2:{i:0;s:2:\"59\";i:1;s:2:\"60\";}}', '1.3099551', '103.89486250000004', '196', 'Viewport Concept', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 18, 4, NULL, NULL, NULL, 'Interior design consultant', '', 2017, 5, '1', '0', NULL, 1, 'free', 'paypal', 'd032ec62317eea6debaa953591e3a138', '1', '2018-06-01 03:17:35'),
(180, 'designer', NULL, NULL, 'ewtoh88@gmail.com', '1', 'd8e69ef7c9f508673840e5c907b2dfdc', 'Edwin', 'Toh', '', '97541316', 'Blk 85C Lorong 4 Toa Payoh #11-368 Singapore 313085', NULL, '1.336315', '103.84734600000001', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'bd3c9c3825a7ef9bed50bae6a57dadc9', '1', '2018-06-02 05:11:09'),
(181, 'designer', NULL, NULL, 'jackie@copperda.com', '1', 'e950cdb46652da6a4ae5e81565558c40', 'Jackie', 'Lai', '15280669641528066964-37305.jpg', '+6591473371', '71 Carpmael Road, Singapore', 'a:19:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:27;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:47;s:1:\"6\";i:7;s:1:\"7\";i:28;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";s:5:\"other\";a:3:{i:0;s:2:\"61\";i:1;s:2:\"62\";i:2;s:2:\"63\";}}', '1.3125347', '103.8986787', '196', 'Copper Design Associates Pte Ltd', '71 Carpmael Road Singapore 429806', NULL, NULL, NULL, NULL, NULL, NULL, 15, 12, 13, NULL, '15280599191528059919-35021.jpg', NULL, '', '', 2014, 80, '1', '0', NULL, 1, 'free', 'paypal', 'ba2ac6cf225cc8921443191c54820eac', '1', '2018-06-03 16:31:13'),
(182, 'designer', NULL, NULL, 'business@apcon.com.sg', '1', 'e10adc3949ba59abbe56e057f20f883e', 'Daniel', 'Yen', '1528166824-24519.jpeg', '+6582688994', '10 Kaki Bukit Ave 4, #06-63 Premier @ Kaki Bukit, 415874', 'a:12:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:20;s:1:\"3\";i:4;s:1:\"4\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:46;s:2:\"13\";i:48;s:2:\"13\";i:49;s:2:\"13\";i:26;s:2:\"15\";i:23;s:2:\"16\";}', '', '', '196', 'APCON Office Interior Design', '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 6, 18, NULL, '1528167126-53285.jpg', NULL, 'Company Branding &amp;amp;amp; Identity', 'Zaha Hadid', 2016, 12, '1', '0', NULL, 1, 'free', 'paypal', 'df6d77c225b22c3a10da80ec0738ad56', '1', '2018-06-04 22:21:14'),
(183, 'designer', NULL, NULL, 'keenondesign@gmail.com', '1', 'bc39662f4077bf3a22094a272c35c6bf', 'Keenon', 'Lee', '15313988271531398826-60397.JPG', '+6594398102', '66 Namly Garden, Singapore', 'a:9:{i:20;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:7;s:1:\"7\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:26;s:2:\"15\";}', '1.32523', '103.79376200000002', '196', 'Image Creative Design', '71 Ubi Crescent, #01-11', NULL, NULL, NULL, NULL, NULL, NULL, 5, 13, 18, NULL, '15304380691530438069-47187.jpg', NULL, 'Nature, Geometry &amp; Daily Life', '', 2014, 35, '1', '0', NULL, 1, 'free', 'paypal', '6983f70aa72ae14c7275eaa3f2b3b0b8', '1', '2018-06-05 03:34:11'),
(184, 'designer', NULL, NULL, 'ngyunxuans@gmail.com', '1', '0c42644662e0b1ab53192de01e248c62', 'Stephanie Hosanna', 'Ng', '1528184253-39801.jpg', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'd8fef84af36ad8018c258ecb016f3737', '1', '2018-06-05 03:35:20'),
(185, 'designer', NULL, NULL, 'goh_demi@hotmail.com', '1', '8501c57d6da8a7fbce80cd2af32dccb3', 'Demi', 'Goh', '', '96964639', 'Singapore', NULL, '1.3553794', '103.86774439999999', '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, 'free', 'paypal', 'fa369c4187018b71a8610e5483b5f1e4', '1', '2018-06-05 16:31:00'),
(186, 'designer', NULL, NULL, 'sureenfoo@gmail.com', '1', 'c4e8e977eca4862e37e3411d19d20ce6', 'Sureen', 'Foo', '15283856721528385672-45255.jpg', '93384779', 'Blk 436 Tampines Street 43 #07-97', 'a:12:{i:1;s:1:\"3\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:13;s:1:\"4\";i:18;s:1:\"6\";i:19;s:1:\"6\";i:29;s:1:\"7\";i:42;s:1:\"8\";i:45;s:1:\"8\";i:26;s:2:\"15\";i:23;s:2:\"16\";i:24;s:2:\"16\";}', '', '', '196', 'Designhaus', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 12, 13, NULL, '15283857361528385736-93308.jpg', NULL, '', '', 2013, 20, '1', '0', NULL, 1, 'free', 'paypal', '2049ae90e1936c7e6bb6c8c8b3973bae', '1', '2018-06-06 23:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_02_26_034915_create_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `title`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'http://kilback.org/voluptas-dolore-amet-nisi-ut-est-ipsam', 'Ut aut sint illum sit ex.', 'Mrs. Astrid Corwin', 'Qui necessitatibus consequatur impedit nesciunt magni vero. Perspiciatis vel culpa velit. Distinctio nemo et quasi aspernatur quo. Recusandae debitis dignissimos exercitationem officiis. Quos et aspernatur natus quas ea voluptate. Accusamus sunt sit culpa', '2018-07-17 06:58:17', '2018-07-11 06:38:42'),
(2, 'http://www.hayes.com/et-nobis-dolorem-perferendis.html', 'Ut cum aut numquam vero voluptatem laboriosam distinctio quam.', 'Prof. Maurice Haley', 'Dolorem et dolorem labore adipisci aut. Eveniet nobis et necessitatibus autem aut non. Qui cumque neque ut natus sequi ut. Qui dolores enim ex omnis et non pariatur. Omnis voluptatem saepe et quidem quas nam. Quaerat sunt recusandae eligendi enim expedita', '2018-07-17 06:58:17', '2018-07-05 10:55:57'),
(3, 'https://marquardt.com/recusandae-voluptatem-nesciunt-provident-esse-et.html', 'Qui nesciunt laboriosam et nostrum est optio.', 'Devyn O\'Keefe', 'Ea nesciunt quas velit nihil voluptatibus. Est delectus voluptas id qui doloribus nesciunt. Qui molestias amet autem illo. Quia repellat itaque deserunt sunt temporibus illo. Eius alias et est possimus dolorem aut. Illo unde architecto nulla enim. Molesti', '2018-07-17 06:58:17', '2018-06-29 02:35:25'),
(4, 'https://lind.biz/velit-aut-consequuntur-et-et-rerum-quia.html', 'Soluta iusto totam ad amet deserunt sunt.', 'Jo Armstrong', 'Commodi omnis velit quod aspernatur voluptatibus repellendus voluptate. Molestiae et est recusandae magni optio non distinctio. Dignissimos possimus quisquam nihil magnam est. Est pariatur rem excepturi omnis. Doloribus aut ut voluptatem excepturi sint nu', '2018-07-17 06:58:17', '2018-06-20 15:18:12'),
(5, 'http://www.berge.com/est-cupiditate-iusto-et-autem-aliquid', 'Et vero illo aut quo magni.', 'Claire Gleichner', 'Dolorem quaerat est omnis sint sit corrupti iusto. Facere sint omnis similique qui qui. Dolorem nobis dolorum incidunt sit esse. Qui assumenda impedit voluptatum quidem dolorem. Id molestiae qui nobis qui. Autem aut sed quos ex deserunt. In sint inventore', '2018-07-17 06:58:17', '2018-07-15 19:21:36'),
(6, 'http://www.ritchie.net/et-architecto-beatae-et-quia-laboriosam-consequatur', 'Non est velit molestias aut quasi.', 'Randall Huels', 'Eos voluptate illo rerum voluptatem ab fuga dolor. Doloribus et et et. Expedita ut quis perspiciatis corporis sunt. Maxime aut quaerat dolor molestiae sit rerum. Pariatur recusandae magni incidunt fugiat est. Voluptatibus vero quis atque et officiis est. ', '2018-07-17 06:58:17', '2018-06-18 18:20:33'),
(7, 'http://mills.com/maxime-officiis-aliquam-qui-assumenda-sequi-aperiam-dolor', 'Rerum blanditiis ea et placeat unde illum autem.', 'Lacey Cole', 'Debitis et rem rem ullam. Laboriosam eos aut tempora possimus quia praesentium. Ratione accusamus eius accusantium repellendus distinctio et non. Veritatis distinctio nisi accusantium nesciunt quaerat. Similique rerum voluptatem asperiores ullam. Magnam v', '2018-07-17 06:58:17', '2018-06-29 18:05:02'),
(8, 'http://hand.com/dolorum-laudantium-voluptatem-mollitia-tempore-voluptatem-ducimus-impedit-iusto', 'Quia deserunt dolor laudantium quos culpa enim ullam commodi.', 'Katrine Friesen', 'Optio quidem nihil neque quaerat dolorem. Error dolorem eum a praesentium. Accusantium vitae totam nisi minus possimus iste. Voluptatem eos esse facilis sit ipsam qui. Repellendus dolores commodi nobis ea sint. Assumenda et aut autem excepturi provident d', '2018-07-17 06:58:17', '2018-07-09 05:01:22'),
(9, 'https://raynor.com/dolor-laudantium-sed-earum-quaerat-et-nobis.html', 'Exercitationem deserunt totam nam fugit quas.', 'Kariane Kiehn', 'Officia accusantium qui sed ducimus voluptatem vero fugiat. Non odit et perspiciatis odit dolore. Accusamus voluptatem iste ut nisi sequi. Repudiandae voluptatem distinctio mollitia doloremque. Dolorem est praesentium dolorem recusandae. Occaecati est sun', '2018-07-17 06:58:17', '2018-07-06 22:17:44'),
(10, 'https://schowalter.com/debitis-quae-facere-totam-qui.html', 'Nihil illo distinctio vero qui aliquam est iste.', 'Westley Bogisich', 'Mollitia tempora odio suscipit animi incidunt repellat. Harum laudantium delectus doloribus ea veniam. Maiores dolores sunt dolores non. Voluptates eligendi magnam ut voluptatem ipsam culpa voluptatem. Ab quam eius inventore quia eos. Facere et et dolorem', '2018-07-17 06:58:17', '2018-07-07 07:18:43'),
(11, 'http://batz.com/', 'Eos quidem et ut quasi.', 'Mrs. Shanie Witting Sr.', 'Aliquid ullam voluptatem error sed suscipit. Laudantium quos animi eligendi recusandae similique. Quo qui quo nulla necessitatibus blanditiis culpa ipsa cupiditate. Accusamus incidunt nesciunt et itaque. Sit et libero exercitationem fugit id. Itaque iure ', '2018-07-17 06:58:17', '2018-07-14 15:27:40'),
(12, 'https://kshlerin.com/aut-et-excepturi-fugit-recusandae-tenetur-quibusdam-qui.html', 'A vel totam sit.', 'Brisa Volkman', 'Et accusamus earum sunt. Et iure enim minima dolorem. Voluptatibus sunt totam sed. Ea eos non ut accusantium unde est doloribus ipsam. Sint natus et enim sit. Aut doloremque nemo omnis reiciendis. Excepturi qui minus non blanditiis. Maiores harum quos nul', '2018-07-17 06:58:17', '2018-06-21 23:49:04'),
(13, 'http://kuphal.com/', 'Et aut nemo aut ut.', 'Desiree Fadel', 'Reprehenderit qui et qui nihil magni. Saepe ducimus aut laborum molestiae. Quas aliquam illo velit rerum deleniti consequatur et qui. Non ipsa ducimus optio quod iure sit. Commodi aut accusamus soluta est nobis accusamus. Atque tempora laborum perspiciati', '2018-07-17 06:58:18', '2018-07-04 17:00:44'),
(14, 'http://grant.com/assumenda-ipsam-ipsa-et-commodi-id', 'Assumenda placeat non nihil dolor fuga.', 'Chadd Dietrich MD', 'Modi veritatis assumenda corporis perspiciatis illo ipsa itaque. Alias nobis quod magnam. Magnam ut officiis quo fugiat ad. Quis veritatis autem consectetur voluptatibus doloremque minus. Eum eos vitae et perspiciatis. Voluptas itaque eligendi asperiores ', '2018-07-17 06:58:18', '2018-07-11 21:11:34'),
(15, 'http://www.okon.net/eius-optio-rerum-maiores-tempore-eos-eos-eligendi-veniam', 'Et ut expedita neque officia laboriosam hic.', 'Davin Koepp', 'Tenetur id consequuntur ut. Ut ut amet voluptas dolor. Ut quia ea ut ratione quasi similique ea. Voluptatem ut qui esse quo et commodi perspiciatis neque. Sint ut quis itaque perferendis. Delectus mollitia omnis distinctio ipsum quo magnam. Dolor sed nost', '2018-07-17 06:58:18', '2018-07-06 12:58:43'),
(16, 'http://www.morar.com/', 'Est corporis reiciendis quos.', 'Kimberly Gutmann', 'Ut et modi vel minus enim officiis est commodi. Reiciendis aperiam possimus iusto qui doloremque aperiam voluptate consequatur. Occaecati quidem autem distinctio impedit rerum qui iste possimus. Et nulla maxime reprehenderit consequuntur. Qui voluptatum e', '2018-07-17 06:58:18', '2018-07-01 01:03:27'),
(17, 'http://www.sauer.org/rerum-ipsa-et-eius-aut', 'Illum beatae velit ipsam vel sequi.', 'Jewell Swift', 'Aut eos tempora in possimus. Consequatur eius modi ea porro vel numquam numquam. Expedita harum dolores accusamus consectetur dolorem possimus. Labore officiis dicta ad mollitia saepe sed aliquam. Eum voluptatem minus adipisci enim esse placeat. Aspernatu', '2018-07-17 06:58:18', '2018-07-10 04:47:40'),
(18, 'https://www.dooley.com/consectetur-est-similique-distinctio-voluptates', 'Dolor earum adipisci quibusdam sunt neque atque.', 'Marie Wiza', 'Cupiditate magni reprehenderit excepturi rem suscipit nam aut. Ut sequi est cupiditate iure omnis nemo corporis aliquam. Et deserunt minima dolor sed in tempore. Perferendis nihil id soluta provident. Quod beatae est enim nam numquam earum. Facere quia ne', '2018-07-17 06:58:18', '2018-07-02 07:18:33'),
(19, 'http://www.turcotte.info/minima-tempora-amet-ut-ea-nulla-qui-labore-corrupti.html', 'Repellendus voluptatibus magni quo omnis sit.', 'Emory Rogahn', 'Quidem nihil quia qui alias laborum sit dolores. Deleniti est soluta porro exercitationem dolor a qui molestias. Distinctio in nulla consequatur dolorem suscipit hic dolore. Nobis enim facilis quod illum molestias dicta. Voluptatem ut molestiae ullam in a', '2018-07-17 06:58:18', '2018-06-18 19:38:06'),
(20, 'http://www.cassin.com/', 'Odio velit placeat voluptas non.', 'Ciara Feil', 'Laudantium veritatis explicabo unde dolores aperiam. Aperiam unde porro non rerum velit exercitationem. Sed debitis quos et eligendi praesentium hic. Et ut quod quae voluptas nobis eum. Libero dolores eos labore optio earum ipsam ut. Adipisci assumenda qu', '2018-07-17 06:58:18', '2018-06-26 20:38:28'),
(21, 'http://klocko.com/', 'Quod perspiciatis nisi et iste labore et.', 'Faye Johnston', 'Ipsum dolores consequuntur provident optio corrupti rerum. Eligendi beatae nemo illo ut quae nisi voluptatem. Rerum adipisci ducimus qui blanditiis ipsam hic aut. Sed nemo delectus et hic accusamus quasi aspernatur. Odit dicta architecto magni ipsum imped', '2018-07-17 06:58:18', '2018-06-30 21:08:17'),
(22, 'https://www.yost.biz/est-ad-alias-quidem-iure-cumque', 'Aspernatur eaque non et eos ratione consequatur.', 'Stuart Durgan', 'Aliquam a dolore cupiditate et eligendi fugit. Placeat corporis quam sapiente officia eius dicta repellat. Dignissimos dolorem in nam. Architecto error facere iste inventore dolorem. Error minima in nam. Quod cum iure ea tenetur placeat quod et. Amet eius', '2018-07-17 06:58:18', '2018-06-27 07:48:11'),
(23, 'http://www.lynch.info/', 'Fuga commodi pariatur commodi dolorem et.', 'Mr. Drake O\'Hara III', 'Ut magni dolorem deleniti corporis. Sit sunt nihil ut nihil voluptatibus provident. Impedit qui nisi porro. Quia sed nihil deserunt molestiae est iusto et perferendis. Ut suscipit et similique pariatur quo voluptatem iusto. Eveniet fuga et rerum aperiam s', '2018-07-17 06:58:18', '2018-06-19 06:35:08'),
(24, 'http://www.roob.com/culpa-hic-dolorum-ab-est.html', 'Exercitationem neque accusantium et veniam aut pariatur voluptas.', 'Prof. Ibrahim Grimes', 'Laudantium rem sunt eum occaecati perspiciatis architecto eos. Sint corporis est vel facilis. Atque veritatis sit accusantium atque fuga. Ducimus laudantium natus aut. Dignissimos dicta impedit sequi. Doloremque sit odio ea rem cum pariatur expedita. Dict', '2018-07-17 06:58:18', '2018-07-04 04:06:12'),
(25, 'https://morissette.com/perspiciatis-possimus-quo-nihil-fugiat.html', 'Occaecati laboriosam enim aliquam accusantium reiciendis voluptas.', 'Simone Wyman', 'Quia ipsam accusantium dignissimos iusto cumque qui. Suscipit voluptas itaque non provident est eos. Id et esse et sit ipsa. Omnis voluptatem vero ipsa nam quia dolores. Quae quisquam ad reprehenderit non quod velit unde. Quos id expedita id. Voluptatem v', '2018-07-17 06:58:18', '2018-07-15 06:32:20'),
(26, 'http://www.mitchell.info/', 'Aspernatur enim beatae nam animi commodi.', 'Wava Koepp', 'Similique et iure atque blanditiis. Mollitia quasi veniam voluptatem qui consequatur voluptatem. Totam sit reiciendis sed sed. Aliquam in itaque accusantium voluptas rem optio recusandae. Accusamus minus cupiditate consequatur adipisci laudantium non fugi', '2018-07-17 06:58:18', '2018-06-23 14:09:50'),
(27, 'http://considine.net/aut-quaerat-ducimus-assumenda-eligendi-quia-rerum-culpa.html', 'Dolor id veritatis quia necessitatibus explicabo minima quibusdam.', 'Lucie Balistreri', 'Velit eius laudantium voluptas a consectetur. Vel laudantium aut asperiores totam dolorem. Debitis aliquam molestiae nesciunt. Facilis quas sint et molestias pariatur iusto. Eligendi ea assumenda eveniet sit voluptas mollitia ut. Neque necessitatibus pers', '2018-07-17 06:58:18', '2018-07-12 17:26:47'),
(28, 'http://www.cronin.com/labore-exercitationem-quo-nostrum-adipisci-atque-quae', 'Aliquid et aut ad dolores eum nobis.', 'Arielle Kihn', 'Est voluptas totam veniam quaerat molestiae quae. Consequatur quos aut earum voluptatibus. Rerum nobis molestiae eaque non quibusdam. Est corrupti ut minima porro. Eveniet consequatur reiciendis consequatur aliquid ullam sint sint et. Placeat necessitatib', '2018-07-17 06:58:18', '2018-06-22 01:13:57'),
(29, 'https://tillman.com/esse-asperiores-suscipit-omnis-sit-ducimus-aperiam.html', 'Error sed et blanditiis dolorum perspiciatis similique ut.', 'Cristopher Pfeffer', 'Aperiam nostrum sunt magnam nam voluptatem accusamus. Modi quos veritatis distinctio fugit architecto aliquam et est. Sequi est illum non at nulla consectetur. Voluptatem velit et sunt hic est dolor consequatur. Quasi dicta in minima numquam quas sit quia', '2018-07-17 06:58:18', '2018-06-23 12:28:52'),
(30, 'http://gibson.com/', 'Ea est debitis consequuntur nisi.', 'Dr. Heloise Ritchie IV', 'Repellat magnam mollitia nulla ullam. Laudantium et vero quia eligendi molestias autem culpa cum. Corporis adipisci necessitatibus eum natus eum. Ut asperiores temporibus tempore consequuntur. Qui omnis fugit iste quia enim non. Voluptatibus qui soluta qu', '2018-07-17 06:58:18', '2018-07-14 06:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$.MD3LwZIDQrIr7GwAjQjPe9YWzw2yXoenoH1XjbyeSX2rSgiDp43a', '2018-07-17 07:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Demo User', 'demo@demo.com', '$2y$10$f5rGmZ/TL9zLyXDmkVMlJ.Hi9ivBr7MEZdvG0yYjKFnNk3/a32X1K', 'yKEZbOx72OCtlRRFDeO8uVes2iHFTT0btPRvorPRPKK9akDEw1gXPkzBSR6n', '2018-07-17 06:58:17', '2018-07-17 06:58:17'),
(3, 'gopal', 'admin@admin.com', '$2y$10$f5rGmZ/TL9zLyXDmkVMlJ.Hi9ivBr7MEZdvG0yYjKFnNk3/a32X1K', 'bVoAWrryVDm0gPwnkkABWCSqoqxzpSndGp6KsBqrYmcTEoydypF6Y75dSxbM', '2018-07-17 07:01:04', '2018-07-17 07:01:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ab3asb7eRt54sdEs_transaction_history`
--
ALTER TABLE `ab3asb7eRt54sdEs_transaction_history`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_user_id` (`transaction_client_id`),
  ADD KEY `transaction_user_id_2` (`transaction_client_id`),
  ADD KEY `transaction_user_id_3` (`transaction_client_id`),
  ADD KEY `transaction_client_id` (`transaction_client_id`);

--
-- Indexes for table `abb7e69drEs_style_preferences`
--
ALTER TABLE `abb7e69drEs_style_preferences`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `bF4eg64s_membership_plans`
--
ALTER TABLE `bF4eg64s_membership_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`fa8a41b5_admin_id`);

--
-- Indexes for table `d6f4f0d1c_favourite`
--
ALTER TABLE `d6f4f0d1c_favourite`
  ADD PRIMARY KEY (`fav_id`),
  ADD KEY `fav_user_id` (`fav_user_id`,`fav_portfolio_id`),
  ADD KEY `fav_portfolio_id` (`fav_portfolio_id`);

--
-- Indexes for table `d6f4f0d1c_homepage`
--
ALTER TABLE `d6f4f0d1c_homepage`
  ADD PRIMARY KEY (`hm_id`);

--
-- Indexes for table `d6f4f0d1c_homepage_portfolios`
--
ALTER TABLE `d6f4f0d1c_homepage_portfolios`
  ADD PRIMARY KEY (`hpp_id`);

--
-- Indexes for table `d6f4f0d1c_liked_portfolios`
--
ALTER TABLE `d6f4f0d1c_liked_portfolios`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `like_user_id` (`like_user_id`),
  ADD KEY `like_portfolio_id` (`like_portfolio_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_addon_packages`
--
ALTER TABLE `d6f4fad3ds20d1c_addon_packages`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_category`
--
ALTER TABLE `d6f4fad3ds20d1c_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_configuration`
--
ALTER TABLE `d6f4fad3ds20d1c_configuration`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_countries`
--
ALTER TABLE `d6f4fad3ds20d1c_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_credits_details`
--
ALTER TABLE `d6f4fad3ds20d1c_credits_details`
  ADD PRIMARY KEY (`cd_credit_id`),
  ADD KEY `cd_pro_user_id` (`cd_pro_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_credit_packages`
--
ALTER TABLE `d6f4fad3ds20d1c_credit_packages`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_designer_accomplishments`
--
ALTER TABLE `d6f4fad3ds20d1c_designer_accomplishments`
  ADD PRIMARY KEY (`da_id`),
  ADD KEY `da_user_id` (`da_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_faqs`
--
ALTER TABLE `d6f4fad3ds20d1c_faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_for_credit_transaction`
--
ALTER TABLE `d6f4fad3ds20d1c_for_credit_transaction`
  ADD PRIMARY KEY (`fc_transaction_id`),
  ADD KEY `fc_transaction_user_id` (`fc_transaction_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_keywords`
--
ALTER TABLE `d6f4fad3ds20d1c_keywords`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `key_text` (`key_text`);

--
-- Indexes for table `d6f4fad3ds20d1c_pages`
--
ALTER TABLE `d6f4fad3ds20d1c_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_portfolio`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio`
  ADD PRIMARY KEY (`portfolio_id`),
  ADD KEY `portfolio_category` (`portfolio_category`),
  ADD KEY `portfolio_subcategory` (`portfolio_subcategory`),
  ADD KEY `portfolio_user_id` (`portfolio_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_portfolio_images`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_images`
  ADD PRIMARY KEY (`p_image_id`),
  ADD KEY `p_portfolio_id` (`p_portfolio_id`),
  ADD KEY `p_user_id` (`p_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_portfolio_log`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_log`
  ADD PRIMARY KEY (`portfolio_log_id`),
  ADD KEY `portfolio_log_user_id` (`portfolio_log_user_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_portfolio_views`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_views`
  ADD PRIMARY KEY (`pv_id`),
  ADD KEY `pv_portfolio_id` (`pv_portfolio_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_settings`
--
ALTER TABLE `d6f4fad3ds20d1c_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6f4fad3ds20d1c_skills_category`
--
ALTER TABLE `d6f4fad3ds20d1c_skills_category`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_skills_subcategory`
--
ALTER TABLE `d6f4fad3ds20d1c_skills_subcategory`
  ADD PRIMARY KEY (`ssc_id`),
  ADD KEY `ssc_parent_id` (`ssc_parent_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_skill_endorse`
--
ALTER TABLE `d6f4fad3ds20d1c_skill_endorse`
  ADD PRIMARY KEY (`se_id`),
  ADD KEY `se_skill_id` (`se_skill_id`),
  ADD KEY `se_user_id` (`se_user_id`),
  ADD KEY `se_designer_id` (`se_designer_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_sub_category`
--
ALTER TABLE `d6f4fad3ds20d1c_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD KEY `sub_cat_title` (`sub_cat_title`,`sub_cat_parent_id`),
  ADD KEY `sub_cat_parent_id` (`sub_cat_parent_id`),
  ADD KEY `sub_cat_parent_id_2` (`sub_cat_parent_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_team`
--
ALTER TABLE `d6f4fad3ds20d1c_team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `d6f4fad3ds20d1c_templates`
--
ALTER TABLE `d6f4fad3ds20d1c_templates`
  ADD PRIMARY KEY (`temp_id`),
  ADD UNIQUE KEY `temp_key` (`temp_key`);

--
-- Indexes for table `fe270ce0e_clients`
--
ALTER TABLE `fe270ce0e_clients`
  ADD PRIMARY KEY (`dd9cbbf_client_id`),
  ADD UNIQUE KEY `client_email` (`dd9cbbf_client_email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_url_unique` (`url`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `ab3asb7eRt54sdEs_transaction_history`
--
ALTER TABLE `ab3asb7eRt54sdEs_transaction_history`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abb7e69drEs_style_preferences`
--
ALTER TABLE `abb7e69drEs_style_preferences`
  MODIFY `sp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bF4eg64s_membership_plans`
--
ALTER TABLE `bF4eg64s_membership_plans`
  MODIFY `plan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `fa8a41b5_admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6f4f0d1c_favourite`
--
ALTER TABLE `d6f4f0d1c_favourite`
  MODIFY `fav_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6f4f0d1c_homepage`
--
ALTER TABLE `d6f4f0d1c_homepage`
  MODIFY `hm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6f4f0d1c_homepage_portfolios`
--
ALTER TABLE `d6f4f0d1c_homepage_portfolios`
  MODIFY `hpp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d6f4f0d1c_liked_portfolios`
--
ALTER TABLE `d6f4f0d1c_liked_portfolios`
  MODIFY `like_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_addon_packages`
--
ALTER TABLE `d6f4fad3ds20d1c_addon_packages`
  MODIFY `ap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_category`
--
ALTER TABLE `d6f4fad3ds20d1c_category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_configuration`
--
ALTER TABLE `d6f4fad3ds20d1c_configuration`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_countries`
--
ALTER TABLE `d6f4fad3ds20d1c_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_credits_details`
--
ALTER TABLE `d6f4fad3ds20d1c_credits_details`
  MODIFY `cd_credit_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_credit_packages`
--
ALTER TABLE `d6f4fad3ds20d1c_credit_packages`
  MODIFY `cp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_designer_accomplishments`
--
ALTER TABLE `d6f4fad3ds20d1c_designer_accomplishments`
  MODIFY `da_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_faqs`
--
ALTER TABLE `d6f4fad3ds20d1c_faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_for_credit_transaction`
--
ALTER TABLE `d6f4fad3ds20d1c_for_credit_transaction`
  MODIFY `fc_transaction_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_keywords`
--
ALTER TABLE `d6f4fad3ds20d1c_keywords`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_pages`
--
ALTER TABLE `d6f4fad3ds20d1c_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_portfolio`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio`
  MODIFY `portfolio_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_portfolio_images`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_images`
  MODIFY `p_image_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_portfolio_log`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_log`
  MODIFY `portfolio_log_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_portfolio_views`
--
ALTER TABLE `d6f4fad3ds20d1c_portfolio_views`
  MODIFY `pv_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_settings`
--
ALTER TABLE `d6f4fad3ds20d1c_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_skills_category`
--
ALTER TABLE `d6f4fad3ds20d1c_skills_category`
  MODIFY `sc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_skills_subcategory`
--
ALTER TABLE `d6f4fad3ds20d1c_skills_subcategory`
  MODIFY `ssc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_skill_endorse`
--
ALTER TABLE `d6f4fad3ds20d1c_skill_endorse`
  MODIFY `se_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_sub_category`
--
ALTER TABLE `d6f4fad3ds20d1c_sub_category`
  MODIFY `sub_cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_team`
--
ALTER TABLE `d6f4fad3ds20d1c_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6f4fad3ds20d1c_templates`
--
ALTER TABLE `d6f4fad3ds20d1c_templates`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fe270ce0e_clients`
--
ALTER TABLE `fe270ce0e_clients`
  MODIFY `dd9cbbf_client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ab3asb7eRt54sdEs_transaction_history`
--
ALTER TABLE `ab3asb7eRt54sdEs_transaction_history`
  ADD CONSTRAINT `ab3asb7eRt54sdEs_transaction_history_ibfk_1` FOREIGN KEY (`transaction_client_id`) REFERENCES `fe270ce0e_clients` (`dd9cbbf_client_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `d6f4f0d1c_favourite`
--
ALTER TABLE `d6f4f0d1c_favourite`
  ADD CONSTRAINT `d6f4f0d1c_favourite_ibfk_1` FOREIGN KEY (`fav_user_id`) REFERENCES `fe270ce0e_clients` (`dd9cbbf_client_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `d6f4f0d1c_favourite_ibfk_2` FOREIGN KEY (`fav_portfolio_id`) REFERENCES `d6f4fad3ds20d1c_portfolio` (`portfolio_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `d6f4f0d1c_liked_portfolios`
--
ALTER TABLE `d6f4f0d1c_liked_portfolios`
  ADD CONSTRAINT `d6f4f0d1c_liked_portfolios_ibfk_1` FOREIGN KEY (`like_user_id`) REFERENCES `fe270ce0e_clients` (`dd9cbbf_client_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `d6f4f0d1c_liked_portfolios_ibfk_2` FOREIGN KEY (`like_portfolio_id`) REFERENCES `d6f4fad3ds20d1c_portfolio` (`portfolio_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `d6f4fad3ds20d1c_credits_details`
--
ALTER TABLE `d6f4fad3ds20d1c_credits_details`
  ADD CONSTRAINT `d6f4fad3ds20d1c_credits_details_ibfk_1` FOREIGN KEY (`cd_pro_user_id`) REFERENCES `fe270ce0e_clients` (`dd9cbbf_client_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
