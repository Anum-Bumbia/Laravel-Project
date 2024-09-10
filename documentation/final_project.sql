-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `date`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Importance of “Piller” of Islam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, aliquip ex ea commodo consequat.', '2024-01-01', 'assets/uploads/1717239135.jpg', '2024-06-01 05:52:15', '2024-06-01 05:52:15', 0),
(2, 'Importance of “Piller” of Islam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, aliquip ex ea commodo consequat.', '2024-01-01', 'assets/uploads/1717239608.jpg', '2024-06-01 06:00:08', '2024-06-01 06:00:08', 0),
(3, 'How to get closer to Allah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', '2023-02-01', 'assets/uploads/1717239754.jpg', '2024-06-01 06:02:34', '2024-06-01 06:02:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `name`, `email`, `amount`, `payment_method`, `created_at`, `updated_at`) VALUES
(2, 'Ali Hassan', 'ali.hassan@example.com', 112.00, 'credit_card', '2024-06-02 16:50:47', '2024-06-02 12:37:16'),
(3, 'Fatima Zahra', 'fatima1.zahra@example.com', 160.00, 'credit_card', '2024-06-02 16:50:47', '2024-06-08 03:05:27'),
(4, 'Omar Khalid', 'omar.khalid@example.com', 200.00, 'Bank Transfer', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(5, 'Aisha Siddiqui', 'aisha.siddiqui@example.com', 250.00, 'Credit Card', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(6, 'Yusuf Ahmed', 'yusuf.ahmed@example.com', 300.00, 'PayPal', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(7, 'Maryam Ali', 'maryam.ali@example.com', 350.00, 'Bank Transfer', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(8, 'Hassan Abbas', 'hassan.abbas@example.com', 400.00, 'Credit Card', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(9, 'Zainab Khan', 'zainab.khan@example.com', 450.00, 'PayPal', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(10, 'Bilal Mohammad', 'bilal.mohammad@example.com', 500.00, 'Bank Transfer', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(12, 'Nadia Malik', 'nadia.malik@example.com', 600.00, 'PayPal', '2024-06-02 16:50:47', '2024-06-02 16:50:47'),
(17, 'Ali Umair', 'Ali@example.com', 50.00, 'credit_card', '2024-06-05 08:54:19', '2024-06-05 08:54:19'),
(18, 'Ahmed Mansoor', 'Ahmed@example.com', 100.00, 'paypal', '2024-06-05 08:54:19', '2024-06-05 08:54:19'),
(19, 'Hamza Sohail', 'Hamza@example.com', 50.00, 'credit_card', '2024-06-05 08:54:19', '2024-06-05 08:54:19'),
(20, 'Zeeshan Farooqi ', 'Zeeshan@example.com', 100.00, 'paypal', '2024-06-05 08:54:19', '2024-06-05 08:54:19'),
(21, 'ali', 'ali@gmail.com', 300.00, 'credit_card', '2024-06-05 08:59:43', '2024-06-05 08:59:43'),
(23, 'dua baji', 'dua123@gmail.com', 1200.00, 'credit_card', '2024-06-06 12:10:34', '2024-06-06 12:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `date`, `time`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Milad Un Nabi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', '2045-01-01', '06:55:00', 'assets/uploads/1717228241.jpg', '2024-06-01 02:50:41', '2024-06-07 08:15:59'),
(5, 'Eid Ul Fitr', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', '2025-01-01', '11:30:00', 'assets/uploads/1717228706.jpg', '2024-06-01 02:58:26', '2024-06-01 02:58:26'),
(6, 'Eud Ul Azha', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', '2045-01-01', '23:30:00', 'assets/uploads/1717228841.jpg', '2024-06-01 03:00:41', '2024-06-01 03:00:41');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_15_110548_create_roles', 1),
(5, '2024_05_15_121525_create_permission', 1),
(6, '2024_05_16_070844_create_permission_roles', 1),
(7, '2024_05_28_112856_create_table_users', 2),
(8, '2024_05_31_135611_create_events_table', 2),
(9, '2024_06_01_103448_create_blogs_table', 3),
(10, '2024_06_01_132757_create_roles_table', 4),
(11, '2024_06_01_133730_update_users_table', 4),
(12, '2024_06_01_134247_permissions', 4),
(13, '2024_06_01_141008_create_permission_roles_table', 4),
(14, '2024_06_02_160355_create_donations_table', 5),
(15, '2024_06_02_200052_create_testimonials_table', 6),
(16, '2024_06_07_163446_add_user_id_to_testimonials_and_blogs', 7),
(17, '2024_06_07_170216_add_user_id_to_testimonials_table', 8),
(18, '2024_06_07_170556_add_user_id_to_blogs_table', 9),
(19, '2024_06_07_172929_add_user_id_to_donations_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `groupby` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `groupby`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'Dashboard', '0', NULL, NULL),
(2, 'User', 'User ', '1', NULL, NULL),
(3, 'Add User', 'Add User', '1', NULL, NULL),
(4, 'Edit User', 'Edit User', '1', NULL, NULL),
(5, 'Delete User', 'Delete User', '1', NULL, NULL),
(6, 'Role', 'Role', '2', NULL, NULL),
(7, 'Add Role', 'Add Role', '2', NULL, NULL),
(8, 'Edit Role', 'Edit Role', '2', NULL, NULL),
(9, 'Delete Role', 'Delete Role', '2', NULL, NULL),
(10, 'Blog', 'Blog', '3', NULL, NULL),
(11, 'Add Blog', 'Add Blog', '3', NULL, NULL),
(12, 'Edit Blog', 'Edit Blog', '3', NULL, NULL),
(13, 'Delete Blog', 'Delete Blog', '3', NULL, NULL),
(14, 'Testimonial', 'Testimonial', '4', NULL, NULL),
(15, 'Add Testimonial', 'Add Testimonial', '4', NULL, NULL),
(16, 'Edit Testimonial', 'Edit Testimonial', '4', NULL, NULL),
(17, 'Delete Testimonial', 'Delete Testimonial', '4', NULL, NULL),
(18, 'Event', 'Event', '5', NULL, NULL),
(19, 'Add Event', 'Add Event', '5', NULL, NULL),
(20, 'Edit Event', 'Edit Event', '5', NULL, NULL),
(21, 'Delete Event', 'Delete Event', '5', NULL, NULL),
(22, 'Forms for Donations', 'Forms for Donations', '6', NULL, NULL),
(23, 'Donation', 'Donation', '7', NULL, NULL),
(24, 'Settings', 'Settings', '8', NULL, NULL),
(25, 'Add Donation', 'Add Donation', '7', NULL, NULL),
(26, 'Edit Donation', 'Edit Donation', '7', NULL, NULL),
(27, 'Delete Donation', 'Delete Donation', '7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(257, 1, 1, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(258, 1, 2, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(259, 1, 3, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(260, 1, 4, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(261, 1, 5, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(262, 1, 6, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(263, 1, 7, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(264, 1, 8, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(265, 1, 9, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(266, 1, 10, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(267, 1, 11, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(268, 1, 12, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(269, 1, 13, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(270, 1, 14, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(271, 1, 15, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(272, 1, 16, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(273, 1, 17, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(274, 1, 18, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(275, 1, 19, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(276, 1, 20, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(277, 1, 21, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(278, 1, 23, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(279, 1, 25, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(280, 1, 26, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(281, 1, 27, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(282, 1, 24, '2024-06-08 02:20:30', '2024-06-08 02:20:30'),
(283, 4, 1, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(284, 4, 10, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(285, 4, 11, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(286, 4, 12, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(287, 4, 13, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(288, 4, 14, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(289, 4, 15, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(290, 4, 16, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(291, 4, 17, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(292, 4, 22, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(293, 4, 25, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(294, 4, 26, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(295, 4, 27, '2024-06-08 09:14:10', '2024-06-08 09:14:10'),
(296, 4, 24, '2024-06-08 09:14:10', '2024-06-08 09:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-06-12 11:12:49', NULL),
(4, 'user', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `table_users`
--

CREATE TABLE `table_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `profession` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `profession`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'Full Name', 'Lorem ipsum dolor sit amet elit, sed do tempor ut labore et dolore magna aliqua. Ut enim ad minim quis.', 'Profession', 'assets/uploads/1717400929.jpg', '2024-06-03 02:48:49', '2024-06-03 02:48:49', 0),
(4, 'Full Name', 'Lorem ipsum dolor sit amet elit, sed do tempor ut labore et dolore magna aliqua. Ut enim ad minim quis.', 'Profession', 'assets/uploads/1717401090.jpg', '2024-06-03 02:51:30', '2024-06-03 02:51:30', 0),
(5, 'Full Name', 'Lorem ipsum dolor sit amet elit, sed do tempor ut labore et dolore magna aliqua. Ut enim ad minim quis.', 'Profession', 'assets/uploads/1717403178.jpg', '2024-06-03 03:26:18', '2024-06-03 03:26:18', 0),
(6, 'Full Name', 'Lorem ipsum dolor sit amet elit, sed do tempor ut labore et dolore magna aliqua. Ut enim ad minim quis.', 'Profession', 'assets/uploads/1717598355.jpg', '2024-06-05 09:39:15', '2024-06-05 09:39:15', 0),
(8, 'zyz', 'jkhjkfhjkdf', 'Profession', 'assets/uploads/1717773933.jpg', '2024-06-07 10:25:33', '2024-06-07 10:25:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$tx78BJlTF392VtLJ9gx76.mqw.igP9606pgV54X.1.dqYWMwkJaiK', 1, NULL, NULL, '2024-06-08 07:35:14'),
(3, 'user', 'user@gmail.com', NULL, '$2y$12$NbeY.Ah15XZc2yyc0KEdB.FF/qicKZddEjSzRWvtp.NS/MUVDyLgC', 4, NULL, NULL, '2024-06-06 13:42:28'),
(45, 'Admin', 'admin3@gmail.com', NULL, '$2y$12$cPhwPQWdYOyx7iUVMDDHvuS2.pytV3udNdCvJHb6yd7WEz7JWorFS', 1, NULL, NULL, NULL),
(47, 'ali', 'ali@gmail.com', NULL, '$2y$12$0JcC/TNPJGcY615oPpOec.0omTXDZBbu3zZG4bJtunyurjyY/P/3C', NULL, NULL, '2024-06-08 08:15:59', '2024-06-08 08:15:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `table_users`
--
ALTER TABLE `table_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_users`
--
ALTER TABLE `table_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
