-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 06:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogging_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `addressline` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `email_verified_at`, `password`, `firstName`, `lastName`, `username`, `mobileNumber`, `image`, `dob`, `gender`, `city`, `state`, `country`, `zip`, `addressline`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saul.damore@example.net', '2025-03-14 23:48:33', '$2y$12$9irXr1rYNBhyWXuGjy2kOe9Uv.QxiCNy7iDtHBpMHbk58NodUA5cm', 'Jennyfer Satterfield', 'Sharon Ryan DDS', 'Deon Larkin', '505.977.3720', 'https://placehold.co/600x400.png', '2012-02-19', 'Other', 'Wilkinsonbury', 'Indiana', 'Grenada', '09808-6409', '41659 Willow Cliff Apt. 903\nVanessaside, OR 71584', 'EWlcLymz9p', '2025-03-14 23:48:35', '2025-03-14 23:48:35'),
(2, 'easton83@example.org', '2025-03-14 23:48:33', '$2y$12$TzV6mnVrr5ZPifQr50iOD.rfp4738wehpdSnO7fdO0FbM58I1dGdy', 'Thurman Rolfson', 'Novella Bauch', 'Elfrieda Kilback', '+1.669.249.0400', 'https://placehold.co/600x400.png', '1971-03-29', 'Male', 'Port Karenville', 'Hawaii', 'Jamaica', '32491-4005', '4371 Loy Station Suite 302\nSchusterfort, NJ 72450', 'tppAe3BjkY', '2025-03-14 23:48:35', '2025-03-14 23:48:35'),
(3, 'adolfo.dubuque@example.org', '2025-03-14 23:48:33', '$2y$12$yyZlBGk4YzBTemgQvVeng.iZbf05F8ieloZQnkPf5Lh2G6I4AG8/m', 'Deanna Hoeger', 'Lucio Satterfield', 'Raina Wiegand', '(442) 304-8126', 'https://placehold.co/600x400.png', '2007-12-05', 'Female', 'Lake Enolamouth', 'New Hampshire', 'Guatemala', '50975-2844', '6891 Schneider Manors Apt. 859\nCroninland, NH 16225', 'edkX8sDGdS', '2025-03-14 23:48:35', '2025-03-14 23:48:35'),
(4, 'test@admin.com', '2025-03-14 23:48:34', '$2y$12$sN.rBdS8qxrdYiBWXtOngufb00DNqsxpeIo4R7ZnECKqdAuOfK3hW', 'test', 'admin', 'testadmin', '1111111111', '1742017536-67d51400bc504.jpg', '2011-07-11', 'Male', 'East Everardoland', 'Virginia', 'Dominica', '04371-3220', '4243 D\'Amore Plain\nWest Taraton, ND 16572-8417', 'zcO96uwIKlzga4kQUSZ4crx3ObrkNgsLFPDMNQkoZxqFoaApq0vd5t3fIhYJ', '2025-03-14 23:48:35', '2025-03-15 00:16:42'),
(5, 'ystoltenberg@example.net', '2025-03-14 23:48:34', '$2y$12$vvRtc6MRQW5AVV1YZ3Nv1OnIEdvU6HrGz0hpx/mVqwtIIUxE7kE3e', 'Prof. Tevin Mraz II', 'Guido Ankunding', 'Prof. Reece Luettgen MD', '+1.740.518.3436', 'https://placehold.co/600x400.png', '2004-06-21', 'Male', 'Nedrahaven', 'New Mexico', 'Korea', '04768-0053', '320 Naomie Forge Apt. 672\nBoyleshire, UT 80661', 'ZDIzm4poKe', '2025-03-14 23:48:35', '2025-03-14 23:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `content`, `owner_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'test blog title updated', 'test blog description updated', '1742017500-67d513dcde6b1.jpg', '# test ***blog*** content with some dummy data updated', 1, 2, '2024-09-27 09:58:04', '2024-09-27 10:11:07'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Maecenas at arcu sed quam pretium congue eget sit amet nunc. Maecenas id magna ipsum. Maecenas faucibus tincidunt tincidunt. Nam ac vestibulum diam, et luctus nisl. Vivamus aliquam sed magna at feugia', '1742017500-67d513dcde6b1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas at arcu sed quam pretium congue eget sit amet nunc. Maecenas id magna ipsum. Maecenas **faucibus tincidunt tincidunt**. Nam ac vestibulum diam, et luctus nisl. Vivamus aliquam sed magna at feugiat. Integer condimentum, massa id gravida tempus, justo justo semper erat, non tincidunt justo quam eget dolor. Curabitur maximus tincidunt tincidunt. Nulla quam felis, luctus nec porta ut, ullamcorper eget lacus. Donec quam metus, tempus sit amet elementum eu, placerat a purus. Sed ultrices tempor enim dictum consectetur. Sed finibus nisl a ligula rhoncus placerat. *Curabitur hendrerit* varius urna ut posuere.', 1, 2, '2024-09-27 23:20:39', '2024-09-27 23:20:39'),
(4, 'Integer interdum non orci sed rhoncus', 'Suspendisse ac consequat velit. Proin quis ultrices arcu. Curabitur euismod felis vitae libero rutrum, eu ullamcorper magna scelerisque.', '1742017500-67d513dcde6b1.jpg', 'Integer interdum non orci sed rhoncus. Suspendisse ac consequat velit. Proin quis ultrices arcu. Curabitur euismod felis vitae libero rutrum, eu ullamcorper magna scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In ac urna sed diam cursus semper id ac urna. Ut pulvinar quam lorem, elementum porta diam vulputate id. Sed tempus ante ***quis consectetur tincidunt. Maecenas tincidunt sodales tincidunt. Aenean luctus elit ligula, sed fringilla ex euismod*** et. Etiam ut nisl sit amet risus scelerisque tempus quis in erat. Cras sit amet neque vel ipsum congue mollis id vitae massa. Mauris vel nunc scelerisque, tempor elit posuere, tempus nunc. Sed condimentum, purus at hendrerit egestas, ligula massa elementum magna, imperdiet euismod lacus ex nec est. Aliquam id massa vitae metus sollicitudin semper.', 2, 3, '2024-09-27 23:21:22', '2024-09-27 23:21:22'),
(5, 'Aenean pellentesque sollicitudin viverra', 'Nullam molestie leo nibh. In hac habitasse platea dictumst.', '1742017500-67d513dcde6b1.jpg', 'Aenean pellentesque sollicitudin viverra. Nullam molestie leo nibh. In hac habitasse platea dictumst. Ut nec vulputate augue. Maecenas ultricies mi nec lacus aliquet interdum. Morbi venenatis commodo nisl non hendrerit. Ut venenatis varius urna, sit amet maximus urna ultricies eu. Donec non neque tincidunt lorem porta posuere id at nulla. Nulla facilisi. Maecenas convallis nisl a diam maximus, sed venenatis velit molestie.', 2, 3, '2024-09-27 23:22:04', '2024-09-27 23:22:04'),
(6, 'Vivamus finibus condimentum metus', 'Nam luctus erat nisl, sit amet tempus ex finibus vel. Donec non facilisis enim. Suspendisse eget lacinia felis, sed vestibulum metus.', '1742017500-67d513dcde6b1.jpg', 'Vivamus finibus condimentum metus. Nam luctus erat nisl, sit amet tempus ex finibus vel. Donec non facilisis enim. Suspendisse eget lacinia felis, sed vestibulum metus. Donec sed pharetra elit. In hac habitasse platea dictumst. Donec fermentum auctor orci, a rutrum ante semper sed.', 3, 4, '2024-09-27 23:22:33', '2024-09-27 23:22:33'),
(7, 'Cras non ultrices justo', 'Nam vestibulum nisl ut purus faucibus vulputate ac nec nibh. Nulla tellus nibh, mattis eget arcu id, congue semper nunc.', '1742017500-67d513dcde6b1.jpg', '***Cras non ultrices justo***. Nam vestibulum nisl ut purus faucibus vulputate ac nec nibh. Nulla tellus nibh, mattis eget arcu id, congue semper nunc. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla nunc et mi elementum convallis. Vestibulum pellentesque velit id dui dignissim imperdiet. Sed volutpat lacinia quam. Curabitur ullamcorper consequat massa.', 3, 4, '2024-09-27 23:23:34', '2024-09-27 23:23:34'),
(8, 'Suspendisse a tempus diam', 'Curabitur ac massa consectetur, maximus tortor ut, maximus ex. Aliquam ultrices, est ac varius tempus, ex magna condimentum dui, eget molestie ipsum nisl ac orci.', '1742017500-67d513dcde6b1.jpg', 'Suspendisse a tempus diam. Curabitur ac massa consectetur, maximus tortor ut, maximus ex. Aliquam ultrices, est ac varius tempus, ex ***magna condimentum*** dui, eget molestie ipsum nisl ac orci. Integer sed dolor felis. Nunc a finibus massa. Morbi iaculis at leo sed facilisis. Etiam tortor ante, fringilla vitae cursus in, vulputate ac justo. Etiam tempor bibendum molestie. Fusce eget diam vel felis fermentum ornare vitae sed est. Nam at faucibus libero, sed ornare velit.', 4, 5, '2024-09-27 23:24:16', '2024-09-27 23:24:16'),
(9, 'Curabitur tempus sem id eros hendrerit maximus', 'Duis hendrerit metus tristique, venenatis urna vel, posuere nibh. Vivamus bibendum urna eget massa luctus rhoncus.', '1742017500-67d513dcde6b1.jpg', '**Curabitur tempus** sem id eros hendrerit maximus. Duis hendrerit metus tristique, venenatis urna vel, posuere nibh. Vivamus bibendum urna eget massa luctus rhoncus. Nulla ut erat vel dolor suscipit vulputate id lacinia felis. Nulla rhoncus porta massa. Donec rutrum nibh eu hendrerit sagittis. Fusce volutpat, risus ut feugiat sagittis, tortor ante porttitor risus, sed tempus nisl nunc et erat. Aenean placerat finibus neque, vitae porta velit tincidunt eget. Quisque efficitur porta nisi, sit amet ullamcorper mauris imperdiet sed. Fusce imperdiet lacus id ante auctor ornare. Cras sit amet arcu eros. Etiam est felis, ornare et purus quis, laoreet efficitur diam. *Nullam sed* leo efficitur, facilisis diam eget, rutrum elit.', 4, 5, '2024-09-27 23:25:14', '2024-09-27 23:25:14'),
(10, 'Praesent elementum mi id purus vestibulum', 'eget cursus libero semper. Nunc tincidunt feugiat quam, viverra convallis sem. Maecenas vitae iaculis ex, ut varius ipsum.', '1742017500-67d513dcde6b1.jpg', 'Praesent elementum mi id purus vestibulum, eget cursus libero semper. Nunc tincidunt feugiat quam, viverra convallis sem. Maecenas vitae iaculis ex, ut varius ipsum. Vestibulum vehicula quis dolor id egestas. Sed laoreet nisl orci, in pretium magna pretium sed. Proin vitae orci elit. Duis venenatis pulvinar sagittis. Pellentesque a turpis at massa posuere congue. Phasellus magna tortor, porta sodales neque sit amet, hendrerit porta dolor. Suspendisse potenti. Phasellus mollis sagittis ligula eget vulputate. Nunc lobortis finibus lacinia.', 5, 6, '2024-09-27 23:25:47', '2024-09-27 23:25:47'),
(11, 'Proin rutrum, magna vel porta cursus', 'ligula tortor posuere lectus, vitae eleifend enim nisi eu lorem. Fusce in posuere justo. Quisque quis scelerisque metus.', '1742017500-67d513dcde6b1.jpg', 'Proin rutrum, magna vel porta cursus, ligula tortor posuere lectus, vitae eleifend enim nisi eu lorem. Fusce in posuere justo. Quisque quis scelerisque metus. Nam augue nunc, imperdiet quis massa at, vulputate aliquet enim. Maecenas nulla mi, scelerisque et cursus ac, mollis ut arcu. Ut porttitor elit eu libero mattis, at fringilla diam maximus. Mauris scelerisque dui facilisis, tempus quam quis, condimentum purus. Donec non nisi venenatis, mollis felis a, pellentesque ex. Aenean a sodales metus. Donec id ultricies turpis, quis dapibus velit. Maecenas eget libero vitae orci mollis cursus et sed ex.', 5, 6, '2024-09-27 23:27:01', '2024-09-27 23:27:01'),
(12, 'Phasellus elementum diam eget orci sagittis consectetur', 'Donec finibus sit amet erat ac molestie. Ut purus ante, consequat vitae lacus sed, luctus vehicula lacus. Quisque tristique tortor eleifend varius interdum.', '1742017500-67d513dcde6b1.jpg', 'Phasellus elementum diam eget orci sagittis consectetur. Donec finibus sit amet erat ac molestie. Ut purus ante, consequat vitae lacus sed, luctus vehicula lacus. Quisque tristique tortor eleifend varius interdum. Aliquam erat volutpat. Etiam viverra, metus sit amet venenatis molestie, nisl ligula finibus dolor, in vulputate mi urna in dolor. Curabitur euismod blandit nunc, at vehicula odio elementum eget. Mauris convallis, risus eget malesuada tristique, erat est fermentum libero, at ullamcorper dui nulla ut ligula. Fusce ut ante vitae urna mollis aliquam a sed est. Pellentesque et pharetra nisi. Quisque feugiat porta orci, at vehicula justo vestibulum non.', 5, 6, '2024-09-27 23:27:29', '2024-09-27 23:27:29');

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Technology', '1742017500-67d513dcde6b1.jpg', '2025-03-17 05:55:00', '2025-03-17 05:55:00'),
(3, 'Health & Wellness', '1742017500-67d513dcde6b1.jpg', '2025-03-17 05:55:00', '2025-03-17 05:55:00'),
(4, 'Personal Finance', '1742017500-67d513dcde6b1.jpg', '2025-03-17 05:55:00', '2025-03-17 05:55:00'),
(5, 'Travel', '1742017500-67d513dcde6b1.jpg', '2025-03-17 05:55:00', '2025-03-17 05:55:00'),
(6, 'Home Improvement', '1742017500-67d513dcde6b1.jpg', '2025-03-17 05:55:00', '2025-03-17 05:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `message`, `owner_id`, `blog_id`, `created_at`, `updated_at`) VALUES
(1, 'something', 11, 12, '2025-03-17 23:41:27', '2025-03-17 23:41:27'),
(2, 'my comment', 11, 12, '2025-03-17 23:41:33', '2025-03-17 23:41:33');

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
(4, '2025_03_13_055604_create_admins_table', 2),
(5, '2025_03_15_054937_create_categories_table', 3),
(6, '2025_03_17_060042_create_blogs_table', 4),
(7, '2025_03_18_042101_create_comments_table', 5);

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
('UcJvngvwFlg0ZECaNDMww4JIc27SiJkyx90cyED1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0xRVTRCQ3U4akhUNUZZcWlMbEZqbFYydTg5VWFCYmJNTWpiY2FObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742274977);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `addressline` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `firstName`, `lastName`, `username`, `mobileNumber`, `image`, `dob`, `gender`, `city`, `state`, `country`, `zip`, `addressline`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'harris.candace@example.net', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Madalyn Treutel', 'Katrine Mueller', 'Dr. Arne Ebert II', '+1-223-371-1444', 'https://placehold.co/600x400.png', '1977-09-04', 'Female', 'Gracielamouth', 'Idaho', 'Malawi', '40566', '43009 Mitchell Islands Apt. 461\nWest Shannyshire, MA 00585-9597', '3zcL3xf7Fi', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(2, 'hackett.hunter@example.org', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Prof. Geo O\'Kon I', 'Mrs. Tessie Pollich', 'Alvera Hegmann', '281.729.7564', 'https://placehold.co/600x400.png', '2024-12-29', 'Female', 'East Eddshire', 'Massachusetts', 'Japan', '11416-2344', '64595 Zemlak Greens\nHayleyfurt, SD 92934', 'BxAqw5IJtm', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(3, 'cjast@example.net', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Amir Jacobi', 'Dr. Dahlia Okuneva', 'Nikki Ortiz', '+14693766293', 'https://placehold.co/600x400.png', '1999-11-27', 'Male', 'Windlerport', 'Maryland', 'Chad', '75455-7801', '385 Rogelio Glens Suite 293\nPinkstad, NM 53742', 'lQBelBEkLI', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(4, 'streich.cora@example.org', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Ms. Nelle Orn DVM', 'Prof. Nicolette Botsford', 'Hassan Stracke I', '(860) 636-3793', 'https://placehold.co/600x400.png', '2004-01-29', 'Female', 'Helenport', 'West Virginia', 'Croatia', '46360', '388 Lemke Parkway\nEast Alexzander, SC 73824', 'ZRIhwdRyeO', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(5, 'sauer.fay@example.org', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Alessandro Nicolas', 'Damaris Rath', 'Moshe Hackett III', '1-424-286-4866', 'https://placehold.co/600x400.png', '2000-08-26', 'Male', 'West Denaview', 'Kentucky', 'United Kingdom', '52835-1029', '51726 Keebler Ports Suite 533\nChamplintown, MT 57439-2699', 'SrpOeVKecY', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(6, 'sjenkins@example.org', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Lonie Shanahan DVM', 'Viva Jones DDS', 'Leonard Hettinger', '1-910-917-8461', 'https://placehold.co/600x400.png', '1991-01-02', 'Male', 'Eunaland', 'Utah', 'Tunisia', '62843', '1872 Jenkins Fort\nLake Maximillian, CT 12331-7313', 'jGySPzT2vX', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(7, 'mzulauf@example.net', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Prof. Angeline Altenwerth', 'Mr. Axel Kling DDS', 'Daniella Pollich DDS', '(918) 544-5864', 'https://placehold.co/600x400.png', '1991-12-13', 'Female', 'Deckowborough', 'New Hampshire', 'Rwanda', '50713', '76182 Paige Flats Suite 192\nLeopoldoborough, KS 22600-4022', 'odUQl83hba', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(8, 'treutel.jena@example.com', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Dandre Upton', 'Hermina Klein MD', 'Dr. Quinten Wintheiser DVM', '563-921-7908', 'https://placehold.co/600x400.png', '1989-02-25', 'Other', 'East Kendallview', 'Illinois', 'Czech Republic', '79359', '6831 Barbara Dale\nJerryberg, AL 64762-2889', '2kjm7Yn4uY', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(9, 'sroob@example.net', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Jake Nader', 'Mrs. Yvette McClure', 'Dr. Geovanny Steuber', '(928) 419-9974', 'https://placehold.co/600x400.png', '2010-12-04', 'Female', 'East Leatha', 'Mississippi', 'Oman', '10878', '246 Deven Inlet\nClarabelleburgh, NE 89817', 'fass35l1H2', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(10, 'berry48@example.net', '2025-03-13 00:02:27', '$2y$12$qY31WtOrTydacaMb.xLhgekNddAJIZ4ACKMZFUcViiMIaJA6ef8He', 'Prof. Nannie Hackett', 'Emanuel Mante IV', 'Dr. Jovany Rosenbaum', '1-816-487-6579', 'https://placehold.co/600x400.png', '1987-12-25', 'Other', 'Port Brisa', 'Georgia', 'Nepal', '88733-0146', '68438 Myrtie Mountain Apt. 227\nWest Elvera, LA 85196-9113', 'fmD1PLU9hg', '2025-03-13 00:02:27', '2025-03-13 00:02:27'),
(11, 'test@user.com', NULL, '$2y$12$wuNNpTB2okkRU0iZoNriS.2rv9BLyYb8YE4PziJhz8ptW9T38uDuq', 'test', 'user', 'testuser', '7777777777', '1741845238-67d272f697857.jpg', '2025-03-13', 'male', 'kolkata', 'west bengal', 'india', '700000', 'abc road, kolkata', NULL, '2025-03-13 00:18:13', '2025-03-13 00:23:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_owner_id_foreign` (`owner_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_owner_id_foreign` (`owner_id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
