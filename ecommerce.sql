-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2021 at 10:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$TmS205kItonJ.aqmNPBz5eB.6sYLteotyr4fL6rwwFTYbFUCmuDxq', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', 1, 'U2Xa9EBkqOCCUHin6gxQhqD8gLHCpwwRodl3uf2x1qV2GYXZSQS8P6hFyciQ', NULL, '202110010858png-transparent-network-administrator-system-administrator-computer-icons-computer-network-database-others-thumbnail.png', '2021-02-02 15:36:52', '2021-10-01 01:58:07'),
(3, 'admin1', 'admn7@gmail.com', NULL, '$2y$10$N6IPzK0CpBwPm9.SOuUJCe9YBznvRKXrGOsJVlQl3CTfAE8demny2', '08989098098', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL, '2021100108542020-12-31-5fedd68c83f40.png', '2021-10-21 01:49:20', '2021-10-21 01:49:20'),
(4, 'admin2', 'admin@admin.com', NULL, '$2y$10$Q4sr0cTEzrzkYPtqV12oUup8HpI.pg0SAZrO.txyG1in6PmGJErUK', '08989098098', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL, 'upload/admin_images/1712407236020862.jpg', '2021-10-01 02:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title`, `post_slug`, `post_image`, `post_details`, `created_at`, `updated_at`) VALUES
(1, 1, 'zxc', 'zxc', '', '', NULL, NULL),
(2, 2, 'zxc', 'zxc', '', '', NULL, NULL),
(3, 2, 'kerajinan kayu', 'kerajinan-kayu', 'upload/post/1712672675181463.png', '<p>kerajinan kayu</p>', '2021-10-04 00:19:03', NULL),
(4, 1, 'kerajinan kayu', 'kerajinan-kayu', 'upload/post/1712672983041263.png', '<p>kerajinan kayu</p>', '2021-10-04 00:23:56', NULL),
(5, 4, 'kerajinan kayu', 'kerajinan-kayu', 'upload/post/1712672996131386.png', '<p>kerajinan kayu</p>', '2021-10-04 00:24:09', NULL),
(6, 6, 'kerajinan wall decor', 'kerajinan-wall-decor', 'upload/post/1712673170516722.png', '<p>kerajinan kayu</p>', '2021-10-04 00:26:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name`, `blog_category_slug`, `created_at`, `updated_at`) VALUES
(1, 'kerajinan kayu', 'kerajinan-kayu', '2021-10-04 00:16:52', '2021-10-04 00:16:52'),
(2, 'zxc', 'zxc', NULL, NULL),
(3, 'health', 'health', '2021-09-30 02:25:35', NULL),
(4, 'sport', 'sport', '2021-09-30 02:25:41', NULL),
(5, 'zxc', 'zxc', NULL, NULL),
(6, 'kerajinan wall decor', 'kerajinan-wall-decor', '2021-10-04 00:26:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'apple', 'apple', 'upload/brand/1711506991589878.png', NULL, '2021-09-21 03:31:00'),
(2, 'samsung', 'samsung', 'upload/brand/1711500872752506.png', NULL, NULL),
(3, 'huawei', 'huawei', 'upload/brand/1711501278141258.png', NULL, NULL),
(4, 'vivo', 'vivo', 'upload/brand/1711501442900923.png', NULL, NULL),
(5, 'xiaomi', 'xiaomi', 'upload/brand/1711501582067120.png', NULL, NULL),
(6, 'oppo', 'oppo', 'upload/brand/1711501953192536.png', NULL, NULL),
(7, 'kerajinan kayu', 'kerajinan-kayu', 'upload/brand/1712670751891839.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'zxc', 'zxc', 'fa fa-user', NULL, NULL),
(2, 'electronics', 'electronics', 'fa fa-user', NULL, NULL),
(3, 'sweet home', 'sweet-home', 'fa fa-shopping-cart', NULL, NULL),
(4, 'appliances', 'appliances', 'fa fa-shopping-bag', NULL, '2021-09-24 18:49:31'),
(5, 'kerajinan kayu', 'kerajinan-kayu', 'fa fa-asterisk', NULL, '2021-10-03 23:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ASDS', 10, '2021-09-29', 1, '2021-09-28 19:13:11', NULL),
(2, 'ZXC', 10, '2021-09-29', 1, '2021-09-28 19:13:59', NULL),
(3, 'QWE', 15, '2021-10-02', 1, '2021-09-28 20:17:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 2),
(8, '2021_09_21_040615_create_brands_table', 3),
(9, '2021_09_22_004244_create_categories_table', 4),
(10, '2021_09_22_021110_create_sub_categories_table', 5),
(11, '2021_09_22_064230_create_sub_sub_categories_table', 6),
(12, '2021_09_23_001732_create_products_table', 7),
(13, '2021_09_23_003250_create_multi_imgs_table', 7),
(14, '2021_09_24_075446_create_sliders_table', 8),
(15, '2021_09_28_091318_create_wishlists_table', 9),
(16, '2021_09_29_005635_create_coupons_table', 10),
(17, '2021_09_29_012833_create_ship_divisions_table', 11),
(18, '2021_09_29_015226_create_ship_districs_table', 12),
(19, '2021_09_29_015847_create_ship_districts_table', 13),
(20, '2021_09_29_022141_create_ship_states_table', 14),
(21, '2021_09_29_082154_create_shippings_table', 15),
(22, '2021_09_29_140137_create_orders_table', 16),
(23, '2021_09_29_140449_create_order_items_table', 16),
(24, '2021_09_30_081051_create_blog_post_categories_table', 17),
(25, '2021_09_30_092905_create_blog_posts_table', 18),
(26, '2021_09_30_130032_create_site_settings_table', 19),
(27, '2021_09_30_140316_create_site_settings_table', 20),
(28, '2021_10_01_023103_create_seos_table', 21),
(29, '2021_10_01_024147_create_reviews_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(5, 2, 'upload/products/multi-image/1711748950758905.jpeg', '2021-09-23 02:11:00', '2021-09-23 19:36:50'),
(7, 2, 'upload/products/multi-image/1711748982657461.jpeg', '2021-09-23 02:11:01', '2021-09-23 19:37:21'),
(9, 2, 'upload/products/multi-image/1711683153329448.jpeg', '2021-09-23 02:11:01', NULL),
(18, 4, 'upload/products/multi-image/1711740324260554.jpeg', '2021-09-23 17:19:43', NULL),
(19, 4, 'upload/products/multi-image/1711740324410248.jpeg', '2021-09-23 17:19:43', NULL),
(20, 4, 'upload/products/multi-image/1711740324576915.jpeg', '2021-09-23 17:19:44', NULL),
(21, 4, 'upload/products/multi-image/1711740324743679.jpeg', '2021-09-23 17:19:44', NULL),
(22, 4, 'upload/products/multi-image/1711740324845854.jpeg', '2021-09-23 17:19:44', NULL),
(23, 5, 'upload/products/multi-image/1711839247159641.png', '2021-09-24 19:32:04', NULL),
(24, 5, 'upload/products/multi-image/1711839247519566.png', '2021-09-24 19:32:04', NULL),
(25, 5, 'upload/products/multi-image/1711839247877004.jpg', '2021-09-24 19:32:04', NULL),
(26, 5, 'upload/products/multi-image/1711839248044782.jpeg', '2021-09-24 19:32:04', NULL),
(27, 6, 'upload/products/multi-image/1711839696407129.png', '2021-09-24 19:39:12', NULL),
(28, 6, 'upload/products/multi-image/1711839696916257.png', '2021-09-24 19:39:13', NULL),
(29, 6, 'upload/products/multi-image/1711839697258084.jpg', '2021-09-24 19:39:13', NULL),
(30, 6, 'upload/products/multi-image/1711839697359160.jpg', '2021-09-24 19:39:13', NULL),
(31, 6, 'upload/products/multi-image/1711839697470169.jpg', '2021-09-24 19:39:13', NULL),
(32, 7, 'upload/products/multi-image/1711840033376872.png', '2021-09-24 19:44:34', NULL),
(33, 7, 'upload/products/multi-image/1711840034075019.png', '2021-09-24 19:44:34', NULL),
(34, 7, 'upload/products/multi-image/1711840034303368.png', '2021-09-24 19:44:35', NULL),
(35, 7, 'upload/products/multi-image/1711840035109381.jpg', '2021-09-24 19:44:35', NULL),
(36, 8, 'upload/products/multi-image/1711840286865949.jpg', '2021-09-24 19:48:35', NULL),
(37, 8, 'upload/products/multi-image/1711840286996343.jpg', '2021-09-24 19:48:35', NULL),
(38, 8, 'upload/products/multi-image/1711840287130723.jpg', '2021-09-24 19:48:35', NULL),
(39, 8, 'upload/products/multi-image/1711840287229797.jpg', '2021-09-24 19:48:35', NULL),
(40, 9, 'upload/products/multi-image/1711845759538037.jpg', '2021-09-24 21:15:34', NULL),
(41, 9, 'upload/products/multi-image/1711845759651382.jpg', '2021-09-24 21:15:34', NULL),
(42, 9, 'upload/products/multi-image/1711845759771086.jpg', '2021-09-24 21:15:34', NULL),
(43, 9, 'upload/products/multi-image/1711845759875941.jpg', '2021-09-24 21:15:34', NULL),
(44, 10, 'upload/products/multi-image/1711866713876455.jpg', '2021-09-25 02:48:38', NULL),
(45, 10, 'upload/products/multi-image/1711866714081793.jpg', '2021-09-25 02:48:38', NULL),
(46, 10, 'upload/products/multi-image/1711866714218758.jpg', '2021-09-25 02:48:38', NULL),
(47, 11, 'upload/products/multi-image/1712057704122366.png', '2021-09-27 05:24:20', NULL),
(48, 11, 'upload/products/multi-image/1712057704302570.png', '2021-09-27 05:24:21', NULL),
(49, 11, 'upload/products/multi-image/1712057704772787.jpg', '2021-09-27 05:24:21', NULL),
(50, 12, 'upload/products/multi-image/1712058019744734.jpg', '2021-09-27 05:29:21', NULL),
(51, 12, 'upload/products/multi-image/1712058019876661.jpeg', '2021-09-27 05:29:21', NULL),
(52, 12, 'upload/products/multi-image/1712058019997391.jpg', '2021-09-27 05:29:22', NULL),
(53, 13, 'upload/products/multi-image/1712224192835437.jpg', '2021-09-29 01:30:36', NULL),
(54, 13, 'upload/products/multi-image/1712224192970074.jpg', '2021-09-29 01:30:36', NULL),
(55, 13, 'upload/products/multi-image/1712224193108192.jpg', '2021-09-29 01:30:37', NULL),
(56, 14, 'upload/products/multi-image/1712671383882341.png', '2021-10-03 23:58:31', NULL),
(57, 15, 'upload/products/multi-image/1712671749238631.png', '2021-10-04 00:04:20', NULL),
(58, 16, 'upload/products/multi-image/1712671957438236.png', '2021-10-04 00:07:38', NULL),
(59, 17, 'upload/products/multi-image/1712672115840585.png', '2021-10-04 00:10:09', NULL),
(60, 18, 'upload/products/multi-image/1712672291266568.png', '2021-10-04 00:12:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 8, 9, 'User22343', 'user@gmail.com', '123123', 123123123, '13123213', 'card_1Jf3etALc6pn5BvM45GVtB3V', 'Stripe', 'txn_3Jf3euALc6pn5BvM0gJWjLfY', 'usd', 675.00, '6154765e59db2', 'EOS11674860', '29 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, '01 October 2021', '2', 'zxcxzcxzcz', 'delivered', '2021-09-29 07:21:19', '2021-09-30 22:33:00'),
(7, 1, 5, 9, 10, 'User12333', 'user@gmail.com', '08989098098', 123123123, 'asdewqexax', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 475.00, NULL, 'EOS84735356', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'confirm', '2021-09-29 18:15:17', '2021-09-29 20:01:58'),
(8, 1, 8, 8, 9, 'User22343', 'user@gmail.com', '08989098098', 123123123, 'zxczxczxczxcasdasd', 'card_1JfG9oALc6pn5BvMJ5xqi3SP', 'Stripe', 'txn_3JfG9pALc6pn5BvM3Gb5mBxv', 'usd', 170.00, '6155320a74643', 'EOS32229102', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, '30 September 2021', '0', 'zxczxcxc', 'delivered', '2021-09-29 20:42:03', '2021-09-29 21:38:31'),
(10, 1, 5, 9, 10, 'User', 'user@gmail.com', '08989098098', 123123123, 'adsadqweewqqw', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 150.00, NULL, 'EOS12526554', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'dsfsdfdsf', 'pending', '2021-09-29 20:47:21', NULL),
(12, 1, 8, 8, 11, 'User', 'user@gmail.com', '08989098098', 123123123, 'werwqeqwewqewqe', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 9.00, NULL, 'EOS84612482', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-09-29 20:49:38', NULL),
(14, 1, 5, 9, 10, 'User', 'user@gmail.com', '08989098098', 123123123, 'werewrewrewr', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 15.00, NULL, 'EOS64442654', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-09-29 20:54:04', NULL),
(16, 1, 8, 8, 11, 'User', 'user@gmail.com', '08989098098', 123123123, '2ewqeqweqw', 'card_1JfGpRALc6pn5BvMIcGeYWnC', 'Stripe', 'txn_3JfGpSALc6pn5BvM2cTinPbF', 'usd', 475.00, '61553c218331f', 'EOS57180297', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-09-29 21:25:06', NULL),
(17, 1, 8, 8, 9, 'User', 'user@gmail.com', '08989098098', 123123123, 'ertertertett', 'card_1JfGtSALc6pn5BvMo42VcUGE', 'Stripe', 'txn_3JfGtSALc6pn5BvM2RWIkF2T', 'usd', 70.00, '61553d1a34035', 'EOS46524055', '30 September 2021', 'September', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-09-29 21:29:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(3, 7, 12, 'red', 'Medium', '1', 475.00, '2021-09-29 18:15:20', NULL),
(4, 8, 10, '--Choose Color--', '--Choose Size--', '1', 200.00, '2021-09-29 20:42:07', NULL),
(6, 10, 9, '--Choose Color--', '--Choose Size--', '1', 150.00, '2021-09-29 20:47:24', NULL),
(8, 12, 13, '--Choose Color--', '--Choose Size--', '1', 9560.00, '2021-09-29 20:49:41', NULL),
(10, 14, 7, '--Choose Color--', '--Choose Size--', '1', 15.00, '2021-09-29 20:54:07', NULL),
(12, 16, 12, 'red', 'Medium', '1', 475.00, '2021-09-29 21:25:09', NULL),
(13, 17, 5, 'Pink', 'Large', '7', 10.00, '2021-09-29 21:29:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zxc@gmail.com', '$2y$10$fsScBmpEJ6HjxbRkKW/UxOl.q9Pc.VFwu9ShpPQI0BWojMm1BA6P2', '2021-09-20 03:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thumbnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'tv smart baru', 'tv smart baru', '123345', '300', 'tv,smart', 'Small', 'black', '590', NULL, 'asd adf asdsfdsfdsf sdfsdfdfdsf sdfsdfsdfds sdfsdfdsf sdfsd sdf123\r\nasd adf asdsfdsfdsf sdfsdfdfdsf sdfsdfsdfds sdfsdfdsf sdfsd sdfz123', '<p><strong>asd adf asdsfdsfdsf sdfsdfdfdsf sdfsdfsdfds sdfsdfdsf sdfsd sdf123</strong></p>\r\n\r\n<p><strong>asd adf asdsfdsfdsf sdfsdfdfdsf sdfsdfsdfds sdfsdfdsf sdfsd sdf123</strong></p>', 'upload/products/thumbnail/1711750825850055.jpeg', NULL, 1, NULL, NULL, 1, '2021-09-24 21:38:38', '2021-09-24 21:38:38'),
(5, 1, 8, 32, 28, 'Women Sport Shoes Nike', 'women-sport-shoes-nike', '456456', '300', 'TV', 'Small,Medium,Large', 'red,black,pink,blue', '150', '10', 'The lightweight and flexible Nike Flex Fury will keep your comfortable during every stride.', '<div class=\"dangerous-html\">The lightweight and flexible Nike Flex Fury will keep your comfortable during every stride. They feature a low-profile design with breathable mesh upper, traditional lace-up front, padded collar, and a flexible outsole.</div>\r\n\r\n<div class=\"dangerous-html\">Nike Flex Fury (GS) 705460 001 Vivid Pink Big Kid&#39;s Running Shoes</div>', 'upload/products/thumbnail/1711839246626839.png', NULL, 1, NULL, 1, 1, '2021-09-27 03:07:35', '2021-09-27 03:07:35'),
(6, 2, 8, 32, 26, 'Hibiscus Hawaiian  Women Casual Shoes', 'hibiscus-hawaiian--women-casual-shoes', '123345', '200', 'Hibiscus ,Hawaiian,Women,Casual,Shoes', 'Small,Medium,Large', 'red,black,Large,white', '100', '10', 'Hibiscus Hawaiian Design Print Pattern Women Casual Shoes', '<ul>\r\n	<li>Features a full wrap canvas print.</li>\r\n	<li>Elastic stretch V for easy on-and-off use.</li>\r\n	<li>Soft textile lining with lightweight construction for maximum comfort</li>\r\n	<li>High quality canvas construction for everyday use and durable EVA outsole for exceptional traction</li>\r\n</ul>', 'upload/products/thumbnail/1711839696244063.jpg', 1, NULL, 1, NULL, 1, '2021-09-26 17:24:19', '2021-09-26 17:24:19'),
(7, 3, 8, 31, 27, 'Chiffon Satin Shirt Women', 'chiffon satin shirt women', '123345', '200', 'Chiffon,Satin,Shirt,Women', 'Small,Medium,Large', 'red,black,Large,pink,blue', '80', '15', 'Chiffon Satin Shirt Women New Autumn Long Sleeve Ruffles Fashion Temperament V Neck Blouses Office Ladies Loose Casual Tops', '<h3>PRODUCT DETAILS</h3>\r\n\r\n<div class=\"productDescBoxTop\">\r\n<div class=\"productDescAttrTitle\">Item specifics</div>\r\n\r\n<div class=\"attrList\" style=\"max-height:100%\">\r\n<p>Brand Name:NAVIU Elegant and Fashion</p>\r\n\r\n<p>Material:Polyester</p>\r\n\r\n<p>Material:Spandex</p>\r\n\r\n<p>Origin:CN(Origin)</p>\r\n\r\n<p>Season:Spring/Autumn</p>\r\n\r\n<p>Clothing Length:Regular</p>\r\n\r\n<p>Age:Ages 18-35 Years Old</p>\r\n\r\n<p>Collar:V-Neck</p>\r\n\r\n<p>Gender:WOMEN</p>\r\n\r\n<p>Decoration:Ruffles</p>\r\n\r\n<p>Sleeve Length(cm):Full</p>\r\n\r\n<p>Sleeve Style:Regular</p>\r\n\r\n<p>Style:Office Lady</p>\r\n\r\n<p>Fabric Type:Chiffon</p>\r\n\r\n<p>Pattern Type:Solid</p>\r\n\r\n<p>Model Number:NAVIU10863142</p>\r\n\r\n<p>Color:Pink,Green,Apricot</p>\r\n\r\n<p>Size:S M L XL XXL XXXL 4XL</p>\r\n</div>\r\n</div>', 'upload/products/thumbnail/1711840033217277.jpg', 1, NULL, NULL, NULL, 1, '2021-09-24 19:44:33', NULL),
(8, 4, 8, 31, 29, 'Lululemon Swiftly Tech Long Sleeve Crew', 'lululemon-swiftly-tech-long-sleeve-crew', '123123', '200', 'TV', 'Small,Medium,Large', 'red,black,pink,blue', '70', '25', 'Lululemon Swiftly Tech Long Sleeve Crew', '<div class=\"container\">\r\n<div class=\"details\">\r\n<div class=\"description expanded\">\r\n<p>We designed this anti-stink, long-sleeve layer with running (and sweating) in mind.</p>\r\n\r\n<h3>Seamless</h3>\r\n\r\n<p>Anti-stink Seamless fabric is four-way stretch and sweat-wicking</p>\r\n\r\n<ul>\r\n	<li>four-way stretch</li>\r\n	<li>sweat-wicking</li>\r\n</ul>\r\n\r\n<h3>Features</h3>\r\n\r\n<ul>\r\n	<li><strong>Designed for</strong>: Run</li>\r\n	<li><strong>Silverescent&reg; technology</strong>: Powered by X-STATIC&reg;, it inhibits the growth of odour-causing bacteria on the garment</li>\r\n	<li><strong>No chafe</strong>: Seamless construction in the body minimizes chafing</li>\r\n	<li><strong>Thumbholes</strong>: Help keep your sleeves in place and hands warm</li>\r\n	<li><strong>Fit </strong>: Body Skimming, hip length</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"clear:both; height:50px\">&nbsp;</div>', 'upload/products/thumbnail/1711840286634676.jpg', NULL, 1, NULL, 1, 1, '2021-09-27 03:07:13', '2021-09-27 03:07:13'),
(9, 2, 11, 26, 20, 'washer samsung new', 'washer-samsung-new', '123123', '123', 'TV', 'Small,Medium,Large', 'red,black,white', '200', '150', 'SAMSUNG Mesin Cuci Front Load WD10K6410OX/SE', '<p>Mesin cuci Samsung Front Load Combo Washer membantu Anda menangani tugas cuci mencuci yang banyak dengan konsumsi listrik lebih hemat. Mesin cuci ini dapat mencuci banyak pakaian bahkan di air dingin bersuhu hingga 15&deg;C. Teknologi Eco Bubble menciptakan gelembung sabun dari deterjen sehingga sabun lebih cepat menembus kain dan menghilangkan kotoran dengan mudah. Tombol cuci Bubble Soak bisa Anda pilih untuk menghilangkan noda membandel dari pakaian. Mode ini membuat pakaian direndam dalam gelembung sabun sehingga noda mudah dihilangkan secara efektif.</p>', 'upload/products/thumbnail/1711845776874308.jpg', 1, NULL, 1, NULL, 1, '2021-09-27 03:07:51', '2021-09-27 03:07:51'),
(10, 4, 9, 20, 24, 'TV Smart Wifi TV samsung', 'tv-smart-wifi-tv-samsung', '123123', '200', 'TV', 'Small,Medium,Large', 'red,black', '200', NULL, '32\" T4500 HD Smart TV (2020)', '<div class=\"title-box\"><strong>Features</strong></div>\r\n\r\n<div class=\"input tlid-input\">\r\n<div class=\"source-wrap\">\r\n<div class=\"input-full-height-wrapper tlid-input-full-height-wrapper\">\r\n<div class=\"source-input\">\r\n<div class=\"source-footer-wrap source-or-target-footer\">\r\n<div class=\"character-count tlid-character-count\">\r\n<div class=\"cc-ctr normal\">The RCA RS32H2-EU is a HD Ready ANDROID Smart TV of 31.5 inches (80 cm) that makes watching TV a real experience. The TV has a built-in Chromecast. This allows you to stream very easily from your phone, tablet or laptop. To control the TV you can not only use the remote control but also your voice. The TV uses Google Assistant so you can fully control the TV with your voice.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"results-container tlid-results-container\">\r\n<div class=\"result-dict-wrapper tlid-result\">\r\n<div class=\"result tlid-copy-target\">\r\n<div class=\"text-wrap tlid-copy-target\">\r\n<div class=\"result-shield-container tlid-copy-target\"><br />\r\nThe television is equipped with, among other things, 3 HDMI ports: ideal for your game console, digital recorder, Blu-ray player or laptop and 2 USB ports that are suitable for connecting a USB stick or an external hard drive, for example. but that also provide sufficient power to charge or support other devices. Via the USB stick or external hard drive you have the option to directly record your favorite programs and series.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/products/thumbnail/1711866713581516.jpg', NULL, 1, 1, 1, 1, '2021-09-27 03:07:00', '2021-09-27 03:07:00'),
(11, 1, 9, 33, 30, 'Apple iPhone 13 mini', 'apple-iphone-13-mini', '123123', '123', 'Apple,iPhone 13,mini', 'Small', 'red,black,blue,pink', '799', '750', 'Apple iPhone 13 mini', '<p>Body Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame</p>\r\n\r\n<p><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM </a>Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)</p>\r\n\r\n<p>Memory 128GB 4GB RAM, 256GB 4GB RAM, 512GB 4GB RAM</p>', 'upload/products/thumbnail/1712057703572629.png', 1, 1, 1, 1, 1, '2021-09-27 05:24:20', NULL),
(12, 6, 9, 33, 30, 'Oppo Reno 6', 'oppo-reno-6', '122323', '123', 'Oppo Reno 6', 'Medium', 'red,black,blue', '500', '475', 'Oppo Reno6 Pro 5G', '<p><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM </a>Dual SIM (Nano-SIM, dual stand-by)</p>\r\n\r\n<p><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU </a>Octa-core (1x3.0 GHz Cortex-A78 &amp; 3x2.6 GHz Cortex-A78 &amp; 4x2.0 GHz Cortex-A55)</p>\r\n\r\n<p>Main Camera 64 MP, f/1.7, 26mm (wide), 1/2.0&quot;, 0.7&micro;m, PDAF<br />\r\n8 MP, f/2.2, 120˚ (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />\r\n2 MP, f/2.4, (macro)<br />\r\n2 MP, f/2.4, (depth)</p>', 'upload/products/thumbnail/1712058019535932.jpg', 1, 1, 1, 1, 1, '2021-09-27 05:29:21', NULL),
(13, 3, 8, 31, 27, 'Satin Shirt Women', 'satin-shirt-women', '123123', '123', 'Women,Satin,Shirt', 'Small,Medium,Large', 'red,black', '10000', '9560', 'Satin Shirt Women', '<p>&nbsp;Satin Shirt Women &nbsp;Satin Shirt Women &nbsp;Satin Shirt Women</p>', 'upload/products/thumbnail/1712224192579752.jpg', 1, 1, 1, 1, 1, '2021-09-29 01:30:36', NULL),
(14, 15, 12, 34, 31, 'papan souvenir nikah', 'papan-souvenir-nikah', '123123', '123', 'papan,souvenir,nikah', 'Small,Medium,Large', 'coklat,wood', '25000', '24000', 'papan souvenir nikah', '<p>papan souvenir nikah</p>\r\n\r\n<p>Deskripsi Produk:</p>\r\n\r\n<p>bahan kayu</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'upload/products/thumbnail/1712671383386015.png', 1, 1, 1, 1, 1, '2021-10-03 23:58:31', NULL),
(15, 15, 12, 35, 32, 'hexagonal lemari kayu', 'hexagonal-lemari-kayu', '1223', '123', 'hexagonal,lemari,kayu', 'Small,Medium,Large', 'red,black,wood', '250000', '240000', 'hexagonal lemari kayu', '<p>hexagonal lemari kayu</p>', 'upload/products/thumbnail/1712671748468838.png', 1, 1, 1, 1, 1, '2021-10-04 00:04:19', NULL),
(16, 15, 12, 36, 33, 'tempat bumbu kayu', 'tempat-bumbu-kayu', '123123', '123', 'bumbu ,kayu,tempat', 'Small,Medium,Large', 'red,black,kayu', '150000', '150000', 'tempat bumbu kayu', '<p>tempat bumbu kayu</p>', 'upload/products/thumbnail/1712671956636317.png', 1, 1, 1, 1, 1, '2021-10-04 00:07:38', NULL),
(17, 15, 12, 37, 34, 'wall decor kayu', 'wall-decor-kayu', '123123', '123', 'wall,decor,kayu', 'Small,Medium,Large', 'red,black,Large', '25000', '24000', 'wall decor kayu', '<p>wall decor kayu</p>', 'upload/products/thumbnail/1712672115053445.png', 1, 1, 1, 1, 1, '2021-10-04 00:10:09', NULL),
(18, 15, 12, 38, 35, 'kaligrafi wall decor kayu', 'kaligrafi-wall-decor-kayu', '123123', '123', 'kaligrafi,wall,decor,kayu', 'Small,Medium,Large', 'red,black', '400000', '350000', 'kaligrafi wall decor kayu', '<p>kaligrafi wall decor kayu</p>', 'upload/products/thumbnail/1712672290532725.png', 1, 1, 1, 1, 1, '2021-10-04 00:12:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(2, 13, 1, 'qweasdxczxc', 'asd', '1', '2021-10-01 00:42:30', '2021-10-01 00:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CHQ5VacIqlPQnnH4YbozjNfhpf7WdtkePuYXRpY1', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:93.0) Gecko/20100101 Firefox/93.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2xabjRqTlltOVp6QmV4bEtYbk1FbmlzY0t0bEVickNDQXhwUlRsQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0L2RldGFpbHMvNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1634353556),
('FpWzU2UzbCZhHqbSUZ7tYklHls7pbVDEyv2Fx850', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:92.0) Gecko/20100101 Firefox/92.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiSkJnUThtb0pYODBOUm1WSjd0TWR6T0pZRlhJUzJEWFJ1ckMyWnc3aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkb0VDQ1BlYnlvS21uSWwvQ1ZSMS5CLnE4aDJQUWNrVUtlWmxhV1NucGVKdnZsOUdXRGcyYjYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG9FQ0NQZWJ5b0ttbklsL0NWUjEuQi5xOGgyUFFja1VLZVpsYVdTbnBlSnZ2bDlHV0RnMmI2IjtzOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJlZWI5MDUxNGMyNmE1YzE3MGFmMjBhNTUxMDZjNTUzYyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjEwOntzOjU6InJvd0lkIjtzOjMyOiJlZWI5MDUxNGMyNmE1YzE3MGFmMjBhNTUxMDZjNTUzYyI7czoyOiJpZCI7czoxOiIyIjtzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6MTM6InR2IHNtYXJ0IGJhcnUiO3M6NToicHJpY2UiO2Q6NTkwO3M6Njoid2VpZ2h0IjtkOjE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czo0NzoidXBsb2FkL3Byb2R1Y3RzL3RodW1ibmFpbC8xNzExNzUwODI1ODUwMDU1LmpwZWciO3M6NToiY29sb3IiO3M6MTY6Ii0tQ2hvb3NlIENvbG9yLS0iO3M6NDoic2l6ZSI7czoxNToiLS1DaG9vc2UgU2l6ZS0tIjt9fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO319fX19', 1633335353),
('ocEFmhw6JXstaFpuGK0emj7LkRUzkCgrHKANdYIe', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:93.0) Gecko/20100101 Firefox/93.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZlE2ZmkzWnVoaTRUcjIwTXVKOE1DWmtsMm5PcnEyeXVXUUJlVnNmNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1634806329);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 3, 'zxcx234', '2021-09-28 19:15:17', '2021-09-28 19:15:17'),
(3, 4, 'aaa', '2021-09-28 19:27:23', NULL),
(4, 5, 'bbb', '2021-09-28 19:27:29', NULL),
(5, 6, 'ccc', '2021-09-28 19:27:34', NULL),
(6, 7, 'eee', '2021-09-29 02:32:16', NULL),
(7, 1, 'zxc12', '2021-09-29 03:08:12', NULL),
(8, 8, 'baru', '2021-09-29 03:21:29', NULL),
(9, 5, 'diana', '2021-09-29 03:44:47', NULL),
(10, 8, 'anyar', '2021-09-29 03:49:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'zxc12', '2021-09-28 18:47:39', '2021-09-28 18:47:39'),
(3, 'qwe', '2021-09-28 18:48:06', NULL),
(4, 'muradi', '2021-09-29 03:46:47', '2021-09-29 03:46:47'),
(5, 'bbb', '2021-09-28 19:27:08', NULL),
(6, 'ccc', '2021-09-28 19:27:12', NULL),
(7, 'eee', '2021-09-29 02:32:05', NULL),
(8, 'baru', '2021-09-29 03:21:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'aaa', '2021-09-28 19:34:57', NULL),
(3, 5, 4, 'bbb', '2021-09-28 19:45:56', NULL),
(4, 6, 5, 'ccc', '2021-09-28 19:46:03', NULL),
(5, 7, 6, 'eee123', '2021-09-29 03:01:55', '2021-09-29 03:01:55'),
(6, 1, 6, 'www', '2021-09-29 03:08:35', NULL),
(7, 3, 1, 'fff', '2021-09-29 03:09:58', NULL),
(8, 1, 4, 'diana', '2021-09-29 03:17:30', '2021-09-29 03:17:30'),
(9, 8, 8, 'indonesia', '2021-09-29 03:22:00', NULL),
(10, 5, 9, 'gugu', '2021-09-29 03:45:39', NULL),
(11, 8, 8, 'indo', '2021-09-29 03:48:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1712672388234056.png', 'souvenir kayu', 'souvenir kayu', 1, NULL, '2021-10-04 00:14:29'),
(3, 'upload/slider/1712672410453670.png', 'hexagonal lemari', 'hexagonal lemari', 1, NULL, '2021-10-04 00:14:50'),
(4, 'upload/slider/1712672463357768.png', 'wall decor kayu', 'wall decor kayu', 1, NULL, '2021-10-04 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'mens top ware', 'mens-top-ware', NULL, '2021-10-04 00:37:52'),
(2, 2, 'mens bottom ware', 'mens-bottom-ware', NULL, '2021-10-04 00:38:07'),
(3, 3, 'mens footwear', 'mens-footwear', NULL, NULL),
(4, 4, 'women footwear', 'women-footwear', NULL, '2021-10-04 00:38:20'),
(5, 5, 'computer', 'computer', NULL, NULL),
(6, 1, 'mobile accessory', 'mobile-accessory', NULL, NULL),
(7, 2, 'gaming', 'gaming', NULL, NULL),
(8, 3, 'home furnisings', 'home-furnisings', NULL, NULL),
(9, 4, 'living room', 'living-room', NULL, NULL),
(10, 5, 'home decor', 'home-decor', NULL, NULL),
(11, 1, 'televisions', 'televisions', NULL, '2021-09-24 18:48:44'),
(12, 2, 'washing machines', 'washing-machines', NULL, NULL),
(13, 3, 'beauty and personal care', 'beauty-and-personal-care', NULL, NULL),
(14, 4, 'food and drinks', 'food-and-drinks', NULL, NULL),
(15, 5, 'body care', 'body-care', NULL, NULL),
(16, 1, 'refrigerators', 'refrigerators', NULL, NULL),
(17, 2, 'women tshirt', 'women-tshirt', NULL, NULL),
(18, 3, 'women shoes', 'women-shoes', NULL, NULL),
(19, 4, 'mobile phone', 'mobile-phone', NULL, NULL),
(20, 5, 'souvenir pernikahan', 'souvenir-pernikahan', NULL, NULL),
(21, 1, 'hexagonal lemari', 'hexagonal-lemari', NULL, NULL),
(22, 2, 'tempat bumbu kayu', 'tempat-bumbu-kayu', NULL, NULL),
(23, 3, 'wall decor kayu', 'wall-decor-kayu', NULL, NULL),
(24, 4, 'kaligrafi wall decor kayu', 'kaligrafi-wall-decor-kayu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name`, `subsubcategory_slug`, `created_at`, `updated_at`) VALUES
(11, 8, 15, 'mens tshirt', 'mens-tshirt', NULL, NULL),
(12, 8, 15, 'mens casual shirts', 'mens-casual-shirts', NULL, NULL),
(13, 8, 18, 'casual shoes', 'casual-shoes', NULL, NULL),
(14, 11, 25, 'smart tv', 'smart-tv', NULL, NULL),
(15, 11, 25, 'OLED tv', 'oled-tv', NULL, NULL),
(16, 11, 26, 'washes dryers', 'washes-dryers', NULL, NULL),
(17, 11, 30, 'single door', 'single-door', NULL, NULL),
(18, 11, 30, 'double door', 'double-door', NULL, NULL),
(19, 11, 30, 'mini refrigerators', 'mini-refrigerators', NULL, NULL),
(20, 11, 26, 'washer only', 'washer-only', NULL, NULL),
(21, 9, 21, 'mouse gaming', 'mouse-gaming', NULL, NULL),
(22, 9, 21, 'keyboard gaming', 'keyboard-gaming', NULL, NULL),
(23, 9, 20, 'powerbank', 'powerbank', NULL, NULL),
(24, 9, 20, 'bluetooth headset', 'bluetooth-headset', NULL, NULL),
(26, 8, 32, 'casual shoes', 'casual-shoes', NULL, NULL),
(27, 8, 31, 'casual tshirt', 'casual-tshirt', NULL, NULL),
(28, 8, 32, 'sport shoes', 'sport-shoes', NULL, NULL),
(29, 8, 31, 'sport tshirt', 'sport-tshirt', NULL, NULL),
(30, 9, 33, 'smartphone', 'smartphone', NULL, NULL),
(31, 12, 34, 'papan nama souvenir', 'papan-nama-souvenir', NULL, NULL),
(32, 12, 35, 'hexagonal lemari kayu', 'hexagonal-lemari-kayu', NULL, NULL),
(33, 12, 36, 'tempat bumbu kayu', 'tempat-bumbu-kayu', NULL, NULL),
(34, 12, 37, 'wall decor kayu', 'wall-decor-kayu', NULL, NULL),
(35, 12, 38, 'kaligrafi wall decor kayu', 'kaligrafi-wall-decor-kayu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '08989098098', '2021-10-01 14:23:40', NULL, '$2y$10$HxEm6WsFpDypjEXJ.gpTK.JwuIqo3FATXRtAgbQbWHp3UKwgxwbA.', NULL, NULL, 'wJyqDjCN4BRAZKIserOVRQDJv4Myt7bIR4UmsQXJsvfWwYig6fEAngNxF1oh', NULL, '202109240951lc24rg50fqwxxl-is13252-samsung-original-imafn3p4zzzddhvb.jpeg', '2021-02-02 14:54:02', '2021-10-01 07:23:40'),
(2, 'zxc1', 'admin@admin.com', '08989098098', NULL, NULL, '$2y$10$AjuowRSEN//xdprWEXfFOO30yrH2UzPUwChA/3xdFf9gxT0C1Q5u6', NULL, NULL, '9MuoDDaj6ZM1xRzKik7vVUUXDuXv2352ZR0EuE9Q4hlop7qsrCfw6KvZtyto', NULL, '202109210141italy.png', '2021-09-17 03:29:21', '2021-09-20 19:53:03'),
(3, 'zxc', 'zxc@gmail.com', '08989098098', NULL, NULL, '$2y$10$xOqD1vX45VBDO60HhZhEKuxUKRxeT7UowvcDK1vW6Zw9tyn2YqqLe', NULL, NULL, NULL, NULL, NULL, '2021-09-20 01:04:53', '2021-09-20 01:04:53'),
(4, '123123', '123@mail.com', '123123', '2021-10-04 08:15:38', NULL, '$2y$10$oECCPebyoKmnIl/CVR1.B.q8h2PQckUKeZlaWSnpeJvvl9GWDg2b6', NULL, NULL, NULL, NULL, NULL, '2021-10-03 23:50:00', '2021-10-04 01:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 1, 12, '2021-09-28 03:24:17', NULL),
(14, 1, 8, '2021-09-28 03:24:19', NULL),
(15, 1, 10, '2021-09-28 03:34:05', NULL),
(16, 1, 13, '2021-09-30 03:52:01', NULL),
(17, 1, 7, '2021-09-30 03:54:52', NULL),
(18, 1, 9, '2021-09-30 03:55:11', NULL),
(19, 1, 6, '2021-10-01 00:36:35', NULL),
(20, 4, 17, '2021-10-04 00:29:02', NULL);

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
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
