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
-- Database: `shopna_dokan`
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
  `customerLedger_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
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

INSERT INTO `combined_ledgers` (`id`, `customerLedger_id`, `date`, `particulars`, `referance_no`, `debit`, `credit`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-21', 'Openning Balance', 'SE-77814815', '0', '0', '10000', '2022-11-20 12:02:37', NULL),
(2, 2, '2022-11-22', 'Openning Balance', 'SE-72776956', '0', '0', '500', '2022-11-20 12:02:56', NULL),
(3, 2, '2022-11-21', 'Debit', 'SE-23670052', '100', '0', '600', '2022-11-20 12:03:15', NULL),
(4, 2, '2022-11-21', 'Debit', 'SE-98854157', '222', '0', '822', '2022-11-20 12:03:26', NULL),
(5, 1, '2022-11-21', 'Debit', 'SE-24818817', '500', '0', '10500', '2022-11-20 12:03:45', NULL),
(6, 1, '2022-11-21', 'Debit', 'SE-77985551', '1000', '0', '11500', '2022-11-20 12:04:00', NULL),
(7, 1, '2022-11-21', 'Credit', 'SE-26466364', '0', '500', '11000', '2022-11-20 12:21:20', NULL),
(8, 1, '2022-11-21', 'Credit', 'SE-98774453', '0', '500', '10500', '2022-11-20 12:21:58', NULL),
(9, 2, '2022-11-21', 'Credit', 'SE-61674687', '0', '400', '422', '2022-11-20 12:22:25', NULL),
(12, 2, '2022-11-25', 'Debit', 'SE-30855029', '20', '0', '442', '2022-11-24 12:17:39', NULL),
(16, 2, '2022-12-31', 'Debit', 'SE-84306098', '1000', '0', '1442', '2022-12-31 01:56:45', NULL);

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
(1, 'Abu Naiim', 'naiimabu25@gmail.com', '01316057864', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'Progress', '5', '2022-12-31 09:08:18', '2022-12-31 09:11:53'),
(2, 'Rayhan', 'naiimabu25@gmail.com', '01316057865', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', 'Seen', '5', '2022-12-31 09:08:54', '2022-12-31 09:09:25'),
(3, 'Siddique', 'abunaiim4@gmail.com', '01316057860', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years', 'Seen', '5', '2022-12-31 09:59:56', '2023-01-04 11:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
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
(7, 7, 'Abu Naiim', '2023-01-04', 'Naiim', '01316057860', 'naiimabu25@gmail.com', 'Dhaka', 'Naiim', 'sarowar', '2023-01-04 04:08:40', NULL),
(8, 8, 'Abu Naiim', '2022-12-21', 'Naiim', '01812112395', 'abu15-13860@diu.edu.bd', 'Zinzira', 'Naiim', 'sarowar', '2023-01-04 04:12:29', NULL);

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
  `about_banner_img` varchar(255) DEFAULT NULL,
  `contact_banner_img` varchar(255) DEFAULT NULL,
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

INSERT INTO `front_controls` (`id`, `logo_big`, `logo_small`, `home_bg_img`, `home_bg_txt1`, `home_bg_txt2`, `home_bg_txt3`, `about_banner_img`, `contact_banner_img`, `footer_text`, `footer_contact_address`, `footer_contact_phone`, `footer_contact_email`, `footer_iteam_img_1`, `footer_iteam_img_2`, `footer_iteam_img_3`, `footer_iteam_img_4`, `footer_iteam_img_5`, `footer_iteam_img_6`, `footer_social_fb`, `footer_social_twitter`, `footer_social_linkedin`, `footer_social_insta`, `created_at`, `updated_at`) VALUES
(8, '1646758614.png', '1646756144.png', '1666383246.jpg', 'NEW ARRIVALES', 'Best Price This Year', 'Shoomatic offers your very comfortable time on walking and exercises', '1646760930.jpg', '1666857388.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dhaka, Bangladesh', '01316057864, 01316057864, 01316057864', 'abu15-13860@diu.edu.bd, abu15-13860@diu.edu.bd, abu15-13860@diu.edu.bd', '1646761984.jpg', '1646764203.png', '1646761984.jpg', '1646761984.jpg', '1646761984.jpg', '1646761984.jfif', 'https://www.facebook.com/profile.php?id=100010098828694', 'https://github.com/abunaiim25', 'https://www.linkedin.com/in/abu-naiim-516949210/', 'https://www.instagram.com/abu_naiim/?fbclid=IwAR05nZz1qhTRad9pH_cQ6nHDGShKExKoJCVAy_T1oRX7nM9iANIAyMH3BB0', '2022-03-06 13:28:50', '2022-11-26 01:22:55');

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
  `total_cost_price` varchar(255) DEFAULT NULL,
  `per_selling_price` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `godown_stocks`
--

INSERT INTO `godown_stocks` (`id`, `product_name`, `category_id`, `brand`, `product_quantity`, `per_cost_price`, `total_cost_price`, `per_selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akash12', 2, 'Akash', '10', '1000', '10000', '1200', 1, '2022-12-30 11:31:51', '2022-12-30 11:31:51'),
(2, 'tanda 301', 1, 'Tanda', '10', '1100', '11000', '1150', 1, '2022-12-30 11:32:26', '2022-12-30 11:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_bills`
--

CREATE TABLE `invoice_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `previous_due` varchar(255) NOT NULL,
  `collecton` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_bills`
--

INSERT INTO `invoice_bills` (`id`, `invoice_no`, `subtotal`, `previous_due`, `collecton`, `status`, `created_at`, `updated_at`) VALUES
(7, 'SHOPNO-65910789', '2400', '0', '0', 0, '2023-01-04 04:08:40', NULL),
(8, 'SHOPNO-94838661', '2300', '0', '0', 0, '2023-01-04 04:12:28', NULL);

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
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_bill_items`
--

INSERT INTO `invoice_bill_items` (`id`, `order_id`, `product_desc`, `warranty`, `price`, `product_qty`, `created_at`, `updated_at`) VALUES
(8, 7, 'tp link', 1, 1200, 2, '2023-01-04 04:08:40', NULL),
(9, 8, 'tanda 301', 1, 1150, 2, '2023-01-04 04:12:28', NULL);

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
(1, 'Abu Naiim', '01316057865', 'naiimabu25@gmail.com', 'Dhaka', '2022-11-20 12:02:37', NULL),
(2, 'Sayem', '01812112395', 'abu15-13860@diu.edu.bd', 'Dhaka, BD', '2022-11-20 12:02:56', '2022-11-24 11:50:40');

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
(45, '2022_03_13_180743_create_reviews_table', 19),
(46, '2022_10_27_094732_create_categories_table', 20),
(47, '2022_10_27_112841_create_shop_stocks_table', 21),
(48, '2022_10_31_155936_create_godown_stocks_table', 22),
(49, '2022_11_01_054448_create_invoice_bills_table', 23),
(50, '2022_11_03_073727_create_customer_information_table', 23),
(51, '2022_11_03_074831_create_product_invoices_table', 23),
(52, '2022_11_03_075417_create_discounts_table', 23),
(53, '2022_11_03_080209_create_invoice_bill_items_table', 23),
(58, '2022_11_13_132611_create_ledger_customers_table', 24),
(59, '2022_11_13_132927_create_combined_ledgers_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7SyfRX98LAv4QMcuzjEUmUmHLN0tsmuWKpqPD1vQ', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicTBnUGNlTlpXOTFXMU1IbUhQMVBnb2xEZnBmZUU0RWR0WkxVemYyeCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkamZXenN2Q1Z4SHhmb2toTWJ3dUFqdW9MS0tIdDNNL0s5dHFRaXZyUklKaWp6ci5vWTVoMmUiO30=', 1672856035),
('HgCyAkoQlvBOHcQAt1joALbu5hhkODphZGbDXW7O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1IyRHNxbmE3SFRuZ3VETEV3ZUNIQTcxSzdVZkZadWNoUkZIUmgwcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1674348906),
('hUEc2NNRRN3jQ2VuEDjeRyLpO2OXPAbzF0UIbEdj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTVQWU14MjZlN0hGYUg5VFUzYXpMeXdUYTVtRzRKbDN6ME5raU5EUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673023259),
('K40lRWkg6b6KAoP0SONv7vs9l16mU9z7AL8cvfwx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEhQN2hnQTE2cmxnVDk0Nmt5Nmt2U21Zc1IzSHZPUzJFOGZMcjBTbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1672856058),
('lPYYJM056EnlmcFRkAPthx39dDfnk2WSA2p9wkb7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDN5U0tNNVRHVGtlUGtUZUx5UE5zbWJUbnEyUkRXVXE4ZTlNVW8zeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1672856162),
('yO1yAXZySbmLC0iJ6W0xCF3sFaH0V24sB4QT5WlO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.55', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2tYbXlhN1F2UldEUk1yY1ZMbmJxZjJTYWVJaUtzTXRJMW1pcE8zcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1674350805);

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
  `product_quantity_total` varchar(255) NOT NULL,
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
(2, 'tp link', 1, '850', '17', '25', '1100', '1200', 1, '2023-01-03 09:42:16', '2023-01-04 04:08:40'),
(3, 'tanda 301', 1, 'Tanda', '5', '10', '1100', '1150', 1, '2023-01-03 09:43:35', '2023-01-04 04:12:29'),
(4, 'Cable', 5, 'Walton', '0', '1', '500', '600', 1, '2023-01-03 09:47:23', '2023-01-03 09:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'naiimabu25@gmail.com', '01316057864', 'Dhaka', '1', '2022-02-19 11:56:15', '$2y$10$jfWzsvCVxHxfokhMbwuAjuoLKKHt3M/K9tqQivrRIJijzr.oY5h2e', NULL, NULL, NULL, NULL, NULL, '2022-02-19 11:53:58', '2022-02-19 11:56:15'),
(6, 'Abu Naiim', 'abu15-13860@diu.edu.bd', '01316057864', 'Dhaka', '0', '2022-02-19 12:20:28', '$2y$10$Z8HFo0MWWgT8ZlfiqlY56uFP3jcZK6et79/q3zBTxMC9SPcoHCAq2', NULL, NULL, NULL, NULL, NULL, '2022-02-19 12:20:04', '2023-01-04 06:39:23'),
(7, 'Apurbo', 'mdnaiim13@gmail.com', '01785643672', 'Candpur', '0', '2022-03-09 08:55:41', '$2y$10$eAl5FNCDAMYw1JEx/6RnCuZ1qk9K1S6QZjj6hzLhw0tqKPgHcNRVO', NULL, NULL, NULL, NULL, NULL, '2022-03-09 08:44:55', '2023-01-04 06:39:07');

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `product_invoices`
--
ALTER TABLE `product_invoices`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `godown_stocks`
--
ALTER TABLE `godown_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_bills`
--
ALTER TABLE `invoice_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice_bill_items`
--
ALTER TABLE `invoice_bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ledger_customers`
--
ALTER TABLE `ledger_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoices`
--
ALTER TABLE `product_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `shop_stocks`
--
ALTER TABLE `shop_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
