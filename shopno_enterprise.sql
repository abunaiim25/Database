-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 04:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopno_enterprise`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Router', 1, '2022-10-27 03:55:38', '2022-10-27 03:55:53'),
(2, 'TV', 1, '2022-10-27 03:57:31', NULL),
(4, 'Fiver', 1, '2022-11-29 10:12:11', NULL),
(5, 'Cable', 1, '2022-11-29 10:20:53', '2023-01-04 06:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `combined_ledgers`
--

CREATE TABLE `combined_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `customerLedger_id` varchar(255) NOT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `referance_no` varchar(255) DEFAULT NULL,
  `debit` varchar(255) DEFAULT '0',
  `credit` varchar(255) DEFAULT '0',
  `balance` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combined_ledgers`
--

INSERT INTO `combined_ledgers` (`id`, `date`, `customerLedger_id`, `particulars`, `referance_no`, `debit`, `credit`, `balance`, `created_at`, `updated_at`) VALUES
(1, '2023-01-08', '1', 'Openning Balance', 'SE-81121016', '0', '0', '1000', '2023-01-08 00:01:41', NULL),
(2, '2023-01-08', '1', 'Debit', 'SE-35239102', '100', '0', '1100', '2023-01-08 03:49:01', NULL),
(3, '2023-01-08', '1', 'Credit', 'SE-12248903', '0', '500', '600', '2023-01-08 03:49:19', NULL),
(4, '2023-01-16', '2', 'Openning Balance', 'SE-36783414', '0', '0', '10000', '2023-01-16 05:04:47', NULL),
(5, '2022-12-25', '2', 'Debit', 'SE-35919421', '10000', '0', '20000', '2023-01-16 05:05:14', NULL),
(6, '2023-01-17', '2', 'Credit', 'SE-40370976', '0', '10000', '10000', '2023-01-16 05:05:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Abu Naiim', 'naiimabu25@gmail.com', '01316057860', 'hello', 'Seen', '1', '2023-01-06 12:58:43', '2023-01-06 13:05:53'),
(2, 'Sagir', 'naiimabu25@gmail.com', '01316057860', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Progress', '1', '2023-01-06 13:02:53', '2023-01-06 13:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ref_by` varchar(255) DEFAULT NULL,
  `sold_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`id`, `order_id`, `name`, `date`, `person`, `phone`, `email`, `address`, `ref_by`, `sold_by`, `created_at`, `updated_at`) VALUES
(3, 3, 'Naiim', '2023-01-26', 'Rayhan', '01316057864', 'naiimabu25@gmail.com', 'Dhaka', 'Saddam', 'Srowre', '2023-01-26 00:34:23', NULL),
(4, 4, 'Naiim', '2023-01-26', 'Rayhan', '01316057864', 'naiimabu25@gmail.com', 'Dhaka', 'Saddam', 'Srowre', '2023-01-26 00:35:34', NULL),
(5, 5, 'Rayhan', '2023-01-27', 'sakib', '01316057865', 'naiimabu@gmail.com', 'Dhaka', 'Saddam', 'Srowre', '2023-01-26 16:56:38', NULL);

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
-- Table structure for table `front_controls`
--

CREATE TABLE `front_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo_big` varchar(255) DEFAULT NULL,
  `logo_small` varchar(255) DEFAULT NULL,
  `home_bg_img` varchar(255) DEFAULT NULL,
  `home_bg_txt1` varchar(255) DEFAULT NULL,
  `home_bg_txt2` varchar(255) DEFAULT NULL,
  `home_bg_txt3` varchar(255) DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `footer_contact_address` varchar(255) DEFAULT NULL,
  `footer_contact_phone` varchar(255) DEFAULT NULL,
  `footer_contact_email` varchar(255) DEFAULT NULL,
  `footer_iteam_img_1` varchar(255) DEFAULT NULL,
  `footer_iteam_img_2` varchar(255) DEFAULT NULL,
  `footer_iteam_img_3` varchar(255) DEFAULT NULL,
  `footer_iteam_img_4` varchar(255) DEFAULT NULL,
  `footer_iteam_img_5` varchar(255) DEFAULT NULL,
  `footer_iteam_img_6` varchar(255) DEFAULT NULL,
  `footer_social_fb` varchar(255) DEFAULT NULL,
  `footer_social_twitter` varchar(255) DEFAULT NULL,
  `footer_social_linkedin` varchar(255) DEFAULT NULL,
  `footer_social_insta` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_controls`
--

INSERT INTO `front_controls` (`id`, `logo_big`, `logo_small`, `home_bg_img`, `home_bg_txt1`, `home_bg_txt2`, `home_bg_txt3`, `footer_text`, `footer_contact_address`, `footer_contact_phone`, `footer_contact_email`, `footer_iteam_img_1`, `footer_iteam_img_2`, `footer_iteam_img_3`, `footer_iteam_img_4`, `footer_iteam_img_5`, `footer_iteam_img_6`, `footer_social_fb`, `footer_social_twitter`, `footer_social_linkedin`, `footer_social_insta`, `created_at`, `updated_at`) VALUES
(1, '1673431886.png', '1673431886.png', '1673184978.jpg', 'hello', 'hello hello hello', 'hello hello hello', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Dhaka, Bangladesh', '01316057864, 01316057864, 01316057864', 'abu15-13860@diu.edu.bd, abu15-13860@diu.edu.bd, abu15-13860@diu.edu.bd', '1673168915.png', '1673168915.png', '1673168915.jpg', '1673168915.jpg', '1673168915.png', '1673168915.jpg', '.', '.', '.', '.', '2023-01-06 13:48:50', '2023-01-11 04:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `godown_stocks`
--

CREATE TABLE `godown_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `per_cost_price` varchar(255) DEFAULT NULL,
  `per_selling_price` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `godown_stocks`
--

INSERT INTO `godown_stocks` (`id`, `product_name`, `category_id`, `brand`, `product_quantity`, `per_cost_price`, `per_selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tanda F-3', 2, '8509', '20', '1150', '1200', 1, '2023-01-05 08:55:57', '2023-01-05 09:10:01'),
(2, 'tp link', 2, '850', '10', '1200', '1250', 1, '2023-01-05 09:09:22', '2023-01-05 09:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_bills`
--

CREATE TABLE `invoice_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `previous_due` varchar(255) DEFAULT NULL,
  `collecton` varchar(255) DEFAULT NULL,
  `net_oustanding` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_bills`
--

INSERT INTO `invoice_bills` (`id`, `invoice_no`, `subtotal`, `previous_due`, `collecton`, `net_oustanding`, `payment_type`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(3, 'SHOPNO-14628385', '1200', '0', '1200', '0', 'Handcash', 'Paid', 0, '2023-01-26 00:34:23', NULL),
(4, 'SHOPNO-43911258', '2400', '1000', '3000', '400', 'Online', 'Due', 0, '2023-01-26 00:35:34', '2023-01-26 17:32:45'),
(5, 'SHOPNO-91748194', '1200', '100', '1100', '200', 'Handcash', 'Due', 0, '2023-01-26 16:56:37', '2023-01-26 17:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_bill_items`
--

CREATE TABLE `invoice_bill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `warranty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_bill_items`
--

INSERT INTO `invoice_bill_items` (`id`, `order_id`, `product_desc`, `warranty`, `price`, `product_qty`, `created_at`, `updated_at`) VALUES
(4, 3, 'tanda 301', 1, 1200, 1, '2023-01-26 00:34:23', NULL),
(5, 4, 'tp link', 1, 1200, 2, '2023-01-26 00:35:34', NULL),
(6, 5, 'TV', 1, 1200, 1, '2023-01-26 16:56:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ledger_customers`
--

CREATE TABLE `ledger_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledger_customers`
--

INSERT INTO `ledger_customers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Abu Naiim', '01316057860', 'naiimabu25@gmail.com', 'Dhaka, BD', '2023-01-08 00:01:41', '2023-01-08 00:05:16'),
(2, 'sarowar', '01316057860', 'naiimabu25@gmail.com', 'Dhaka', '2023-01-16 05:04:47', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_04_181719_create_sessions_table', 1),
(7, '2023_01_05_051719_create_categories_table', 2),
(8, '2023_01_05_051821_create_combined_ledgers_table', 2),
(9, '2023_01_05_051904_create_contacts_table', 2),
(10, '2023_01_05_051934_create_customer_information_table', 2),
(11, '2023_01_05_052022_create_front_controls_table', 2),
(12, '2023_01_05_052151_create_godown_stocks_table', 2),
(13, '2023_01_05_052223_create_invoice_bills_table', 2),
(14, '2023_01_05_053000_create_invoice_bill_items_table', 2),
(15, '2023_01_05_053046_create_ledger_customers_table', 2),
(16, '2023_01_05_053120_create_product_invoices_table', 2),
(17, '2023_01_05_053151_create_shop_stocks_table', 2),
(22, '2023_01_09_125341_create_purchase_returns_table', 3),
(24, '2023_01_17_151923_create_purchase_return_customers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `product_invoices`
--

CREATE TABLE `product_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `warranty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user_ip` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `warranty_duration` varchar(255) DEFAULT NULL,
  `used` int(255) NOT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_returns`
--

INSERT INTO `purchase_returns` (`id`, `order_id`, `product_name`, `category_id`, `brand`, `product_quantity`, `warranty`, `warranty_duration`, `used`, `return_reason`, `comment`, `created_at`, `updated_at`) VALUES
(4, 3, 'tp link', 1, '345', '2', 'Warranty', '2', 1, 'amni', 'amni 2', NULL, '2023-01-22 20:02:43'),
(5, 3, 'tp link', 2, '456', '1', 'Warranty', '1', 1, 'amni 3', 'amni 3', NULL, '2023-01-22 20:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_customers`
--

CREATE TABLE `purchase_return_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `return_back_date` int(11) DEFAULT NULL,
  `return_status` varchar(255) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_customers`
--

INSERT INTO `purchase_return_customers` (`id`, `name`, `phone`, `email`, `return_back_date`, `return_status`, `created_at`, `updated_at`) VALUES
(1, 'Md Naiim', '01316057860', 'naiimabu25@gmail.com', NULL, 'Done', '2023-01-18 06:30:03', '2023-01-23 06:59:14'),
(3, 'Sakib Hasan', '01316057864', 'sakib@gmail.com', NULL, 'Pending', '2023-01-21 22:22:16', '2023-01-22 20:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zhxAuV4uiEUKeNMvDkIHSqiNVLFnoTVMR3Jxi91X', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1FSOEszbnpEVUZuODkxS1JxcFcxTDhjclhVN1FoNXdOWWZVSXhCUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbl9zZWVuX2xlZGdlci9zdHlsZS5jc3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1674869642);

-- --------------------------------------------------------

--
-- Table structure for table `shop_stocks`
--

CREATE TABLE `shop_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `product_quantity_total` varchar(255) DEFAULT NULL,
  `per_cost_price` varchar(255) DEFAULT NULL,
  `per_selling_price` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_stocks`
--

INSERT INTO `shop_stocks` (`id`, `product_name`, `category_id`, `brand`, `product_quantity`, `product_quantity_total`, `per_cost_price`, `per_selling_price`, `status`, `created_at`, `updated_at`) VALUES
(2, 'tanda 301', 1, 'Tanda', '7', '10', '1100', '1200', 1, '2023-01-05 07:51:35', '2023-01-26 02:12:28'),
(6, 'tp link', 1, '850', '8', '45', '1100', '1150', 1, '2023-01-10 10:25:30', '2023-01-26 02:12:13'),
(7, 'Cable', 5, '850', '20', '20', '500', '550', 1, '2023-01-26 02:11:49', '2023-01-26 02:11:49'),
(8, 'TV', 2, '850', '19', '20', '1000', '1050', 1, '2023-01-26 02:12:57', '2023-01-26 16:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Abu naiim', 'naiimabu25@gmail.com', '1', '2023-01-10 09:42:18', '$2y$10$D4zd3R1FiDJxV8TC5QTbwe9DI0yCrG9sFNYTAkrgOBu4XCE3oMHCy', NULL, NULL, NULL, '1PnCkf4GRkmQtOL5IokxHPoCkxzU7GRsbEVMOPhDZkQ3lVDx2L2n6X53tWQz', NULL, NULL, '2023-01-04 12:44:19', '2023-01-11 04:38:13'),
(13, 'Rayhan', 'abu15-13860@diu.edu.bd', '0', '2023-01-11 04:46:48', '$2y$10$3aoiYn2/tbqhwc0ezHLvlOLkHcmPADtGKwAlql6l0VFSpBkVfz1P6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:41:35', '2023-01-11 04:46:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combined_ledgers`
--
ALTER TABLE `combined_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
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
-- Indexes for table `godown_stocks`
--
ALTER TABLE `godown_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_bills`
--
ALTER TABLE `invoice_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_bill_items`
--
ALTER TABLE `invoice_bill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger_customers`
--
ALTER TABLE `ledger_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_invoices`
--
ALTER TABLE `product_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_customers`
--
ALTER TABLE `purchase_return_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shop_stocks`
--
ALTER TABLE `shop_stocks`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `combined_ledgers`
--
ALTER TABLE `combined_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_controls`
--
ALTER TABLE `front_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `godown_stocks`
--
ALTER TABLE `godown_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_bills`
--
ALTER TABLE `invoice_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_bill_items`
--
ALTER TABLE `invoice_bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ledger_customers`
--
ALTER TABLE `ledger_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoices`
--
ALTER TABLE `product_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_return_customers`
--
ALTER TABLE `purchase_return_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_stocks`
--
ALTER TABLE `shop_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
