-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 11:00 PM
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
-- Database: `point_of_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
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
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'recusandae enim', 'temporibus', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(2, 'ut aspernatur', 'velit', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(3, 'in est', 'doloremque', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(4, 'deserunt non', 'unde', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(5, 'omnis minus', 'qui', '2025-01-21 18:00:11', '2025-01-21 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Rini Fujiati', 'vmaheswara@example.net', '(+62) 442 1023 0239', 'Gg. Bata Putih No. 152, Pasuruan 96236, Jateng', 'Yayasan Maryati Uyainah (Persero) Tbk', NULL, 'Harjo Narpati S.Gz', '90816779', 'BRI', 'Kotamobagu', 'Prabumulih', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(2, 'Artawan Marbun', 'xriyanti@example.org', '(+62) 817 6925 754', 'Psr. Laksamana No. 676, Tangerang 85246, Kaltara', 'PJ Dongoran', NULL, 'Rahmat Pratama', '20117361', 'BRI', 'Administrasi Jakarta Selatan', 'Malang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(3, 'Jaga Prasetya', 'usaputra@example.net', '0363 3138 845', 'Jr. W.R. Supratman No. 762, Prabumulih 69815, Gorontalo', 'CV Anggraini', NULL, 'Shania Pertiwi', '83014328', 'BSI', 'Subulussalam', 'Padangsidempuan', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(4, 'Kemal Prasetya', 'novitasari.nasrullah@example.com', '0309 5767 028', 'Dk. Sutami No. 933, Administrasi Jakarta Barat 50102, Kaltim', 'PD Wijayanti Namaga', NULL, 'Lega Wijaya', '58998242', 'BCA', 'Salatiga', 'Pontianak', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(5, 'Elma Gasti Winarsih S.E.', 'tkurniawan@example.com', '0598 2237 094', 'Psr. Mulyadi No. 400, Salatiga 13777, Banten', 'PT Maryati Situmorang Tbk', NULL, 'Zamira Ratna Pertiwi', '82186686', 'BJB', 'Padang', 'Bogor', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(6, 'Tirtayasa Hidayat', 'cinthia.megantara@example.org', '023 8586 626', 'Ds. Imam No. 84, Kotamobagu 54640, Bengkulu', 'PD Lestari Tbk', NULL, 'Bakiadi Kuswoyo', '94575731', 'BNI', 'Balikpapan', 'Tidore Kepulauan', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(7, 'Eka Widodo S.Kom', 'fathonah.yuliarti@example.org', '0725 5489 3775', 'Ds. Babah No. 55, Palu 65674, Lampung', 'PD Suartini (Persero) Tbk', NULL, 'Putri Puspita', '77492539', 'BSI', 'Langsa', 'Dumai', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(8, 'Martana Gada Haryanto S.E.I', 'cagak.hastuti@example.com', '0705 0080 4742', 'Jln. Baing No. 309, Probolinggo 38207, Sulsel', 'Fa Nugroho Mustofa', NULL, 'Intan Lestari S.Gz', '67131251', 'BCA', 'Banda Aceh', 'Padangpanjang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(9, 'Ella Hariyah', 'zamira09@example.org', '0494 8970 0464', 'Ds. Umalas No. 430, Tangerang 89341, Sulbar', 'PD Zulaika Putra Tbk', NULL, 'Lembah Baktiadi Suwarno', '60516325', 'BSI', 'Tegal', 'Jambi', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(10, 'Nadia Queen Yuliarti', 'hendri.astuti@example.org', '0729 2774 0331', 'Ki. Abdul Muis No. 961, Bima 34245, Kalteng', 'PJ Suryatmi', NULL, 'Rusman Kemba Pratama', '87658976', 'BSI', 'Bogor', 'Makassar', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(11, 'Kuncara Megantara', 'joko.zulkarnain@example.net', '0982 5425 8460', 'Kpg. Yos Sudarso No. 952, Cirebon 90993, DKI', 'Perum Manullang', NULL, 'Farah Permata', '35690477', 'BJB', 'Tanjung Pinang', 'Balikpapan', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(12, 'Kajen Hairyanto Prakasa', 'puspasari.ade@example.com', '(+62) 876 213 444', 'Dk. Jamika No. 102, Blitar 75339, Kaltara', 'PD Agustina Pradana Tbk', NULL, 'Winda Yolanda', '53717773', 'BCA', 'Malang', 'Gunungsitoli', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(13, 'Irsad Waskita M.Ak', 'gabriella.agustina@example.org', '0997 8057 4503', 'Jln. Bhayangkara No. 249, Jambi 37791, Kepri', 'CV Halimah Ramadan', NULL, 'Balidin Tamba', '70682403', 'BSI', 'Pekalongan', 'Palopo', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(14, 'Ella Nilam Halimah', 'lidya82@example.org', '(+62) 689 0239 4079', 'Jr. S. Parman No. 47, Kendari 86475, Sulteng', 'UD Handayani', NULL, 'Emas Wahyudin', '43589734', 'BRI', 'Blitar', 'Padang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(15, 'Respati Danuja Mahendra M.Pd', 'mulyani.dimaz@example.net', '(+62) 253 8794 631', 'Ds. Bak Air No. 461, Surakarta 11221, DIY', 'Fa Firmansyah Prabowo', NULL, 'Rosman Manullang S.Pt', '35189397', 'BRI', 'Mataram', 'Probolinggo', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(16, 'Yuliana Haryanti S.E.I', 'mpertiwi@example.org', '(+62) 849 5386 358', 'Psr. Ki Hajar Dewantara No. 241, Yogyakarta 65129, Jatim', 'PD Ramadan Prakasa', NULL, 'Cahya Jumari Mandala S.E.I', '41499347', 'BSI', 'Pagar Alam', 'Tegal', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(17, 'Gilda Ifa Prastuti', 'tira72@example.org', '0244 1440 7864', 'Ds. Sutarjo No. 677, Pariaman 81156, Malut', 'PT Winarsih Handayani Tbk', NULL, 'Lasmanto Adriansyah', '69171397', 'BNI', 'Bitung', 'Tomohon', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(18, 'Samsul Gamblang Manullang M.Ak', 'cinta.namaga@example.org', '0868 872 535', 'Psr. Laswi No. 211, Tegal 93641, Kaltara', 'CV Zulkarnain Mandasari Tbk', NULL, 'Intan Laksmiwati', '85805646', 'MANDIRI', 'Pagar Alam', 'Bandar Lampung', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(19, 'Zelda Michelle Kusmawati S.E.', 'palastri.banara@example.net', '0575 1200 765', 'Dk. Tambak No. 599, Pasuruan 10613, Jateng', 'Perum Winarno', NULL, 'Ana Aryani', '21432073', 'BCA', 'Tegal', 'Yogyakarta', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(20, 'Raisa Rahayu', 'lasmanto14@example.net', '027 3003 686', 'Jr. Bakhita No. 871, Palembang 32435, Aceh', 'CV Purnawati', NULL, 'Febi Puji Wahyuni', '60592240', 'BRI', 'Tarakan', 'Bogor', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(21, 'Jinawi Firgantoro M.Farm', 'suci12@example.org', '0927 6437 760', 'Jr. Bass No. 90, Singkawang 86631, Riau', 'Fa Nurdiyanti', NULL, 'Edi Wibisono', '52398186', 'BSI', 'Metro', 'Yogyakarta', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(22, 'Dirja Daniswara Prasasta S.Pd', 'uwais.balapati@example.org', '0446 7224 7434', 'Psr. Kalimantan No. 36, Cilegon 80340, DIY', 'PJ Putra Uwais', NULL, 'Harjaya Eman Mahendra M.TI.', '58608657', 'BSI', 'Palu', 'Sabang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(23, 'Makara Wibisono', 'zsantoso@example.com', '029 9615 6372', 'Jr. Laswi No. 328, Padangsidempuan 84083, Kalbar', 'UD Yolanda', NULL, 'Anita Pudjiastuti', '39453601', 'BCA', 'Singkawang', 'Bekasi', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(24, 'Oni Ophelia Hartati S.Kom', 'srahimah@example.net', '023 4209 7373', 'Jr. Nanas No. 144, Tarakan 87451, Kaltim', 'CV Mulyani Lailasari', NULL, 'Ella Rahmawati', '45699975', 'BJB', 'Padang', 'Samarinda', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(25, 'Banara Budiyanto M.Farm', 'nfarida@example.org', '(+62) 973 1666 7637', 'Psr. Gambang No. 374, Administrasi Jakarta Selatan 68525, Kepri', 'Fa Usamah Tbk', NULL, 'Teguh Gatra Putra M.Pd', '51388895', 'BRI', 'Salatiga', 'Bandar Lampung', '2025-01-21 18:00:11', '2025-01-21 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Yahya Hutagalung', 'yuniar.rizki@example.com', '(+62) 497 4740 372', 'Kpg. Nangka No. 150, Pematangsiantar 67046, Gorontalo', '1 Year', NULL, 675, NULL, 'Bau-Bau', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(2, 'Salimah Azalea Farida S.Pt', 'xaryani@example.org', '(+62) 634 9302 115', 'Psr. Ters. Pasir Koja No. 210, Administrasi Jakarta Barat 23453, Sumbar', '0 Year', NULL, 740, NULL, 'Tual', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(3, 'Victoria Humaira Maryati S.Pt', 'ghalim@example.org', '(+62) 908 9502 797', 'Jln. Flora No. 825, Bengkulu 39990, DIY', '3 Year', NULL, 934, NULL, 'Banjarmasin', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(4, 'Dina Kuswandari', 'vnababan@example.org', '(+62) 443 7057 1259', 'Ds. Bhayangkara No. 988, Binjai 55861, Jabar', '5 Year', NULL, 296, NULL, 'Lhokseumawe', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(5, 'Natalia Farhunnisa Padmasari S.IP', 'haryanto.diah@example.com', '(+62) 756 6023 951', 'Jr. Jakarta No. 121, Bogor 13979, Kalsel', '0 Year', NULL, 297, NULL, 'Kediri', '2025-01-21 18:00:11', '2025-01-21 18:00:11');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044621_add_username_and_photo_to_users', 1),
(6, '2023_03_24_080143_create_employees_table', 1),
(7, '2023_03_29_025458_create_customers_table', 1),
(8, '2023_03_30_020042_create_suppliers_table', 1),
(9, '2023_03_30_083652_create_advance_salaries_table', 1),
(10, '2023_04_01_142106_create_pay_salaries_table', 1),
(11, '2023_04_02_141037_create_attendences_table', 1),
(12, '2023_04_04_041700_create_categories_table', 1),
(13, '2023_04_04_052256_create_products_table', 1),
(14, '2023_04_10_043156_create_orders_table', 1),
(15, '2023_04_10_044212_create_order_details_table', 1),
(16, '2023_04_13_222344_create_permission_tables', 1),
(17, '2025_01_23_192951_add_fbr_invoice_no_and_transaction_no_to_orders_table', 2),
(18, '2025_01_23_201401_create_system_settings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `fbr_invoice_no` varchar(255) DEFAULT NULL,
  `transaction_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `invoice_no`, `total`, `payment_status`, `pay`, `due`, `fbr_invoice_no`, `transaction_no`, `created_at`, `updated_at`) VALUES
(1, '2', '2025-01-22', 'complete', 5, 292, 15, 'INV-000001', 307, 'Due', 310, -3, '41851A43FRC39687', '1931RBWP42228', '2025-01-22 14:27:59', '2025-01-23 15:07:46'),
(2, '8', '2025-01-23', 'pending', 5, 244, 12, 'INV-000002', 256, 'HandCash', 300, -44, '41851A43FRC39688', '1931RBWP42229', '2025-01-23 14:58:14', NULL),
(3, '24', '2025-01-23', 'pending', 1, 60, 6, 'INV-000003', 66, 'Cheque', 60, 6, '96158A43FRC64471', '1614RBWP14806', '2025-01-23 16:28:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitcost` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 3, 60, 189, '2025-01-22 14:27:59', NULL),
(2, '1', '2', 1, 52, 55, '2025-01-22 14:27:59', NULL),
(3, '1', '3', 1, 60, 63, '2025-01-22 14:27:59', NULL),
(4, '2', '1', 2, 60, 126, '2025-01-23 14:58:14', NULL),
(5, '2', '3', 1, 60, 63, '2025-01-23 14:58:14', NULL),
(6, '2', '6', 1, 45, 47, '2025-01-23 14:58:14', NULL),
(7, '2', '9', 1, 19, 20, '2025-01-23 14:58:14', NULL),
(8, '3', '1', 1, 60, 66, '2025-01-23 16:28:37', NULL);

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
-- Table structure for table `pay_salaries`
--

CREATE TABLE `pay_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `due_salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(2, 'employee.menu', 'web', 'employee', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(3, 'customer.menu', 'web', 'customer', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(4, 'supplier.menu', 'web', 'supplier', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(5, 'salary.menu', 'web', 'salary', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(6, 'attendence.menu', 'web', 'attendence', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(7, 'category.menu', 'web', 'category', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(8, 'product.menu', 'web', 'product', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(9, 'orders.menu', 'web', 'orders', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(10, 'stock.menu', 'web', 'stock', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(11, 'roles.menu', 'web', 'roles', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(12, 'user.menu', 'web', 'user', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(13, 'database.menu', 'web', 'database', '2025-01-21 18:00:12', '2025-01-21 18:00:12');

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
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_garage` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_store` int(11) DEFAULT NULL,
  `buying_date` date DEFAULT NULL,
  `expire_date` varchar(255) DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `supplier_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'voluptates', 1, 3, 'PC01', 'A', NULL, 514, '2025-01-21', '2027-01-21 23:00:11', 71, 60, '2025-01-21 18:00:11', '2025-01-22 14:32:50'),
(2, 'et', 1, 2, 'PC02', 'D', NULL, 764, '2025-01-21', '2027-01-21 23:00:11', 68, 52, '2025-01-21 18:00:11', '2025-01-22 14:32:50'),
(3, 'voluptatem', 5, 1, 'PC03', 'A', NULL, 912, '2025-01-21', '2027-01-21 23:00:11', 29, 60, '2025-01-21 18:00:11', '2025-01-22 14:32:50'),
(4, 'et', 2, 7, 'PC04', 'D', NULL, 412, '2025-01-21', '2027-01-21 23:00:11', 13, 88, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(5, 'in', 3, 1, 'PC05', 'B', NULL, 239, '2025-01-21', '2027-01-21 23:00:11', 39, 58, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(6, 'deserunt', 3, 7, 'PC06', 'B', NULL, 301, '2025-01-21', '2027-01-21 23:00:11', 24, 45, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(7, 'voluptatem', 1, 7, 'PC07', 'D', NULL, 207, '2025-01-21', '2027-01-21 23:00:11', 7, 82, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(8, 'ad', 2, 3, 'PC08', 'D', NULL, 312, '2025-01-21', '2027-01-21 23:00:11', 13, 69, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(9, 'laboriosam', 2, 1, 'PC09', 'D', NULL, 912, '2025-01-21', '2027-01-21 23:00:11', 9, 19, '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(10, 'voluptatem', 3, 2, 'PC10', 'B', NULL, 390, '2025-01-21', '2027-01-21 23:00:11', 96, 97, '2025-01-21 18:00:11', '2025-01-21 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(2, 'Admin', 'web', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(3, 'Account', 'web', '2025-01-21 18:00:12', '2025-01-21 18:00:12'),
(4, 'Manager', 'web', '2025-01-21 18:00:12', '2025-01-21 18:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `type`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Taswir Jail Nashiruddin', 'ofarida@example.org', '(+62) 833 0864 6695', 'Dk. Sutan Syahrir No. 585, Bontang 55379, Papua', 'PJ Situmorang Tbk', NULL, 'Distributor', 'Jagaraga Erik Siregar', '65034624', 'BNI', 'Bengkulu', 'Pariaman', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(2, 'Mustofa Winarno S.I.Kom', 'capa.nababan@example.net', '0929 2521 4834', 'Kpg. Juanda No. 606, Banjarbaru 78924, Sumsel', 'PJ Handayani Uwais (Persero) Tbk', NULL, 'Whole Seller', 'Sakti Haryanto', '82701483', 'BSI', 'Administrasi Jakarta Timur', 'Batu', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(3, 'Usyi Permata M.TI.', 'perkasa71@example.com', '029 3266 807', 'Jln. Rajawali No. 354, Pematangsiantar 91497, Jambi', 'Fa Nasyidah', NULL, 'Whole Seller', 'Nasab Mandala S.Psi', '83998887', 'BSI', 'Mataram', 'Padangpanjang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(4, 'Farah Ida Astuti S.I.Kom', 'mnurdiyanti@example.org', '0411 2653 7905', 'Ki. Siliwangi No. 342, Bandung 95786, Jateng', 'Perum Hastuti Tbk', NULL, 'Whole Seller', 'Cemeti Dirja Sinaga', '13030882', 'BSI', 'Ambon', 'Bitung', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(5, 'Gaiman Joko Suryono', 'tamba.vanesa@example.org', '(+62) 997 2885 754', 'Gg. Bak Mandi No. 463, Jayapura 41346, Sumbar', 'Yayasan Rajata Winarno (Persero) Tbk', NULL, 'Distributor', 'Prabu Gunawan', '90380977', 'BNI', 'Payakumbuh', 'Ternate', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(6, 'Simon Elon Siregar S.Gz', 'sirait.rafi@example.org', '(+62) 439 6232 923', 'Jr. Yogyakarta No. 75, Administrasi Jakarta Barat 39871, Lampung', 'Yayasan Haryanti', NULL, 'Distributor', 'Hesti Palastri', '16113688', 'BSI', 'Semarang', 'Bontang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(7, 'Rama Tirta Mahendra S.Kom', 'bajragin.lailasari@example.org', '0970 7600 6905', 'Ki. Baing No. 322, Palembang 93410, Kepri', 'Fa Gunawan (Persero) Tbk', NULL, 'Whole Seller', 'Atmaja Prasetya', '64313775', 'MANDIRI', 'Tasikmalaya', 'Magelang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(8, 'Pangeran Nugroho S.Pt', 'dinda65@example.net', '(+62) 696 2872 0811', 'Psr. Bawal No. 130, Administrasi Jakarta Barat 87856, Sumsel', 'UD Thamrin Utami', NULL, 'Distributor', 'Dwi Winarno', '80798069', 'BSI', 'Pagar Alam', 'Serang', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(9, 'Rini Halima Lailasari', 'jyolanda@example.org', '(+62) 900 7310 621', 'Gg. Pasir Koja No. 107, Bekasi 89600, Riau', 'CV Winarsih Pradana', NULL, 'Whole Seller', 'Sari Raina Winarsih S.Pt', '31473268', 'BRI', 'Sungai Penuh', 'Kotamobagu', '2025-01-21 18:00:11', '2025-01-21 18:00:11'),
(10, 'Dinda Puspasari', 'rafid01@example.com', '(+62) 218 3397 702', 'Ki. Suryo Pranoto No. 854, Kupang 86586, DIY', 'PT Utama Situmorang (Persero) Tbk', NULL, 'Whole Seller', 'Rahmi Widya Laksmiwati', '43759923', 'BJB', 'Administrasi Jakarta Pusat', 'Solok', '2025-01-21 18:00:11', '2025-01-21 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_tag_line` varchar(255) DEFAULT NULL,
  `location_pos` varchar(255) DEFAULT NULL,
  `ntn_number` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `pos` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `main_tag_line`, `location_pos`, `ntn_number`, `logo`, `tax`, `pos`, `created_at`, `updated_at`) VALUES
(1, '- BWP - MEGA - Tradecenter -', 'RBWP-POS-SAL-2-RBWP-POS-SAL-2', '85627353', NULL, '9.00', 'For return and exchnage policy details', NULL, '2025-01-23 16:51:10');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '2025-01-21 18:00:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DBt9z83VX7', '2025-01-21 18:00:11', '2025-01-21 18:00:11', 'admin', NULL),
(2, 'User', 'user@gmail.com', '2025-01-21 18:00:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HUXlwUmb0X', '2025-01-21 18:00:11', '2025-01-21 18:00:11', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
