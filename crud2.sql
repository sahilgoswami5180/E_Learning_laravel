-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2025 at 06:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud2`
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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, 'Electronics', 'Devices such as smartphones, laptops, and other gadgets.', '2025-01-09 12:26:06', '2025-01-09 12:26:06', NULL, 'images/electronics.png'),
(2, 'Clothing', 'Apparel for men, women, and children.', '2025-01-09 12:26:06', '2025-01-09 12:26:06', NULL, 'images/clothing.png'),
(3, 'Home & Kitchen', 'Products for home improvement and kitchen appliances.', '2025-01-09 12:26:06', '2025-01-09 12:26:06', NULL, 'images/home_kitchen.png');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `disc_price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `subcategories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_product`
--

CREATE TABLE `combo_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `combo_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fdsafsad', '2dob3hgvvq@osxofulk.com', 'eqwewqadadadadas', 0, '2025-01-17 01:29:38', '2025-01-17 01:29:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `duration`, `price`, `instructor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sefsdfgxgxf', 'gxfgxgfxgdfgsdgdsgfdg', 1234, 199.00, 4, '2025-01-13 00:54:15', '2025-01-17 04:16:38', NULL),
(2, 'dvghgfgbgcdgbc14562', 'xcgvbxdcgvxxdgh', 20, 123.00, 4, '2025-01-16 00:49:23', '2025-01-16 00:50:12', NULL),
(3, 'dryeyhdwtyrty', 'srfgerfdgergytdrtrdy', 243, 343.00, 4, '2025-01-17 04:13:58', '2025-01-17 04:13:58', NULL),
(4, 'fgdsgdgerfd', 'stgstgsdrtgdsfgerg', 43, 3435.00, 4, '2025-01-17 04:14:53', '2025-01-17 04:14:53', NULL),
(5, 'wrerdaerwfsdfar', 'asdfadfzsdfzcfdf', 123, 454.00, 5, '2025-01-22 23:49:56', '2025-01-22 23:49:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_orders`
--

CREATE TABLE `course_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  `razorpay_order_id` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_orders`
--

INSERT INTO `course_orders` (`id`, `user_id`, `course_id`, `course_name`, `total`, `status`, `razorpay_order_id`, `payment_status`, `created_at`, `updated_at`, `razorpay_payment_id`, `razorpay_signature`) VALUES
(28, 3, 3, 'dryeyhdwtyrty', 343.00, 'completed', 'order_PkTKyOdEZSoidT', 'success', '2025-01-17 04:38:46', '2025-01-17 04:39:09', 'pay_PkTL92OLnt7AZ5', '0baaf59c50cf19e7d8e5e94c5903d9357c5b8fe6fc9421a894b81915fa50dc8a'),
(29, 3, 1, 'sefsdfgxgxf', 199.00, 'completed', 'order_PkTNVR6nBSecg5', 'success', '2025-01-17 04:41:10', '2025-01-17 04:41:32', 'pay_PkTNen3sq8a3ZA', 'bcc61fce10a9160e2144a552cdd072df2057e5b7774bc2a07900fe2366369b3b'),
(30, 3, 2, 'dvghgfgbgcdgbc14562', 123.00, 'completed', 'order_PkUT0B7Q2JJrwQ', 'success', '2025-01-17 05:45:04', '2025-01-17 05:45:37', 'pay_PkUTLmnzw8BOoi', '5102938d2c8d3b6c476f9435cc2c2cbab447850d4a50d6a91d563bc9b0d72b27'),
(32, 3, 4, 'fgdsgdgerfd', 3435.00, 'completed', 'order_PkUvE6yzehLT21', 'success', '2025-01-17 06:11:47', '2025-01-17 06:12:23', 'pay_PkUvdPVgV1YZbu', '293de8fb88ad5096f274b875b6209582707715d2a4f1cd78bfe3d6a7271f461f');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
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
  `created_at` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
  `finished_at` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `content_type` enum('text','video') NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `content`, `content_type`, `video_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'dsfsgsfgsg', 'fdsfsdfsfgsgsg', 'video', 'https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4', '2025-01-13 01:26:13', '2025-01-13 06:18:39', NULL),
(2, 1, 'dfsfs', 'zfdzfzdzfasfsadfsfsdffsfsfdsdfsfddsfsdfzfzadfafsfdsadafs', 'text', NULL, '2025-01-13 01:36:15', '2025-01-13 01:36:15', NULL),
(3, 1, 'sfdafafsadf', '123456', 'video', 'https://www.youtube.com/watch?v=XcVlvo67Lkw', '2025-01-13 01:39:21', '2025-01-13 01:44:02', NULL),
(4, 1, 'xcgdcfgsrtstsfsfgdrfgst', NULL, 'video', 'https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4', '2025-01-16 00:55:30', '2025-01-16 00:55:30', NULL),
(5, 2, 'wrsdfsfasdfrsgsv', NULL, 'text', NULL, '2025-01-17 04:29:12', '2025-01-17 04:30:02', '2025-01-17 04:30:02'),
(6, 2, 'sdfgsrdgsrtg', NULL, 'video', 'https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4', '2025-01-17 04:34:00', '2025-01-17 04:34:00', NULL),
(7, 3, 'fghdhgdhgd', 'xdfsgsdg', 'text', NULL, '2025-01-17 04:35:37', '2025-01-17 04:35:37', NULL);

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
(4, '2024_12_09_000001_create_password_resets_table', 1),
(5, '2024_12_11_071523_create_categories_table', 1),
(6, '2024_12_11_071534_create_products_table', 1),
(7, '2024_12_11_092338_add_deleted_at_to_categories_table', 1),
(8, '2024_12_11_093852_add_description_to_categories_table', 1),
(9, '2024_12_11_105841_add_deleted_at_to_products_table', 1),
(10, '2024_12_11_110650_add_status_to_products_table', 1),
(11, '2024_12_14_064531_add_profile_image_to_users_table', 1),
(12, '2024_12_16_092333_create_cart_items_table', 1),
(13, '2024_12_16_093935_create_carts_table', 1),
(14, '2024_12_20_051935_add_deleted_at_to_users_table', 1),
(15, '2024_12_20_074450_create_wishlists_table', 1),
(16, '2024_12_20_075255_create_support_requests_table', 1),
(17, '2024_12_20_124519_create_subcategories_table', 1),
(18, '2024_12_20_125627_add_subcategory_id_to_products_table', 1),
(19, '2024_12_20_130140_add_image_to_categories_table', 1),
(20, '2024_12_23_053912_create_contact_us_table', 2),
(21, '2024_12_23_072820_add_deleted_at_to_contact_us_table', 2),
(22, '2024_12_25_074602_create_personal_access_tokens_table', 2),
(23, '2024_12_28_064629_add_brand_name_to_products_table', 2),
(24, '2024_12_28_064700_create_product_images_table', 2),
(25, '2024_12_31_092400_create_combos_table', 2),
(26, '2025_01_09_095657_create_orders_table', 3),
(27, '2025_01_09_095660_create_order_items_table', 3),
(28, '2025_01_09_125321_add_address_to_orders_table', 3),
(29, '2025_01_09_122344_add_razorpay_fields_to_orders_table', 4),
(30, '2025_01_09_131849_add_payment_columns_to_orders_table', 5),
(31, '2025_01_13_041218_create_courses_table', 6),
(32, '2025_01_13_041257_create_lessons_table', 6),
(33, '2025_01_13_041309_create_quizzes_table', 6),
(34, '2025_01_13_041324_create_progress_table', 6),
(35, '2025_01_13_041335_create_course_purchases_table', 6),
(36, '2025_01_13_041418_create_courses_table', 7),
(37, '2025_01_13_041318_create_courses_table', 8),
(38, '2025_01_13_041357_create_lessons_table', 8),
(39, '2025_01_13_041409_create_quizzes_table', 8),
(40, '2025_01_13_041405_create_lessons_table', 9),
(41, '2025_01_13_041410_create_quizzes_table', 10),
(42, '2025_01_13_072633_create_questions_table', 11),
(43, '2025_01_13_072633_create_quiz_results_table', 11),
(44, '2025_01_13_093626_create_payment_success_table', 12),
(45, '2025_01_17_052353_create_course_orders_table', 13),
(47, '2025_01_17_052428_create_payment_success_table', 14),
(48, '2025_01_17_062941_add_payment_fields_to_course_orders_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_items` text DEFAULT NULL,
  `order_images` text DEFAULT NULL,
  `order_quantities` text DEFAULT NULL,
  `order_prices` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `course_id`, `total`, `status`, `order_items`, `order_images`, `order_quantities`, `order_prices`, `created_at`, `updated_at`, `address`, `razorpay_payment_id`, `razorpay_order_id`, `razorpay_signature`, `payment_status`, `payment_method`, `payment_details`) VALUES
(33, 3, 1, 199.00, 'paid', NULL, NULL, NULL, NULL, '2025-01-16 03:33:55', '2025-01-16 03:33:55', NULL, NULL, NULL, NULL, 'pending', NULL, NULL),
(34, 3, 2, 123.00, 'pending', NULL, NULL, NULL, NULL, '2025-01-16 23:42:16', '2025-01-16 23:42:16', NULL, NULL, NULL, NULL, 'pending', NULL, NULL),
(35, 3, 2, 123.00, 'pending', NULL, NULL, NULL, NULL, '2025-01-16 23:50:22', '2025-01-16 23:50:22', NULL, NULL, NULL, NULL, 'pending', NULL, NULL),
(36, 3, 2, 123.00, 'pending', NULL, NULL, NULL, NULL, '2025-01-16 23:51:40', '2025-01-16 23:51:40', NULL, NULL, NULL, NULL, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('3ar2p0qhl1@vafyxh.com', '$2y$12$swwW0Vcmj/mL7PABWZaaVuWieHSjoR4MYW1aJfCpvVbukMoJKPOCG', '2025-01-17 03:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `payment_success`
--

CREATE TABLE `payment_success` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `razorpay_order_id` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `razorpay_signature` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_name`, `description`, `price`, `category_id`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`, `subcategory_id`) VALUES
(1, 'Samsung Galaxy S21', 'Samsung', 'Latest smartphone with high-end features and excellent camera.', 69999.00, 1, 'images/s21.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 1),
(2, 'iPhone 13', 'Apple', 'iPhone with improved performance, camera, and battery life.', 79999.00, 1, 'images/iphone13.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 1),
(3, 'Dell XPS 13', 'Dell', 'Compact and powerful laptop with great battery life and performance.', 99999.00, 1, 'images/dell_xps13.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 2),
(4, 'MacBook Pro 16\"', 'Apple', 'High-performance laptop for professionals with a Retina display.', 239999.00, 1, 'images/macbook_pro16.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 2),
(5, 'Men\'s Casual Shirt', 'Brand A', 'Comfortable and stylish casual shirt for men.', 1299.00, 2, 'images/mens_shirt.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 3),
(6, 'Men\'s Jeans', 'Brand B', 'Durable and fashionable jeans for men.', 1999.00, 2, 'images/mens_jeans.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 3),
(7, 'Women\'s Floral Dress', 'Brand X', 'Elegant floral dress for casual and formal occasions.', 2499.00, 2, 'images/womens_dress.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 4),
(8, 'Women\'s T-Shirt', 'Brand Y', 'Comfortable cotton T-shirt for everyday wear.', 799.00, 2, 'images/womens_tshirt.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 4),
(9, 'Philips Mixer', 'Philips', 'Powerful and durable mixer for your kitchen needs.', 3499.00, 3, 'images/philips_mixer.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 5),
(10, 'LG Microwave', 'LG', 'Microwave with multiple cooking modes and quick heating.', 8999.00, 3, 'images/lg_microwave.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 5),
(11, 'Wooden Dining Table', 'Furniture Co.', 'Stylish and durable wooden dining table for your home.', 14999.00, 3, 'images/wooden_dining_table.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 6),
(12, 'Office Chair', 'Furniture Co.', 'Ergonomic office chair with adjustable height and back support.', 4999.00, 3, 'images/office_chair.png', 'active', '2025-01-09 12:35:21', '2025-01-09 12:35:21', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_text`, `options`, `correct_answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'sdfafazfdafaf', '\"sgffsg,gsfgsg\"', 'gsfgsg', '2025-01-13 02:29:06', '2025-01-13 07:03:36', NULL),
(2, 1, 'fgsgfgdsfg', '\"sgffsg,gsfgsg\"', 'gsfgsg', '2025-01-13 05:44:23', '2025-01-13 05:44:23', NULL),
(3, 1, 'dghdfhgdtygd', '\"sgffsg,gsfgsg\"', 'gsfgsg', '2025-01-13 05:55:39', '2025-01-13 05:55:39', NULL),
(4, 1, 'fgdgdfgd', '\"dfgdrgd,dfgdgdg\"', 'dfgdrgd', '2025-01-13 05:57:54', '2025-01-13 05:57:54', NULL),
(5, 1, 'dsaff', '\"dfsfsf,dffdaf\"', 'dfsfsf', '2025-01-17 04:47:56', '2025-01-17 04:47:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `course_id`, `lesson_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 'sdsfgdsgs', '2025-01-13 02:10:24', '2025-01-13 06:41:37', NULL),
(2, 1, 2, 'quiz1', '2025-01-16 00:56:15', '2025-01-16 00:56:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `quiz_id`, `user_id`, `score`, `completed`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 0, 0, '2025-01-13 06:02:08', '2025-01-13 06:02:08'),
(6, 1, 5, 1, 1, '2025-01-13 08:18:07', '2025-01-17 04:47:15'),
(7, 1, 5, 2, 0, '2025-01-16 03:37:33', '2025-01-17 04:47:05'),
(8, 1, 3, 1, 1, '2025-01-17 04:42:39', '2025-01-17 04:42:39');

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
('aWroThWYDInGslv7yQUWrG3auT745JwZUo2YEuBW', 2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQWlTMGF1d1puNEpya2t1RVFrWjRjYlZ6anVJYkU3OUdiaEhscXNGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb3Vyc2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY3NzL3N0eWxlLmNzcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1737609644);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Smartphones', 1, 'Mobile phones and smartphones from various brands.', 'images/smartphones.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL),
(2, 'Laptops', 1, 'Laptops and notebooks for work, gaming, and personal use.', 'images/laptops.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL),
(3, 'Men\'s Clothing', 2, 'Clothing and apparel for men, including shirts, pants, and accessories.', 'images/mens_clothing.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL),
(4, 'Women\'s Clothing', 2, 'Clothing and apparel for women, including dresses, tops, and skirts.', 'images/womens_clothing.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL),
(5, 'Kitchen Appliances', 3, 'Appliances such as refrigerators, mixers, and microwaves for your kitchen.', 'images/kitchen_appliances.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL),
(6, 'Home Furniture', 3, 'Furniture for the living room, bedroom, and office.', 'images/home_furniture.png', '2025-01-09 12:30:09', '2025-01-09 12:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `status` enum('pending','resolved','closed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','instructor','user') NOT NULL DEFAULT 'user',
  `profile_image` varchar(255) DEFAULT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile_number`, `password`, `role`, `profile_image`, `email_verification_token`, `otp`, `otp_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'qzkqin1rnt@somelora.com', '2025-01-12 23:27:14', '+919069059917', '$2y$12$xE7LMvDjQs5e47eexHcvwONc9idHk83l9nbeaxyKIvSnORCHM0VNy', 'admin', 'profile_images/u92pfHv411fYZNzRjVXd8iv61B13uauBs6jycOpN.jpg', NULL, '113723', '2025-01-12 23:27:10', 'NGf16U70AxF8ckzMMidfmtTSWO8R0oZ79vRxTHEFD7iaRSnFjV2hDQ5j3BnS', '2025-01-12 23:26:51', '2025-01-17 04:03:09', NULL),
(3, 'student', '3ar2p0qhl1@vafyxh.com', '2025-01-13 00:03:57', '+918069059917', '$2y$12$OXxNpWFfzVMZEBFho/bfi.QtSLeo.megpAHcVylmPqZuzxl2IaAFa', 'user', NULL, NULL, '669847', '2025-01-13 00:04:05', 'qS993Ntfdtb8ZV9SZryx7KJFvDNpaiNK4ScEsE8DJJBbTUObqPFpHZPlZxCC', '2025-01-13 00:03:36', '2025-01-13 00:04:05', NULL),
(4, 'instructor', '7yx17fvytq@qacmjeq.com', '2025-01-13 00:07:57', '+917029059917', '$2y$12$qfjzx65jFdR3bJRaIUOzb.Jmcg3lL/XCiHm5sGKRVnJtbAL2LLYTO', 'instructor', 'profile_images/AucYTI4pPwnRm8pa26i6iW6VBfzliN4UcPIQHJri.jpg', NULL, '358289', '2025-01-13 00:08:05', 'zBooGYm78lwRaVMqy5rVCafYu45BxVJoqix2Xo2ddSVFGzXc7Ubp70ULBqca', '2025-01-13 00:07:44', '2025-01-22 23:49:31', NULL),
(5, 'ghjcdgjsfgj', 'vhl3yfwekk@somelora.com', '2025-01-17 04:00:35', '+919029059917', '$2y$12$aJTFJV/D4PJWnYR5iCUvJO7tVeBt6lg5AlrFK9d.obdBzuS99dRHa', 'instructor', NULL, NULL, '756965', '2025-01-17 03:58:35', NULL, '2025-01-17 03:58:11', '2025-01-22 23:49:19', NULL),
(6, 'Test', 'kls8gmll2t@cmhvzylmfc.com', '2025-01-17 04:19:57', '+917069059917', '$2y$12$4IZ7ODDYdsW9YeB1T.ckx.NrU/UddqW5aLKi2X601.qrjke/xW4sW', 'user', NULL, NULL, '233732', '2025-01-17 04:19:51', NULL, '2025-01-17 04:19:13', '2025-01-17 04:27:53', '2025-01-17 04:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`products`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_id_foreign` (`course_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `combos_categories_id_foreign` (`categories_id`),
  ADD KEY `combos_subcategories_id_foreign` (`subcategories_id`);

--
-- Indexes for table `combo_product`
--
ALTER TABLE `combo_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combo_product_combo_id_product_id_unique` (`combo_id`,`product_id`),
  ADD KEY `combo_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `course_orders`
--
ALTER TABLE `course_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_orders_razorpay_order_id_unique` (`razorpay_order_id`),
  ADD KEY `course_orders_user_id_foreign` (`user_id`),
  ADD KEY `course_orders_course_id_foreign` (`course_id`);

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
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_user_id_foreign` (`user_id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_reset_tokens_email_index` (`email`);

--
-- Indexes for table `payment_success`
--
ALTER TABLE `payment_success`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_success_user_id_foreign` (`user_id`),
  ADD KEY `payment_success_course_id_foreign` (`course_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_course_id_foreign` (`course_id`),
  ADD KEY `quizzes_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_results_quiz_id_foreign` (`quiz_id`),
  ADD KEY `quiz_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_foreign` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`),
  ADD UNIQUE KEY `users_email_verification_token_unique` (`email_verification_token`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_product`
--
ALTER TABLE `combo_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_orders`
--
ALTER TABLE `course_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_success`
--
ALTER TABLE `payment_success`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `combos`
--
ALTER TABLE `combos`
  ADD CONSTRAINT `combos_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `combos_subcategories_id_foreign` FOREIGN KEY (`subcategories_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `combo_product`
--
ALTER TABLE `combo_product`
  ADD CONSTRAINT `combo_product_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `combo_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_orders`
--
ALTER TABLE `course_orders`
  ADD CONSTRAINT `course_orders_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_success`
--
ALTER TABLE `payment_success`
  ADD CONSTRAINT `payment_success_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_success_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `quizzes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD CONSTRAINT `support_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
