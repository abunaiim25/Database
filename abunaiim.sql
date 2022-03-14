-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 11:08 AM
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
-- Database: `abunaiim`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `top_description`, `bottom_description`, `title`, `image`, `birth`, `age`, `web`, `degree`, `phone`, `email`, `city`, `work`, `created_at`, `updated_at`) VALUES
(1, 'I am studying at Daffodil International University in the department of B.Sc in Computer Science & Engineering.  I am a Software Engineer. I do Web Development through PHP Laravel. I have passed Alim from Darunnazat Siddiqua Kamil Madrasah and Dakhil & JDC from Hafez Abdur Razzak Jamia Islamia Madrasah.', 'I was born in a middle-class Muslim family. Currently, I am in Karanigong, Dhaka. My home village is Rarirchor, Chandpur. My hobbies are fishing, playing cricket, watching cricket and football.', 'Web Developer (PHP Laravel)', 'storage/img/image.jpeg', '03 July 2000', '21', 'www.abunaiim.com', 'B.Sc. in CSE', '01316057864', 'naiimabu25@gmail.com', 'Keranigonj, Dhaka, Bangladesh', 'Full Stack Web Development (Laravel)', NULL, '2021-12-06 09:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `top_des`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugit amet odio debitis ex vitae nesciunt ratione assumenda incidunt, voluptates et. Delectus id non in, ipsum ipsa quibusdam a deserunt', NULL, '2021-12-04 08:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `des_services`
--

CREATE TABLE `des_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `des_services`
--

INSERT INTO `des_services` (`id`, `top_des`, `created_at`, `updated_at`) VALUES
(1, 'I am studying at Daffodil International University in the department of B.Sc in Computer Science & Engineering. I am a Software Engineer. I do Web Development through PHP Laravel. I have passed Alim from Darunnazat Siddiqua Kamil Madrasah and Dakhil & JDC from Hafez Abdur Razzak Jamia Islamia Madrasah.', NULL, '2021-12-03 11:13:41'),
(2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellat amet magni voluptas perspiciatis magnam soluta quo qui, porro totam quam quidem inventore ipsa cupiditate odio ullam odit voluptatibus illo dolor!', NULL, NULL);

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
-- Table structure for table `home_admins`
--

CREATE TABLE `home_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_admins`
--

INSERT INTO `home_admins` (`id`, `name`, `bg_img`, `profile_img`, `created_at`, `updated_at`) VALUES
(1, 'Abu Naiim', 'storage/img/bg_img.jpg', 'storage/img/profile_img.jpeg', NULL, '2021-12-01 10:05:48');

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
(5, '2021_12_01_143128_create_home_admins_table', 2),
(6, '2021_12_01_172150_create_abouts_table', 3),
(7, '2021_12_02_124700_create_skills_table', 4),
(8, '2021_12_02_171253_create_services_table', 5),
(9, '2021_12_02_190624_create_des_services_table', 6),
(10, '2021_12_04_133946_create_contacts_table', 7),
(11, '2021_12_05_090640_create_socials_table', 8),
(13, '2021_12_05_190027_create_resumes_table', 9);

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
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `head_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `study_sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `study_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `study_place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `study_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `head_des`, `study_sub`, `study_date`, `study_place`, `study_des`, `work_sub`, `work_date`, `work_des`, `created_at`, `updated_at`) VALUES
(1, 'Quia nobis sequi est occaecati aut. Repudiandae et iusto quae reiciendis et quis Eius vel ratione eius unde vitae rerum voluptates asperiores voluptatem Earum molestiae consequatur neque etlon sader mart dila', 'B.Sc. in Computer Science & Engineering', 'At Present', 'Daffodil International University', 'Quia nobis sequi est occaecati aut. Repudiandae et iusto quae reiciendis et quis Eius vel ratione eius unde vitae rerum voluptates asperiores voluptatem Earum molestiae consequatur neque etlon sader mart dila', 'Full Stack Web Application Developer (PHP Laravel)', 'At Present', 'Developed numerous marketing programs (logos, brochures,infographics, presentations, and advertisements).\r\nManaged up to 5 projects or tasks at a given time while under pressure\r\nRecommended and consulted with clients on the most appropriate graphic design\r\nCreated', NULL, '2021-12-08 11:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_icon`, `services_des`, `created_at`, `updated_at`) VALUES
(5, 'ONLINE PAYMENTS', 'fas fa-money-bill-wave', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus explicabo porro corporis qui illo! Praesentium animi, libero quo laudantium dignissimos totam nisi in nulla, omnis repellendus facere explicabo dolorem. Id?', '2021-12-03 07:54:00', '2021-12-04 07:27:43'),
(6, 'SHOPPING CART', 'fas fa-shopping-bag', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus explicabo porro corporis qui illo! Praesentium animi, libero quo laudantium dignissimos totam nisi in nulla, omnis repellendus facere explicabo dolorem. Id', '2021-12-03 07:54:37', '2021-12-03 11:39:19'),
(7, 'ONLINE ORDERING SYSTEM', 'fad fa-bags-shopping', 'A web service is any piece of software that makes itself available over the internet and uses a standardized XML messaging system. XML is used to encode all communications to a web service. ... A web service is a collection of open protocols and standards used for exchanging data between applications or systems', '2021-12-04 07:31:05', '2021-12-04 07:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_percent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_percent`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '98', NULL, '2021-12-05 05:29:31'),
(2, 'CSS', '80', NULL, '2021-12-05 05:29:52'),
(3, 'BOOTSTRAP', '85', '2021-12-02 08:38:20', '2021-12-05 05:30:07'),
(5, 'PHP', '75', '2021-12-02 08:44:37', '2021-12-05 05:34:22'),
(6, 'JAVASCRIPT', '60', '2021-12-02 08:44:58', '2021-12-05 05:30:43'),
(7, 'LARAVEL', '90', '2021-12-02 08:45:13', '2021-12-05 05:32:13'),
(8, 'PYTHON', '70', '2021-12-02 08:45:38', '2021-12-05 07:21:42'),
(9, 'C PROGRAM', '75', '2021-12-02 08:46:08', '2021-12-05 05:33:54'),
(10, 'JAVA', '50', '2021-12-02 08:46:19', '2021-12-05 05:34:11'),
(11, 'ANDROID DEVELOPMENT (JAVA)', '65', '2021-12-02 10:55:29', '2021-12-04 09:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/profile.php?id=100010098828694', 'fab fa-facebook', '2021-12-05 05:18:58', NULL),
(2, 'https://github.com/abunaiim25?tab=repositories', 'fab fa-github', '2021-12-05 05:22:37', '2021-12-05 07:16:54'),
(3, 'https://www.instagram.com/abu_naiim/?fbclid=IwAR16XPE7enpOyJdpNCM7IQwP2R_jYP4s0UA60OXspGdMfD3lwsrCtc_MO2s', 'fab fa-instagram', '2021-12-05 05:24:32', NULL),
(4, 'https://www.linkedin.com/in/abu-naiim-516949210/', 'fab fa-linkedin-in', '2021-12-05 05:27:47', NULL);

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
  `role_as` int(191) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abu Naiim', 'naiimabu25@gmail.com', NULL, '$2y$10$lb23asZwrPSA/7tLXAGAHOGn/Xj.RgyMOLi6CDpioGO9vCfW4O0QK', 1, NULL, '2021-11-30 12:21:08', '2021-11-30 12:21:08'),
(3, 'Abu naiim', 'abu15-13860@diu.edu.bd', NULL, '$2y$10$AHm2xqPxo29plywBfKk3MevPvgiDjmvb4VgTs0vfmDJRmIpwN6RIG', 0, NULL, '2021-11-30 13:08:59', '2021-11-30 13:08:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `des_services`
--
ALTER TABLE `des_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_admins`
--
ALTER TABLE `home_admins`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `des_services`
--
ALTER TABLE `des_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_admins`
--
ALTER TABLE `home_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
