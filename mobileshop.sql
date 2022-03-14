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
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(20, '1', '7', '3', '2021-11-06 07:45:04', '2021-11-07 12:49:45'),
(32, '13', '3', '1', '2021-12-25 11:27:07', '2021-12-25 11:27:07'),
(33, '12', '3', '1', '2021-12-28 06:32:16', '2021-12-28 06:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'I phone', 'I phone', 'Original Product', 0, 1, '1635769012.jpg', 'I phone', 'I phone', 'I phone', '2021-10-31 11:46:52', '2021-11-01 06:16:52'),
(3, 'Samsung', 'Samsung', 'Good Product', 0, 1, '1635764612.jpg', 'Samsung', 'Samsung Samsung', 'Samsung', '2021-11-01 05:03:32', '2021-11-01 05:03:42'),
(4, 'OnePlus', 'OnePlus', 'Good Product', 0, 1, '1635764906.jpg', 'OnePlus', 'OnePlus OnePlus', 'OnePlus', '2021-11-01 05:08:26', '2021-11-01 05:50:22'),
(5, 'Xiaomi', 'Xiaomi', 'Original Product', 0, 1, '1635766172.jpg', 'Xiaomi', 'Xiaomi Xiaomi', 'Xiaomi', '2021-11-01 05:29:32', '2021-11-01 05:29:32'),
(6, 'Oppo', 'Oppo', 'Nice Product', 0, 1, '1635767374.jpg', 'Oppo', 'Oppo Oppo', 'Oppo', '2021-11-01 05:49:34', '2021-11-01 05:49:34'),
(7, 'Realme', 'Realme', 'Nice Product', 0, 1, '1635767656.jpg', 'Realme', 'Realme Realme', 'Realme', '2021-11-01 05:54:16', '2021-11-01 05:54:16');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_31_172303_create_categories_table', 2),
(6, '2021_10_31_180052_create_products_table', 3),
(7, '2021_11_01_123620_create_carts_table', 4),
(8, '2021_11_01_164315_create_orders_table', 5),
(9, '2021_11_01_165142_create_order_items_table', 5),
(10, '2021_11_03_165554_create_wishlists_table', 6),
(11, '2021_11_08_154413_create_ratings_table', 7),
(12, '2021_11_10_151921_create_payments_table', 8),
(14, '2021_11_11_094528_create_reviews_table', 9),
(15, '2021_12_27_180915_create_payments_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '12', 'Apurbo', '1', 'abunaiim4@gmail.com', '1', '1', '1', '1', '1', '1', '1', '1200000', 1, NULL, 'sharma4087', '2021-11-06 03:38:59', '2021-11-06 03:44:39'),
(2, '12', 'Apurbo', '2', 'abunaiim4@gmail.com', '2', '2', '2', '2', '2', '2', '2', '850000', 1, NULL, 'sharma5541', '2021-11-06 03:40:33', '2021-11-06 03:44:47'),
(3, '1', 'Abu naiim', '3', 'naiimabu25@gmail.com', '3', '3', '3', '3', '3', '3', '3', '915000', 1, NULL, 'sharma5289', '2021-11-06 03:42:23', '2021-11-06 03:44:55'),
(4, '1', 'Abu naiim', '3', 'naiimabu25@gmail.com', '3', '3', '3', '3', '3', '3', '3', '2350000', 0, NULL, 'sharma4197', '2021-11-06 03:43:48', '2021-11-06 03:43:48'),
(5, '1', 'Abu naiim', '0', 'naiimabu25@gmail.com', '0', '0', '0', '1', '0', '1', '1', '850000', 0, NULL, 'sharma5781', '2021-11-06 04:30:26', '2021-11-06 04:30:26'),
(6, '1', 'Abu naiim', '1', 'naiimabu25@gmail.com', '1', '1', '1', '1', '1', '1', '1', '850000', 0, NULL, 'sharma8897', '2021-11-06 07:43:42', '2021-11-06 07:43:42'),
(7, '11', 'Abu', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1111', '65000', 0, NULL, 'sharma5295', '2021-11-09 07:22:04', '2021-11-09 07:22:04'),
(8, '11', 'Rayhan', 'Ahamed', 'abu15-13860@diu.edu.bd', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'keranigonj', 'Dhaka', 'Dhaka', 'Bangladesh', '1310', '850000', 0, NULL, 'sharma1796', '2021-11-09 08:23:25', '2021-11-09 08:23:25'),
(9, '11', 'Rayhan', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'keranigonj', 'Dhaka', 'Dhaka', 'Bangladesh', '1310', '65000', 0, NULL, 'sharma5215', '2021-11-09 12:19:42', '2021-11-09 12:19:42'),
(10, '11', 'Rayhan', '1', 'abu15-13860@diu.edu.bd', '1', '1', '1', '1', '1', '1', '1', '2415000', 0, NULL, 'sharma7103', '2021-11-10 10:49:47', '2021-11-10 10:49:47'),
(11, '11', 'Abu', 'Siddique', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, Dhaka, Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', '1111', '850000', 0, NULL, 'sharma6044', '2021-11-12 07:23:26', '2021-11-12 07:23:26'),
(12, '13', 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'keranigonj', 'Dhaka', 'Dhaka', 'Bangladesh', '1310', '850000', 0, NULL, 'sharma6981', '2021-12-25 11:16:15', '2021-12-25 11:16:15'),
(13, '13', 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'keranigonj', 'Dhaka', 'Dhaka', 'Bangladesh', '1310', '850000', 0, NULL, 'sharma9120', '2021-12-25 11:21:06', '2021-12-25 11:21:06'),
(14, '13', 'Abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Dhaka, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj, keranigonj', 'keranigonj', 'Dhaka', 'Dhaka', 'Bangladesh', '1310', '65000', 0, NULL, 'sharma3864', '2021-12-25 11:26:15', '2021-12-25 11:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '5', '1', '1200000', '2021-11-06 03:38:59', '2021-11-06 03:38:59'),
(2, '2', '1', '1', '850000', '2021-11-06 03:40:34', '2021-11-06 03:40:34'),
(3, '3', '1', '1', '850000', '2021-11-06 03:42:24', '2021-11-06 03:42:24'),
(5, '4', '6', '1', '1500000', '2021-11-06 03:43:48', '2021-11-06 03:43:48'),
(6, '4', '1', '1', '850000', '2021-11-06 03:43:48', '2021-11-06 03:43:48'),
(7, '5', '1', '1', '850000', '2021-11-06 04:30:26', '2021-11-06 04:30:26'),
(8, '6', '1', '1', '850000', '2021-11-06 07:43:42', '2021-11-06 07:43:42'),
(9, '7', '3', '1', '65000', '2021-11-09 07:22:04', '2021-11-09 07:22:04'),
(10, '8', '1', '1', '850000', '2021-11-09 08:23:25', '2021-11-09 08:23:25'),
(11, '9', '3', '1', '65000', '2021-11-09 12:19:42', '2021-11-09 12:19:42'),
(12, '10', '3', '1', '65000', '2021-11-10 10:49:47', '2021-11-10 10:49:47'),
(13, '10', '1', '1', '850000', '2021-11-10 10:49:47', '2021-11-10 10:49:47'),
(14, '10', '6', '1', '1500000', '2021-11-10 10:49:47', '2021-11-10 10:49:47'),
(15, '11', '1', '1', '850000', '2021-11-12 07:23:27', '2021-11-12 07:23:27'),
(16, '12', '1', '1', '850000', '2021-12-25 11:16:15', '2021-12-25 11:16:15'),
(17, '13', '1', '1', '850000', '2021-12-25 11:21:06', '2021-12-25 11:21:06'),
(18, '14', '3', '1', '65000', '2021-12-25 11:26:15', '2021-12-25 11:26:15');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`, `created_at`, `updated_at`) VALUES
(11, 12, 'Md Rayhan', 'naiimabu25@gmail.com', '01316057864', '23000', 'Customer Address', 'Processing', '61cb27aa2be16', 'BDT', NULL, NULL);

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
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'I Phone X', 'I Phone X', 'Space Gray\r\nSilver\r\nCapacity1\r\n64GB\r\n256GB', 'Height: 5.65 inches (143.6 mm)\r\nWidth: 2.79 inches (70.9 mm)\r\nDepth: 0.30 inch (7.7 mm)\r\nWeight: 6.14 ounces (174 grams)\r\nDisplay\r\nSuper Retina HD display\r\n5.8-inch (diagonal) all-screen OLED Multi-Touch display\r\nHDR display\r\n2436-by-1125-pixel resolution at 458 ppi\r\n1,000,000:1 contrast ratio (typical)\r\nTrue Tone display\r\nWide color display (P3)\r\n3D Touch\r\n625 cd/m2 max brightness (typical)\r\nFingerprint-resistant oleophobic coating\r\nSupport for display of multiple languages and characters simultaneously', '900000', '850000', '1635768336.jpg', '0', '15', 0, 1, 'I Phone X', 'I Phone X', 'Introduced on September 14, the iPhone 13 and iPhone 13 mini are Apple\'s newest flagship iPhones on the more affordable end, and are being sold alongside the more expensive iPhone 13 Pro and iPhone 13 Pro Max.', '2021-10-31 12:19:19', '2021-12-25 11:21:06'),
(3, 1, 'I phone 13', 'i phone 13', 'I phone xr', 'It’s safe to say that the iPhone X has been the most-talked about tech product of 2017.', '70000', '65000', '1635769739.jpg', '5', '15', 0, 1, 'I phone xr', 'I phone 13', 'I phone 13', '2021-11-01 06:19:33', '2021-12-25 11:26:15'),
(4, 1, 'I phone 11', 'I phone 11', 'I phone 11', 'It’s safe to say that the iPhone X has been the most-talked about tech product of 2017.', '900000', '800000', '1635769257.jpg', '0', '17', 0, 1, 'I phone 11', 'I phone 11', 'I phone 11 I phone 11', '2021-11-01 06:20:57', '2021-11-05 07:31:02'),
(5, 1, 'I phone11 pro max', 'I phone11 pro max', 'I phone11 pro max', 'It’s safe to say that the iPhone X has been the most-talked about tech product of 2017.', '1500000', '1200000', '1635769379.jpg', '0', '10', 0, 1, 'I phone11 pro max', 'I phone11 pro max', 'I phone11 pro max  I phone11 pro max', '2021-11-01 06:22:59', '2021-11-06 03:38:59'),
(6, 1, 'I Phone 13 Pro Max', 'I Phone 13 Pro Max', 'I Phone 13 Pro Max', 'It’s safe to say that the iPhone X has been the most-talked about tech product of 2017.', '1600000', '1500000', '1635769467.jpg', '10', '20', 0, 1, 'I Phone 13 Pro Max', 'I Phone 13 Pro Max', 'I Phone 13 Pro Max I Phone 13 Pro Max', '2021-11-01 06:24:27', '2021-11-10 10:49:47'),
(7, 5, 'Xiaomi 11', 'Xiaomi 11', 'Xiaomi 11', 'Xiaomi 11 Xiaomi 11Xiaomi 11 Xiaomi 11', '30000', '25000', '1635864751.jpg', '18', '10', 0, 1, 'Xiaomi 11', 'Xiaomi 11', 'Xiaomi 11 Xiaomi 11Xiaomi 11 Xiaomi 11', '2021-11-02 08:52:31', '2021-11-04 03:16:21');

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
(1, '1', '1', '4', '2021-11-09 06:16:17', '2021-11-09 07:03:36'),
(2, '11', '1', '5', '2021-11-09 07:05:22', '2021-11-11 03:18:17'),
(3, '11', '3', '4', '2021-11-09 07:22:19', '2021-11-09 07:56:09'),
(4, '12', '1', '4', '2021-11-13 11:58:21', '2021-11-13 12:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '11', '1', 'Hello, The Product is good. I am very for your good services.', '2021-11-11 07:14:33', '2021-11-13 11:55:51'),
(2, '12', '1', 'Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.', '2021-11-13 11:57:59', '2021-11-13 12:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abu naiim', 'naiimabu25@gmail.com', NULL, '$2y$10$WqXBSqnNDBaBwbVXubSek.6Yf4C2VqqsYPcqwRompkyaCACMt9nBO', 1, NULL, '2021-10-31 10:08:58', '2021-10-31 10:08:58'),
(12, 'Apurbo', 'abunaiim4@gmail.com', NULL, '$2y$10$CoMGDwsFqwnW2sZhxidfq.ncpzCnvxMGmd/Rnaq5AueP.go/HZWze', 0, NULL, '2021-11-02 09:49:10', '2021-11-02 09:49:10'),
(13, 'Abu naiim', 'abu15-13860@diu.edu.bd', NULL, '$2y$10$fYEdakItr3k29DBaY7iQe.w0YSUaHGigYTXiVaP1GAv2U.HnYwsXm', 0, 'JSoDLE2Po7SOV74cZmEAlYN94aqX1mX87p1DCckQ38lSp7E8fUYsNs4FThe6', '2021-11-27 08:14:48', '2021-11-27 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(3, '1', '7', '2021-11-04 05:18:35', '2021-11-04 05:18:35'),
(8, '1', '1', '2021-11-05 06:11:15', '2021-11-05 06:11:15'),
(11, '11', '5', '2021-11-09 11:59:06', '2021-11-09 11:59:06'),
(12, '11', '3', '2021-11-09 12:32:50', '2021-11-09 12:32:50'),
(13, '11', '5', '2021-11-09 12:32:57', '2021-11-09 12:32:57');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
