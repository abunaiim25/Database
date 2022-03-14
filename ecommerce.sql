-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 11:09 AM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I Phone Brand', 1, '2021-11-23 11:21:52', NULL),
(2, 'OnePlus', 1, '2021-11-23 11:21:58', NULL),
(3, 'Oppo', 1, '2021-11-23 11:22:04', NULL),
(4, 'Nike', 1, '2021-12-10 07:19:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `qty`, `price`, `user_ip`, `created_at`, `updated_at`) VALUES
(16, 4, 3, 80000, '127.0.0.1', NULL, '2021-12-25 00:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 1, '2021-11-23 11:21:17', NULL),
(2, 'TV', 1, '2021-11-23 11:21:28', NULL),
(3, 'Laptop', 1, '2021-11-23 11:21:33', NULL),
(4, 'Desktop', 1, '2021-11-23 11:21:39', NULL),
(5, 'Shoe', 1, '2021-12-10 07:14:15', '2021-12-10 07:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NEW YEAR', '20', 1, '2021-11-23 11:25:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mains`
--

CREATE TABLE `mains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` int(11) NOT NULL,
  `phone2` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `font_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_font_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mains`
--

INSERT INTO `mains` (`id`, `email`, `phone1`, `phone2`, `address`, `font_img`, `second_font_img`, `social1`, `social2`, `social3`, `social4`, `created_at`, `updated_at`) VALUES
(1, 'naiimabu25@gamil.com', 1316057860, 1812112397, 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'storage/img/font_img.jpg', 'storage/img/second_font_img.jpg', '', '', '', '', NULL, '2021-12-10 07:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2021_11_22_151645_create_wishlists_table', 7),
(12, '2014_10_12_000000_create_users_table', 8),
(13, '2014_10_12_100000_create_password_resets_table', 8),
(14, '2019_08_19_000000_create_failed_jobs_table', 8),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 8),
(16, '2021_11_20_192254_create_categories_table', 8),
(17, '2021_11_21_071448_create_brands_table', 8),
(18, '2021_11_21_091547_create_products_table', 8),
(19, '2021_11_21_151404_create_coupons_table', 8),
(20, '2021_11_22_082024_create_carts_table', 8),
(21, '2021_11_22_152241_create_wishlists_table', 8),
(22, '2021_11_23_170122_create_orders_table', 8),
(23, '2021_11_23_170740_create_order_items_table', 8),
(24, '2021_11_23_172927_create_shippings_table', 9),
(25, '2021_11_27_123941_create_ratings_table', 10),
(27, '2021_11_27_180240_create_mains_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `payment_type`, `total`, `subtotal`, `coupon_discount`, `created_at`, `updated_at`) VALUES
(2, 1, '98443718', 'handcash', '26000', '26000', NULL, '2021-11-23 13:00:51', NULL),
(3, 1, '44593037', 'handcash', '400000', '400000', NULL, '2021-11-23 13:05:15', NULL),
(4, 1, '50889263', 'paypal', '26000', '26000', NULL, '2021-11-23 13:16:51', NULL),
(5, 1, '49079446', 'handcash', '320000', '400000', 20, '2021-11-23 13:19:08', NULL),
(6, 1, '84514452', 'handcash', '320000', '400000', 20, '2021-11-23 13:19:09', NULL),
(7, 1, '21270904', 'handcash', '1200000', '1200000', NULL, '2021-11-26 10:10:42', NULL),
(8, 1, '62355153', 'handcash', '80000', '80000', NULL, '2021-11-27 07:29:41', NULL),
(9, 2, '85934100', 'handcash', '80000', '80000', NULL, '2021-11-27 11:23:19', NULL),
(10, 2, '61133740', 'handcash', '1600000', '1600000', NULL, '2021-12-10 07:40:00', NULL),
(11, 1, '26146901', 'handcash', '80000', '80000', NULL, '2021-12-25 00:18:28', NULL);

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
(1, 1, 2, 1, '2021-11-23 12:51:28', NULL),
(2, 2, 1, 1, '2021-11-23 13:00:51', NULL),
(3, 3, 2, 1, '2021-11-23 13:05:15', NULL),
(4, 4, 1, 1, '2021-11-23 13:16:51', NULL),
(5, 5, 2, 1, '2021-11-23 13:19:08', NULL),
(6, 7, 3, 5, '2021-11-26 10:10:42', NULL),
(7, 7, 2, 2, '2021-11-26 10:10:42', NULL),
(8, 8, 4, 1, '2021-11-27 07:29:41', NULL),
(9, 9, 4, 1, '2021-11-27 11:23:19', NULL),
(10, 10, 2, 4, '2021-12-10 07:40:00', NULL),
(11, 11, 3, 1, '2021-12-25 00:18:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_slug`, `product_code`, `product_quantity`, `short_description`, `long_description`, `price`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'OnePlus N10', 'oneplus-n10', '1077', '20', '<p>A connected graph G is called an Euler graph, if there is a closed trail which</p><p>includes every edge of the graph G. An Euler path is a path that uses every edge of a graph exactly</p><p>once. An Euler path starts and ends at different vertices.</p>', '<p>A connected graph G is called an Euler graph, if there is a closed trail which</p><p>includes every edge of the graph G. An Euler path is a path that uses every edge of a graph exactly</p><p>once. An Euler path starts and ends at different vertices.</p>', 26000, 'fontend/img/product/upload/1717240626004550.jpg', 'fontend/img/product/upload/1717240626321535.jpg', 'fontend/img/product/upload/1717240626467637.jpg', 1, '2021-11-23 11:24:40', NULL),
(2, 1, 2, 'OnePlus 8', 'oneplus-8', '222', '30', '<p>A connected graph G is called an Euler graph, if there is a closed trail which</p><p>includes every edge of the graph G. An Euler path is a path that uses every edge of a graph exactly</p><p>once. An Euler path starts and ends at different vertices.</p>', '<p>A connected graph G is called an Euler graph, if there is a closed trail which</p><p>includes every edge of the graph G. An Euler path is a path that uses every edge of a graph exactly</p><p>once. An Euler path starts and ends at different vertices.</p>', 400000, 'fontend/img/product/upload/1717505414841963.png', 'fontend/img/product/upload/1717240677895982.jpg', 'fontend/img/product/upload/1717240677984558.jpg', 1, '2021-11-23 11:25:29', '2021-11-26 09:33:22'),
(3, 1, 2, 'OnePlus 9', 'oneplus-9', '1222', '40', '<p><span style=\"color: rgb(95, 99, 104); font-family: arial, sans-serif;\">PHP</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;IN DJIT.&nbsp;</span><span style=\"color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Daffodil</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Japan IT Limited (DJIT) intends to train Bangladeshi IT engineers by international standard curriculum with job placement</span><br></p>', '<p><span style=\"color: rgb(95, 99, 104); font-family: arial, sans-serif;\">PHP</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;IN DJIT.&nbsp;</span><span style=\"color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Daffodil</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Japan IT Limited (DJIT) intends to train Bangladeshi IT engineers by international standard curriculum with job placement</span><br></p>', 80000, 'fontend/img/product/upload/1717316079443771.jpg', 'fontend/img/product/upload/1717316087425164.jpg', 'fontend/img/product/upload/1717316087635953.jpg', 1, '2021-11-24 07:24:06', '2021-11-27 11:50:50'),
(4, 1, 2, 'OnePlus 9 Pro', 'oneplus-9-pro', '1111', '20', '<p><span style=\"color: rgb(51, 51, 51); font-family: Titillium, sans-serif; font-size: 16px; background-color: rgb(251, 251, 251);\">OnePlus is a Shenzhen-based start-up and producer of smartphones founded in December, 2013. The company\'s claim to fame is its bid to offer flagship-level specs in its smartphones, at affordable prices. OnePlus initially sold its smartphones only through an invite system where customers would be sent an invite to purchase smartphones and they had to make the purchase within a fixed time frame.</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: Titillium, sans-serif; font-size: 16px; background-color: rgb(251, 251, 251);\">OnePlus is a Shenzhen-based start-up and producer of smartphones founded in December, 2013. The company\'s claim to fame is its bid to offer flagship-level specs in its smartphones, at affordable prices. OnePlus initially sold its smartphones only through an invite system where customers would be sent an invite to purchase smartphones and they had to make the purchase within a fixed time frame.</span><br></p>', 80000, 'fontend/img/product/upload/1717506318911872.png', 'fontend/img/product/upload/1717506376876755.png', 'fontend/img/product/upload/1717506400153700.png', 0, '2021-11-26 09:24:03', '2021-12-10 07:14:56'),
(5, 5, 4, 'Nike 01', 'nike-01', '1222', '20', '<p><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans Text&quot;, arial, sans-serif;\">Nike, Inc. is an American multinational corporation that is engaged in the design, development, manufacturing, and worldwide marketing and sales of footwear, apparel, equipment, accessories, and services. The company is headquartered near Beaverton, Oregon, in the Portland metropolitan</span><br></p>', '<p><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans Text&quot;, arial, sans-serif;\">Nike, Inc. is an American multinational corporation that is engaged in the design, development, manufacturing, and worldwide marketing and sales of footwear, apparel, equipment, accessories, and services. The company is headquartered near Beaverton, Oregon, in the Portland metropolitan</span><br></p>', 29999, 'fontend/img/product/upload/1718765766676456.jpg', 'fontend/img/product/upload/1718765767680849.jpeg', 'fontend/img/product/upload/1718765767994000.jpg', 1, '2021-12-10 07:26:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '4', '4', '2021-11-27 07:30:36', '2021-11-27 08:05:51'),
(2, '2', '4', '3', '2021-11-27 11:29:10', '2021-11-27 11:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `shipping_first_name`, `shipping_last_name`, `shipping_email`, `shipping_phone`, `address`, `state`, `post_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Abu naiim', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-23 12:51:28', NULL),
(2, 2, 'Abu', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, Dhaka, Dhaka', 'Dhaka', 1111, '2021-11-23 13:00:51', NULL),
(3, 3, 'Abu', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, Dhaka, Dhaka', 'Dhaka', 1111, '2021-11-23 13:05:15', NULL),
(4, 4, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-23 13:16:51', NULL),
(5, 5, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-23 13:19:08', NULL),
(6, 6, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-23 13:19:10', NULL),
(7, 7, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-26 10:10:42', NULL),
(8, 8, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-27 07:29:41', NULL),
(9, 9, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-11-27 11:23:20', NULL),
(10, 10, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-12-10 07:40:00', NULL),
(11, 11, 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'Dhaka', 1310, '2021-12-25 00:18:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_as`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abu naiim', 'naiimabu25@gmail.com', NULL, 1, '$2y$10$uTXSz/4oxq6/Fajy5Lmoi.0sEsf3t2Pz4NVR8sAyAXlXsggnOlHoC', NULL, '2021-11-23 11:20:16', '2021-11-23 11:20:16'),
(2, 'Md Rayhan', 'abu15-13860@diu.edu.bd', NULL, 0, '$2y$10$A4f6mio9NM6U30CY/N2oj.Wl1z5cEHa0jAxNnTs7qBAG2Aw.Y.2qG', NULL, '2021-11-25 11:33:41', '2021-11-25 11:33:41');

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
(1, 2, 3, NULL, NULL),
(3, 1, 3, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mains`
--
ALTER TABLE `mains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mains`
--
ALTER TABLE `mains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
