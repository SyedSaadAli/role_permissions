-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 10:58 AM
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
-- Database: `role_permissions`
--

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
(4, '2024_11_01_154913_create_roles_table', 2),
(5, '2024_11_02_122755_create_permissions_table', 3),
(7, '2024_11_02_133607_create_permission__roles_table', 4),
(8, '2024_11_02_150328_update_users_table', 5);

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
(2, 'User', 'User', '1', '2024-11-02 12:34:12', '2024-11-02 12:34:12'),
(3, 'Add User', 'Add User', '1', '2024-11-02 12:34:12', '2024-11-02 12:34:12'),
(4, 'Edit User', 'Edit User', '1', '2024-11-02 12:34:12', '2024-11-02 12:34:12'),
(5, 'Delete User', 'Delete User', '1', '2024-11-02 12:34:12', '2024-11-02 12:34:12'),
(6, 'Role', 'Role', '2', '2024-11-02 12:35:37', '2024-11-02 12:35:37'),
(7, 'Add Role', 'Add Role', '2', '2024-11-02 12:35:37', '2024-11-02 12:35:37'),
(8, 'Edit Role', 'Edit Role', '2', '2024-11-02 12:35:37', '2024-11-02 12:35:37'),
(9, 'Delete Role', 'Delete Role', '2', '2024-11-02 12:35:37', '2024-11-02 12:35:37'),
(10, 'Category', 'Category', '3', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(11, 'Add Category', 'Add Category', '3', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(12, 'Edit Category', 'Edit Category', '3', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(13, 'Delete Category', 'Delete Category', '3', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(14, 'Sub Category', 'Sub Category', '4', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(15, 'Add Sub Category', 'Add Sub Category', '4', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(16, 'Edit Sub Category', 'Edit Sub Category', '4', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(17, 'Delete Sub Category', 'Delete Sub Category', '4', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(18, 'Product', 'Product', '5', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(19, 'Add Product', 'Add Product', '5', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(20, 'Edit Product', 'Edit Product', '5', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(21, 'Delete Product', 'Delete Product', '5', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(22, 'Setting', 'Setting', '6', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(23, 'Add Setting', 'Add Setting', '6', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(24, 'Edit Setting', 'Edit Setting', '6', '2024-11-02 12:36:44', '2024-11-02 12:36:44'),
(25, 'Delete Setting', 'Delete Setting', '6', '2024-11-02 12:36:44', '2024-11-02 12:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(5, 8, 1, '2024-11-02 09:26:30', '2024-11-02 09:26:30'),
(6, 8, 2, '2024-11-02 09:26:30', '2024-11-02 09:26:30'),
(7, 8, 3, '2024-11-02 09:26:30', '2024-11-02 09:26:30'),
(8, 8, 4, '2024-11-02 09:26:30', '2024-11-02 09:26:30'),
(9, 8, 6, '2024-11-02 09:26:30', '2024-11-02 09:26:30'),
(10, 8, 8, '2024-11-03 12:01:43', '2024-11-03 12:01:48'),
(11, 1, 1, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(12, 1, 2, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(13, 1, 3, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(14, 1, 4, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(15, 1, 5, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(16, 1, 6, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(17, 1, 7, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(18, 1, 8, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(19, 1, 9, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(20, 1, 10, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(21, 1, 11, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(22, 1, 12, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(23, 1, 13, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(24, 1, 14, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(25, 1, 15, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(26, 1, 16, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(27, 1, 17, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(28, 1, 18, '2024-11-03 07:02:25', '2024-11-03 07:02:25'),
(29, 1, 19, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(30, 1, 20, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(31, 1, 21, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(32, 1, 22, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(33, 1, 23, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(34, 1, 24, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(35, 1, 25, '2024-11-03 07:02:26', '2024-11-03 07:02:26'),
(36, 5, 1, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(37, 5, 2, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(38, 5, 6, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(39, 5, 7, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(40, 5, 8, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(41, 5, 10, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(42, 5, 14, '2024-11-03 07:42:04', '2024-11-03 07:42:04'),
(43, 5, 22, '2024-11-03 07:42:04', '2024-11-03 07:42:04');

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
(1, 'Admin', '2024-11-01 11:17:45', '2024-11-01 11:41:26'),
(5, 'Employee', '2024-11-01 12:00:07', '2024-11-01 12:00:07'),
(8, 'SQA', '2024-11-02 09:24:17', '2024-11-02 09:24:17');

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
('69p5LeIfN63cpiDiuuAjdWQKNm6LQ6sWDtmJuWsl', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWFg1a3U5TnBETVlNTEZMZ0Y4aVdhOXMzalRpWU9zM0RycXZ0akNnZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYW5lbC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1730560405),
('DAqM5MdpOWuL2qwc2ZqPpNrIC0w2yLcwQ31vgEuR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT20wZ3BMRFFMWGswc2p0NGN3NGhOMjdZYlVxOW9IekQwdTd2OUg1YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYW5lbC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1730566851),
('hOC7TFy8hZVrYoYGSzpSvFD3Qo2HgPzluY4Zp3Gd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEE4NjRrOXVwQ2U0MDZ6WUpFYlJtZEozT1JzWkJoS3RXdkw4UE1wNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYW5lbC91c2VyL2FkZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1730482535),
('QMenVFX5qkTqji1Igc6aMngXiElXwwvPZ2oW5uj2', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWhLOUNFU2dRMVh5RHpMYXo0aEdtNmNFbUk3alhCa2F6UVRHZkZoQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYW5lbC9yb2xlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1730637746),
('xVen3mcugGliDAUOhj535A1SHd66PtvIncmrEFWC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmxUVklrZVhZNGlrVVJVdUxvV1NNdUdQRHprOTJPUm1hSXFiQWdtRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYW5lbC9yb2xlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1730637724);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'saad@gmail.com', 1, '2024-11-01 13:15:41', '$2y$12$OfN4cRSMgRpXyvRsoDHAE.uhGF9ZBWdpoydIRBBSqe43kLylBfpy.', 'mOytMx59jFyu7hbIDQYVTVL78SHgAjBoPnZ5nMWVx0FRJtYFFmulKx9ZAEK1', '2024-11-01 13:15:41', '2024-11-01 13:15:41'),
(6, 'Anas Ahmed', 'anas@gmail.com', 5, NULL, '$2y$12$xrrRZsrL3psWbkoTwSHdK.AqnuqolMmAt.ToovGo1ZAZbrnhZ4GGS', NULL, '2024-11-03 07:39:15', '2024-11-03 07:39:39');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
