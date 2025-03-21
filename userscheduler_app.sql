-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2025 at 01:34 PM
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
-- Database: `userscheduler_app`
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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `street_number` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `street_number`, `street_name`, `city`, `state`, `country`, `postal_code`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 1, '3126', 'Bachstraße', 'Burgenland', 'Hamburg', 'Germany', '10469', '-47.8485', '115.9322', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(2, 2, '3500', 'Elliot Street', 'Palmerston North', 'Manawatu-Wanganui', 'New Zealand', '82116', '47.6210', '-48.0716', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(3, 3, '174', 'Mikoli Raievskogo', 'Kup\'yansk', 'Mikolayivska', 'Ukraine', '77099', '80.6251', '-9.4199', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(4, 4, '9202', 'Dalhousie Ave', 'Windsor', 'Newfoundland and Labrador', 'Canada', 'N7W 3U3', '-72.5001', '-117.3476', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(5, 5, '7596', 'Rue de L\'Abbé-De-L\'Épée', 'Surpierre', 'Luzern', 'Switzerland', '8529', '-56.2973', '147.8857', '2025-03-21 03:24:16', '2025-03-21 03:24:16'),
(6, 6, '819', 'Rue Bataille', 'Feusisberg', 'Thurgau', 'Switzerland', '2231', '-59.2168', '116.9938', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(7, 7, '8510', 'Anne Wadmanwei', 'Thij', 'Overijssel', 'Netherlands', '2771 OF', '30.0133', '81.8792', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(8, 8, '9551', 'Place de L\'Église', 'Amiens', 'Haut-Rhin', 'France', '13891', '-14.7907', '135.9183', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(9, 9, '1533', 'Karbisheva', 'Chernivci', 'Odeska', 'Ukraine', '52118', '77.0933', '8.0800', '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(10, 10, '9004', 'Solvænget', 'Viby J.', 'Syddanmark', 'Denmark', '67165', '-46.9529', '97.5558', '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(11, 11, '4187', 'Janpath', 'Suryapet', 'Andaman and Nicobar Islands', 'India', '71998', '12.5523', '-131.3222', '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(12, 12, '9784', 'Hyldevej', 'Ansager', 'Danmark', 'Denmark', '49137', '-43.4861', '-32.6874', '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(13, 13, '8068', 'Tremaine Avenue', 'Blenheim', 'Waikato', 'New Zealand', '93742', '55.2755', '-47.9175', '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(14, 14, '9494', 'Taupo Quay', 'Christchurch', 'Bay of Plenty', 'New Zealand', '16622', '49.5796', '-103.0884', '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(15, 15, '8477', 'Mockingbird Ln', 'Bathurst', 'Queensland', 'Australia', '1552', '-86.3639', '-61.5727', '2025-03-21 05:54:30', '2025-03-21 05:54:30');

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
(6, '2025_03_21_071539_create_users_details_table', 2),
(7, '2025_03_21_000000_create_locations_table', 3);

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
('a3anr2qAgsz0jldDZAkcGQVziZaOZA8wwewumNRy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjJtOEtLcHl2Z25Td3FNNzBBWUV4QVV2cU9wSjNvb052VHlLajU1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742456806),
('K7BTIWTgrYAi5mAom0dgm93GwAVEzF3uDAXiDxDr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHgwVUhRQ0RnS3ZoR1dXYlN6VHk0WU9nY0lsd3JNVHhnSURtRDRPcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZmlsdGVyZWQtdXNlcnM/Y2l0eT1QYWxtZXJzdG9uJTIwTm9ydGgmY291bnRyeT1OZXclMjBaZWFsYW5kJmZpZWxkcyU1QjAlNUQ9bmFtZSZmaWVsZHMlNUIxJTVEPWVtYWlsJmZpZWxkcyU1QjIlNUQ9cGhvbmUmZmllbGRzJTVCMyU1RD1jaXR5JmZpZWxkcyU1QjQlNUQ9Y291bnRyeSZnZW5kZXI9bWFsZSZsaW1pdD01Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742548031),
('qwDhxbEl7L8wYUFGpQi9i5Q3EWO0Nt82C0HAQu3p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlZmbWkxTzdzVWU5Y2ZFYzBlc3VvcXowRFlLWnhYc2ZPaFZEYVA1ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yYW5kb20tdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742487357),
('ZgKT0KnrY6CnTvzulDWQ0r3C8bW8AiyZDUSbCaHV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1ZDc0FseWlaTUlzMVkzaTlqRUlhbjVnNEhvcUg2bW1CQjh6WUVQZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGQtcmFuZG9tLXVzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742556270);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Geza Westphal', 'geza.westphal@example.com', NULL, '$2y$12$1KWCzHkIVV2Nf1S8LKazLePOmQ9/MBPg07DDBTHnftB3CpVk/KHIG', NULL, '2025-03-21 03:24:14', '2025-03-21 03:24:14'),
(2, 'Matthew Roberts', 'matthew.roberts@example.com', NULL, '$2y$12$b3Lo6PAppDb8xMo9Gb3LQOyYTZIQKTHjckLixfmn0MU/.mW3gLFAq', NULL, '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(3, 'Toligniv Doronchenko', 'toligniv.doronchenko@example.com', NULL, '$2y$12$TiHs7sOjtz4eBlIDzszPyeSJgGVAI965VwKFdUBHw/3r0ONt4Vozi', NULL, '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(4, 'Mathis Mitchell', 'mathis.mitchell@example.com', NULL, '$2y$12$TJJaNhLazYlwIz0McW/OIuU/mPmXuUSzshUw01kDXn.kbCVWFpEjq', NULL, '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(5, 'Dijana Robert', 'dijana.robert@example.com', NULL, '$2y$12$9C2K19FXMEz9.k7NO2Dzp.ZlVvoUV690G/9.pe7pLKpqrTohABjpi', NULL, '2025-03-21 03:24:16', '2025-03-21 03:24:16'),
(6, 'Ljiljana Dupuis', 'ljiljana.dupuis@example.com', NULL, '$2y$12$MfyJK2j76oBnFi6xHZ5Tk.z.apvVqMVxa2TsX9k9qRGNRCSNSJbES', NULL, '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(7, 'Phileine Hollander', 'phileine.hollander@example.com', NULL, '$2y$12$kxtLCmm8sby6lcBDDDb30uCiDbNxLfC6WoSPcRo0BH8fNReV1Cepq', NULL, '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(8, 'Eléna Marie', 'elena.marie@example.com', NULL, '$2y$12$eSxgF1kKYH/OJ6EN7XjPUeip2didndHfvNGT6V.5BLpkYJuC18W.6', NULL, '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(9, 'Makivka Dashenko', 'makivka.dashenko@example.com', NULL, '$2y$12$pKAVRx6dPRrH48ogYIAITuu6OKNgcDpZSP9HUo9Pl.k1sxFrlr5R6', NULL, '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(10, 'Emily Poulsen', 'emily.poulsen@example.com', NULL, '$2y$12$jatmaSTNlcHXdJORybV5qeOYxKmwPd4HzDnxWXIS579jQeNDnKDN.', NULL, '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(11, 'Lakshit Dawangave', 'lakshit.dawangave@example.com', NULL, '$2y$12$dUtJKIJUmLqMmSEhqi0JaurOdZER8RxPSNe14Hn8W.hgPPndZ5yFm', NULL, '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(12, 'Sander Madsen', 'sander.madsen@example.com', NULL, '$2y$12$vMr.eO7PWMG3v6I3sbwx0uunj3V/W5376KocbBVBrTXwLMT9Bd5BW', NULL, '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(13, 'Tyler Cooper', 'tyler.cooper@example.com', NULL, '$2y$12$F4WYeQdp1vRDL9tAyh8Ev.1WpSXnjokg02SkN5f9zt6RpiZ5K/TyS', NULL, '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(14, 'Toby Wang', 'toby.wang@example.com', NULL, '$2y$12$CQZ0GfpHala08gZwNxDlzeuVDm2hli9iPpNl4ASOPg0YCHTGOZd4O', NULL, '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(15, 'Flenn Caldwell', 'flenn.caldwell@example.com', NULL, '$2y$12$68ezKNwG3e61lzC5H60Pme/5jAsdH2bE3CH70ZtlrUEQVDSA2eF3u', NULL, '2025-03-21 05:54:30', '2025-03-21 05:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `gender`, `phone`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'female', '0546-9635340', '1985-03-29', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(2, 2, 'male', '(663)-044-2601', '1975-01-21', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(3, 3, 'male', '(098) D27-1940', '1952-01-27', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(4, 4, 'male', 'E71 I67-9465', '1959-01-26', '2025-03-21 03:24:15', '2025-03-21 03:24:15'),
(5, 5, 'female', '075 517 85 85', '1958-10-14', '2025-03-21 03:24:16', '2025-03-21 03:24:16'),
(6, 6, 'female', '077 334 61 11', '1966-08-13', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(7, 7, 'female', '(018) 6165416', '1972-07-30', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(8, 8, 'female', '01-12-22-14-65', '1999-02-25', '2025-03-21 04:35:47', '2025-03-21 04:35:47'),
(9, 9, 'female', '(098) E42-6091', '1972-12-29', '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(10, 10, 'female', '22343444', '1965-10-21', '2025-03-21 04:35:48', '2025-03-21 04:35:48'),
(11, 11, 'male', '8988600518', '1966-07-11', '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(12, 12, 'male', '02506193', '1978-06-04', '2025-03-21 05:54:29', '2025-03-21 05:54:29'),
(13, 13, 'male', '(418)-907-5684', '1976-03-24', '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(14, 14, 'male', '(053)-745-2270', '1989-10-17', '2025-03-21 05:54:30', '2025-03-21 05:54:30'),
(15, 15, 'male', '02-5568-4203', '1959-02-05', '2025-03-21 05:54:30', '2025-03-21 05:54:30');

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
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_user_id_foreign` (`user_id`);

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
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_details_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_details`
--
ALTER TABLE `users_details`
  ADD CONSTRAINT `users_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
