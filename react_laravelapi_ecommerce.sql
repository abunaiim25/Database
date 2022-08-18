-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 08:06 PM
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
-- Database: `react_laravelapi_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, '8', 1, 4, '2022-07-19 10:58:23', '2022-07-20 10:10:20'),
(2, '8', 5, 2, '2022-07-19 10:58:32', '2022-07-19 10:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `description`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'mobile-phone', 'Mobile Apple', 'This is mobile phone description.', 0, 'Mobile I Phone', 'I Phone 11', 'I Phone 11', '2022-07-02 03:36:04', '2022-07-04 09:12:04'),
(2, 'laptop-devices', 'Laptop Devices', 'This is laptop shop', 0, 'Laptop', 'Hp Laptop', 'Hp Laptop Hp Laptop', '2022-07-02 12:39:01', '2022-07-03 15:01:18');

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
(5, '2022_07_01_181545_create_categories_table', 2),
(6, '2022_07_04_182713_create_products_table', 3),
(7, '2022_07_10_150228_create_carts_table', 4),
(8, '2022_07_21_155819_create_orders_table', 5),
(9, '2022_07_21_164749_create_order_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `email`, `address`, `city`, `state`, `zipcode`, `payment_id`, `payment_mode`, `tracking_no`, `status`, `remark`, `created_at`, `updated_at`) VALUES
(1, 7, 'Abu', 'Naiim', '0131', 'abu15-13860@diu.edu.bd', 'asdfr', 'dhaka', 'kere', '1234', NULL, 'COD', 'fundaecom3127', 0, NULL, '2022-07-22 03:39:24', '2022-07-22 03:39:24'),
(2, 7, 'Abu', 'Naiim', '0131', 'abu15-13860@diu.edu.bd', 'ssss', 'dhaka', 'kere', '1234', NULL, 'COD', 'fundaecom8133', 0, NULL, '2022-07-22 03:57:28', '2022-07-22 03:57:28'),
(3, 7, 'Abu', 'Naiim', '0131', 'abu15-13860@diu.edu.bd', 'hhh', 'dhaka', 'kere', '1234', NULL, 'cod', 'fundaecom6266', 0, NULL, '2022-07-22 07:04:16', '2022-07-22 07:04:16'),
(4, 7, 'Abu', 'Naiim', '0131', 'abu15-13860@diu.edu.bd', 'sss', 'dhaka', 'kere', 'sss', NULL, 'cod', 'fundaecom2564', 0, NULL, '2022-07-22 09:58:36', '2022-07-22 09:58:36'),
(5, 7, 'Abu', 'Naiim', '0131', 'abu15-13860@diu.edu.bd', '111', 'dhaka', 'kere', '1234', NULL, 'cod', 'fundaecom3159', 0, NULL, '2022-07-22 10:27:18', '2022-07-22 10:27:18'),
(6, 7, 'Abu', 'Naiim', '0131', 'abunaiim4@gmail.com', 'fggggggggggggg', 'dhaka', 'kere', '1234', NULL, 'cod', 'fundaecom7679', 0, NULL, '2022-07-23 02:34:59', '2022-07-23 02:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '90000', '2022-07-22 03:39:24', '2022-07-22 03:39:24'),
(2, 1, 5, 1, '2000', '2022-07-22 03:39:24', '2022-07-22 03:39:24'),
(3, 2, 5, 1, '2000', '2022-07-22 03:57:28', '2022-07-22 03:57:28'),
(4, 3, 1, 1, '90000', '2022-07-22 07:04:17', '2022-07-22 07:04:17'),
(5, 4, 5, 2, '2000', '2022-07-22 09:58:37', '2022-07-22 09:58:37'),
(6, 5, 5, 1, '2000', '2022-07-22 10:27:19', '2022-07-22 10:27:19'),
(7, 6, 1, 1, '90000', '2022-07-23 02:34:59', '2022-07-23 02:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('naiimabu25@gmail.com', '$2y$10$yd/BS5utNPMO.9WLw2WV1OykmZQFA.QRqekv7lS.8XYgixcISldWG', '2022-08-08 08:10:07');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(91, 'App\\Models\\User', 10, 'naiimabu@gmail.com_Token', '9a16d97cceaf29425b5230c06ba589134de3851e03185ad5bd8d4dcb1a97140f', '[\"*\"]', NULL, '2022-07-30 03:50:53', '2022-07-30 03:50:53'),
(105, 'App\\Models\\User', 8, 'abu15-13860@diu.edu.bd_Token', 'a6c5b43eabbf029466463062c08ba791f3b830028ab4af8914e1c8e8dc640d19', '[\"\"]', NULL, '2022-08-08 08:22:01', '2022-08-08 08:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orginal_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0,
  `popular` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0 COMMENT '0=Inactive, 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `slug`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `selling_price`, `orginal_price`, `quantity`, `image`, `brand`, `featured`, `popular`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'i phone 13', 'I phone 13', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci error quo culpa explicabo. Beatae fuga iure itaque inventore recusandae esse ab, velit quidem veniam? Vel aliquam tempore impedit iusto nobis.', 'I phone 13', 'I phone 13 I phone 13', 'I phone 13 I phone 13', '90000', '100000', '3', 'img_DB/product/1657034897.jpg', 'Apple', 0, 1, 1, '2022-07-05 09:28:17', '2022-07-23 02:34:59'),
(2, 2, 'laptop', 'Laptop', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci error quo culpa explicabo. Beatae fuga iure itaque inventore recusandae esse ab, velit quidem veniam? Vel aliquam tempore impedit iusto nobis.', 'Asus Laptop', 'Asus Laptop Asus Laptop', 'Asus Laptop Asus Laptop', '40000', '45000', '0', 'img_DB/product/1657036053.png', 'Asus', 1, 0, 1, '2022-07-05 09:47:33', '2022-07-06 12:28:06'),
(3, 4, 'i Watch', 'I Watch', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci error quo culpa explicabo. Beatae fuga iure itaque inventore recusandae esse ab, velit quidem veniam? Vel aliquam tempore impedit iusto nobis.', 'I phone watch', 'I phone watch', 'I phone watch I phone watch', '90000', '100000', '14', 'img_DB/product/1657126660.jpg', 'Apple', 0, 0, 0, '2022-07-06 09:29:56', '2022-07-06 11:01:02'),
(5, 1, 'mobile-i phone', 'I phone 11', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci error quo culpa explicabo. Beatae fuga iure itaque inventore recusandae esse ab, velit quidem veniam? Vel aliquam tempore impedit iusto nobis.', 'I phone 11', 'I phone 11I phone 11I phone 11', 'I phone 11I phone 11I phone 11', '2000', '2500', '8', 'img_DB/product/1657379215.jpg', 'i Phone', 0, 0, 1, '2022-07-09 09:06:55', '2022-07-22 10:27:18');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` int(11) DEFAULT 0 COMMENT '0=users, 1=admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_as`, `created_at`, `updated_at`) VALUES
(7, 'Admin', 'naiimabu25@gmail.com', NULL, '$2y$10$jh9otRSrDv3QcDAhWFbCtecmpWdFnkb8olClvgyhFzGwtPnw2vVs6', 'itTKa53OvfXvO9J1XmAIkh2DTw3fmjQ2uDKHz2PUm24w5SUvO07YoFo6Lfrr', 1, '2022-06-22 13:28:13', '2022-08-01 09:34:12'),
(8, 'User Me', 'abu15-13860@diu.edu.bd', NULL, '$2y$10$CbgVSjuDPYowVwfQT0Z35uscmyExatSgX3p.8NlitECt21ISVfy3C', 'Tc1JbYmkE3yy8wui0UnZilDZi6SRCAXu9MQe1S8BrZ33aFiXwcUVV0iolarq', 0, '2022-06-22 13:35:08', '2022-08-08 08:21:35'),
(9, 'Rayhan', 'abunaiim4@gmail.com', NULL, '$2y$10$UqPxxjw11NqcHx1GfOwMwOpKZLbrXnQIgBlT6b2BwSLggeT0IH/P6', '7Z4oxasCVbFHMeHoJZRvgD4gZt8tUWaYOYMZFq8iILeoKgePFzdvJYBVaEJu', 0, '2022-07-19 11:07:22', '2022-08-07 11:16:27'),
(11, 'Abu sakib', 'abu1513860@diu.edu.bd', NULL, '$2y$10$oClR.oRlwQIjokvH0/XoR.Buk.5PLAfKU4CKW3e3NmstyoTpevqqe', NULL, 0, '2022-07-30 03:56:18', '2022-07-30 03:56:18');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
