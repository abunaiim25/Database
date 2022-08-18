-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 08:07 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrobd`
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
(6, 'Farm', 1, '2022-03-15 10:52:51', NULL),
(7, 'Home-bred', 1, '2022-03-15 10:53:27', NULL),
(8, 'Sea', 1, '2022-03-15 11:14:17', '2022-03-18 11:21:53');

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
(2, 16, 1, 650, 6, '127.0.0.1', NULL, NULL),
(3, 18, 1, 180, 6, '127.0.0.1', NULL, NULL),
(4, 18, 1, 180, 5, '127.0.0.1', NULL, NULL),
(5, 15, 2, 300, 5, '127.0.0.1', NULL, NULL);

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
(1, 'Rich', 1, '2022-03-15 10:45:53', NULL),
(2, 'Chicken', 1, '2022-03-15 10:50:07', NULL),
(3, 'Beef', 1, '2022-03-15 10:50:35', NULL),
(4, 'Mutton', 1, '2022-03-15 10:52:08', NULL),
(5, 'Fish', 1, '2022-03-15 10:52:16', NULL),
(6, 'Fruits', 1, '2022-03-15 11:19:39', '2022-03-15 13:19:34'),
(7, 'Vegetable', 1, '2022-03-16 01:34:40', NULL);

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
(3, 'Apurbo', 'naiimabu25@gmail.com', '01316057864', '2022-02-22', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iste, rem asperiores. Unde ad iste dicta doloremque odit ab pariatur totam, sapiente, illum officia cupiditate voluptas veritatis, similique odio. Voluptatum, at?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Iste, rem asperiores. Unde ad iste dicta doloremque odit ab pariatur totam, sapiente, illum officia cupiditate voluptas veritatis, similique odio. Voluptatum, at?', 'Seen', '5', '2022-02-22 05:48:51', '2022-02-22 05:51:40'),
(4, 'Admin', 'naiimabu25@gmail.com', '01316057864', '2022-03-15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'In Progress', '5', '2022-03-15 10:40:44', '2022-03-15 10:40:44');

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
(3, 'New Year', '20', 1, '2022-03-09 07:49:46', '2022-03-09 07:49:46'),
(4, 'Google', '10', 1, '2022-03-18 04:36:11', '2022-03-18 04:36:11');

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
(8, '1647357845.png', '1647357960.png', '1652120956.jpg', 'NEW ARRIVALES', 'Best Price This Year', 'Welcome to our AgroBd shop', 'You Can Directly Go On Shop', 'You Can Directly Go On News', 'You Can Directly Go Contact', '1647359164.jpg', '1646758941.jpg', '1646758941.png', '1647359936.jpg', 'MID SEASON\'S SALE', 'Autumn Collection UP TO 20% OFF', '1647360800.jpg', 'MID SEASON\'S SALE', 'MID SEASON\'S SALE Autumn Collection UP TO 20% OFF', '1646760930.jpg', '1646760930.jpg', '1647360881.jpg', 'MID SEASON\'S SALE', 'Autumn Collection UP TO 20% OFF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Dhaka, Bangladesh', '01316057864', 'abu15-13860@diu.edu.bd', '1647367173.jpg', '1647367173.jpg', '1647367173.jpg', '1647367173.jpg', '1647367173.jpg', '1647367173.jpg', 'https://www.facebook.com/profile.php?id=100010098828694', 'https://github.com/abunaiim25', 'https://www.linkedin.com/in/abu-naiim-516949210/', 'https://www.instagram.com/abu_naiim/?fbclid=IwAR05nZz1qhTRad9pH_cQ6nHDGShKExKoJCVAy_T1oRX7nM9iANIAyMH3BB0', '2022-03-06 13:28:50', '2022-05-09 12:29:16');

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
(51, '2022_03_13_180743_create_reviews_table', 19),
(52, '2022_03_16_091753_create_my_businesses_table', 19),
(53, '2022_03_17_064338_create_rating_businesses_table', 20),
(54, '2022_03_17_064533_create_review_businesses_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `my_businesses`
--

CREATE TABLE `my_businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `police_station` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_office` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_businesses`
--

INSERT INTO `my_businesses` (`id`, `category`, `product_name`, `product_quantity`, `product_description`, `price`, `image_one`, `image_two`, `image_three`, `image_four`, `status`, `user_id`, `phone`, `email`, `name`, `village`, `road`, `district`, `police_station`, `post_office`, `country`, `post_code`, `personal_description`, `created_at`, `updated_at`) VALUES
(2, 'Fruits', 'Orange', '30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '220', '1647438148.jpg', '1647438148.jpg', '1647438148.jpg', '1647438148.jpg', 1, 6, '01316057864', 'abu15-13860@diu.edu.bd', 'Abu Naiim', 'Model Town', 'Block-B', 'Dhaka', 'Keranigonj Model', 'Keranigonj', 'Bangladesh', '1310', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-16 07:42:28', '2022-03-16 23:57:25'),
(3, 'Vegetable', 'Vegetable various', '25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Subject to discussion', '1647457442.jpg', '1647457442.jpg', '1647457442.jpg', '1647457470.jpeg', 1, 7, '01785643672', 'mdnaiim13@gmail.com', 'Apurbo', 'Model Town', 'Block-B', 'Chandpur', 'Keranigonj Model', 'Keranigonj', 'Bangladesh', '1232', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-16 08:31:21', '2022-03-16 13:07:03'),
(6, 'Beef', 'Beef', '20', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '550', '1647615950.jpg', '1647615950.jpg', '1647615950.jpg', '1647615950.jpg', 1, 6, '01316057864', 'abu15-13860@diu.edu.bd', 'Abu Naiim', 'Model Town', 'Block-B', 'Chandpur', 'Keranigonj Model', 'Keranigonj', 'Bangladesh', '1232', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-18 09:05:50', '2022-03-19 02:46:31');

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
(1, '1647372293.jpg', 'Top mango varieties in Bangladesh', 'Fruits', 'Dhaka, Bangladesh', 'Abu Naiim', 'Who does not love mangoes – with their unique flavor, fragrance and texture? The King among Fruit is thriving very well in Bangladesh, thanks to the modern methods of horticulture that are used to nurture the mango trees. Mangoes grow widely all over Bangladesh and there are innumerable varieties to charm the connoisseur. Each variety has its own admirers. Some of the better mangoes are the superior grafted varieties whereas the local or Deshi aam is grown from seedlings.Who does not love mangoes – with their unique flavor, fragrance and texture? The King among Fruit is thriving very well in Bangladesh, thanks to the modern methods of horticulture that are used to nurture the mango trees. Mangoes grow widely all over Bangladesh and there are innumerable varieties to charm the connoisseur. Each variety has its own admirers. Some of the better mangoes are the superior grafted varieties whereas the local or Deshi aam is grown from seedlings.Who does not love mangoes – with their unique flavor, fragrance and texture? The King among Fruit is thriving very well in Bangladesh, thanks to the modern methods of horticulture that are used to nurture the mango trees. Mangoes grow widely all over Bangladesh and there are innumerable varieties to charm the connoisseur. Each variety has its own admirers. Some of the better mangoes are the superior grafted varieties whereas the local or Deshi aam is grown from seedlings.', '2022-03-15 13:16:44', '2022-03-15 13:24:53'),
(2, '1647372267.jpg', 'What is agriculture shop?', 'Shop', 'Dhaka', 'Naiim', 'An agricultural supply store or agrocenter is an agriculturally-oriented shop where one sells agricultural supplies—inputs required for agricultural production such as pesticides, feed and fertilizers .An agricultural supply store or agrocenter is an agriculturally-oriented shop where one sells agricultural supplies—inputs required for agricultural production such as pesticides, feed and fertilizers .An agricultural supply store or agrocenter is an agriculturally-oriented shop where one sells agricultural supplies—inputs required for agricultural production such as pesticides, feed and fertilizers .An agricultural supply store or agrocenter is an agriculturally-oriented shop where one sells agricultural supplies—inputs required for agricultural production such as pesticides, feed and fertilizers .', '2022-03-15 13:24:27', '2022-03-15 13:24:27'),
(3, '1647417140.jpg', 'Rice price high despite new crop, ample imports', 'Rice', 'Dhaka, Bangladesh', 'Rayhan', 'Different varieties of rice cultivated by farmers in surrounding villages being sold for Tk 1,400 to Tk 2,000 per maund (around 37 kilogrammes) at a centuries-old floating market sitting every Saturday and Tuesday on the Sandha river in Barishal’s Banaripara upazila. The photo was taken yesterday. Photo: Titu Das.Different varieties of rice cultivated by farmers in surrounding villages being sold for Tk 1,400 to Tk 2,000 per maund (around 37 kilogrammes) at a centuries-old floating market sitting every Saturday and Tuesday on the Sandha river in Barishal’s Banaripara upazila. The photo was taken yesterday. Photo: Titu Das', '2022-03-16 01:52:20', '2022-03-16 01:52:20');

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
(1, 5, '61439009', 'HandCash', '1170', '1300', 10, 0, '2022-03-15 12:13:00', NULL);

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
(1, 1, 16, 2, '2022-03-15 12:13:00', NULL);

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
(14, 5, 8, 'Sea Fish', 'sea_fish', '12341', '10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 2000, '1647363996.jpg', '1647363996.jpg', '1647363996.jpg', '1647364422.jpg', 1, '2022-03-15 11:06:36', '2022-03-15 11:15:06'),
(15, 6, 7, 'Mango', 'mango', '1456', '20', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 300, '1647364894.jpg', '1647364894.jpg', '1647364894.jpg', '1647364894.jpg', 1, '2022-03-15 11:21:34', '2022-03-15 11:21:34'),
(16, 3, 6, 'Beef', '', '3456', '28', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable sourceContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source', 650, '1647367488.jpg', '1647367488.jpg', '1647367488.jpg', '1647367488.jpg', 1, '2022-03-15 12:04:48', '2022-03-15 12:13:00'),
(17, 7, 7, 'Vegitable various', 'vegitable_various', '1267', '30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 30, '1647416359.jpg', '1647416359.jpg', '1647416359.jpg', '1647416359.jpg', 1, '2022-03-16 01:39:19', '2022-03-16 01:39:19'),
(18, 6, 6, 'Apple', 'apple', '1467', '25', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 180, '1647416659.jpg', '1647416659.jpg', '1647416659.jpg', '1647416659.jpg', 1, '2022-03-16 01:44:19', '2022-03-16 01:44:19');

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
(1, '6', '18', '3', '2022-03-17 00:40:53', '2022-03-26 08:27:44'),
(2, '6', '17', '3', '2022-03-17 00:41:12', '2022-03-17 00:41:12'),
(3, '6', '16', '5', '2022-03-17 00:41:28', '2022-03-17 00:41:28'),
(4, '6', '15', '4', '2022-03-17 00:54:56', '2022-03-17 00:54:56'),
(5, '5', '15', '4', '2022-03-28 09:27:52', '2022-03-28 09:27:52'),
(6, '5', '14', '3', '2022-05-09 12:30:54', '2022-05-09 12:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `rating_businesses`
--

CREATE TABLE `rating_businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating_businesses`
--

INSERT INTO `rating_businesses` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '6', '3', '4', '2022-03-17 00:54:39', '2022-03-17 03:51:26'),
(2, '6', '2', '5', '2022-03-17 04:05:00', '2022-03-17 04:05:00'),
(3, '6', '6', '4', '2022-03-18 09:06:06', '2022-03-18 09:06:06');

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
(1, '6', '15', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures hi', '2022-03-17 04:06:25', '2022-03-17 07:50:27'),
(2, '6', '18', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '2022-03-22 10:58:24', '2022-03-22 10:58:24'),
(3, '6', '18', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '2022-03-22 10:58:32', '2022-03-22 10:58:32'),
(4, '6', '16', 'Hello I am abu naiim', '2022-03-26 08:30:03', '2022-03-26 08:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `review_businesses`
--

CREATE TABLE `review_businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review_businesses`
--

INSERT INTO `review_businesses` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(2, '6', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-17 04:05:48', '2022-03-17 04:05:48'),
(3, '7', '3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2022-03-17 05:16:42', '2022-03-17 05:16:42'),
(5, '6', '3', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet. Abu Naiim', '2022-03-17 07:35:10', '2022-03-17 08:00:28'),
(6, '6', '3', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2022-03-17 08:01:21', '2022-03-17 08:01:21'),
(7, '6', '3', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2022-03-17 08:03:59', '2022-03-17 08:03:59');

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
('5KowPI6DjomnOwEb7Y1tr9i1a7bebnYOFBffxI7E', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZnNzd0pFT1JlM3FXRHBXOXZGa2xpcm15VUhyTXVhaEhkZld3MUZiUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0X2RldGFpbHMvMTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkamZXenN2Q1Z4SHhmb2toTWJ3dUFqdW9MS0tIdDNNL0s5dHFRaXZyUklKaWp6ci5vWTVoMmUiO30=', 1652121054),
('9RhBQndQGfp7drBmlQJEyW8PLk1s56QnxyrdTxmQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjdtaFJYUXVHSHBZREVDaklKc2I3M3JraEJ1TjRYVEFJYUd1WGkzOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1652112657),
('gy7oLCK0LhKnQM2i2Zwqi8PLjNGRXFFHnqp3gBPv', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSFQzNmxpcjhqNmtpSXQ5WkozNUFRZGxVNXpFSk1wTUJJM1cwbUg1QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGpmV3pzdkNWeEh4Zm9raE1id3VBanVvTEtLSHQzTS9LOXRxUWl2clJJSmlqenIub1k1aDJlIjt9', 1652109218),
('l4lvOXqqZWEwQKVtr2MJ04BPip3wPgPoznoHhI9S', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSmxrNzYwOFdENmFlYThYcnYzdzN0Rmdwc2t3bGpkeGJQNzkwNlMzUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzX2RldGFpbHMvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRqZld6c3ZDVnhIeGZva2hNYnd1QWp1b0xLS0h0M00vSzl0cVFpdnJSSUppanpyLm9ZNWgyZSI7fQ==', 1648490087);

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
(46, 5, 64, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', 'Bangladesh', NULL, 1232, '2022-03-13 09:21:37', NULL),
(47, 5, 1, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Candpur', 'Bangladesh', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source', 1314, '2022-03-15 12:13:00', NULL);

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
(2, '1647368913.jpg', 'Abu Naiim', 'CEO & Founder of AgroBd and Software Engineer', 'I am a Software Engineer and I am studying frojm Daffodil International University', 'abu15-13860@diu.edu.bd', '2022-02-26 13:00:15', '2022-03-15 12:28:33'),
(3, '1647368921.jpeg', 'Rayhan', 'Co-founder', 'I am a student of Daffodil International University && I am a Software Engineer', 'naiimabu25@gmail.com', '2022-02-26 13:49:28', '2022-03-15 12:28:41');

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
(7, 'Apurbo', 'mdnaiim13@gmail.com', '01785643672', 'Candpur', '0', '2022-03-09 08:55:41', '$2y$10$eAl5FNCDAMYw1JEx/6RnCuZ1qk9K1S6QZjj6hzLhw0tqKPgHcNRVO', NULL, NULL, NULL, NULL, NULL, '2022-03-09 08:44:55', '2022-03-16 13:01:38');

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
(1, 5, 15, NULL, '2022-03-15 13:28:38');

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
-- Indexes for table `my_businesses`
--
ALTER TABLE `my_businesses`
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
-- Indexes for table `rating_businesses`
--
ALTER TABLE `rating_businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_businesses`
--
ALTER TABLE `review_businesses`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `my_businesses`
--
ALTER TABLE `my_businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderitem_payments`
--
ALTER TABLE `orderitem_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rating_businesses`
--
ALTER TABLE `rating_businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review_businesses`
--
ALTER TABLE `review_businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
