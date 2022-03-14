-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 08:49 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description_readmore` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_description`, `about_description_readmore`, `created_at`, `updated_at`) VALUES
(2, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or words .', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2022-03-06 12:08:05', '2022-03-06 12:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Niky', 1, '2022-02-03 12:39:09', '2022-02-03 12:42:36'),
(4, 'Bata', 1, '2022-02-03 12:42:42', NULL),
(5, 'Apex', 0, '2022-02-03 12:42:56', '2022-02-03 12:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `qty`, `price`, `user_id`, `user_ip`, `created_at`, `updated_at`) VALUES
(54, 8, 1, 1200, 1, '127.0.0.1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shoe', 1, '2022-02-03 10:43:21', NULL),
(3, 'Watchs', 1, '2022-02-03 11:51:21', NULL),
(4, 'Books', 1, '2022-02-06 09:23:51', NULL),
(5, 'T-Shart', 1, '2022-02-06 09:24:05', NULL),
(6, 'Dresses', 1, '2022-02-06 09:37:06', NULL),
(7, 'Jumpsuits', 1, '2022-02-06 09:37:24', NULL),
(8, 'Running Shoes', 1, '2022-02-06 09:37:42', NULL),
(9, 'Pant', 1, '2022-02-06 09:50:39', NULL),
(10, 'Phone', 1, '2022-02-06 09:51:26', NULL),
(11, 'Laptop', 0, '2022-02-06 09:51:41', '2022-03-09 07:18:40'),
(12, 'Tab', 1, '2022-02-06 09:51:52', '2022-02-11 09:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `date`, `message`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Mohammad', 'abu15-13860@diu.edu.bd', '01785643672', '2022-02-22', 'Hello I am Abu naiim', 'In Progress', '5', '2022-02-22 05:32:48', '2022-02-22 05:32:48'),
(3, 'Apurbo', 'naiimabu25@gmail.com', '01316057864', '2022-02-22', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iste, rem asperiores. Unde ad iste dicta doloremque odit ab pariatur totam, sapiente, illum officia cupiditate voluptas veritatis, similique odio. Voluptatum, at?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iste, rem asperiores. Unde ad iste dicta doloremque odit ab pariatur totam, sapiente, illum officia cupiditate voluptas veritatis, similique odio. Voluptatum, at?', 'Seen', '5', '2022-02-22 05:48:51', '2022-02-22 05:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_persent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_name`, `discount_persent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year 2022', '10', 1, '2022-02-10 14:33:54', '2022-02-11 07:42:46'),
(3, 'New Year', '20', 1, '2022-03-09 07:49:46', '2022-03-09 07:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_controls`
--

CREATE TABLE `front_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo_big` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_small` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_bg_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_bg_txt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_bg_txt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_bg_txt3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt1_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt2_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_new_txt3_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_banner_txt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_banner_txt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_banner_txt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_banner_txt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myorder_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myorder_banner_txt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myorder_banner_txt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_contact_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_iteam_img_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_social_fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_social_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_social_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_social_insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_controls`
--

INSERT INTO `front_controls` (`id`, `logo_big`, `logo_small`, `home_bg_img`, `home_bg_txt1`, `home_bg_txt2`, `home_bg_txt3`, `home_new_txt1`, `home_new_txt2`, `home_new_txt3`, `home_new_txt1_img`, `home_new_txt2_img`, `home_new_txt3_img`, `home_banner_img`, `home_banner_txt1`, `home_banner_txt2`, `shop_banner_img`, `shop_banner_txt1`, `shop_banner_txt2`, `about_banner_img`, `contact_banner_img`, `myorder_banner_img`, `myorder_banner_txt1`, `myorder_banner_txt2`, `footer_text`, `footer_contact_address`, `footer_contact_phone`, `footer_contact_email`, `footer_iteam_img_1`, `footer_iteam_img_2`, `footer_iteam_img_3`, `footer_iteam_img_4`, `footer_iteam_img_5`, `footer_iteam_img_6`, `footer_social_fb`, `footer_social_twitter`, `footer_social_linkedin`, `footer_social_insta`, `created_at`, `updated_at`) VALUES
(8, '1646758614.png', '1646756144.png', '1646596710.jpg', 'NEW ARRIVALES', 'Best Price This Year', 'Shoomatic offers your very comfortable time on walking and exercises', 'You Can Directly Go On Shop', 'You Can Directly Go On News', 'You Can Directly Go Contact', '1646816227.jpg', '1646758941.jpg', '1646758941.png', '1646758040.jpg', 'MID SEASON\'S SALE', 'Autumn Collection UP TO 20% OFF', '1646816403.jpg', 'MID SEASON\'S SALE', 'MID SEASON\'S SALE Autumn Collection UP TO 20% OFF', '1646760930.jpg', '1646760930.jpg', '1646817025.jpg', 'MID SEASON\'S SALE', 'Autumn Collection UP TO 20% OFF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Dhaka, Bangladesh', '01316057864', 'abu15-13860@diu.edu.bd', '1646761984.jpg', '1646764203.png', '1646761984.jpg', '1646761984.jpg', '1646761984.jpg', '1646761984.jfif', 'https://www.facebook.com/profile.php?id=100010098828694', 'https://github.com/abunaiim25', 'https://www.linkedin.com/in/abu-naiim-516949210/', 'https://www.instagram.com/abu_naiim/?fbclid=IwAR05nZz1qhTRad9pH_cQ6nHDGShKExKoJCVAy_T1oRX7nM9iANIAyMH3BB0', '2022-03-06 13:28:50', '2022-03-14 13:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_31_172301_create_sessions_table', 1),
(7, '2022_02_03_163629_create_categories_table', 2),
(8, '2022_02_03_175842_create_brands_table', 3),
(11, '2022_02_03_190636_create_products_table', 4),
(12, '2022_02_09_134003_create_carts_table', 5),
(15, '2022_02_10_184521_create_discounts_table', 6),
(16, '2022_02_12_162925_create_orders_table', 7),
(17, '2022_02_12_162957_create_shippings_table', 7),
(18, '2022_02_12_165242_create_order_items_table', 7),
(19, '2022_02_17_101826_create_notifications_table', 8),
(20, '2022_02_21_110403_create_wishlists_table', 9),
(21, '2022_02_22_101941_create_contacts_table', 10),
(29, '2022_02_22_150040_create_news_table', 11),
(30, '2022_02_26_180640_create_abouts_table', 12),
(31, '2022_02_26_180823_create_teams_table', 13),
(34, '2022_02_28_104305_create_front_controls_table', 14),
(40, '2022_03_10_150111_create_payments_table', 15),
(41, '2022_03_11_151318_create_order_payments_table', 16),
(43, '2022_03_11_171339_create_orderitem_payments_table', 17),
(44, '2022_03_12_160516_create_ratings_table', 18),
(45, '2022_03_13_180743_create_reviews_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `category`, `place`, `writer_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '1645903635.jpg', 'iPhone 13 Pro Max, iPhone 13', 'iPhone', 'Dhaka, Bangladesh', 'Naiim', 'All of the iPhone 13 models feature the same OLED Super Retina XDR display, which is flexible and extends right into the chassis of each device. There\'s a 2,000,000:1 contrast ratio for blacker blacks and brighter whites, and up to 1200 nits peak brightness for HDR photos, videos, TV shows, and movies.All of the iPhone 13 models feature the same OLED Super Retina XDR display, which is flexible and extends right into the chassis of each device. There\'s a 2,000,000:1 contrast ratio for blacker blacks and brighter whites, and up to 1200 nits peak brightness for HDR photos, videos, TV shows, and movies', '2022-02-26 13:27:15', '2022-02-26 13:27:15'),
(2, '1645903885.jpg', 'Samsung, South Korean company', 'Samsung', 'Korean', 'rayhan', 'Samsung, South Korean company that is one of the world\'s largest producers of electronic devices. Samsung specializes in the production of a wide variety of consumer and industry electronics, including appliances, digital media devices, semiconductors, memory chips, and integrated systems.Samsung, South Korean company that is one of the world\'s largest producers of electronic devices. Samsung specializes in the production of a wide variety of consumer and industry electronics, including appliances, digital media devices, semiconductors, memory chips, and integrated systems.Samsung, South Korean company that is one of the world\'s largest producers of electronic devices. Samsung specializes in the production of a wide variety of consumer and industry electronics, including appliances, digital media devices, semiconductors, memory chips, and integrated systems.Samsung, South Korean company that is one of the world\'s largest producers of electronic devices. Samsung specializes in the production of a wide variety of consumer and industry electronics, including appliances, digital media devices, semiconductors, memory chips, and integrated systems.', '2022-02-26 13:29:57', '2022-02-26 13:31:25'),
(4, '1645981380.jpeg', 'Apex footwear brings you an exclusive range of shoes, slippers', 'Apex', 'Dhaka', 'Fahim Ahmed', 'Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.Apex footwear brings you an exclusive range of shoes, slippers, sandals, and clothing for men, women & kids. Buy shoes online and enroll in Apex rewards.', '2022-02-27 11:03:00', '2022-02-27 11:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem_payments`
--

CREATE TABLE `orderitem_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitem_payments`
--

INSERT INTO `orderitem_payments` (`id`, `order_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 7, 6, 2, '2022-03-11 11:27:56', NULL),
(2, 7, 7, 3, '2022-03-11 11:27:56', NULL),
(7, 12, 13, 1, '2022-03-12 11:11:11', NULL),
(8, 13, 13, 1, '2022-03-12 11:33:15', NULL),
(9, 14, 8, 1, '2022-03-12 11:46:47', NULL),
(10, 15, 8, 1, '2022-03-12 11:47:24', NULL),
(14, 19, 13, 1, '2022-03-12 13:46:29', NULL),
(15, 20, 13, 1, '2022-03-13 00:28:28', NULL),
(18, 25, 11, 1, '2022-03-13 01:02:57', NULL),
(19, 26, 11, 1, '2022-03-13 08:19:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `payment_type`, `total`, `subtotal`, `discount_percentage`, `status`, `created_at`, `updated_at`) VALUES
(60, 7, '34210922', 'HandCash', '5000', '5000', NULL, 1, '2022-03-12 07:18:29', '2022-03-12 09:03:34'),
(61, 5, '64126882', 'HandCash', '5000', '5000', NULL, 1, '2022-03-12 09:02:24', '2022-03-12 09:03:29'),
(64, 5, '87398482', 'HandCash', '5000', '5000', NULL, 0, '2022-03-13 09:21:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(66, 60, 13, 1, '2022-03-12 07:18:29', NULL),
(67, 61, 13, 1, '2022-03-12 09:02:25', NULL),
(68, 62, 11, 1, '2022-03-12 09:08:19', NULL),
(69, 63, 13, 1, '2022-03-12 13:28:23', NULL),
(70, 64, 13, 1, '2022-03-13 09:21:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `user_id`, `invoice_no`, `payment_type`, `total`, `subtotal`, `discount_percentage`, `status`, `created_at`, `updated_at`) VALUES
(7, 5, '20950502', NULL, '2100', '2100', NULL, 1, '2022-03-11 11:27:56', '2022-03-11 12:11:59'),
(12, 6, '34405841', NULL, '5000', '5000', NULL, 1, '2022-03-12 11:11:10', '2022-03-13 04:17:50'),
(13, 5, '20039597', NULL, '4500', '5000', 10, 0, '2022-03-12 11:33:15', NULL),
(15, 5, '54035032', NULL, '1080', '1200', 10, 0, '2022-03-12 11:47:23', NULL),
(19, 5, '88319493', NULL, '5000', '5000', NULL, 0, '2022-03-12 13:46:29', NULL),
(20, 5, '53080560', NULL, '5000', '5000', NULL, 0, '2022-03-13 00:28:28', NULL),
(25, 5, '65339671', NULL, '200', '200', NULL, 0, '2022-03-13 01:02:57', NULL),
(26, 5, '86914766', NULL, '200', '200', NULL, 0, '2022-03-13 08:19:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('naiimabu25@gmail.com', '$2y$10$2qI6ALViB43CJ0nNJWOZVO3ANrh4IXQxMzAbqGWpTUl4JLs2j297q', '2022-02-17 06:05:33'),
('abunaiim4@gmail.com', '$2y$10$f6mc2g.uzIzrPp7xXn1s4Oau4ldTK5mBZpo4RABpVc2ZThVGE6nSy', '2022-02-17 06:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `amount`, `name`, `email`, `phone`, `address`, `state`, `post_code`, `transaction_id`, `currency`, `user_id`, `status`, `description`, `created_at`, `updated_at`) VALUES
(5, 4, '11200', 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', 'Bangladesh', 1232, '622b824ba8f35', 'BDT', '5', 'Pending', '', '2022-03-11 11:09:32', '2022-03-11 11:09:32'),
(6, 7, '2100', 'Admin', 'naiimabu25@gmail.com', '01785643672', 'Dhaka', 'Bangladesh', 1232, '622b869c077ab', 'BDT', '5', 'Pending', '', '2022-03-11 11:27:56', '2022-03-11 11:27:56'),
(11, 12, '5000', 'Abu Naiim', 'abu15-13860@diu.edu.bd', '01785643672', 'Dhaka', 'Bangladesh', 1310, '622cd42eedae7', 'BDT', '6', 'Processing', '', '2022-03-12 11:11:11', '2022-03-12 11:11:11'),
(12, 13, '4500', 'Admin', 'abu15-13860@diu.edu.bd', '01785643672', 'Dhaka', 'Bangladesh', 1340, '622cd95b589ee', 'BDT', '5', 'Processing', '', '2022-03-12 11:33:15', '2022-03-12 11:33:15'),
(13, 15, '1200', 'Admin', 'naiimabu25@gmail.com', '01316057864', 'syi mhf jkhf', 'cdfg', 1232, '622cdcabe9f2d', 'BDT', '5', 'Processing', '', '2022-03-12 11:47:24', '2022-03-12 11:47:24'),
(14, 19, '5000', 'Admin', 'naiimabu25@gmail.com', '01785643672', 'Dhaka', 'Bangladesh', 1318, '622cf8954c95a', 'BDT', '5', 'Processing', '', '2022-03-12 13:46:29', '2022-03-12 13:46:29'),
(19, 25, '200', 'Md Rayhan', 'naiimabu25@gmail.com', '01785643672', 'Keranigong, Dhaka', 'BD', 1310, '622d9721bace9', 'BDT', '5', 'Processing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including .', '2022-03-13 01:02:58', '2022-03-13 03:46:56'),
(20, NULL, '200', NULL, NULL, NULL, 'Dhaka', 'Bangladesh', 1232, '622db7ad2cbc6', 'BDT', '5', 'Pending', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-13 03:21:49', '2022-03-13 03:21:49'),
(21, NULL, '200', 'md', 'naiimabu25@gmail.com', '01785643672', 'Dhaka', 'Bangladesh', 1232, '622db98058749', 'BDT', '5', 'Pending', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-13 03:29:36', '2022-03-13 03:29:36'),
(22, NULL, '200', 'Admin', 'naiimabu25@gmail.com', '01785643672', 'Dhaka', 'BD', 1232, '622dba3f98cfb', 'BDT', '5', 'Pending', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-13 03:32:47', '2022-03-13 03:32:47'),
(23, NULL, '200', 'Admin', 'naiimabu25@gmail.com', '01785643672', 'Keranigong, Dhaka', 'Bangladesh', 1232, '622dba9210cb2', 'BDT', '5', 'Pending', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-13 03:34:10', '2022-03-13 03:34:10'),
(24, 26, '200', 'Admin', 'naiimabu25@gmail.com', '01785643672', 'Candpur', 'Bangladesh', 1310, '622dfd61d6b73', 'BDT', '5', 'Processing', 'Something write about shopping if any (optional):', '2022-03-13 08:19:14', '2022-03-13 08:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_slug`, `product_code`, `product_quantity`, `description`, `price`, `image_one`, `image_two`, `image_three`, `image_four`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 3, 'Shoe', NULL, '12341', '14', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 300, '1644056929.jpg', '1644056929.jpg', '1644056929.jpg', '1644056929.jpg', 1, '2022-02-05 04:28:49', '2022-03-11 12:17:45'),
(7, 3, 3, 'Watch', NULL, '40943', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 500, '1644063644.jpg', '1644063644.jfif', '1644063644.jfif', '1644063644.jpg', 1, '2022-02-05 06:20:44', '2022-03-11 11:27:56'),
(8, 1, 4, 'Shoe Bata', NULL, '20983', '8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1200, '1644063773.jpg', '1644063773.jpg', '1644063773.jpg', '1644063773.jpg', 1, '2022-02-05 06:22:53', '2022-03-12 11:47:24'),
(9, 1, 5, 'Apex Shoe', '', '20987', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1100, '1644063889.jpg', '1644063889.jpg', '1644063889.jpg', '1644063889.jpg', 1, '2022-02-05 06:24:49', '2022-02-20 12:18:40'),
(10, 3, 5, 'Watch 12', NULL, '3456', '0', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1200, '1644261914.jpg', '1644143153.jfif', '1644143153.jpg', '1644143153.jpg', 1, '2022-02-06 04:25:53', '2022-02-15 04:39:15'),
(11, 3, 5, 'Watch 133', 'Watch_133', '1894', '17', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 200, '1647154838.jpg', '1644145742.jfif', '1644145742.jpg', '1644145742.jpg', 1, '2022-02-06 05:09:02', '2022-03-13 08:19:14'),
(13, 1, 3, 'Niky Fatafati', 'Niky_4098', '30332', '19', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 5000, '1644502971.jpg', '1644502971.jpg', '1644502971.jpg', '1644502971.jpg', 1, '2022-02-10 08:22:51', '2022-03-13 09:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '5', '13', '4', '2022-03-12 11:07:31', '2022-03-12 11:07:45'),
(2, '5', '11', '2', '2022-03-13 05:58:11', '2022-03-13 09:02:45'),
(3, '6', '11', '4', '2022-03-13 09:05:06', '2022-03-13 09:05:06'),
(4, '5', '8', '3', '2022-03-14 13:23:16', '2022-03-14 13:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '5', '11', 'Watch 133 combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2022-03-13 13:21:09', '2022-03-14 13:15:41'),
(2, '5', '13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-03-13 13:47:57', '2022-03-13 13:47:57'),
(3, '5', '13', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal new hello bro', '2022-03-13 13:53:44', '2022-03-14 13:07:53'),
(4, '6', '13', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', '2022-03-13 13:55:14', '2022-03-13 13:55:14'),
(5, '7', '13', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2022-03-13 14:09:31', '2022-03-13 14:09:31'),
(11, '6', '13', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is avaible.', '2022-03-14 09:34:46', '2022-03-14 11:24:22'),
(12, '7', '11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-03-14 12:22:33', '2022-03-14 12:22:33'),
(13, '7', '11', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2022-03-14 12:22:54', '2022-03-14 12:22:54'),
(14, '7', '11', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '2022-03-14 12:24:49', '2022-03-14 12:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IuC3JZzlORg4KRe6KF3ZMZfofzHoeQAYJiicXRC8', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNnBidXY4STlhVnVaS2hLOHMzaGtPRVFsT0lURUcwSEZQNkRkVGR5WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXZpZXdfbW9yZS8xMyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRqZld6c3ZDVnhIeGZva2hNYnd1QWp1b0xLS0h0M00vSzl0cVFpdnJSSUppanpyLm9ZNWgyZSI7fQ==', 1647286002);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `order_id`, `shipping_name`, `shipping_email`, `shipping_phone`, `address`, `state`, `description`, `post_code`, `created_at`, `updated_at`) VALUES
(43, 7, 60, 'Apurbo', 'mdnaiim13@gmail.com', '01316057864', 'Dhaka', 'BD', NULL, 1232, '2022-03-12 07:18:29', NULL),
(44, 5, 61, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', 'Bangladesh', NULL, 1232, '2022-03-12 09:02:25', NULL),
(45, 5, 62, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', 'Bangladesh', NULL, 1232, '2022-03-12 09:08:19', NULL),
(46, 5, 64, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', 'Bangladesh', NULL, 1232, '2022-03-13 09:21:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_txt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_img`, `team_name`, `team_designation`, `team_txt`, `team_email`, `created_at`, `updated_at`) VALUES
(2, '1645902015.jpeg', 'Abu Naiim', 'CEO & Founder of AgroBd', ' I am a Software Engineer and I am studying frojm Daffodil International University', 'abu15-13860@diu.edu.bd', '2022-02-26 13:00:15', '2022-02-26 13:00:15'),
(3, '1645904968.jpg', 'Rayhan', 'Co-founder', 'I am a student of Daffodil International University && I am a Software Engineer', 'naiimabu25@gmail.com', '2022-02-26 13:49:28', '2022-02-26 13:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', '1', '2022-02-19 11:56:15', '$2y$10$jfWzsvCVxHxfokhMbwuAjuoLKKHt3M/K9tqQivrRIJijzr.oY5h2e', NULL, NULL, NULL, NULL, NULL, '2022-02-19 11:53:58', '2022-02-19 11:56:15'),
(6, 'Abu Naiim', 'abu15-13860@diu.edu.bd', '01316057864', 'Dhaka', '0', '2022-02-19 12:20:28', '$2y$10$Z8HFo0MWWgT8ZlfiqlY56uFP3jcZK6et79/q3zBTxMC9SPcoHCAq2', NULL, NULL, NULL, NULL, NULL, '2022-02-19 12:20:04', '2022-02-19 12:45:13'),
(7, 'Apurbo', 'mdnaiim13@gmail.com', '01785643672', 'Candpur', '1', '2022-03-09 08:55:41', '$2y$10$eAl5FNCDAMYw1JEx/6RnCuZ1qk9K1S6QZjj6hzLhw0tqKPgHcNRVO', NULL, NULL, NULL, NULL, NULL, '2022-03-09 08:44:55', '2022-03-09 10:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 6, 8, NULL, '2022-02-21 09:25:53'),
(6, 6, 11, NULL, '2022-02-21 12:05:02'),
(8, 5, 11, NULL, '2022-03-13 01:02:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `front_controls`
--
ALTER TABLE `front_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orderitem_payments`
--
ALTER TABLE `orderitem_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_controls`
--
ALTER TABLE `front_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderitem_payments`
--
ALTER TABLE `orderitem_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
