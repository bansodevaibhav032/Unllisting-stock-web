-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2022 at 05:54 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electroMuseum`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add address', 7, 'add_address'),
(26, 'Can change address', 7, 'change_address'),
(27, 'Can delete address', 7, 'delete_address'),
(28, 'Can view address', 7, 'view_address'),
(29, 'Can add brand', 8, 'add_brand'),
(30, 'Can change brand', 8, 'change_brand'),
(31, 'Can delete brand', 8, 'delete_brand'),
(32, 'Can view brand', 8, 'view_brand'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add cities', 10, 'add_cities'),
(38, 'Can change cities', 10, 'change_cities'),
(39, 'Can delete cities', 10, 'delete_cities'),
(40, 'Can view cities', 10, 'view_cities'),
(41, 'Can add company profile', 11, 'add_companyprofile'),
(42, 'Can change company profile', 11, 'change_companyprofile'),
(43, 'Can delete company profile', 11, 'delete_companyprofile'),
(44, 'Can view company profile', 11, 'view_companyprofile'),
(45, 'Can add customer', 12, 'add_customer'),
(46, 'Can change customer', 12, 'change_customer'),
(47, 'Can delete customer', 12, 'delete_customer'),
(48, 'Can view customer', 12, 'view_customer'),
(49, 'Can add flash deal', 13, 'add_flashdeal'),
(50, 'Can change flash deal', 13, 'change_flashdeal'),
(51, 'Can delete flash deal', 13, 'delete_flashdeal'),
(52, 'Can view flash deal', 13, 'view_flashdeal'),
(53, 'Can add inbox', 14, 'add_inbox'),
(54, 'Can change inbox', 14, 'change_inbox'),
(55, 'Can delete inbox', 14, 'delete_inbox'),
(56, 'Can view inbox', 14, 'view_inbox'),
(57, 'Can add product', 15, 'add_product'),
(58, 'Can change product', 15, 'change_product'),
(59, 'Can delete product', 15, 'delete_product'),
(60, 'Can view product', 15, 'view_product'),
(61, 'Can add service', 16, 'add_service'),
(62, 'Can change service', 16, 'change_service'),
(63, 'Can delete service', 16, 'delete_service'),
(64, 'Can view service', 16, 'view_service'),
(65, 'Can add subscriber', 17, 'add_subscriber'),
(66, 'Can change subscriber', 17, 'change_subscriber'),
(67, 'Can delete subscriber', 17, 'delete_subscriber'),
(68, 'Can view subscriber', 17, 'view_subscriber'),
(69, 'Can add unit', 18, 'add_unit'),
(70, 'Can change unit', 18, 'change_unit'),
(71, 'Can delete unit', 18, 'delete_unit'),
(72, 'Can view unit', 18, 'view_unit'),
(73, 'Can add vendor', 19, 'add_vendor'),
(74, 'Can change vendor', 19, 'change_vendor'),
(75, 'Can delete vendor', 19, 'delete_vendor'),
(76, 'Can view vendor', 19, 'view_vendor'),
(77, 'Can add wishlist', 20, 'add_wishlist'),
(78, 'Can change wishlist', 20, 'change_wishlist'),
(79, 'Can delete wishlist', 20, 'delete_wishlist'),
(80, 'Can view wishlist', 20, 'view_wishlist'),
(81, 'Can add vendor review', 21, 'add_vendorreview'),
(82, 'Can change vendor review', 21, 'change_vendorreview'),
(83, 'Can delete vendor review', 21, 'delete_vendorreview'),
(84, 'Can view vendor review', 21, 'view_vendorreview'),
(85, 'Can add sub services', 22, 'add_subservices'),
(86, 'Can change sub services', 22, 'change_subservices'),
(87, 'Can delete sub services', 22, 'delete_subservices'),
(88, 'Can view sub services', 22, 'view_subservices'),
(89, 'Can add sub category', 23, 'add_subcategory'),
(90, 'Can change sub category', 23, 'change_subcategory'),
(91, 'Can delete sub category', 23, 'delete_subcategory'),
(92, 'Can view sub category', 23, 'view_subcategory'),
(93, 'Can add silder two', 24, 'add_sildertwo'),
(94, 'Can change silder two', 24, 'change_sildertwo'),
(95, 'Can delete silder two', 24, 'delete_sildertwo'),
(96, 'Can view silder two', 24, 'view_sildertwo'),
(97, 'Can add silder one', 25, 'add_silderone'),
(98, 'Can change silder one', 25, 'change_silderone'),
(99, 'Can delete silder one', 25, 'delete_silderone'),
(100, 'Can view silder one', 25, 'view_silderone'),
(101, 'Can add service review', 26, 'add_servicereview'),
(102, 'Can change service review', 26, 'change_servicereview'),
(103, 'Can delete service review', 26, 'delete_servicereview'),
(104, 'Can view service review', 26, 'view_servicereview'),
(105, 'Can add service order', 27, 'add_serviceorder'),
(106, 'Can change service order', 27, 'change_serviceorder'),
(107, 'Can delete service order', 27, 'delete_serviceorder'),
(108, 'Can view service order', 27, 'view_serviceorder'),
(109, 'Can add rating', 28, 'add_rating'),
(110, 'Can change rating', 28, 'change_rating'),
(111, 'Can delete rating', 28, 'delete_rating'),
(112, 'Can view rating', 28, 'view_rating'),
(113, 'Can add product review', 29, 'add_productreview'),
(114, 'Can change product review', 29, 'change_productreview'),
(115, 'Can delete product review', 29, 'delete_productreview'),
(116, 'Can view product review', 29, 'view_productreview'),
(117, 'Can add product images', 30, 'add_productimages'),
(118, 'Can change product images', 30, 'change_productimages'),
(119, 'Can delete product images', 30, 'delete_productimages'),
(120, 'Can view product images', 30, 'view_productimages'),
(121, 'Can add product color', 31, 'add_productcolor'),
(122, 'Can change product color', 31, 'change_productcolor'),
(123, 'Can delete product color', 31, 'delete_productcolor'),
(124, 'Can view product color', 31, 'view_productcolor'),
(125, 'Can add order', 32, 'add_order'),
(126, 'Can change order', 32, 'change_order'),
(127, 'Can delete order', 32, 'delete_order'),
(128, 'Can view order', 32, 'view_order'),
(129, 'Can add offer two', 33, 'add_offertwo'),
(130, 'Can change offer two', 33, 'change_offertwo'),
(131, 'Can delete offer two', 33, 'delete_offertwo'),
(132, 'Can view offer two', 33, 'view_offertwo'),
(133, 'Can add offer one', 34, 'add_offerone'),
(134, 'Can change offer one', 34, 'change_offerone'),
(135, 'Can delete offer one', 34, 'delete_offerone'),
(136, 'Can view offer one', 34, 'view_offerone'),
(137, 'Can add offer banner', 35, 'add_offerbanner'),
(138, 'Can change offer banner', 35, 'change_offerbanner'),
(139, 'Can delete offer banner', 35, 'delete_offerbanner'),
(140, 'Can view offer banner', 35, 'view_offerbanner'),
(141, 'Can add discount offer', 36, 'add_discountoffer'),
(142, 'Can change discount offer', 36, 'change_discountoffer'),
(143, 'Can delete discount offer', 36, 'delete_discountoffer'),
(144, 'Can view discount offer', 36, 'view_discountoffer'),
(145, 'Can add deal product', 37, 'add_dealproduct'),
(146, 'Can change deal product', 37, 'change_dealproduct'),
(147, 'Can delete deal product', 37, 'delete_dealproduct'),
(148, 'Can view deal product', 37, 'view_dealproduct'),
(149, 'Can add cart', 38, 'add_cart'),
(150, 'Can change cart', 38, 'change_cart'),
(151, 'Can delete cart', 38, 'delete_cart'),
(152, 'Can view cart', 38, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$qi0OMZpZzvqeDt8RnHUIhN$MflNWzFWmFxEyt9mYM4lHreEFdOscLU7zAF2qquIm/Q=', '2022-01-03 04:17:36.920012', 1, 'admin@gmail.com', '', '', 'admin@gmail.com', 1, 1, '2021-12-30 14:06:28.408007'),
(2, 'pbkdf2_sha256$320000$zoDotD6C5YgK1qieQmVJJq$G5PTB+CkaHurqNCDNw15IOSKv+QdEtd61Yu1z2HB1k4=', NULL, 0, 'vinayak2926@gmail.com', 'Vinayak', '', 'vinayak2926@gmail.com', 0, 1, '2021-12-30 14:56:21.544784'),
(3, 'pbkdf2_sha256$320000$uJUqzknCAwUTwbAywLLmsf$TPomqeQtBJJbo+K5Qo584/5kiOTc94ePisIvfMT6YNo=', '2022-01-02 05:26:15.633596', 0, 'vinayak@gmail.com', 'Vinayak', 'Gaikwad', 'vinayak@gmail.com', 0, 1, '2021-12-31 08:01:34.084161'),
(4, 'pbkdf2_sha256$320000$wkDQEjusQPZlw7hVS5MXNX$azj0tZPoBgbmA4oLeiLOjxdSHa5VjkIXJ6anmr+Vk98=', NULL, 0, 'narayanfurmalkar0007@gmail.com', 'Narayan', '', 'narayanfurmalkar0007@gmail.com', 0, 1, '2021-12-31 09:17:06.798742'),
(5, 'pbkdf2_sha256$320000$T4oG1oGb6m1pTESjY16VUY$31L5cG8Zjcbk6eaiuh5dFXi1IJcSX2QSmNV9OCmys68=', NULL, 0, 'swapnilghule97@gmail.com', 'Electro ', 'Museum', 'swapnilghule97@gmail.com', 0, 1, '2022-01-03 18:51:21.295455'),
(6, 'pbkdf2_sha256$320000$Y9HPmt0D4arI1LfySzOHHS$kARQpUjfk9L6EWP3Mw1zFijrPXPGl5Fo8yls2QcmZtI=', '2022-01-04 07:08:29.554879', 0, 'swapnilghule95@gmail.com', 'swapnil ghule', '', 'swapnilghule95@gmail.com', 0, 1, '2022-01-04 07:08:29.419896');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_address`
--

CREATE TABLE `dashboard_address` (
  `id` int NOT NULL,
  `city` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `pincode` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `state` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `landmark` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `address_line_1` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `address_line_2` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `addressType` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_address`
--

INSERT INTO `dashboard_address` (`id`, `city`, `pincode`, `state`, `landmark`, `address_line_1`, `address_line_2`, `status`, `addressType`, `customer_id`) VALUES
(1, 'Pune', '413104', 'Maharashtra', 'Near ganesh temple', 'Vikas chowk, karvenagar', 'Barate building', 'Active', 'Home', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_brand`
--

CREATE TABLE `dashboard_brand` (
  `id` int NOT NULL,
  `bName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `metaDescription` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `subCategory_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_brand`
--

INSERT INTO `dashboard_brand` (`id`, `bName`, `icon`, `metaTitle`, `status`, `metaDescription`, `category_id`, `subCategory_id`) VALUES
(14, 'Crempton', 'dashboard/category/images/11_v5cGl5G.png', '', 'Active', 'Crempton', 14, 25),
(15, 'Polycab', 'dashboard/category/images/8_CWxDhU9.png', '', 'Active', 'Polycab', 14, 25),
(16, 'Livfast', 'dashboard/category/images/9_w3Jgj68.png', '', 'Active', 'Livfast', 14, 25),
(17, 'Ameron', 'dashboard/category/images/10_DCFpsqc.png', '', 'Active', 'Ameron', 14, 25),
(18, 'Microtek', 'dashboard/category/images/5_nC66lXy.png', '', 'Active', 'Microtek', 14, 25),
(19, 'Ecolink', 'dashboard/category/images/6_WQL6Nzg.png', '', 'Active', 'Ecolink', 14, 25),
(20, 'Mitashi', 'dashboard/category/images/7_R3dPzGT.png', '', 'Active', 'Mitashi', 14, 25),
(21, 'Syska', 'dashboard/category/images/2_cC4Ji1J.png', '', 'Active', 'Syska', 14, 25),
(22, 'Estman', 'dashboard/category/images/3_Th6Z4nN.png', '', 'Active', 'Estman', 14, 25),
(23, 'Phillips', 'dashboard/category/images/4_hrQaYhc.png', '', 'Active', 'Phillips', 14, 25),
(24, 'Luminous ', 'dashboard/category/images/1_6HmSQjg.png', '', 'Active', 'Luminous', 14, 25);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_cart`
--

CREATE TABLE `dashboard_cart` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `qnt` int DEFAULT NULL,
  `subTotal` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `saving` int DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_category`
--

CREATE TABLE `dashboard_category` (
  `id` int NOT NULL,
  `cName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `categoryType` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `productCount` int DEFAULT NULL,
  `metaDescription` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_category`
--

INSERT INTO `dashboard_category` (`id`, `cName`, `categoryType`, `banner`, `icon`, `metaTitle`, `status`, `productCount`, `metaDescription`) VALUES
(1, 'Laptop', '', 'dashboard/category/images/1.png', 'dashboard/category/images/1_rTSBaj3.png', '', 'Inactive', 0, ''),
(2, 'TV\'s', '', 'dashboard/category/images/4.png', 'dashboard/category/images/4_6Da1teD.png', '', 'Inactive', 0, ''),
(3, 'mobile', '', 'dashboard/category/images/2.png', 'dashboard/category/images/2_NuIOV4b.png', '', 'Inactive', 0, ''),
(4, 'Care', '', 'dashboard/category/images/5.png', 'dashboard/category/images/5_FYfSiA4.png', '', 'Inactive', 0, ''),
(5, 'smart devices', '', 'dashboard/category/images/6.png', 'dashboard/category/images/6_uDJyYGp.png', '', 'Inactive', 0, ''),
(6, 'Kitchen', '', 'dashboard/category/images/8.png', 'dashboard/category/images/8_elZZneW.png', '', 'Inactive', 0, ''),
(7, 'Accessories', '', 'dashboard/category/images/7.png', 'dashboard/category/images/7_phIF5ZO.png', '', 'Inactive', 0, ''),
(8, 'Audio', '', 'dashboard/category/images/10.png', 'dashboard/category/images/10_GI21RX8.png', '', 'Inactive', 0, ''),
(9, 'games', '', 'dashboard/category/images/11.png', 'dashboard/category/images/11_eC2cx9R.png', '', 'Inactive', 0, ''),
(10, 'games', '', 'dashboard/category/images/11_ohZ9CEA.png', 'dashboard/category/images/11_iQKn2Mq.png', '', 'Inactive', 0, ''),
(11, 'appliances', '', 'dashboard/category/images/9.png', 'dashboard/category/images/9_OlFbUIU.png', '', 'Inactive', 0, ''),
(12, 'Camera', '', 'dashboard/category/images/3.png', 'dashboard/category/images/3_QZGJkyP.png', '', 'Inactive', 0, ''),
(13, 'Refrigerator', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.53_PM.jpeg', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.53_PM_Z4OQMI5.jpeg', '', 'Inactive', 0, ''),
(14, 'TV\'s', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.52_PM-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.52_PM-removebg-preview_g0sMwzp.png', '', 'Active', 0, ''),
(15, 'Refrigerator ', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.53_PM-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.53_PM-removebg-preview_ACdJnii.png', '', 'Active', 0, ''),
(16, 'Fan', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.13_PM__1_-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.13_PM__1_-removebg-preview_QM17xgk.png', '', 'Active', 0, ''),
(17, 'Iron Press', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.13_PM-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.13_PM-removebg-preview_1D8aisM.png', '', 'Active', 0, ''),
(18, 'Oven ', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.12_PM__1_-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.12_PM__1_-removebg-preview_i5OGdTL.png', '', 'Active', 0, ''),
(19, 'RO', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.14_PM-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.14_PM-removebg-preview_ytqZR8f.png', '', 'Active', 0, ''),
(20, 'Vacuum Cleaner  ', '', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.14_PM__1_-removebg-preview.png', 'dashboard/category/images/WhatsApp_Image_2022-01-03_at_4.07.14_PM__1_-removebg-preview_lcbMf6O.png', '', 'Active', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_cities`
--

CREATE TABLE `dashboard_cities` (
  `id` int NOT NULL,
  `cityName` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `cityPincode` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `cityState` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_companyprofile`
--

CREATE TABLE `dashboard_companyprofile` (
  `id` int NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `cinNumber` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `landline` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `address1` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `address2` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `pincode` int DEFAULT NULL,
  `state` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `Country` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `ownername` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `mission` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `vision` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `aboutUs` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_customer`
--

CREATE TABLE `dashboard_customer` (
  `id` int NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `block` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_customer`
--

INSERT INTO `dashboard_customer` (`id`, `password`, `contact`, `status`, `block`, `remark`, `user_id`) VALUES
(1, 'qwer4321', '8459527068', 'Active', 'no', '', 2),
(2, 'qwer4321', '85639452458', 'Active', 'no', '', 3),
(3, '123456', '9595303795', 'Active', 'no', '', 4),
(4, 'swapnil77', '8208887017', 'Active', 'no', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_dealproduct`
--

CREATE TABLE `dashboard_dealproduct` (
  `id` int NOT NULL,
  `deal_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_discountoffer`
--

CREATE TABLE `dashboard_discountoffer` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `deadline` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `discount` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_flashdeal`
--

CREATE TABLE `dashboard_flashdeal` (
  `id` int NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `discount` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `discountType` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_inbox`
--

CREATE TABLE `dashboard_inbox` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `msg` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_offerbanner`
--

CREATE TABLE `dashboard_offerbanner` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_offerone`
--

CREATE TABLE `dashboard_offerone` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_offertwo`
--

CREATE TABLE `dashboard_offertwo` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_order`
--

CREATE TABLE `dashboard_order` (
  `id` int NOT NULL,
  `order_date` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_mode` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `paymentStatus` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `qnt` int DEFAULT NULL,
  `subTotal` int DEFAULT NULL,
  `saving` int DEFAULT NULL,
  `deliveryFee` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `deliverySchedule` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `amountpayment_order_id` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `address_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_product`
--

CREATE TABLE `dashboard_product` (
  `id` int NOT NULL,
  `productName` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `deliveryChagres` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `minPurQty` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `refundable` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `seoKeyword` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `metaDescription` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `lowStockWarningQty` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `stockStatus` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `orderCount` int DEFAULT NULL,
  `featured` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `todayDeal` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `bestSeller` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `newArrivals` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `topOrder` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `topDiscount` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `mostPopuler` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `unitPrice` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `discount` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `discountAmt` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `discountType` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `qty` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `tax` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `taxType` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `datetime` date DEFAULT NULL,
  `thumbNail` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subCategory_id` int NOT NULL,
  `vendor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_product`
--

INSERT INTO `dashboard_product` (`id`, `productName`, `unit`, `deliveryChagres`, `minPurQty`, `refundable`, `description`, `metaTitle`, `seoKeyword`, `metaDescription`, `lowStockWarningQty`, `stockStatus`, `orderCount`, `featured`, `todayDeal`, `bestSeller`, `newArrivals`, `topOrder`, `topDiscount`, `mostPopuler`, `unitPrice`, `discount`, `discountAmt`, `discountType`, `qty`, `tax`, `taxType`, `status`, `datetime`, `thumbNail`, `brand_id`, `category_id`, `subCategory_id`, `vendor_id`) VALUES
(3, 'LG 81.28cm (32 Inch) HD Ready LED Smart TV (Home Dashboard, 32LM562BPTA, Black)', 'Pcs', '', '', '', 'LG 81.28cm (32 Inch) HD Ready LED Smart TV (Home Dashboard, 32LM562BPTA, Black)', '', '', '', '5', 'normal', 0, 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', '18949', '19', '15348.69', '', '19', '', '', 'yes', '2022-01-03', 'dashboard/product/images/245647_hmh5p4_2IabxXg.png', 14, 14, 25, 1),
(4, 'Xiaomi Mi 4A 43 Horizon 108cm (43 Inch) Full HD LED Android Smart TV (Vivid Picture Engine, 43ELA4548, Black)', 'Pcs', '', '', '', 'Xiaomi Mi 4A 43 Horizon 108cm (43 Inch) Full HD LED Android Smart TV (Vivid Picture Engine, 43ELA4548, Black)', '', '', '', '5', 'normal', 0, 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', '26989', '19', '21861.09', '', '10', '', '', 'yes', '2022-01-03', 'dashboard/product/images/mxw_1440f_auto_1.png', 14, 14, 25, 1),
(5, 'Samsung 579 Litres Frost Free Digital Inverter French Door Refrigerator (Convertible Freezer, RF57A5232B1/TL, Black DOI)', 'Pcs', '', '', '', 'Samsung 579 Litres Frost Free Digital Inverter French Door Refrigerator (Convertible Freezer, RF57A5232B1/TL, Black DOI)', '', '', '', '5', 'normal', 0, 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', '77590', '20', '62072.0', '', '10', '', '', 'yes', '2022-01-03', 'dashboard/product/images/mxw_1440f_auto_3.png', 14, 15, 32, 1),
(6, 'Bosch 559 Litres 2 Star Frost Free Inverter Double Door Refrigerator (Freezer Bottom, KGN56XI40I, Inox-easyclean)', 'Pcs', '', '', '', 'Bosch 559 Litres 2 Star Frost Free Inverter Double Door Refrigerator (Freezer Bottom, KGN56XI40I, Inox-easyclean)', '', '', '', '5', 'normal', 0, 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', '61489', '10', '55340.1', '', '10', '', '', 'yes', '2022-01-03', 'dashboard/product/images/mxw_1440f_auto_4.png', 14, 15, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productcolor`
--

CREATE TABLE `dashboard_productcolor` (
  `color` int NOT NULL,
  `colorName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productimages`
--

CREATE TABLE `dashboard_productimages` (
  `id` int NOT NULL,
  `image1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productreview`
--

CREATE TABLE `dashboard_productreview` (
  `id` int NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_rating`
--

CREATE TABLE `dashboard_rating` (
  `id` int NOT NULL,
  `rating` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_service`
--

CREATE TABLE `dashboard_service` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_service`
--

INSERT INTO `dashboard_service` (`id`, `name`, `icon`, `status`) VALUES
(1, 'Plumbers', 'dashboard/service/images/plumber-icon.png', 'Active'),
(2, 'Solar', 'dashboard/service/images/SOLAR-SERVICES..png', 'Active'),
(3, 'Carpenter', 'dashboard/service/images/carpenter_1.png', 'Active'),
(4, 'Electrician', 'dashboard/service/images/PNG-ELEC-1.png', 'Active'),
(5, 'RO', 'dashboard/service/images/WATER-FILTERS.png', 'Active'),
(6, 'Tank Clean', 'dashboard/service/images/TANK-CLEAING.png', 'Active'),
(7, 'Painters', 'dashboard/service/images/PAINTINGS-AND-PAINTERS.png', 'Active'),
(8, 'Interior Design ', 'dashboard/service/images/1.jpg', 'Inactive'),
(9, 'Interiors', 'dashboard/service/images/Untitled_design__12_-removebg-preview.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_serviceorder`
--

CREATE TABLE `dashboard_serviceorder` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `serviceTime` datetime(6) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `serviceDate` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `subTotal` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `saving` int DEFAULT NULL,
  `payment_mode` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `paymentStatus` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `paymentId` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `transactionId` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `address_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `service_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_servicereview`
--

CREATE TABLE `dashboard_servicereview` (
  `id` int NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `review` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `subService_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_silderone`
--

CREATE TABLE `dashboard_silderone` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_sildertwo`
--

CREATE TABLE `dashboard_sildertwo` (
  `id` bigint NOT NULL,
  `line1` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `line2` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Para` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_subcategory`
--

CREATE TABLE `dashboard_subcategory` (
  `id` int NOT NULL,
  `cName` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `productCount` int DEFAULT NULL,
  `metaDescription` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `mainCategory_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_subcategory`
--

INSERT INTO `dashboard_subcategory` (`id`, `cName`, `metaTitle`, `productCount`, `metaDescription`, `mainCategory_id`) VALUES
(25, 'LED Tv\'s', '', 0, '', 14),
(26, 'QLED Tv\'s', '', 0, '', 14),
(27, 'OLED Tv\'s', '', 0, '', 14),
(28, '4K Ultra HD Tv', '', 0, '', 14),
(29, '8K Ultra HD TV', '', 0, '', 14),
(30, 'Smart Tv\'s', '', 0, '', 14),
(31, 'Android Smart TV\'s', '', 0, '', 14),
(32, 'Double Door Refrigerator ', '', 0, '', 15),
(33, '3 Start Refrigerator', '', 0, '', 15),
(34, 'Single Door Refrigerator', '', 0, '', 15),
(35, 'Bottom Frazer Refrigerator', '', 0, '', 15),
(36, 'Celling Fans', '', 0, '', 16),
(37, 'Pedestal Fan ', '', 0, '', 16),
(38, 'Table Fan', '', 0, '', 16),
(39, 'Toer Fan', '', 0, '', 16),
(40, 'Steam Irons', '', 0, '', 17),
(41, 'Dry Iron', '', 0, '', 17),
(42, 'Built in Microwave & Oven', '', 0, '', 18),
(43, 'Grill Microwaves & Ovens', '', 0, '', 18),
(44, 'Water Purifier ', '', 0, '', 19),
(45, 'Robotic Vacuum Cleaner', '', 0, '', 20),
(46, 'Wet & Dry Vacuum Cleaner', '', 0, '', 20),
(47, 'Cordless Vacuum Cleaners', '', 0, '', 20);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_subscriber`
--

CREATE TABLE `dashboard_subscriber` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_subservices`
--

CREATE TABLE `dashboard_subservices` (
  `id` int NOT NULL,
  `serviceType` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int DEFAULT NULL,
  `offerPrice` int DEFAULT NULL,
  `instruction1` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `instruction2` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `service_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_subservices`
--

INSERT INTO `dashboard_subservices` (`id`, `serviceType`, `name`, `price`, `offerPrice`, `instruction1`, `instruction2`, `icon`, `banner`, `status`, `service_id`) VALUES
(5, 'Installation-Uninstallation', 'AC Switchbox Installation', 300, 20, 'Installation of ac switchbox', 'Installation of ac switchbox', 'dashboard/service/images/havells-modular-ac-box-500x500-1-400x400.jpg', 'dashboard/service/images/havells-modular-ac-box-500x500-1-400x400_LHooZR9.jpg', 'Active', 4),
(6, 'Installation-Uninstallation', 'Switchboard Installtion', 250, 20, 'Installation of one switchboard(up to twelve switches', 'Installation of one switchboard(up to twelve switches', 'dashboard/service/images/electric-switch-board-500x500.jpg', 'dashboard/service/images/electric-switch-board-500x500_rQbbIWJ.jpg', 'Active', 4),
(8, 'Installation-Uninstallation', 'Switch/Socket Replacement', 80, 10, 'Replacement  of one switch /socket/combination unit', 'Replacement  of one switch /socket/combination unit', 'dashboard/service/images/electric-change-over-switch-500x500.jpg', 'dashboard/service/images/electric-change-over-switch-500x500_OFCqxYP.jpg', 'Active', 4),
(10, 'Installation-Uninstallation', 'Regular Fan Installation', 130, 10, 'Installation of Ceiling, exhaust or wall fan', 'Installation of Ceiling, exhaust or wall fan', 'dashboard/service/images/DSC00649-1024x683_WCaIDhE.jpg', 'dashboard/service/images/DSC00649-1024x683_m8YLhGC.jpg', 'Active', 4),
(11, 'Repair', 'Fan Repair', 200, 20, 'Repair of ceiling, wall or exhaust fan', 'Repair of ceiling, wall or exhaust fan', 'dashboard/service/images/Ceiling-Fan-Motor.jpeg', 'dashboard/service/images/Ceiling-Fan-Motor_Su2F61W.jpeg', 'Active', 4),
(13, 'Installation-Uninstallation', 'Bulbs Installation', 130, 10, 'Installation of up to five bulbs', 'Installation of up to five bulbs', 'dashboard/service/images/Why-Do-My-Light-Bulbs-Blow-Out-Frequently.jpg', 'dashboard/service/images/Why-Do-My-Light-Bulbs-Blow-Out-Frequently_aeJfGvr.jpg', 'Active', 4),
(14, 'Repair', 'Wash Basin Installation', 200, 20, 'Installation of all kinds of wash basin', 'Installation of all kind of wash basin', 'dashboard/service/images/5.png', 'dashboard/service/images/5_FP34ojK.png', 'Active', 1),
(15, 'Repair', 'Waste Pipe Leakage ', 200, 10, 'Repair or replacement of waste pipe', 'Repair or replacement of waste pipe', 'dashboard/service/images/1_GGUWgPv.png', 'dashboard/service/images/1_VeUobza.png', 'Active', 1),
(16, 'Installation-Uninstallation', 'Wash Basin Blockage Removal', 150, 10, 'Blockage removal of wash basin and waste pipe', 'Blockage removal of wash basin and waste pipe', 'dashboard/service/images/2.png', 'dashboard/service/images/2_4Pl73AY.png', 'Active', 1),
(18, 'Service', 'Flush Tank Repair ', 300, 10, 'Flush leakage repair & flush button replacement ', 'Recommended for old or damaged flush tank', 'dashboard/service/images/11.png', 'dashboard/service/images/11_dGJ6ASH.png', 'Active', 1),
(19, 'Installation-Uninstallation', 'Bed Support Repair', 200, 10, 'Includes mattress support repair  ', 'Major repair or repair requiring dismantling beds as per quotation  ', 'dashboard/service/images/23.png', 'dashboard/service/images/23_sCMuAYD.png', 'Active', 3),
(20, 'Service', 'Mirror Fittings & Installation', 200, 10, 'Mirror installation', 'Mirror installation', 'dashboard/service/images/OYWqxKLR5a61a06a5f8c4.jpg', 'dashboard/service/images/OYWqxKLR5a61a06a5f8c4_gDmCBfN.jpg', 'Active', 1),
(21, 'Installation-Uninstallation', 'Clothes Ceiling Hanger Installation', 100, 10, 'include roof selling ', 'Please provide ladder to the technicians ', 'dashboard/service/images/clothes-drying-system-500x500.jpg', 'dashboard/service/images/clothes-drying-system-500x500_xmDIA08.jpg', 'Active', 3),
(22, 'Service', 'Channel Repair', 200, 10, 'Suitable when channel movement obstructed ', 'Suitable when channel movement obstructed ', 'dashboard/service/images/image.jpg', 'dashboard/service/images/image_wCjcvmz.jpg', 'Active', 3),
(23, 'Service', 'Solar Service', 2000, 100, 'Solar Services ', 'Solar Services', 'dashboard/service/images/solar2-ktCI-621x414LiveMint.jpg', 'dashboard/service/images/solar2-ktCI-621x414LiveMint_OclcRx2.jpg', 'Active', 2),
(25, 'Installation-Uninstallation', 'New Solar Panel Installation', 30000, 10, 'New Solar Panel installation', 'New Solar Panel installation', 'dashboard/service/images/solar-panel-installation-service-500x500_dDBujlc.jpg', 'dashboard/service/images/solar-panel-installation-service-500x500_gauhQOz.jpg', 'Active', 2),
(26, 'Repair', 'Solar Repair or Replacement ', 20000, 10, 'Solar repair or replacement ', 'Solar repair or replacement ', 'dashboard/service/images/solar-maintenance-Copy-2-1.jpg', 'dashboard/service/images/solar-maintenance-Copy-2-1_uCaARfc.jpg', 'Active', 2),
(27, 'Installation-Uninstallation', 'New RO Installation', 20000, 10, 'New RO Installation', 'New RO Installation', 'dashboard/service/images/1-500x500.jpg', 'dashboard/service/images/1-500x500_AlUhMoR.jpg', 'Active', 5),
(29, 'Service', 'Water Tank Cleaning ', 200, 10, 'Water tank cleaning ', 'Water tank cleaning ', 'dashboard/service/images/dsc03052-500x500.jpg', 'dashboard/service/images/dsc03052-500x500_7ov4Kxo.jpg', 'Active', 6),
(31, 'Service', 'Painting Services ', 300, 10, 'All types of painting service ', 'Offices , Homes , Building ', 'dashboard/service/images/shutterstock_376837156-min.jpg', 'dashboard/service/images/shutterstock_376837156-min_TRw7CR1.jpg', 'Active', 7),
(32, 'Service', 'Old Paint or Dust Removing ', 100, 10, 'Old paint or dust removing ', 'Old paint or dust removing ', 'dashboard/service/images/istockphoto-1068798988-612x612.jpg', 'dashboard/service/images/istockphoto-1068798988-612x612_ThHbgCF.jpg', 'Active', 7),
(33, 'Service', 'New Interior Design Service', 600, 500, 'New interior design services', 'Office, Home , Hospitals ', 'dashboard/service/images/interiordesignsecrets1.jpg', 'dashboard/service/images/interiordesignsecrets1_xQEq7vi.jpg', 'Active', 8),
(34, 'Installation-Uninstallation', 'Replacement and Remove Old Design', 100, 10, 'Replacement and remove old design', 'Replacement and remove old design', 'dashboard/service/images/decoration-interieur-salle-a-manger.jpg', 'dashboard/service/images/decoration-interieur-salle-a-manger_E00djF1.jpg', 'Active', 8),
(35, 'Service', 'Interior Design ', 300, 100, 'Interior design for Home, Office , Hospital ', 'Interior design for Home, Office , Hospital ', 'dashboard/service/images/interiordesignsecrets1_rzLiELy.jpg', 'dashboard/service/images/interiordesignsecrets1_dVqveZN.jpg', 'Active', 9),
(36, 'Service', 'Interior Renovation ', 400, 20, 'Old interior redesign , Renovation ', 'Old interior redesign , Renovation ', 'dashboard/service/images/renovation.jpg', 'dashboard/service/images/renovation_J48UmeV.jpg', 'Active', 9),
(38, 'Service', 'Ceiling Fan Regulator Replacement  ', 100, 10, 'Selling fan regulator replacement', 'Selling fan regulator replacement', 'dashboard/service/images/71Mw8Dn8cSL._SL1500_-300x300_rw8mbKA.jpg', 'dashboard/service/images/71Mw8Dn8cSL._SL1500_-300x300_puCv6bb.jpg', 'Active', 4),
(39, 'Service', 'Ceiling Fan Replacement  ', 100, 10, 'Selling fan replacement  ', 'Selling fan replacement  ', 'dashboard/service/images/fans-repair-services-500x500.jpg', 'dashboard/service/images/fans-repair-services-500x500_coHcpV5.jpg', 'Active', 4),
(40, 'Installation-Uninstallation', 'New Tank Installation ', 100, 10, 'New tank installation ', 'New tank installation ', 'dashboard/service/images/slimline-water-tank-installed.jpg', 'dashboard/service/images/slimline-water-tank-installed_4KtIp2m.jpg', 'Active', 6),
(41, 'Repair', 'RO Repairing ', 300, 10, 'RO Repairing ', 'RO Repairing ', 'dashboard/service/images/ro_repair.jpg', 'dashboard/service/images/ro_repair_1wknx8L.jpg', 'Active', 5),
(42, 'Installation-Uninstallation', 'New AC Installation', 400, 10, 'New AC Installation', 'New AC Installation', 'dashboard/service/images/Residential-AC-Replacement.jpg', 'dashboard/service/images/Residential-AC-Replacement_Xdjzt0T.jpg', 'Active', 4),
(43, 'Installation-Uninstallation', 'Old AC Replacement', 200, 20, 'Old AC Replacement', 'Old AC Replacement', 'dashboard/service/images/Gainesville-Mechanical_Types-of-AC-Installation-Options-to-Con_KQN1u62.jpeg', 'dashboard/service/images/Gainesville-Mechanical_Types-of-AC-Installation-Options-to-Con_koijADS.jpeg', 'Active', 4),
(44, 'Repair', 'AC Repair & Services', 300, 20, 'AC Repair - Maintenance ', 'AC Repair - Maintenance ', 'dashboard/service/images/Webp.net-resizeimage.jpg', 'dashboard/service/images/Webp.net-resizeimage_NP54MPK.jpg', 'Active', 4),
(45, 'Installation-Uninstallation', 'New Washing Machine Installation', 300, 20, 'New Washing machine installation', 'New Washing machine installation', 'dashboard/service/images/20200626_020544washing_machine_installation.jpg', 'dashboard/service/images/20200626_020544washing_machine_installation_ll3HjMS.jpg', 'Active', 4),
(46, 'Repair', 'Washing Machine Repair ', 300, 10, 'Washing machine repair ', 'Washing machine repair - maintenance ', 'dashboard/service/images/washing_machine_repair_box-1.jpg', 'dashboard/service/images/washing_machine_repair_box-1_UtPrjAd.jpg', 'Active', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_unit`
--

CREATE TABLE `dashboard_unit` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_unit`
--

INSERT INTO `dashboard_unit` (`id`, `name`) VALUES
(1, 'Pcs');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_vendor`
--

CREATE TABLE `dashboard_vendor` (
  `id` int NOT NULL,
  `createdDate` datetime(6) DEFAULT NULL,
  `storeName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `address_line_1` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `address_line_2` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `landmark` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `pincode` int DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `overview` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `GSTIN` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `productsCount` int DEFAULT NULL,
  `fbLink` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `instaLink` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `linkedInLink` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `twitterLink` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `walletBalance` int DEFAULT NULL,
  `bankName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `accountNumber` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `ifscCode` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `accountName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `panCard` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `gst` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_vendor`
--

INSERT INTO `dashboard_vendor` (`id`, `createdDate`, `storeName`, `contact`, `address_line_1`, `address_line_2`, `landmark`, `city`, `pincode`, `state`, `overview`, `GSTIN`, `productsCount`, `fbLink`, `instaLink`, `linkedInLink`, `twitterLink`, `status`, `remark`, `walletBalance`, `bankName`, `accountNumber`, `ifscCode`, `accountName`, `logo`, `banner`, `panCard`, `gst`, `user_id`) VALUES
(1, NULL, 'Electro Museum Pvt Ltd', '8796083434', 'Jalna', 'Jalna', 'Jalna', 'Jalna', 413101, 'Maharashtra', 'Complete Electronics Products and services', 'GTDSV875E', 0, '', '', '', '', 'Active', 'New store', 0, '', '', '', '', 'dashboard/vendor/logo/logo_electroa01_1.png', 'dashboard/vendor/banner/logo_electroa01_1.png', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_vendorreview`
--

CREATE TABLE `dashboard_vendorreview` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `review` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `vendor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_wishlist`
--

CREATE TABLE `dashboard_wishlist` (
  `id` int NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `productId_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard', 'address'),
(8, 'dashboard', 'brand'),
(38, 'dashboard', 'cart'),
(9, 'dashboard', 'category'),
(10, 'dashboard', 'cities'),
(11, 'dashboard', 'companyprofile'),
(12, 'dashboard', 'customer'),
(37, 'dashboard', 'dealproduct'),
(36, 'dashboard', 'discountoffer'),
(13, 'dashboard', 'flashdeal'),
(14, 'dashboard', 'inbox'),
(35, 'dashboard', 'offerbanner'),
(34, 'dashboard', 'offerone'),
(33, 'dashboard', 'offertwo'),
(32, 'dashboard', 'order'),
(15, 'dashboard', 'product'),
(31, 'dashboard', 'productcolor'),
(30, 'dashboard', 'productimages'),
(29, 'dashboard', 'productreview'),
(28, 'dashboard', 'rating'),
(16, 'dashboard', 'service'),
(27, 'dashboard', 'serviceorder'),
(26, 'dashboard', 'servicereview'),
(25, 'dashboard', 'silderone'),
(24, 'dashboard', 'sildertwo'),
(23, 'dashboard', 'subcategory'),
(17, 'dashboard', 'subscriber'),
(22, 'dashboard', 'subservices'),
(18, 'dashboard', 'unit'),
(19, 'dashboard', 'vendor'),
(21, 'dashboard', 'vendorreview'),
(20, 'dashboard', 'wishlist'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-30 14:05:43.852574'),
(2, 'auth', '0001_initial', '2021-12-30 14:05:44.270933'),
(3, 'admin', '0001_initial', '2021-12-30 14:05:44.356091'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-30 14:05:44.367682'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-30 14:05:44.377649'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-30 14:05:44.469110'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-30 14:05:44.510591'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-30 14:05:44.539224'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-30 14:05:44.550039'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-30 14:05:44.585409'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-30 14:05:44.591632'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-30 14:05:44.601918'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-30 14:05:44.645210'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-30 14:05:44.694672'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-30 14:05:44.715268'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-30 14:05:44.724611'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-30 14:05:44.768017'),
(18, 'dashboard', '0001_initial', '2021-12-30 14:05:46.849149'),
(19, 'sessions', '0001_initial', '2021-12-30 14:05:46.881384');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('700kh5xk8jpy4gkduxq6v0yh9fxsg9w8', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n4Emu:_eXPogmEYg_a7Vo60-JGusMYW1qHAzqTWzxP-Itc1Gw', '2022-01-17 04:17:36.923415'),
('772jr3bzzim75poodkagzl0v90hyymnd', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n2zLR:YAoVvUu9FSd8fJjrojTU-YOtQfe2YIEwCtoSmPR9Hek', '2022-01-13 17:36:05.169043'),
('7uk21d3der6d04b5p4o6bqghuazi7m9v', '.eJxVjL0OgjAURt-ls2n6wy2F0bg4OPEAzb23VVBTEgouxncXEgZdzznf9xYBl7kPS0lTGKJohROHX0bIj5Q3Ee-Yb6PkMc_TQHJL5G6LvIwxPY97-3fQY-nXtWpqUFpZ8t4RASJWlQEwmFZgoraKKUIEa9l5VqDrxkeqSXNzVZXD9bQs1KXpNXDqwvkkWgOfL1XyPaI:1n4dx7:eQ9_muSoX8xUcQQeElAG2jTJRB6YYAUeDQWb4hEhXLM', '2022-01-18 07:09:49.818267'),
('af2o9tjy592s29wy5j5wdhruh5t5zquq', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n2wWr:BhYNsLUY4xMA6B5G-_2rutJ64J_3tj3fJFbvD-wEXyY', '2022-01-13 14:35:41.819557'),
('fjio0h1d04fyw8yvdr93vyewooj9ljek', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n2w9K:cftgfmjVNGqYgOtvzXAEFG64JuBwx496TM4UF8wnoSI', '2022-01-13 14:11:22.665784'),
('inlwuncna0yybcjmz8omf04p8p45kssm', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n3cI8:p2xydaffMcaoP3GVZtfjzPWpt3Zp8AcrZTQvHjwDVBg', '2022-01-15 11:11:16.348567'),
('t5e9uiaovve8m9wth7refzc08w50hqiw', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n3sj1:796gDEVT14F55DxH4j1bme72ohkkH617-X-otd73tgQ', '2022-01-16 04:44:07.769411'),
('umxjfiwjwgpdq6y95t7hxdl7y392kt54', '.eJxVjEEOwiAQRe_C2pDS0oFx6d4zkBkYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1JnZdTpd2OKD6k7SHeqt1nHua7LxHpX9EGbvs5JnpfD_Tso1Mq3zgYcGhCHyWHn0bAdQcha8ex6yhHF2YGyRyEPQANH6ASR84jUJ6veH9c1OAI:1n3CT0:msERvM6x1T4sqUkq7Y1fF1DrBOuX0iu_nHu6kRY-oA8', '2022-01-14 07:36:46.451154');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_address`
--
ALTER TABLE `dashboard_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_address_customer_id_b40710a7_fk_dashboard_customer_id` (`customer_id`);

--
-- Indexes for table `dashboard_brand`
--
ALTER TABLE `dashboard_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_brand_category_id_7c05d680_fk_dashboard_category_id` (`category_id`),
  ADD KEY `dashboard_brand_subCategory_id_1175e726_fk_dashboard` (`subCategory_id`);

--
-- Indexes for table `dashboard_cart`
--
ALTER TABLE `dashboard_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_cart_customer_id_062246e4_fk_dashboard_customer_id` (`customer_id`),
  ADD KEY `dashboard_cart_product_id_89fdb889_fk_dashboard_product_id` (`product_id`),
  ADD KEY `dashboard_cart_vendor_id_b1e3bc33_fk_dashboard_vendor_id` (`vendor_id`);

--
-- Indexes for table `dashboard_category`
--
ALTER TABLE `dashboard_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_cities`
--
ALTER TABLE `dashboard_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_companyprofile`
--
ALTER TABLE `dashboard_companyprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_customer`
--
ALTER TABLE `dashboard_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_customer_user_id_6f1d2062_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `dashboard_dealproduct`
--
ALTER TABLE `dashboard_dealproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dealproduct_deal_id_3ec9b520_fk_dashboard_flashdeal_id` (`deal_id`),
  ADD KEY `dashboard_dealproduc_product_id_cbd12949_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_discountoffer`
--
ALTER TABLE `dashboard_discountoffer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_discountof_deal_id_048b40b2_fk_dashboard` (`deal_id`);

--
-- Indexes for table `dashboard_flashdeal`
--
ALTER TABLE `dashboard_flashdeal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_inbox`
--
ALTER TABLE `dashboard_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_offerbanner`
--
ALTER TABLE `dashboard_offerbanner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_offerbanner_deal_id_c1391c84_fk_dashboard_flashdeal_id` (`deal_id`);

--
-- Indexes for table `dashboard_offerone`
--
ALTER TABLE `dashboard_offerone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_offerone_deal_id_5ee7973a_fk_dashboard_flashdeal_id` (`deal_id`);

--
-- Indexes for table `dashboard_offertwo`
--
ALTER TABLE `dashboard_offertwo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_offertwo_deal_id_51052301_fk_dashboard_flashdeal_id` (`deal_id`);

--
-- Indexes for table `dashboard_order`
--
ALTER TABLE `dashboard_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_order_address_id_94eb6215_fk_dashboard_address_id` (`address_id`),
  ADD KEY `dashboard_order_customer_id_36598346_fk_dashboard_customer_id` (`customer_id`),
  ADD KEY `dashboard_order_product_id_be1cd496_fk_dashboard_product_id` (`product_id`),
  ADD KEY `dashboard_order_vendor_id_0b391d0c_fk_dashboard_vendor_id` (`vendor_id`);

--
-- Indexes for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_product_subCategory_id_df97ab40_fk_dashboard` (`subCategory_id`),
  ADD KEY `dashboard_product_vendor_id_90e6bc05_fk_dashboard_vendor_id` (`vendor_id`),
  ADD KEY `dashboard_product_brand_id_8a46cb7d_fk_dashboard_brand_id` (`brand_id`),
  ADD KEY `dashboard_product_category_id_7057505a_fk_dashboard_category_id` (`category_id`);

--
-- Indexes for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  ADD PRIMARY KEY (`color`),
  ADD KEY `dashboard_productcol_product_id_b960bdfd_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productimages`
--
ALTER TABLE `dashboard_productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productima_product_id_8cccc8aa_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productreview`
--
ALTER TABLE `dashboard_productreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productrev_customer_id_503c5d58_fk_dashboard` (`customer_id`),
  ADD KEY `dashboard_productrev_product_id_6fdf69f6_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_rating`
--
ALTER TABLE `dashboard_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_rating_product_id_23a5c7b4_fk_dashboard_product_id` (`product_id`);

--
-- Indexes for table `dashboard_service`
--
ALTER TABLE `dashboard_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_serviceorder`
--
ALTER TABLE `dashboard_serviceorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_serviceord_address_id_32971a34_fk_dashboard` (`address_id`),
  ADD KEY `dashboard_serviceord_customer_id_22cb746b_fk_dashboard` (`customer_id`),
  ADD KEY `dashboard_serviceord_service_id_8a58d951_fk_dashboard` (`service_id`);

--
-- Indexes for table `dashboard_servicereview`
--
ALTER TABLE `dashboard_servicereview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_servicerev_customer_id_e2b2c7aa_fk_dashboard` (`customer_id`),
  ADD KEY `dashboard_servicerev_subService_id_c55db405_fk_dashboard` (`subService_id`);

--
-- Indexes for table `dashboard_silderone`
--
ALTER TABLE `dashboard_silderone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_silderone_deal_id_fb64807e_fk_dashboard_flashdeal_id` (`deal_id`);

--
-- Indexes for table `dashboard_sildertwo`
--
ALTER TABLE `dashboard_sildertwo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_sildertwo_deal_id_1472d1df_fk_dashboard_flashdeal_id` (`deal_id`);

--
-- Indexes for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_subcategor_mainCategory_id_1a648402_fk_dashboard` (`mainCategory_id`);

--
-- Indexes for table `dashboard_subscriber`
--
ALTER TABLE `dashboard_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_subservices`
--
ALTER TABLE `dashboard_subservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_subservice_service_id_09ea8535_fk_dashboard` (`service_id`);

--
-- Indexes for table `dashboard_unit`
--
ALTER TABLE `dashboard_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_vendor`
--
ALTER TABLE `dashboard_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_vendor_user_id_902e1996_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `dashboard_vendorreview`
--
ALTER TABLE `dashboard_vendorreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_vendorreview_vendor_id_9593c9b7_fk_dashboard_vendor_id` (`vendor_id`);

--
-- Indexes for table `dashboard_wishlist`
--
ALTER TABLE `dashboard_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_wishlist_customer_id_a8a63adb_fk_dashboard_customer_id` (`customer_id`),
  ADD KEY `dashboard_wishlist_productId_id_348c0575_fk_dashboard_product_id` (`productId_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_address`
--
ALTER TABLE `dashboard_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_brand`
--
ALTER TABLE `dashboard_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `dashboard_cart`
--
ALTER TABLE `dashboard_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_category`
--
ALTER TABLE `dashboard_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dashboard_cities`
--
ALTER TABLE `dashboard_cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_companyprofile`
--
ALTER TABLE `dashboard_companyprofile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_customer`
--
ALTER TABLE `dashboard_customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_dealproduct`
--
ALTER TABLE `dashboard_dealproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_discountoffer`
--
ALTER TABLE `dashboard_discountoffer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_flashdeal`
--
ALTER TABLE `dashboard_flashdeal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_inbox`
--
ALTER TABLE `dashboard_inbox`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_offerbanner`
--
ALTER TABLE `dashboard_offerbanner`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_offerone`
--
ALTER TABLE `dashboard_offerone`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_offertwo`
--
ALTER TABLE `dashboard_offertwo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_order`
--
ALTER TABLE `dashboard_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  MODIFY `color` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productimages`
--
ALTER TABLE `dashboard_productimages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productreview`
--
ALTER TABLE `dashboard_productreview`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_rating`
--
ALTER TABLE `dashboard_rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_service`
--
ALTER TABLE `dashboard_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dashboard_serviceorder`
--
ALTER TABLE `dashboard_serviceorder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_servicereview`
--
ALTER TABLE `dashboard_servicereview`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_silderone`
--
ALTER TABLE `dashboard_silderone`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_sildertwo`
--
ALTER TABLE `dashboard_sildertwo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `dashboard_subscriber`
--
ALTER TABLE `dashboard_subscriber`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_subservices`
--
ALTER TABLE `dashboard_subservices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `dashboard_unit`
--
ALTER TABLE `dashboard_unit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_vendor`
--
ALTER TABLE `dashboard_vendor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_vendorreview`
--
ALTER TABLE `dashboard_vendorreview`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_wishlist`
--
ALTER TABLE `dashboard_wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_address`
--
ALTER TABLE `dashboard_address`
  ADD CONSTRAINT `dashboard_address_customer_id_b40710a7_fk_dashboard_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`);

--
-- Constraints for table `dashboard_brand`
--
ALTER TABLE `dashboard_brand`
  ADD CONSTRAINT `dashboard_brand_category_id_7c05d680_fk_dashboard_category_id` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`),
  ADD CONSTRAINT `dashboard_brand_subCategory_id_1175e726_fk_dashboard` FOREIGN KEY (`subCategory_id`) REFERENCES `dashboard_subcategory` (`id`);

--
-- Constraints for table `dashboard_cart`
--
ALTER TABLE `dashboard_cart`
  ADD CONSTRAINT `dashboard_cart_customer_id_062246e4_fk_dashboard_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_cart_product_id_89fdb889_fk_dashboard_product_id` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`),
  ADD CONSTRAINT `dashboard_cart_vendor_id_b1e3bc33_fk_dashboard_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `dashboard_vendor` (`id`);

--
-- Constraints for table `dashboard_customer`
--
ALTER TABLE `dashboard_customer`
  ADD CONSTRAINT `dashboard_customer_user_id_6f1d2062_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_dealproduct`
--
ALTER TABLE `dashboard_dealproduct`
  ADD CONSTRAINT `dashboard_dealproduc_product_id_cbd12949_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`),
  ADD CONSTRAINT `dashboard_dealproduct_deal_id_3ec9b520_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_discountoffer`
--
ALTER TABLE `dashboard_discountoffer`
  ADD CONSTRAINT `dashboard_discountof_deal_id_048b40b2_fk_dashboard` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_offerbanner`
--
ALTER TABLE `dashboard_offerbanner`
  ADD CONSTRAINT `dashboard_offerbanner_deal_id_c1391c84_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_offerone`
--
ALTER TABLE `dashboard_offerone`
  ADD CONSTRAINT `dashboard_offerone_deal_id_5ee7973a_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_offertwo`
--
ALTER TABLE `dashboard_offertwo`
  ADD CONSTRAINT `dashboard_offertwo_deal_id_51052301_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_order`
--
ALTER TABLE `dashboard_order`
  ADD CONSTRAINT `dashboard_order_address_id_94eb6215_fk_dashboard_address_id` FOREIGN KEY (`address_id`) REFERENCES `dashboard_address` (`id`),
  ADD CONSTRAINT `dashboard_order_customer_id_36598346_fk_dashboard_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_order_product_id_be1cd496_fk_dashboard_product_id` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`),
  ADD CONSTRAINT `dashboard_order_vendor_id_0b391d0c_fk_dashboard_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `dashboard_vendor` (`id`);

--
-- Constraints for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  ADD CONSTRAINT `dashboard_product_brand_id_8a46cb7d_fk_dashboard_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `dashboard_brand` (`id`),
  ADD CONSTRAINT `dashboard_product_category_id_7057505a_fk_dashboard_category_id` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`),
  ADD CONSTRAINT `dashboard_product_subCategory_id_df97ab40_fk_dashboard` FOREIGN KEY (`subCategory_id`) REFERENCES `dashboard_subcategory` (`id`),
  ADD CONSTRAINT `dashboard_product_vendor_id_90e6bc05_fk_dashboard_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `dashboard_vendor` (`id`);

--
-- Constraints for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  ADD CONSTRAINT `dashboard_productcol_product_id_b960bdfd_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`);

--
-- Constraints for table `dashboard_productimages`
--
ALTER TABLE `dashboard_productimages`
  ADD CONSTRAINT `dashboard_productima_product_id_8cccc8aa_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`);

--
-- Constraints for table `dashboard_productreview`
--
ALTER TABLE `dashboard_productreview`
  ADD CONSTRAINT `dashboard_productrev_customer_id_503c5d58_fk_dashboard` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_productrev_product_id_6fdf69f6_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`);

--
-- Constraints for table `dashboard_rating`
--
ALTER TABLE `dashboard_rating`
  ADD CONSTRAINT `dashboard_rating_product_id_23a5c7b4_fk_dashboard_product_id` FOREIGN KEY (`product_id`) REFERENCES `dashboard_product` (`id`);

--
-- Constraints for table `dashboard_serviceorder`
--
ALTER TABLE `dashboard_serviceorder`
  ADD CONSTRAINT `dashboard_serviceord_address_id_32971a34_fk_dashboard` FOREIGN KEY (`address_id`) REFERENCES `dashboard_address` (`id`),
  ADD CONSTRAINT `dashboard_serviceord_customer_id_22cb746b_fk_dashboard` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_serviceord_service_id_8a58d951_fk_dashboard` FOREIGN KEY (`service_id`) REFERENCES `dashboard_subservices` (`id`);

--
-- Constraints for table `dashboard_servicereview`
--
ALTER TABLE `dashboard_servicereview`
  ADD CONSTRAINT `dashboard_servicerev_customer_id_e2b2c7aa_fk_dashboard` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_servicerev_subService_id_c55db405_fk_dashboard` FOREIGN KEY (`subService_id`) REFERENCES `dashboard_subservices` (`id`);

--
-- Constraints for table `dashboard_silderone`
--
ALTER TABLE `dashboard_silderone`
  ADD CONSTRAINT `dashboard_silderone_deal_id_fb64807e_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_sildertwo`
--
ALTER TABLE `dashboard_sildertwo`
  ADD CONSTRAINT `dashboard_sildertwo_deal_id_1472d1df_fk_dashboard_flashdeal_id` FOREIGN KEY (`deal_id`) REFERENCES `dashboard_flashdeal` (`id`);

--
-- Constraints for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  ADD CONSTRAINT `dashboard_subcategor_mainCategory_id_1a648402_fk_dashboard` FOREIGN KEY (`mainCategory_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_subservices`
--
ALTER TABLE `dashboard_subservices`
  ADD CONSTRAINT `dashboard_subservice_service_id_09ea8535_fk_dashboard` FOREIGN KEY (`service_id`) REFERENCES `dashboard_service` (`id`);

--
-- Constraints for table `dashboard_vendor`
--
ALTER TABLE `dashboard_vendor`
  ADD CONSTRAINT `dashboard_vendor_user_id_902e1996_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_vendorreview`
--
ALTER TABLE `dashboard_vendorreview`
  ADD CONSTRAINT `dashboard_vendorreview_vendor_id_9593c9b7_fk_dashboard_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `dashboard_vendor` (`id`);

--
-- Constraints for table `dashboard_wishlist`
--
ALTER TABLE `dashboard_wishlist`
  ADD CONSTRAINT `dashboard_wishlist_customer_id_a8a63adb_fk_dashboard_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `dashboard_customer` (`id`),
  ADD CONSTRAINT `dashboard_wishlist_productId_id_348c0575_fk_dashboard_product_id` FOREIGN KEY (`productId_id`) REFERENCES `dashboard_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
