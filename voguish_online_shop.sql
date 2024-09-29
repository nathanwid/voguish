-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2024 pada 15.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voguish_online_shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LifeWork', 'lifework', 1, '2024-03-24 06:10:30', '2024-03-30 08:02:33'),
(4, 'MLB', 'mlb', 1, '2024-03-26 03:38:42', '2024-03-30 08:02:44'),
(5, 'Fabulous archive', 'fabulous-archive', 1, '2024-03-26 03:45:06', '2024-03-30 08:02:55'),
(6, 'Fred Perry', 'fred-perry', 1, '2024-03-26 03:45:47', '2024-03-30 08:03:06'),
(7, 'carhartt', 'carhartt', 1, '2024-03-26 03:46:40', '2024-03-30 08:03:16'),
(9, 'Thrasher', 'thrasher', 1, '2024-03-29 04:56:44', '2024-03-30 08:03:26'),
(10, 'Graver', 'graver', 1, '2024-03-30 08:03:35', '2024-03-30 08:03:35'),
(11, 'Ambler', 'ambler', 1, '2024-03-30 08:03:44', '2024-03-30 08:03:44'),
(12, 'Acme de La Vie', 'acme-de-la-vie', 1, '2024-03-30 08:03:53', '2024-03-30 08:03:53'),
(13, 'Romantic Crown', 'romantic-crown', 1, '2024-03-31 01:55:06', '2024-03-31 01:55:06'),
(14, 'grooverhyme', 'grooverhyme', 1, '2024-03-31 01:55:13', '2024-03-31 01:55:13'),
(15, 'KANGOL', 'kangol', 1, '2024-03-31 01:55:20', '2024-03-31 01:55:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Top', 'Top', '1-1711863084.jpg', 1, 'Yes', '2024-03-22 13:12:45', '2024-03-30 22:31:24'),
(70, 'Bottom', 'bottom', '70-1711725894.png', 1, 'Yes', '2024-03-23 00:42:29', '2024-03-29 08:24:54'),
(76, 'Outer', 'outer', '76-1712237125.jpg', 1, 'Yes', '2024-03-23 00:53:41', '2024-04-04 06:25:26'),
(104, 'Accessories', 'accessories', '104-1711725843.png', 1, 'Yes', '2024-03-26 03:36:36', '2024-03-29 08:30:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', NULL, NULL),
(2, 'Canada', 'CA', NULL, NULL),
(3, 'Afghanistan', 'AF', NULL, NULL),
(4, 'Albania', 'AL', NULL, NULL),
(5, 'Algeria', 'DZ', NULL, NULL),
(6, 'American Samoa', 'AS', NULL, NULL),
(7, 'Andorra', 'AD', NULL, NULL),
(8, 'Angola', 'AO', NULL, NULL),
(9, 'Anguilla', 'AI', NULL, NULL),
(10, 'Antarctica', 'AQ', NULL, NULL),
(11, 'Antigua and/or Barbuda', 'AG', NULL, NULL),
(12, 'Argentina', 'AR', NULL, NULL),
(13, 'Armenia', 'AM', NULL, NULL),
(14, 'Aruba', 'AW', NULL, NULL),
(15, 'Australia', 'AU', NULL, NULL),
(16, 'Austria', 'AT', NULL, NULL),
(17, 'Azerbaijan', 'AZ', NULL, NULL),
(18, 'Bahamas', 'BS', NULL, NULL),
(19, 'Bahrain', 'BH', NULL, NULL),
(20, 'Bangladesh', 'BD', NULL, NULL),
(21, 'Barbados', 'BB', NULL, NULL),
(22, 'Belarus', 'BY', NULL, NULL),
(23, 'Belgium', 'BE', NULL, NULL),
(24, 'Belize', 'BZ', NULL, NULL),
(25, 'Benin', 'BJ', NULL, NULL),
(26, 'Bermuda', 'BM', NULL, NULL),
(27, 'Bhutan', 'BT', NULL, NULL),
(28, 'Bolivia', 'BO', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British lndian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Cape Verde', 'CV', NULL, NULL),
(41, 'Cayman Islands', 'KY', NULL, NULL),
(42, 'Central African Republic', 'CF', NULL, NULL),
(43, 'Chad', 'TD', NULL, NULL),
(44, 'Chile', 'CL', NULL, NULL),
(45, 'China', 'CN', NULL, NULL),
(46, 'Christmas Island', 'CX', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(48, 'Colombia', 'CO', NULL, NULL),
(49, 'Comoros', 'KM', NULL, NULL),
(50, 'Congo', 'CG', NULL, NULL),
(51, 'Cook Islands', 'CK', NULL, NULL),
(52, 'Costa Rica', 'CR', NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', NULL, NULL),
(54, 'Cuba', 'CU', NULL, NULL),
(55, 'Cyprus', 'CY', NULL, NULL),
(56, 'Czech Republic', 'CZ', NULL, NULL),
(57, 'Democratic Republic of Congo', 'CD', NULL, NULL),
(58, 'Denmark', 'DK', NULL, NULL),
(59, 'Djibouti', 'DJ', NULL, NULL),
(60, 'Dominica', 'DM', NULL, NULL),
(61, 'Dominican Republic', 'DO', NULL, NULL),
(62, 'East Timor', 'TP', NULL, NULL),
(63, 'Ecudaor', 'EC', NULL, NULL),
(64, 'Egypt', 'EG', NULL, NULL),
(65, 'El Salvador', 'SV', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', NULL, NULL),
(67, 'Eritrea', 'ER', NULL, NULL),
(68, 'Estonia', 'EE', NULL, NULL),
(69, 'Ethiopia', 'ET', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(71, 'Faroe Islands', 'FO', NULL, NULL),
(72, 'Fiji', 'FJ', NULL, NULL),
(73, 'Finland', 'FI', NULL, NULL),
(74, 'France', 'FR', NULL, NULL),
(75, 'France, Metropolitan', 'FX', NULL, NULL),
(76, 'French Guiana', 'GF', NULL, NULL),
(77, 'French Polynesia', 'PF', NULL, NULL),
(78, 'French Southern Territories', 'TF', NULL, NULL),
(79, 'Gabon', 'GA', NULL, NULL),
(80, 'Gambia', 'GM', NULL, NULL),
(81, 'Georgia', 'GE', NULL, NULL),
(82, 'Germany', 'DE', NULL, NULL),
(83, 'Ghana', 'GH', NULL, NULL),
(84, 'Gibraltar', 'GI', NULL, NULL),
(85, 'Greece', 'GR', NULL, NULL),
(86, 'Greenland', 'GL', NULL, NULL),
(87, 'Grenada', 'GD', NULL, NULL),
(88, 'Guadeloupe', 'GP', NULL, NULL),
(89, 'Guam', 'GU', NULL, NULL),
(90, 'Guatemala', 'GT', NULL, NULL),
(91, 'Guinea', 'GN', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', NULL, NULL),
(93, 'Guyana', 'GY', NULL, NULL),
(94, 'Haiti', 'HT', NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', NULL, NULL),
(96, 'Honduras', 'HN', NULL, NULL),
(97, 'Hong Kong', 'HK', NULL, NULL),
(98, 'Hungary', 'HU', NULL, NULL),
(99, 'Iceland', 'IS', NULL, NULL),
(100, 'India', 'IN', NULL, NULL),
(101, 'Indonesia', 'ID', NULL, NULL),
(102, 'Iran (Islamic Republic of)', 'IR', NULL, NULL),
(103, 'Iraq', 'IQ', NULL, NULL),
(104, 'Ireland', 'IE', NULL, NULL),
(105, 'Israel', 'IL', NULL, NULL),
(106, 'Italy', 'IT', NULL, NULL),
(107, 'Ivory Coast', 'CI', NULL, NULL),
(108, 'Jamaica', 'JM', NULL, NULL),
(109, 'Japan', 'JP', NULL, NULL),
(110, 'Jordan', 'JO', NULL, NULL),
(111, 'Kazakhstan', 'KZ', NULL, NULL),
(112, 'Kenya', 'KE', NULL, NULL),
(113, 'Kiribati', 'KI', NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(115, 'Korea, Republic of', 'KR', NULL, NULL),
(116, 'Kuwait', 'KW', NULL, NULL),
(117, 'Kyrgyzstan', 'KG', NULL, NULL),
(118, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(119, 'Latvia', 'LV', NULL, NULL),
(120, 'Lebanon', 'LB', NULL, NULL),
(121, 'Lesotho', 'LS', NULL, NULL),
(122, 'Liberia', 'LR', NULL, NULL),
(123, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL),
(124, 'Liechtenstein', 'LI', NULL, NULL),
(125, 'Lithuania', 'LT', NULL, NULL),
(126, 'Luxembourg', 'LU', NULL, NULL),
(127, 'Macau', 'MO', NULL, NULL),
(128, 'Macedonia', 'MK', NULL, NULL),
(129, 'Madagascar', 'MG', NULL, NULL),
(130, 'Malawi', 'MW', NULL, NULL),
(131, 'Malaysia', 'MY', NULL, NULL),
(132, 'Maldives', 'MV', NULL, NULL),
(133, 'Mali', 'ML', NULL, NULL),
(134, 'Malta', 'MT', NULL, NULL),
(135, 'Marshall Islands', 'MH', NULL, NULL),
(136, 'Martinique', 'MQ', NULL, NULL),
(137, 'Mauritania', 'MR', NULL, NULL),
(138, 'Mauritius', 'MU', NULL, NULL),
(139, 'Mayotte', 'TY', NULL, NULL),
(140, 'Mexico', 'MX', NULL, NULL),
(141, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(142, 'Moldova, Republic of', 'MD', NULL, NULL),
(143, 'Monaco', 'MC', NULL, NULL),
(144, 'Mongolia', 'MN', NULL, NULL),
(145, 'Montserrat', 'MS', NULL, NULL),
(146, 'Morocco', 'MA', NULL, NULL),
(147, 'Mozambique', 'MZ', NULL, NULL),
(148, 'Myanmar', 'MM', NULL, NULL),
(149, 'Namibia', 'NA', NULL, NULL),
(150, 'Nauru', 'NR', NULL, NULL),
(151, 'Nepal', 'NP', NULL, NULL),
(152, 'Netherlands', 'NL', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', NULL, NULL),
(154, 'New Caledonia', 'NC', NULL, NULL),
(155, 'New Zealand', 'NZ', NULL, NULL),
(156, 'Nicaragua', 'NI', NULL, NULL),
(157, 'Niger', 'NE', NULL, NULL),
(158, 'Nigeria', 'NG', NULL, NULL),
(159, 'Niue', 'NU', NULL, NULL),
(160, 'Norfork Island', 'NF', NULL, NULL),
(161, 'Northern Mariana Islands', 'MP', NULL, NULL),
(162, 'Norway', 'NO', NULL, NULL),
(163, 'Oman', 'OM', NULL, NULL),
(164, 'Pakistan', 'PK', NULL, NULL),
(165, 'Palau', 'PW', NULL, NULL),
(166, 'Panama', 'PA', NULL, NULL),
(167, 'Papua New Guinea', 'PG', NULL, NULL),
(168, 'Paraguay', 'PY', NULL, NULL),
(169, 'Peru', 'PE', NULL, NULL),
(170, 'Philippines', 'PH', NULL, NULL),
(171, 'Pitcairn', 'PN', NULL, NULL),
(172, 'Poland', 'PL', NULL, NULL),
(173, 'Portugal', 'PT', NULL, NULL),
(174, 'Puerto Rico', 'PR', NULL, NULL),
(175, 'Qatar', 'QA', NULL, NULL),
(176, 'Republic of South Sudan', 'SS', NULL, NULL),
(177, 'Reunion', 'RE', NULL, NULL),
(178, 'Romania', 'RO', NULL, NULL),
(179, 'Russian Federation', 'RU', NULL, NULL),
(180, 'Rwanda', 'RW', NULL, NULL),
(181, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(182, 'Saint Lucia', 'LC', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(184, 'Samoa', 'WS', NULL, NULL),
(185, 'San Marino', 'SM', NULL, NULL),
(186, 'Sao Tome and Principe', 'ST', NULL, NULL),
(187, 'Saudi Arabia', 'SA', NULL, NULL),
(188, 'Senegal', 'SN', NULL, NULL),
(189, 'Serbia', 'RS', NULL, NULL),
(190, 'Seychelles', 'SC', NULL, NULL),
(191, 'Sierra Leone', 'SL', NULL, NULL),
(192, 'Singapore', 'SG', NULL, NULL),
(193, 'Slovakia', 'SK', NULL, NULL),
(194, 'Slovenia', 'SI', NULL, NULL),
(195, 'Solomon Islands', 'SB', NULL, NULL),
(196, 'Somalia', 'SO', NULL, NULL),
(197, 'South Africa', 'ZA', NULL, NULL),
(198, 'South Georgia South Sandwich Islands', 'GS', NULL, NULL),
(199, 'Spain', 'ES', NULL, NULL),
(200, 'Sri Lanka', 'LK', NULL, NULL),
(201, 'St. Helena', 'SH', NULL, NULL),
(202, 'St. Pierre and Miquelon', 'PM', NULL, NULL),
(203, 'Sudan', 'SD', NULL, NULL),
(204, 'Suriname', 'SR', NULL, NULL),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ', NULL, NULL),
(206, 'Swaziland', 'SZ', NULL, NULL),
(207, 'Sweden', 'SE', NULL, NULL),
(208, 'Switzerland', 'CH', NULL, NULL),
(209, 'Syrian Arab Republic', 'SY', NULL, NULL),
(210, 'Taiwan', 'TW', NULL, NULL),
(211, 'Tajikistan', 'TJ', NULL, NULL),
(212, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(213, 'Thailand', 'TH', NULL, NULL),
(214, 'Togo', 'TG', NULL, NULL),
(215, 'Tokelau', 'TK', NULL, NULL),
(216, 'Tonga', 'TO', NULL, NULL),
(217, 'Trinidad and Tobago', 'TT', NULL, NULL),
(218, 'Tunisia', 'TN', NULL, NULL),
(219, 'Turkey', 'TR', NULL, NULL),
(220, 'Turkmenistan', 'TM', NULL, NULL),
(221, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(222, 'Tuvalu', 'TV', NULL, NULL),
(223, 'Uganda', 'UG', NULL, NULL),
(224, 'Ukraine', 'UA', NULL, NULL),
(225, 'United Arab Emirates', 'AE', NULL, NULL),
(226, 'United Kingdom', 'GB', NULL, NULL),
(227, 'United States minor outlying islands', 'UM', NULL, NULL),
(228, 'Uruguay', 'UY', NULL, NULL),
(229, 'Uzbekistan', 'UZ', NULL, NULL),
(230, 'Vanuatu', 'VU', NULL, NULL),
(231, 'Vatican City State', 'VA', NULL, NULL),
(232, 'Venezuela', 'VE', NULL, NULL),
(233, 'Vietnam', 'VN', NULL, NULL),
(234, 'Virgin Islands (British)', 'VG', NULL, NULL),
(235, 'Virgin Islands (U.S.)', 'VI', NULL, NULL),
(236, 'Wallis and Futuna Islands', 'WF', NULL, NULL),
(237, 'Western Sahara', 'EH', NULL, NULL),
(238, 'Yemen', 'YE', NULL, NULL),
(239, 'Yugoslavia', 'YU', NULL, NULL),
(240, 'Zaire', 'ZR', NULL, NULL),
(241, 'Zambia', 'ZM', NULL, NULL),
(242, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dimas', 'Utama', 'dimas537@gmail.com', '08118902004', 101, 'Jl. Oliander 1 Blok L No.7', '12345', 'Tangerang Selatan', 'Banten', '15310', '2024-04-06 08:56:46', '2024-04-16 01:08:45'),
(2, 6, 'James', 'Doe', 'james@example.com', '12121212121212', 101, 'Dummy Address Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', '2024-04-08 06:22:47', '2024-04-08 06:22:47'),
(3, 4, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', '2024-04-09 06:06:30', '2024-04-13 00:32:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `name`, `description`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'VOG2024', 'Voguish', 'Dummy description', 10, 3, 'fixed', 50000.00, 300000.00, 1, '2024-04-08 04:55:15', '2024-04-16 04:55:20', '2024-04-08 21:55:48', '2024-04-09 04:32:28'),
(2, 'VOG100', 'Voguish 100', NULL, NULL, NULL, 'percent', 10.00, NULL, 1, '2024-04-08 05:09:15', '2024-04-15 17:00:18', '2024-04-08 22:09:43', '2024-04-09 02:53:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_21_094113_alter_users_table', 2),
(6, '2024_03_22_174301_create_categories_table', 3),
(7, '2024_03_23_085254_create_temp_images_table', 4),
(8, '2024_03_24_083833_create_sub_categories_table', 5),
(9, '2024_03_24_124806_create_brands_table', 6),
(10, '2024_03_24_135359_create_products_table', 7),
(11, '2024_03_24_135437_create_products_image_table', 7),
(12, '2024_03_26_141215_create_product_images_table', 8),
(13, '2024_03_29_142847_alter_categories_table', 9),
(14, '2024_03_29_143756_alter_products_table', 10),
(15, '2024_03_29_144615_alter_sub_categories_table', 11),
(16, '2024_03_30_081928_alter_products_table', 12),
(17, '2024_04_06_103815_alter_users_table', 13),
(18, '2024_04_06_125738_create_countries_table', 14),
(19, '2024_04_06_151232_create_orders_table', 15),
(20, '2024_04_06_151321_create_order_items_table', 15),
(21, '2024_04_06_151407_create_customer_addresses_table', 15),
(22, '2024_04_08_111335_create_shipping_charges_table', 16),
(23, '2024_04_09_035104_create_discount_coupons_table', 17),
(24, '2024_04_09_105026_add_coupon_code_id_to_orders_table', 18),
(25, '2024_04_09_123325_alter_orders_table', 19),
(26, '2024_04_13_074628_alter_orders_table', 20),
(27, '2024_04_14_081349_create_wishlist_table', 21),
(28, '2024_04_16_095853_alter_users_table', 22),
(29, '2024_05_12_040728_create_pages_table', 23),
(30, '2024_06_12_113717_create_product_ratings_table', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_code_id` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','canceled') NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `coupon_code_id`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `apartment`, `city`, `state`, `zip`, `notes`, `created_at`, `updated_at`) VALUES
(2, 3, 800000.00, 0.00, NULL, NULL, NULL, 800000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-06 09:32:34', '2024-04-06 09:32:34'),
(3, 3, 1050000.00, 0.00, NULL, NULL, NULL, 1050000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', 'Dummy Address Dummy Address Dummy Address', '2024-04-06 09:49:24', '2024-04-06 09:49:24'),
(4, 3, 180000.00, 0.00, NULL, NULL, NULL, 180000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-06 09:55:05', '2024-04-06 09:55:05'),
(5, 3, 400000.00, 0.00, NULL, NULL, NULL, 400000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-06 09:55:37', '2024-04-06 09:55:37'),
(6, 3, 400000.00, 0.00, NULL, NULL, NULL, 400000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-08 06:08:23', '2024-04-08 06:08:23'),
(7, 3, 250000.00, 0.00, NULL, NULL, NULL, 250000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-08 06:11:10', '2024-04-08 06:11:10'),
(8, 3, 300000.00, 15000.00, NULL, NULL, NULL, 315000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-08 06:13:17', '2024-04-08 06:13:17'),
(9, 6, 200000.00, 15000.00, NULL, NULL, NULL, 215000.00, 'not paid', 'pending', NULL, 'James', 'Doe', 'james@example.com', '12121212121212', 101, 'Dummy Address Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-08 06:22:47', '2024-04-08 06:22:47'),
(10, 3, 800000.00, 30000.00, 'VOG2024', '1', 50000.00, 780000.00, 'not paid', 'delivered', NULL, 'Dimas', 'Utama', 'dimas@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-09 03:52:03', '2024-04-09 03:52:03'),
(11, 4, 180000.00, 15000.00, '', '', 0.00, 195000.00, 'not paid', 'pending', NULL, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Dummy Address Dummy Address Dummy Address', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-04-09 06:06:30', '2024-04-09 06:06:30'),
(12, 4, 450000.00, 30000.00, 'VOG2024', '1', 50000.00, 430000.00, 'not paid', 'shipped', '2024-04-13 08:26:38', 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-04-13 00:32:09', '2024-04-13 01:33:50'),
(13, 3, 350000.00, 15000.00, '', '', 0.00, 365000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimasutama537@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-13 02:09:51', '2024-04-13 02:09:51'),
(14, 3, 300000.00, 15000.00, '', '', 0.00, 315000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimasutama537@gmail.com', '08118902004', 101, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-13 02:15:26', '2024-04-13 02:15:26'),
(15, 4, 400000.00, 30000.00, '', '', 0.00, 430000.00, 'not paid', 'pending', NULL, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-04-14 02:37:51', '2024-04-14 02:37:51'),
(16, 4, 600000.00, 45000.00, '', '', 0.00, 645000.00, 'not paid', 'pending', NULL, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-04-14 02:40:17', '2024-04-14 02:40:17'),
(17, 4, 200000.00, 15000.00, '', '', 0.00, 215000.00, 'not paid', 'pending', NULL, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-04-14 03:10:40', '2024-04-14 03:10:40'),
(18, 3, 350000.00, 200000.00, '', '', 0.00, 550000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimasutama537@gmail.com', '08118902004', 98, 'Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-16 00:34:15', '2024-04-16 00:34:15'),
(19, 3, 180000.00, 15000.00, '', '', 0.00, 195000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas537@gmail.com', '08118902004', 101, 'Jl. Oliander 1 Blok L No.7', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-16 00:59:56', '2024-04-16 00:59:56'),
(20, 3, 250000.00, 200000.00, '', '', 0.00, 450000.00, 'not paid', 'pending', NULL, 'Dimas', 'Utama', 'dimas537@gmail.com', '08118902004', 109, 'Jl. Oliander 1 Blok L No.7', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-04-16 01:00:51', '2024-04-16 01:00:51'),
(21, 6, 150000.00, 15000.00, '', '', 0.00, 165000.00, 'not paid', 'pending', NULL, 'James', 'Doe', 'james@example.com', '12121212121212', 101, 'Dummy Address Dummy Address Dummy Address Dummy Address', '12345', 'Tangerang Selatan', 'Banten', '15310', NULL, '2024-05-12 08:09:27', '2024-05-12 08:09:27'),
(22, 4, 430000.00, 30000.00, '', '', 0.00, 460000.00, 'not paid', 'pending', NULL, 'John', 'Doe', 'john@example.com', '11111111111', 101, 'Jl. Alam Sutera Boulevard No.1, Alam Sutera, Kec. Serpong, Tangerang, Banten 15325', NULL, 'Jakarta Selatan', 'DKI Jakarta', '15310', NULL, '2024-06-13 05:46:58', '2024-06-13 05:46:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 87, 'WILDLIFE SWEAT SUKAJAN (GREEN)', 2, 200000.00, 400000.00, '2024-04-06 09:32:34', '2024-04-06 09:32:34'),
(2, 2, 29, 'Ambler Basketball Bear Unisex Overfit', 1, 400000.00, 400000.00, '2024-04-06 09:32:34', '2024-04-06 09:32:34'),
(3, 3, 87, 'WILDLIFE SWEAT SUKAJAN (GREEN)', 2, 200000.00, 400000.00, '2024-04-06 09:49:24', '2024-04-06 09:49:24'),
(4, 3, 29, 'Ambler Basketball Bear Unisex Overfit', 1, 400000.00, 400000.00, '2024-04-06 09:49:24', '2024-04-06 09:49:24'),
(5, 3, 58, 'Elbow Drawing Smile Knit Cardigan', 1, 250000.00, 250000.00, '2024-04-06 09:49:24', '2024-04-06 09:49:24'),
(6, 4, 70, 'ESTD 2012 GVRE CO. SWEAT VEST (BLACK)', 1, 180000.00, 180000.00, '2024-04-06 09:55:05', '2024-04-06 09:55:05'),
(7, 5, 29, 'Ambler Basketball Bear Unisex Overfit', 1, 400000.00, 400000.00, '2024-04-06 09:55:37', '2024-04-06 09:55:37'),
(8, 6, 50, 'Ambler Unisex Cat\'s Daily Life Overfit Brushed Sweatshirt', 1, 400000.00, 400000.00, '2024-04-08 06:08:23', '2024-04-08 06:08:23'),
(9, 7, 38, 'Short-sleeved Geo Shirt Fuller Print, Cornel', 1, 250000.00, 250000.00, '2024-04-08 06:11:10', '2024-04-08 06:11:10'),
(10, 8, 78, 'Small Flame Logo Fleece Zip-up Jacket Ivory', 1, 300000.00, 300000.00, '2024-04-08 06:13:17', '2024-04-08 06:13:17'),
(11, 9, 71, 'Classic V-neck Short Cable Knit Vest', 1, 200000.00, 200000.00, '2024-04-08 06:22:47', '2024-04-08 06:22:47'),
(12, 10, 49, 'Ambler Unisex Original Teddy Bear Overfit Brushed Sweatshirt', 1, 300000.00, 300000.00, '2024-04-09 03:52:03', '2024-04-09 03:52:03'),
(13, 10, 64, 'RC CLUB KNIT CARDIGAN_OATMEAL', 1, 500000.00, 500000.00, '2024-04-09 03:52:03', '2024-04-09 03:52:03'),
(14, 11, 85, 'GVRE NEVER SURRENDER WINDBREAKER (LAVENDER)', 1, 180000.00, 180000.00, '2024-04-09 06:06:30', '2024-04-09 06:06:30'),
(15, 12, 83, 'Flight MA-1 Reversible Jacket', 1, 250000.00, 250000.00, '2024-04-13 00:32:09', '2024-04-13 00:32:09'),
(16, 12, 86, 'WILDLIFE SWEAT SUKAJAN (PUNCH PINK)', 1, 200000.00, 200000.00, '2024-04-13 00:32:09', '2024-04-13 00:32:09'),
(17, 13, 24, 'GOLD CHAIN ​​BEAR DOLL HOODIE ZIP UP COCOA', 1, 350000.00, 350000.00, '2024-04-13 02:09:51', '2024-04-13 02:09:51'),
(18, 14, 78, 'Small Flame Logo Fleece Zip-up Jacket Ivory', 1, 300000.00, 300000.00, '2024-04-13 02:15:26', '2024-04-13 02:15:26'),
(19, 15, 87, 'WILDLIFE SWEAT SUKAJAN (GREEN)', 2, 200000.00, 400000.00, '2024-04-14 02:37:51', '2024-04-14 02:37:51'),
(20, 16, 87, 'WILDLIFE SWEAT SUKAJAN (GREEN)', 3, 200000.00, 600000.00, '2024-04-14 02:40:17', '2024-04-14 02:40:17'),
(21, 17, 86, 'WILDLIFE SWEAT SUKAJAN (PUNCH PINK)', 1, 200000.00, 200000.00, '2024-04-14 03:10:40', '2024-04-14 03:10:40'),
(22, 18, 39, 'Short-sleeved League Shirt Shaver', 1, 350000.00, 350000.00, '2024-04-16 00:34:15', '2024-04-16 00:34:15'),
(23, 19, 85, 'GVRE NEVER SURRENDER WINDBREAKER (LAVENDER)', 1, 180000.00, 180000.00, '2024-04-16 00:59:56', '2024-04-16 00:59:56'),
(24, 20, 82, 'High Neck Hooded Reversible Jacket', 1, 250000.00, 250000.00, '2024-04-16 01:00:51', '2024-04-16 01:00:51'),
(25, 21, 75, 'College V-Neck Vest 1843 Ivory', 1, 150000.00, 150000.00, '2024-05-12 08:09:27', '2024-05-12 08:09:27'),
(26, 22, 8, 'Silket Radog short-sleeved T-shirt - White', 1, 150000.00, 150000.00, '2024-06-13 05:46:58', '2024-06-13 05:46:58'),
(27, 22, 84, 'VEGAN LEATHER A2 FIELD JACKET (BLACK)', 1, 280000.00, 280000.00, '2024-06-13 05:46:58', '2024-06-13 05:46:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(3, 'About Us', 'about-us', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quas assumenda aliquam deserunt aspernatur numquam animi sit veniam distinctio voluptatem nihil ratione possimus ex eligendi molestias, similique earum? Ut accusamus exercitationem illo porro quis doloribus quasi atque, inventore dignissimos. Vel molestias quos maiores sequi explicabo numquam doloribus labore qui facilis rem.<br></p>', '2024-05-11 21:57:10', '2024-05-11 22:09:41'),
(4, 'Contact Us', 'contact-us', '<p>Hello,</p>\r\n                    <address>\r\n                    Jl. Jalur Sutera Bar. No.Kav. 21, RT.001/RW.004 <br>\r\n                    Panunggangan, Kec. Pinan<br> \r\n                    Kota Tangerang, Banten 15143<br>\r\n                    <a href=\"tel:0804166969\">0804 169 6969</a><br>\r\n                    <a href=\"mailto:voguish@gmail.com\">voguish@gmail.com</a>\r\n                    </address>', '2024-05-11 22:14:10', '2024-05-11 23:45:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gold Silver Dog Short Sleeve', 'gold-silver-dog-short-sleeve', '<ul class=\"list-inline\" style=\"\"><li class=\"list-inline\" style=\"\"><p class=\"BoxBlueTitle\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14px; font-family: &quot;Arial Black&quot;;\">100% Original</span></font></p><p class=\"BoxBlueTitle\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14px;\"><br></span></font></p><p class=\"BoxBlueTitle\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14px;\">Products are sent directly by authorized sellers or</span></font></p><p class=\"BoxBlueTitle\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 14px;\">brand companies.</span></font></p></li></ul>', '<p><font face=\"Arial\">Gold Silver Dog Short Sleeve by&nbsp;LifeWork</font></p><p style=\"\"><font face=\"Arial\">Berat: 500gr</font></p><p style=\"\"><font face=\"Arial\">Fabric: Cotton 100%</font></p><p style=\"\"><font face=\"Arial\">Fabric Thickness: Medium</font></p><p style=\"\"><font face=\"Arial\">Fabric See Through: X<br></font><br></p>', '<p><span style=\"font-family: Arial;\">Barang yang sudah dibeli tidak dapat dikembalikan,&nbsp;</span><span style=\"font-size: 1rem; font-family: Arial;\">kecuali ada kesalahan pengiriman atau cacat pada produk.</span></p>', '', 150000.00, NULL, 1, 13, 1, 'No', 'SKU-001', '123456', 'Yes', 10, 1, '2024-03-26 03:26:40', '2024-03-30 08:28:35'),
(7, 'Silket Radog short-sleeved - Red', 'silket-radog-short-sleeved-red', '<p><b>100% Original</b></p><p><b><br></b></p><p>Products are sent directly by authorized sellers or&nbsp;</p><p><span style=\"font-size: 1rem;\">brand companies.</span></p>', '<p><font face=\"Arial\">Silket Radog short-sleeved - Red&nbsp;by&nbsp;LifeWork</font></p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, 250000.00, 1, 13, 1, 'No', 'SKU-002', NULL, 'Yes', 30, 1, '2024-03-26 07:16:00', '2024-03-30 09:21:13'),
(8, 'Silket Radog short-sleeved T-shirt - White', 'silket-radog-short-sleeved-t-shirt-white', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Silket Radog short-sleeved T-shirt - White by LifeWork</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 1, 13, 1, 'Yes', 'SKU-003', '234234234', 'Yes', 29, 1, '2024-03-26 07:17:34', '2024-06-13 05:46:58'),
(9, 'Multi-Artwork Long-Sleeved T-Shirt', 'multi-artwork-long-sleeved-t-shirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Multi-Artwork Long-Sleeved T-Shirt by LifeWork</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, 200000.00, 1, 13, 1, 'No', 'SKU-004', NULL, 'Yes', 12, 1, '2024-03-26 07:25:48', '2024-03-30 08:42:24'),
(10, 'Seoul Series Dual Logo Short Sleeve LA SD', 'seoul-series-dual-logo-short-sleeve-la-sd', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Seoul Series Dual Logo Short Sleeve T-Shirt LA SD by MLB</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, 350000.00, 1, 13, 4, 'No', 'SKU-005', NULL, 'Yes', 30, 1, '2024-03-26 07:28:07', '2024-03-30 08:43:38'),
(11, 'Varsity Overfit Short Sleeve LA Dodgers', 'varsity-overfit-short-sleeve-la-dodgers', '<p><font face=\"Arial\"><b>100% Original</b></font></p><p><font face=\"Arial\"><br></font></p><p><font face=\"Arial\">Products are sent directly by authorized sellers or</font></p><p><font face=\"Arial\">brand companies.</font></p>', '<p>Varsity Overfit Short Sleeve T-Shirt LA Dodgers By MLB</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 1, 13, 4, 'No', 'SKU-006', NULL, 'Yes', 12, 1, '2024-03-26 07:30:53', '2024-03-30 22:08:35'),
(13, 'Basic Mega Logo Short Sleeve LA Dodgers', 'basic-mega-logo-short-sleeve-la-dodgers', '<p><font face=\"Arial\"><b>100% Original</b></font></p><p><font face=\"Arial\"><br></font></p><p><font face=\"Arial\">Products are sent directly by authorized sellers or</font></p><p><font face=\"Arial\">brand companies.</font></p>', '<p>Basic Mega Logo Short Sleeve T-Shirt LA Dodgers by MLB</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, 400000.00, 1, 13, 4, 'No', 'SKU-007', NULL, 'Yes', 20, 1, '2024-03-26 23:45:01', '2024-03-30 08:51:24'),
(14, 'Basic small logo short sleeve San Diego Padres', 'basic-small-logo-short-sleeve-san-diego-padres', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Basic small logo short sleeve t-shirt San Diego Padres By MLB</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p><font color=\"#000000\">Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.</font><br></p>', '13', 300000.00, 400000.00, 1, 13, 4, 'No', 'SKU-008', NULL, 'Yes', 20, 1, '2024-03-26 23:51:09', '2024-03-30 22:24:18'),
(17, 'Leice Emboss Crop Tee Oatmeal', 'leice-emboss-crop-tee-oatmeal', '<p><font face=\"Arial\"><b>100% Original</b></font></p><p><font face=\"Arial\"><br></font></p><p><font face=\"Arial\">Products are sent directly by authorized sellers or</font></p><p><font face=\"Arial\">brand companies.</font></p>', '<p>Leice Emboss Crop Tee Oatmeal by&nbsp;Fabulous archive</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 55000.00, 60000.00, 1, 13, 5, 'No', 'SKU-009', NULL, 'Yes', 5, 1, '2024-03-29 10:28:48', '2024-03-30 08:52:44'),
(18, 'Leris Embo Crop Tee Cream Navy', 'leris-embo-crop-tee-cream-navy', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Leris Embo Crop Tee Cream Navy by&nbsp;Fabulous archive</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, 400000.00, 1, 13, 5, 'No', 'SKU-010', NULL, 'Yes', 5, 1, '2024-03-29 10:29:42', '2024-03-30 08:53:46'),
(19, 'Bear Friends Relax Crop Tee Black Pink', 'bear-friends-relax-crop-tee-black-pink', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Bear Friends Relax Crop Tee Black Pink by&nbsp;Fabulous archive</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 650000.00, NULL, 1, 13, 5, 'No', 'SKU-011', NULL, 'Yes', 3, 1, '2024-03-29 11:04:31', '2024-03-30 08:55:09'),
(20, 'Bear Friends Relax Crop Tee Cream Green', 'bear-friends-relax-crop-tee-cream-green', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Bear Friends Relax Crop Tee Cream Green by&nbsp;Fabulous archive</p><p><font face=\"Arial\">Berat: 500gr</font></p><p><font face=\"Arial\">Fabric: Cotton 100%</font></p><p><font face=\"Arial\">Fabric Thickness: Medium</font></p><p><font face=\"Arial\">Fabric See Through: X</font></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 100000.00, NULL, 1, 13, 5, 'No', 'SKU-012', NULL, 'Yes', 12, 1, '2024-03-29 23:17:18', '2024-03-30 08:56:10'),
(21, 'LOST IN SPACE HOODIE RED', 'lost-in-space-hoodie-red', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>LOST IN SPACE HOODIE RED by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 450000.00, 500000.00, 1, 14, 12, 'No', 'SKU-013', NULL, 'Yes', 15, 1, '2024-03-30 01:39:43', '2024-04-04 06:24:14'),
(22, 'NEW SYMBOL LOGO SPRAY WASHING HOODIE NAVY', 'new-symbol-logo-spray-washing-hoodie-navy', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>NEW SYMBOL LOGO SPRAY WASHING HOODIE NAVY by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '21', 300000.00, NULL, 1, 14, 12, 'No', 'SKU-014', NULL, 'Yes', 12, 1, '2024-03-30 09:15:42', '2024-03-30 09:16:13'),
(23, 'BOUCLE ROUND LOGO HOODIE CREAM', 'boucle-round-logo-hoodie-cream', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>BOUCLE ROUND LOGO HOODIE CREAM by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '21,22', 300000.00, NULL, 1, 14, 12, 'No', 'SKU-015', NULL, 'Yes', 15, 1, '2024-03-30 09:17:57', '2024-03-30 09:17:57'),
(24, 'GOLD CHAIN ​​BEAR DOLL HOODIE ZIP UP COCOA', 'gold-chain-bear-doll-hoodie-zip-up-cocoa', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>GOLD CHAIN ​​BEAR DOLL HOODIE ZIP UP COCOA by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, 400000.00, 1, 14, 12, 'No', 'SKU-016', NULL, 'Yes', 12, 1, '2024-03-30 09:19:37', '2024-03-30 09:19:37'),
(25, 'Waffle Small Dog Hood', 'waffle-small-dog-hood', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Waffle Small Dog Hood by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, 300000.00, 1, 14, 1, 'No', 'SKU-017', NULL, 'Yes', 14, 1, '2024-03-30 21:43:58', '2024-03-30 21:43:58'),
(26, 'Monogram Pattern Hoodie', 'monogram-pattern-hoodie', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Monogram Pattern Hoodie by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 14, 1, 'No', 'SKU-018', NULL, 'Yes', 30, 1, '2024-03-30 21:45:23', '2024-03-30 21:45:23'),
(27, 'Woven Applique Hood (Raised Lining)', 'woven-applique-hood-raised-lining', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Woven Applique Hood (Raised Lining) by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 14, 1, 'No', 'SKU-019', NULL, 'Yes', 20, 1, '2024-03-30 21:46:18', '2024-03-30 21:46:18'),
(28, 'Zebra Big Radog Hood', 'zebra-big-radog-hood', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Zebra Big Radog Hood by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 1, 14, 1, 'No', 'SKU-020', NULL, 'Yes', 19, 1, '2024-03-30 21:47:10', '2024-03-30 21:47:10'),
(29, 'Ambler Basketball Bear Unisex Overfit', 'ambler-basketball-bear-unisex-overfit', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ambler Basketball Bear Unisex Overfit by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 400000.00, NULL, 1, 14, 11, 'No', 'SKU-021', NULL, 'Yes', 40, 1, '2024-03-30 21:48:25', '2024-03-30 21:48:25'),
(30, 'Bellygom X Ambler Belly School Unisex Overfit', 'bellygom-x-ambler-belly-school-unisex-overfit', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Bellygom X Ambler Belly School Unisex Overfit by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 450000.00, NULL, 1, 14, 11, 'No', 'SKU-022', NULL, 'Yes', 37, 1, '2024-03-30 21:49:39', '2024-03-30 21:49:39'),
(31, 'Bellygom X Ambler UFO Belly Gom Unisex Overfit', 'bellygom-x-ambler-ufo-belly-gom-unisex-overfit', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Bellygom X Ambler UFO Belly Gom Unisex Overfit by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, 400000.00, 1, 14, 11, 'No', 'SKU-023', NULL, 'Yes', 23, 1, '2024-03-30 21:50:57', '2024-03-30 21:50:57'),
(32, 'School Look Bear Hoodie Sweatshirt', 'school-look-bear-hoodie-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>School Look Bear Hoodie Sweatshirt by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 14, 11, 'No', 'SKU-024', NULL, 'Yes', 31, 1, '2024-03-30 21:52:25', '2024-03-30 21:52:25'),
(33, 'Plain Fred Perry Shirt', 'plain-fred-perry-shirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Plain Fred Perry Shirt by Fred Perry<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 1, 17, 6, 'No', 'SKU-025', NULL, 'Yes', 45, 1, '2024-03-30 21:54:35', '2024-03-30 21:54:35'),
(34, 'Long Sleeve Oxford Shirt', 'long-sleeve-oxford-shirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Long Sleeve Oxford Shirt by Fred Perry<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 1, 17, 6, 'No', 'SKU-026', NULL, 'Yes', 54, 1, '2024-03-30 21:55:32', '2024-03-30 21:55:32'),
(35, 'Long Sleeve Plain Fred Perry Shirt', 'long-sleeve-plain-fred-perry-shirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Long Sleeve Plain Fred Perry Shirt by Fred Perry<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 1, 17, 6, 'No', 'SKU-027', NULL, 'Yes', 53, 1, '2024-03-30 21:56:56', '2024-03-30 21:56:56'),
(36, 'Ribbed knit shirt', 'ribbed-knit-shirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ribbed knit shirt by Fred Perry<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, 250000.00, 1, 17, 6, 'No', 'SKU-028', NULL, 'Yes', 34, 1, '2024-03-30 21:58:08', '2024-03-30 21:58:08'),
(37, 'Short-sleeved Mirage Shirt Mirage Print, Frosted Blue', 'short-sleeved-mirage-shirt-mirage-print-frosted-blue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Short-sleeved Mirage Shirt Mirage Print, Frosted Blue by carhartt<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 1, 17, 7, 'No', 'SKU-029', NULL, 'Yes', 29, 1, '2024-03-30 21:59:16', '2024-03-30 21:59:16'),
(38, 'Short-sleeved Geo Shirt Fuller Print, Cornel', 'short-sleeved-geo-shirt-fuller-print-cornel', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Short-sleeved Geo Shirt Fuller Print, Cornel by carhartt<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, 300000.00, 1, 17, 7, 'No', 'SKU-030', NULL, 'Yes', 54, 1, '2024-03-30 22:00:32', '2024-03-30 22:00:32'),
(39, 'Short-sleeved League Shirt Shaver', 'short-sleeved-league-shirt-shaver', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Short-sleeved League Shirt Shaver by carhartt<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 17, 7, 'Yes', 'SKU-031', NULL, 'Yes', 35, 1, '2024-03-30 22:01:29', '2024-04-16 00:34:15'),
(40, 'Long-sleeved Gerard Shirt, Bonsai', 'long-sleeved-gerard-shirt-bonsai', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Long-sleeved Gerard Shirt, Bonsai by carhartt<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 17, 7, 'No', 'SKU-032', NULL, 'Yes', 45, 1, '2024-03-30 22:02:26', '2024-03-30 22:02:26'),
(41, 'Flame Tie Dyeing Half Shirt Blue', 'flame-tie-dyeing-half-shirt-blue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flame Tie Dyeing Half Shirt Blue by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 400000.00, 460000.00, 1, 17, 9, 'No', 'SKU-033', NULL, 'Yes', 34, 1, '2024-03-30 22:04:22', '2024-03-30 22:04:22'),
(42, 'Small Flame Logo Oxford Shirt Blue', 'small-flame-logo-oxford-shirt-blue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Oxford Shirt Blue by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 17, 9, 'No', 'SKU-034', NULL, 'Yes', 23, 1, '2024-03-30 22:05:17', '2024-03-30 22:05:17'),
(43, 'Small Flame Logo Oxford Shirt White', 'small-flame-logo-oxford-shirt-white', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Oxford Shirt White by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, 350000.00, 1, 17, 9, 'No', 'SKU-035', NULL, 'Yes', 12, 1, '2024-03-30 22:06:07', '2024-03-30 22:06:07'),
(44, 'Small Flame Logo Oxford Shirt Pink', 'small-flame-logo-oxford-shirt-pink', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Oxford Shirt Pink by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 17, 9, 'No', 'SKU-036', NULL, 'Yes', 34, 1, '2024-03-30 22:07:21', '2024-03-30 22:07:21'),
(45, 'TYL Big Flower Smile Logo Sweatshirt', 'tyl-big-flower-smile-logo-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>TYL Big Flower Smile Logo Sweatshirt by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 18, 10, 'No', 'SKU-037', NULL, 'Yes', 45, 1, '2024-03-30 22:17:12', '2024-03-30 22:17:12'),
(46, 'Small Tape Heart Smile Sweatshirt', 'small-tape-heart-smile-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Tape Heart Smile Sweatshirt by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 18, 10, 'No', 'SKU-038', NULL, 'Yes', 35, 1, '2024-03-30 22:17:54', '2024-03-30 22:17:54'),
(47, 'Multi-tape flower smile drawing sweatshirt', 'multi-tape-flower-smile-drawing-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Multi-tape flower smile drawing sweatshirt by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, NULL, 1, 18, 10, 'No', 'SKU-039', NULL, 'Yes', 45, 1, '2024-03-30 22:18:50', '2024-03-30 22:18:50'),
(48, 'Small Tape Dot Smile Sweatshirt', 'small-tape-dot-smile-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Tape Dot Smile Sweatshirt by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 350000.00, 380000.00, 1, 18, 10, 'No', 'SKU-040', NULL, 'Yes', 28, 1, '2024-03-30 22:19:42', '2024-03-30 22:19:42'),
(49, 'Ambler Unisex Original Teddy Bear Overfit Brushed Sweatshirt', 'ambler-unisex-original-teddy-bear-overfit-brushed-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ambler Unisex Original Teddy Bear Overfit Brushed Sweatshirt by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 1, 18, 11, 'No', 'SKU-041', NULL, 'Yes', 37, 1, '2024-03-30 22:20:40', '2024-03-30 22:20:40'),
(50, 'Ambler Unisex Cat\'s Daily Life Overfit Brushed Sweatshirt', 'ambler-unisex-cats-daily-life-overfit-brushed-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ambler Unisex Cat\'s Daily Life Overfit Brushed Sweatshirt by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 400000.00, NULL, 1, 18, 11, 'No', 'SKU-042', NULL, 'Yes', 49, 1, '2024-03-30 22:21:40', '2024-03-30 22:21:40'),
(51, 'Ambler Line bear Unisex Overfit Juri Sweatshirt', 'ambler-line-bear-unisex-overfit-juri-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ambler Line bear Unisex Overfit Juri Sweatshirt by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 400000.00, NULL, 1, 18, 11, 'Yes', 'SKU-043', NULL, 'Yes', 23, 1, '2024-03-30 22:22:44', '2024-04-14 02:47:21'),
(52, 'Ambler Sweet Cookie Unisex Overfit Juri Sweatshirt', 'ambler-sweet-cookie-unisex-overfit-juri-sweatshirt', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Ambler Sweet Cookie Unisex Overfit Juri Sweatshirt by Ambler<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 370000.00, 400000.00, 1, 18, 11, 'No', 'SKU-044', NULL, 'Yes', 41, 1, '2024-03-30 22:23:55', '2024-03-30 22:23:55'),
(53, 'Magazine Logo Sweatshirt Navy', 'magazine-logo-sweatshirt-navy', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Magazine Logo Sweatshirt Navy by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, 300000.00, 1, 18, 9, 'No', 'SKU-045', NULL, 'Yes', 60, 1, '2024-03-30 22:26:39', '2024-03-30 22:26:39'),
(54, 'Magazine Pigment Dying Sweatshirt Light Gray', 'magazine-pigment-dying-sweatshirt-light-gray', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Magazine Pigment Dying Sweatshirt Light Gray by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 18, 9, 'No', 'SKU-046', NULL, 'Yes', 13, 1, '2024-03-30 22:27:52', '2024-03-30 22:27:52'),
(55, 'Flame Logo Sweatshirt Oatmeal', 'flame-logo-sweatshirt-oatmeal', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flame Logo Sweatshirt Oatmeal by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 400000.00, NULL, 1, 18, 9, 'No', 'SKU-047', NULL, 'Yes', 35, 1, '2024-03-30 22:28:43', '2024-03-30 22:28:43'),
(56, 'Magazine Logo Sweatshirt Gray', 'magazine-logo-sweatshirt-gray', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Magazine Logo Sweatshirt Gray by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 1, 18, 9, 'No', 'SKU-048', NULL, 'Yes', 71, 1, '2024-03-30 22:29:49', '2024-03-30 22:29:49'),
(57, 'Flower Heart Half Smile Embroidery Knit Cardigan_Cream', 'flower-heart-half-smile-embroidery-knit-cardigan-cream', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flower Heart Half Smile Embroidery Knit Cardigan_Cream by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 230000.00, 250000.00, 76, 22, 10, 'No', 'SKu-049', NULL, 'Yes', 63, 1, '2024-04-04 04:43:24', '2024-04-04 04:43:24'),
(58, 'Elbow Drawing Smile Knit Cardigan', 'elbow-drawing-smile-knit-cardigan', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Elbow Drawing Smile Knit Cardigan by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 76, 22, 10, 'No', 'SKU-050', NULL, 'Yes', 32, 1, '2024-04-04 04:44:16', '2024-04-04 04:44:16'),
(59, 'Flower Dot Embroidery Sweat Cardigan_Gray', 'flower-dot-embroidery-sweat-cardigan-gray', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flower Dot Embroidery Sweat Cardigan_Gray by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 180000.00, NULL, 76, 22, 10, 'No', 'SKU-051', NULL, 'Yes', 56, 1, '2024-04-04 04:45:05', '2024-04-04 04:45:05'),
(60, 'Flower Dot Embroidery Tartan knit cardigan_blue', 'flower-dot-embroidery-tartan-knit-cardigan-blue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flower Dot Embroidery Tartan knit cardigan_blue by Graver<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 100000.00, 150000.00, 76, 22, 10, 'No', 'SKU-052', NULL, 'Yes', 197, 1, '2024-04-04 04:45:56', '2024-04-04 04:45:56'),
(61, 'HAND STITCH ROUND CARDIGAN_NAVY', 'hand-stitch-round-cardigan-navy', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>HAND STITCH ROUND CARDIGAN_NAVY by Romantic Crown<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 76, 22, 13, 'No', 'SKU-053', NULL, 'Yes', 12, 1, '2024-04-04 04:46:51', '2024-04-04 04:46:51'),
(62, 'COZY FLOWER KNIT CARDIGAN_OATMEAL', 'cozy-flower-knit-cardigan-oatmeal', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>COZY FLOWER KNIT CARDIGAN_OATMEAL by Romantic Crown<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 76, 22, 13, 'No', 'SKU-054', NULL, 'Yes', 56, 1, '2024-04-04 04:47:34', '2024-04-04 04:47:34'),
(63, 'MIXED KNIT CARDIGAN_BLACK', 'mixed-knit-cardigan-black', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>MIXED KNIT CARDIGAN_BLACK by Romantic Crown<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, 300000.00, 76, 22, 13, 'No', 'SKU-055', NULL, 'Yes', 27, 1, '2024-04-04 04:48:21', '2024-04-04 04:48:21'),
(64, 'RC CLUB KNIT CARDIGAN_OATMEAL', 'rc-club-knit-cardigan-oatmeal', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>RC CLUB KNIT CARDIGAN_OATMEAL by Romantic Crown<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 500000.00, NULL, 76, 22, 13, 'No', 'SKU-56', NULL, 'Yes', 16, 1, '2024-04-04 04:49:17', '2024-04-04 04:49:17'),
(65, 'CIRCLE A LOGO EMBLEM KNIT CARDIGAN SKYBLUE', 'circle-a-logo-emblem-knit-cardigan-skyblue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>CIRCLE A LOGO EMBLEM KNIT CARDIGAN SKYBLUE by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 76, 22, 12, 'No', 'SKU-057', NULL, 'Yes', 46, 1, '2024-04-04 04:50:13', '2024-04-04 04:50:13'),
(66, 'CIRCLE A LOGO EMBLEM KNIT CARDIGAN GRAY', 'circle-a-logo-emblem-knit-cardigan-gray', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>CIRCLE A LOGO EMBLEM KNIT CARDIGAN GRAY by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 76, 22, 12, 'No', 'SKU-058', NULL, 'Yes', 35, 1, '2024-04-04 04:51:01', '2024-04-04 04:51:01'),
(67, 'LETTERING LOGO MOHAIR CARDIGAN GRAY', 'lettering-logo-mohair-cardigan-gray', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>LETTERING LOGO MOHAIR CARDIGAN GRAY by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 15000.00, NULL, 76, 22, 12, 'No', 'SKU-059', NULL, 'Yes', 37, 1, '2024-04-04 04:51:54', '2024-04-04 04:51:54'),
(68, 'LETTERING LOGO MOHAIR CARDIGAN BLUE', 'lettering-logo-mohair-cardigan-blue', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>LETTERING LOGO MOHAIR CARDIGAN BLUE by ADLV<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 76, 22, 12, 'No', 'SKU-060', NULL, 'Yes', 57, 1, '2024-04-04 04:52:46', '2024-04-04 04:52:46'),
(69, 'ESTD 2012 GVRE CO. SWEAT VEST (GREEN)', 'estd-2012-gvre-co-sweat-vest-green', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>ESTD 2012 GVRE CO. SWEAT VEST (GREEN) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 180000.00, 2000000.00, 76, 24, 14, 'No', 'SKU-061', NULL, 'Yes', 35, 1, '2024-04-04 04:54:32', '2024-04-04 04:54:32'),
(70, 'ESTD 2012 GVRE CO. SWEAT VEST (BLACK)', 'estd-2012-gvre-co-sweat-vest-black', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>ESTD 2012 GVRE CO. SWEAT VEST (BLACK) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 180000.00, NULL, 76, 24, 14, 'No', 'SKU-062', NULL, 'Yes', 89, 1, '2024-04-04 04:55:27', '2024-04-04 04:55:27'),
(71, 'Classic V-neck Short Cable Knit Vest', 'classic-v-neck-short-cable-knit-vest', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Classic V-neck Short Cable Knit Vest by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 76, 24, 1, 'No', 'SKU-063', NULL, 'Yes', 15, 1, '2024-04-04 04:56:13', '2024-04-04 04:56:13'),
(72, 'Radog Waffen Vest', 'radog-waffen-vest', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Radog Waffen Vest by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 76, 24, 1, 'No', 'SKU-064', NULL, 'Yes', 23, 1, '2024-04-04 04:56:56', '2024-04-04 04:56:56'),
(73, 'Classic V-neck Cable Knit Vest', 'classic-v-neck-cable-knit-vest', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Classic V-neck Cable Knit Vest by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 76, 24, 1, 'No', 'SKU-065', NULL, 'Yes', 46, 1, '2024-04-04 04:57:42', '2024-04-04 04:57:42'),
(74, 'College V-Neck Vest 1843 Navy', 'college-v-neck-vest-1843-navy', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>College V-Neck Vest 1843 Navy by KANGOL<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 76, 24, 15, 'No', 'SKU-066', NULL, 'Yes', 46, 1, '2024-04-04 04:58:33', '2024-04-04 04:58:33'),
(75, 'College V-Neck Vest 1843 Ivory', 'college-v-neck-vest-1843-ivory', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>College V-Neck Vest 1843 Ivory by KANGOL<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 150000.00, NULL, 76, 24, 15, 'No', 'SKU-067', NULL, 'Yes', 61, 1, '2024-04-04 04:59:26', '2024-05-12 08:09:27'),
(76, 'Small Flame Logo Fleece Zip-up Jacket Black', 'small-flame-logo-fleece-zip-up-jacket-black', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Fleece Zip-up Jacket Black by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 76, 23, 9, 'No', 'SKU-068', NULL, 'Yes', 45, 1, '2024-04-04 06:13:51', '2024-04-04 06:13:51'),
(77, 'Small Flame Logo Fleece Zip-up Jacket Charcoal', 'small-flame-logo-fleece-zip-up-jacket-charcoal', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Fleece Zip-up Jacket Charcoal by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 76, 23, 9, 'No', 'SKU-069', NULL, 'Yes', 66, 1, '2024-04-04 06:14:37', '2024-04-04 06:14:37'),
(78, 'Small Flame Logo Fleece Zip-up Jacket Ivory', 'small-flame-logo-fleece-zip-up-jacket-ivory', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Small Flame Logo Fleece Zip-up Jacket Ivory by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 76, 23, 9, 'No', 'SKU-070', NULL, 'Yes', 23, 1, '2024-04-04 06:15:29', '2024-04-04 06:15:29'),
(79, 'Flame Denim Trucker Jacket Indigo', 'flame-denim-trucker-jacket-indigo', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flame Denim Trucker Jacket Indigo by Thrasher<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 300000.00, NULL, 76, 23, 9, 'No', 'SKU-071', NULL, 'Yes', 34, 1, '2024-04-04 06:16:16', '2024-04-04 06:16:16'),
(80, 'Mesh Pocket Hooded Jacket', 'mesh-pocket-hooded-jacket', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Mesh Pocket Hooded Jacket by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 76, 23, 1, 'No', 'SKU-072', NULL, 'Yes', 34, 1, '2024-04-04 06:17:37', '2024-04-04 06:17:37'),
(81, 'M65 String Jacket', 'm65-string-jacket', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>M65 String Jacket by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 76, 23, 1, 'No', 'SKU-073', NULL, 'Yes', 56, 1, '2024-04-04 06:18:28', '2024-04-04 06:18:28'),
(82, 'High Neck Hooded Reversible Jacket', 'high-neck-hooded-reversible-jacket', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>High Neck Hooded Reversible Jacket by LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, NULL, 76, 23, 1, 'No', 'SKU-074', NULL, 'Yes', 64, 1, '2024-04-04 06:19:15', '2024-04-16 01:00:51'),
(83, 'Flight MA-1 Reversible Jacket', 'flight-ma-1-reversible-jacket', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>Flight MA-1 Reversible Jacket By LifeWork<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 250000.00, 280000.00, 76, 23, 1, 'No', 'SKU-075', NULL, 'Yes', 67, 1, '2024-04-04 06:20:04', '2024-04-04 06:20:04'),
(84, 'VEGAN LEATHER A2 FIELD JACKET (BLACK)', 'vegan-leather-a2-field-jacket-black', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>VEGAN LEATHER A2 FIELD JACKET (BLACK) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 280000.00, NULL, 76, 23, 14, 'No', 'SKU-076', NULL, 'Yes', 20, 1, '2024-04-04 06:21:03', '2024-06-13 05:46:58'),
(85, 'GVRE NEVER SURRENDER WINDBREAKER (LAVENDER)', 'gvre-never-surrender-windbreaker-lavender', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>GVRE NEVER SURRENDER WINDBREAKER (LAVENDER) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 180000.00, 250000.00, 76, 23, 14, 'No', 'SKU-077', NULL, 'Yes', 44, 1, '2024-04-04 06:21:51', '2024-04-16 00:59:56'),
(86, 'WILDLIFE SWEAT SUKAJAN (PUNCH PINK)', 'wildlife-sweat-sukajan-punch-pink', '<p>100% Original</p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>WILDLIFE SWEAT SUKAJAN (PUNCH PINK) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '', 200000.00, NULL, 76, 23, 14, 'No', 'SKU-078', NULL, 'Yes', 64, 1, '2024-04-04 06:22:35', '2024-04-14 03:10:40'),
(87, 'WILDLIFE SWEAT SUKAJAN (GREEN)', 'wildlife-sweat-sukajan-green', '<p><b>100% Original</b></p><p><br></p><p>Products are sent directly by authorized sellers or</p><p>brand companies.</p>', '<p>WILDLIFE SWEAT SUKAJAN (GREEN) by&nbsp;grooverhyme<br></p>', '<p>Barang yang sudah dibeli tidak dapat dikembalikan, kecuali ada kesalahan pengiriman atau cacat pada produk.<br></p>', '86', 200000.00, NULL, 76, 23, 14, 'Yes', 'SKU-079', NULL, 'Yes', 0, 1, '2024-04-04 06:23:31', '2024-04-14 03:09:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(33, 1, '1-33-1711811634.jpg', NULL, '2024-03-30 08:13:54', '2024-03-30 08:13:54'),
(34, 1, '1-34-1711811637.jpg', NULL, '2024-03-30 08:13:57', '2024-03-30 08:13:57'),
(35, 7, '7-35-1711812813.jpg', NULL, '2024-03-30 08:33:33', '2024-03-30 08:33:33'),
(36, 7, '7-36-1711812815.jpg', NULL, '2024-03-30 08:33:35', '2024-03-30 08:33:35'),
(37, 8, '8-37-1711813042.jpg', NULL, '2024-03-30 08:37:22', '2024-03-30 08:37:22'),
(38, 8, '8-38-1711813045.jpg', NULL, '2024-03-30 08:37:25', '2024-03-30 08:37:25'),
(39, 9, '9-39-1711813191.jpg', NULL, '2024-03-30 08:39:51', '2024-03-30 08:39:51'),
(40, 9, '9-40-1711813194.jpg', NULL, '2024-03-30 08:39:54', '2024-03-30 08:39:54'),
(41, 10, '10-41-1711813304.jpg', NULL, '2024-03-30 08:41:44', '2024-03-30 08:41:44'),
(42, 10, '10-42-1711813307.jpg', NULL, '2024-03-30 08:41:47', '2024-03-30 08:41:47'),
(43, 11, '11-43-1711813495.jpg', NULL, '2024-03-30 08:44:55', '2024-03-30 08:44:55'),
(44, 11, '11-44-1711813498.jpg', NULL, '2024-03-30 08:44:58', '2024-03-30 08:44:58'),
(45, 13, '13-45-1711813735.jpg', NULL, '2024-03-30 08:48:55', '2024-03-30 08:48:55'),
(46, 13, '13-46-1711813739.jpg', NULL, '2024-03-30 08:48:59', '2024-03-30 08:48:59'),
(47, 14, '14-47-1711813834.jpg', NULL, '2024-03-30 08:50:34', '2024-03-30 08:50:34'),
(48, 14, '14-48-1711813837.jpg', NULL, '2024-03-30 08:50:37', '2024-03-30 08:50:37'),
(49, 17, '17-49-1711813959.jpg', NULL, '2024-03-30 08:52:39', '2024-03-30 08:52:39'),
(50, 17, '17-50-1711813961.jpg', NULL, '2024-03-30 08:52:41', '2024-03-30 08:52:41'),
(51, 18, '18-51-1711814017.jpg', NULL, '2024-03-30 08:53:37', '2024-03-30 08:53:37'),
(52, 18, '18-52-1711814018.jpg', NULL, '2024-03-30 08:53:38', '2024-03-30 08:53:38'),
(53, 19, '19-53-1711814098.jpg', NULL, '2024-03-30 08:54:58', '2024-03-30 08:54:58'),
(54, 19, '19-54-1711814100.jpg', NULL, '2024-03-30 08:55:00', '2024-03-30 08:55:00'),
(55, 20, '20-55-1711814165.jpg', NULL, '2024-03-30 08:56:05', '2024-03-30 08:56:05'),
(56, 20, '20-56-1711814167.jpg', NULL, '2024-03-30 08:56:07', '2024-03-30 08:56:07'),
(57, 21, '21-57-1711815230.jpg', NULL, '2024-03-30 09:13:50', '2024-03-30 09:13:50'),
(58, 21, '21-58-1711815233.jpg', NULL, '2024-03-30 09:13:53', '2024-03-30 09:13:53'),
(59, 22, '22-59-1711815352.jpg', NULL, '2024-03-30 09:15:52', '2024-03-30 09:15:52'),
(60, 22, '22-60-1711815355.jpg', NULL, '2024-03-30 09:15:55', '2024-03-30 09:15:55'),
(61, 23, '23-61-1711815498.jpg', NULL, '2024-03-30 09:18:18', '2024-03-30 09:18:18'),
(62, 23, '23-62-1711815501.jpg', NULL, '2024-03-30 09:18:21', '2024-03-30 09:18:21'),
(63, 24, '24-63-1711815588.jpg', NULL, '2024-03-30 09:19:48', '2024-03-30 09:19:48'),
(64, 24, '24-64-1711815590.jpg', NULL, '2024-03-30 09:19:50', '2024-03-30 09:19:50'),
(65, 25, '25-65-1711860238.jpg', NULL, '2024-03-30 21:43:58', '2024-03-30 21:43:58'),
(66, 25, '25-66-1711860238.jpg', NULL, '2024-03-30 21:43:58', '2024-03-30 21:43:58'),
(67, 26, '26-67-1711860323.jpg', NULL, '2024-03-30 21:45:23', '2024-03-30 21:45:23'),
(68, 26, '26-68-1711860323.jpg', NULL, '2024-03-30 21:45:23', '2024-03-30 21:45:23'),
(69, 27, '27-69-1711860378.jpg', NULL, '2024-03-30 21:46:18', '2024-03-30 21:46:18'),
(70, 27, '27-70-1711860378.jpg', NULL, '2024-03-30 21:46:18', '2024-03-30 21:46:18'),
(71, 28, '28-71-1711860430.jpg', NULL, '2024-03-30 21:47:10', '2024-03-30 21:47:10'),
(72, 28, '28-72-1711860430.jpg', NULL, '2024-03-30 21:47:10', '2024-03-30 21:47:10'),
(73, 29, '29-73-1711860505.jpg', NULL, '2024-03-30 21:48:25', '2024-03-30 21:48:25'),
(74, 29, '29-74-1711860506.jpg', NULL, '2024-03-30 21:48:26', '2024-03-30 21:48:26'),
(75, 30, '30-75-1711860579.jpg', NULL, '2024-03-30 21:49:39', '2024-03-30 21:49:39'),
(76, 30, '30-76-1711860579.jpg', NULL, '2024-03-30 21:49:39', '2024-03-30 21:49:39'),
(77, 31, '31-77-1711860657.jpg', NULL, '2024-03-30 21:50:57', '2024-03-30 21:50:57'),
(78, 31, '31-78-1711860657.jpg', NULL, '2024-03-30 21:50:57', '2024-03-30 21:50:57'),
(79, 32, '32-79-1711860745.jpg', NULL, '2024-03-30 21:52:25', '2024-03-30 21:52:25'),
(80, 32, '32-80-1711860745.jpg', NULL, '2024-03-30 21:52:25', '2024-03-30 21:52:25'),
(81, 33, '33-81-1711860875.jpg', NULL, '2024-03-30 21:54:35', '2024-03-30 21:54:35'),
(82, 33, '33-82-1711860875.jpg', NULL, '2024-03-30 21:54:35', '2024-03-30 21:54:35'),
(83, 34, '34-83-1711860932.jpg', NULL, '2024-03-30 21:55:32', '2024-03-30 21:55:32'),
(84, 34, '34-84-1711860932.jpg', NULL, '2024-03-30 21:55:32', '2024-03-30 21:55:32'),
(85, 35, '35-85-1711861016.jpg', NULL, '2024-03-30 21:56:56', '2024-03-30 21:56:56'),
(86, 35, '35-86-1711861016.jpg', NULL, '2024-03-30 21:56:56', '2024-03-30 21:56:56'),
(87, 36, '36-87-1711861088.jpg', NULL, '2024-03-30 21:58:08', '2024-03-30 21:58:08'),
(88, 36, '36-88-1711861088.jpg', NULL, '2024-03-30 21:58:08', '2024-03-30 21:58:08'),
(89, 37, '37-89-1711861156.jpg', NULL, '2024-03-30 21:59:16', '2024-03-30 21:59:16'),
(90, 37, '37-90-1711861156.jpg', NULL, '2024-03-30 21:59:16', '2024-03-30 21:59:16'),
(91, 38, '38-91-1711861232.jpg', NULL, '2024-03-30 22:00:32', '2024-03-30 22:00:32'),
(92, 38, '38-92-1711861233.jpg', NULL, '2024-03-30 22:00:33', '2024-03-30 22:00:33'),
(93, 39, '39-93-1711861289.jpg', NULL, '2024-03-30 22:01:29', '2024-03-30 22:01:29'),
(94, 39, '39-94-1711861290.jpg', NULL, '2024-03-30 22:01:30', '2024-03-30 22:01:30'),
(95, 40, '40-95-1711861346.jpg', NULL, '2024-03-30 22:02:26', '2024-03-30 22:02:26'),
(96, 40, '40-96-1711861347.jpg', NULL, '2024-03-30 22:02:27', '2024-03-30 22:02:27'),
(97, 41, '41-97-1711861462.jpg', NULL, '2024-03-30 22:04:22', '2024-03-30 22:04:22'),
(98, 41, '41-98-1711861462.jpg', NULL, '2024-03-30 22:04:22', '2024-03-30 22:04:22'),
(99, 42, '42-99-1711861517.jpg', NULL, '2024-03-30 22:05:17', '2024-03-30 22:05:17'),
(100, 42, '42-100-1711861517.jpg', NULL, '2024-03-30 22:05:17', '2024-03-30 22:05:17'),
(101, 43, '43-101-1711861567.jpg', NULL, '2024-03-30 22:06:07', '2024-03-30 22:06:07'),
(102, 43, '43-102-1711861567.jpg', NULL, '2024-03-30 22:06:07', '2024-03-30 22:06:07'),
(103, 44, '44-103-1711861641.jpg', NULL, '2024-03-30 22:07:21', '2024-03-30 22:07:21'),
(104, 44, '44-104-1711861642.jpg', NULL, '2024-03-30 22:07:22', '2024-03-30 22:07:22'),
(105, 45, '45-105-1711862232.jpg', NULL, '2024-03-30 22:17:12', '2024-03-30 22:17:12'),
(106, 45, '45-106-1711862232.jpg', NULL, '2024-03-30 22:17:12', '2024-03-30 22:17:12'),
(107, 46, '46-107-1711862274.jpg', NULL, '2024-03-30 22:17:54', '2024-03-30 22:17:54'),
(108, 46, '46-108-1711862274.jpg', NULL, '2024-03-30 22:17:54', '2024-03-30 22:17:54'),
(109, 47, '47-109-1711862330.jpg', NULL, '2024-03-30 22:18:50', '2024-03-30 22:18:50'),
(110, 47, '47-110-1711862330.jpg', NULL, '2024-03-30 22:18:50', '2024-03-30 22:18:50'),
(111, 48, '48-111-1711862382.jpg', NULL, '2024-03-30 22:19:42', '2024-03-30 22:19:42'),
(112, 48, '48-112-1711862383.jpg', NULL, '2024-03-30 22:19:43', '2024-03-30 22:19:43'),
(113, 49, '49-113-1711862440.jpg', NULL, '2024-03-30 22:20:40', '2024-03-30 22:20:40'),
(114, 49, '49-114-1711862441.jpg', NULL, '2024-03-30 22:20:41', '2024-03-30 22:20:41'),
(115, 50, '50-115-1711862500.jpg', NULL, '2024-03-30 22:21:40', '2024-03-30 22:21:40'),
(116, 50, '50-116-1711862500.jpg', NULL, '2024-03-30 22:21:40', '2024-03-30 22:21:40'),
(117, 51, '51-117-1711862564.jpg', NULL, '2024-03-30 22:22:44', '2024-03-30 22:22:44'),
(118, 51, '51-118-1711862564.jpg', NULL, '2024-03-30 22:22:44', '2024-03-30 22:22:44'),
(119, 52, '52-119-1711862635.jpg', NULL, '2024-03-30 22:23:55', '2024-03-30 22:23:55'),
(120, 52, '52-120-1711862636.jpg', NULL, '2024-03-30 22:23:56', '2024-03-30 22:23:56'),
(121, 53, '53-121-1711862799.jpg', NULL, '2024-03-30 22:26:39', '2024-03-30 22:26:39'),
(122, 53, '53-122-1711862799.jpg', NULL, '2024-03-30 22:26:39', '2024-03-30 22:26:39'),
(123, 54, '54-123-1711862872.jpg', NULL, '2024-03-30 22:27:52', '2024-03-30 22:27:52'),
(124, 54, '54-124-1711862872.jpg', NULL, '2024-03-30 22:27:52', '2024-03-30 22:27:52'),
(125, 55, '55-125-1711862923.jpg', NULL, '2024-03-30 22:28:43', '2024-03-30 22:28:43'),
(126, 55, '55-126-1711862923.jpg', NULL, '2024-03-30 22:28:43', '2024-03-30 22:28:43'),
(127, 56, '56-127-1711862989.jpg', NULL, '2024-03-30 22:29:49', '2024-03-30 22:29:49'),
(128, 56, '56-128-1711862989.jpg', NULL, '2024-03-30 22:29:49', '2024-03-30 22:29:49'),
(129, 57, '57-129-1712231004.jpg', NULL, '2024-04-04 04:43:24', '2024-04-04 04:43:24'),
(130, 57, '57-130-1712231004.jpg', NULL, '2024-04-04 04:43:24', '2024-04-04 04:43:24'),
(131, 58, '58-131-1712231056.jpg', NULL, '2024-04-04 04:44:16', '2024-04-04 04:44:16'),
(132, 58, '58-132-1712231056.jpg', NULL, '2024-04-04 04:44:16', '2024-04-04 04:44:16'),
(133, 59, '59-133-1712231105.jpg', NULL, '2024-04-04 04:45:05', '2024-04-04 04:45:05'),
(134, 59, '59-134-1712231105.jpg', NULL, '2024-04-04 04:45:05', '2024-04-04 04:45:05'),
(135, 60, '60-135-1712231156.jpg', NULL, '2024-04-04 04:45:56', '2024-04-04 04:45:56'),
(136, 60, '60-136-1712231156.jpg', NULL, '2024-04-04 04:45:56', '2024-04-04 04:45:56'),
(137, 61, '61-137-1712231211.jpg', NULL, '2024-04-04 04:46:51', '2024-04-04 04:46:51'),
(138, 61, '61-138-1712231212.jpg', NULL, '2024-04-04 04:46:52', '2024-04-04 04:46:52'),
(139, 62, '62-139-1712231254.jpg', NULL, '2024-04-04 04:47:34', '2024-04-04 04:47:34'),
(140, 62, '62-140-1712231254.jpg', NULL, '2024-04-04 04:47:34', '2024-04-04 04:47:34'),
(141, 63, '63-141-1712231301.jpg', NULL, '2024-04-04 04:48:21', '2024-04-04 04:48:21'),
(142, 63, '63-142-1712231301.jpg', NULL, '2024-04-04 04:48:21', '2024-04-04 04:48:21'),
(143, 64, '64-143-1712231357.jpg', NULL, '2024-04-04 04:49:17', '2024-04-04 04:49:17'),
(144, 64, '64-144-1712231357.jpg', NULL, '2024-04-04 04:49:17', '2024-04-04 04:49:17'),
(145, 65, '65-145-1712231413.jpg', NULL, '2024-04-04 04:50:13', '2024-04-04 04:50:13'),
(146, 65, '65-146-1712231413.jpg', NULL, '2024-04-04 04:50:13', '2024-04-04 04:50:13'),
(147, 66, '66-147-1712231461.jpg', NULL, '2024-04-04 04:51:01', '2024-04-04 04:51:01'),
(148, 66, '66-148-1712231461.jpg', NULL, '2024-04-04 04:51:01', '2024-04-04 04:51:01'),
(149, 67, '67-149-1712231514.jpg', NULL, '2024-04-04 04:51:54', '2024-04-04 04:51:54'),
(150, 67, '67-150-1712231514.jpg', NULL, '2024-04-04 04:51:54', '2024-04-04 04:51:54'),
(151, 68, '68-151-1712231566.jpg', NULL, '2024-04-04 04:52:46', '2024-04-04 04:52:46'),
(152, 68, '68-152-1712231566.jpg', NULL, '2024-04-04 04:52:46', '2024-04-04 04:52:46'),
(153, 69, '69-153-1712231672.jpg', NULL, '2024-04-04 04:54:32', '2024-04-04 04:54:32'),
(154, 69, '69-154-1712231672.jpg', NULL, '2024-04-04 04:54:32', '2024-04-04 04:54:32'),
(155, 70, '70-155-1712231727.jpg', NULL, '2024-04-04 04:55:27', '2024-04-04 04:55:27'),
(156, 70, '70-156-1712231728.jpg', NULL, '2024-04-04 04:55:28', '2024-04-04 04:55:28'),
(157, 71, '71-157-1712231773.jpg', NULL, '2024-04-04 04:56:13', '2024-04-04 04:56:13'),
(158, 71, '71-158-1712231773.jpg', NULL, '2024-04-04 04:56:13', '2024-04-04 04:56:13'),
(159, 72, '72-159-1712231816.jpg', NULL, '2024-04-04 04:56:56', '2024-04-04 04:56:56'),
(160, 72, '72-160-1712231816.jpg', NULL, '2024-04-04 04:56:56', '2024-04-04 04:56:56'),
(161, 73, '73-161-1712231862.jpg', NULL, '2024-04-04 04:57:42', '2024-04-04 04:57:42'),
(162, 73, '73-162-1712231862.jpg', NULL, '2024-04-04 04:57:42', '2024-04-04 04:57:42'),
(163, 74, '74-163-1712231913.jpg', NULL, '2024-04-04 04:58:33', '2024-04-04 04:58:33'),
(164, 74, '74-164-1712231913.jpg', NULL, '2024-04-04 04:58:33', '2024-04-04 04:58:33'),
(165, 75, '75-165-1712231966.jpg', NULL, '2024-04-04 04:59:26', '2024-04-04 04:59:26'),
(166, 75, '75-166-1712231966.jpg', NULL, '2024-04-04 04:59:26', '2024-04-04 04:59:26'),
(167, 76, '76-167-1712236431.jpg', NULL, '2024-04-04 06:13:51', '2024-04-04 06:13:51'),
(168, 76, '76-168-1712236431.jpg', NULL, '2024-04-04 06:13:51', '2024-04-04 06:13:51'),
(169, 77, '77-169-1712236477.jpg', NULL, '2024-04-04 06:14:37', '2024-04-04 06:14:37'),
(170, 77, '77-170-1712236477.jpg', NULL, '2024-04-04 06:14:37', '2024-04-04 06:14:37'),
(171, 78, '78-171-1712236529.jpg', NULL, '2024-04-04 06:15:29', '2024-04-04 06:15:29'),
(172, 78, '78-172-1712236529.jpg', NULL, '2024-04-04 06:15:29', '2024-04-04 06:15:29'),
(173, 79, '79-173-1712236576.jpg', NULL, '2024-04-04 06:16:16', '2024-04-04 06:16:16'),
(174, 79, '79-174-1712236576.jpg', NULL, '2024-04-04 06:16:16', '2024-04-04 06:16:16'),
(175, 80, '80-175-1712236657.jpg', NULL, '2024-04-04 06:17:37', '2024-04-04 06:17:37'),
(176, 80, '80-176-1712236657.jpg', NULL, '2024-04-04 06:17:37', '2024-04-04 06:17:37'),
(177, 81, '81-177-1712236708.jpg', NULL, '2024-04-04 06:18:28', '2024-04-04 06:18:28'),
(178, 81, '81-178-1712236708.jpg', NULL, '2024-04-04 06:18:28', '2024-04-04 06:18:28'),
(179, 82, '82-179-1712236755.jpg', NULL, '2024-04-04 06:19:15', '2024-04-04 06:19:15'),
(180, 82, '82-180-1712236755.jpg', NULL, '2024-04-04 06:19:15', '2024-04-04 06:19:15'),
(181, 83, '83-181-1712236804.jpg', NULL, '2024-04-04 06:20:04', '2024-04-04 06:20:04'),
(182, 83, '83-182-1712236805.jpg', NULL, '2024-04-04 06:20:05', '2024-04-04 06:20:05'),
(183, 84, '84-183-1712236863.jpg', NULL, '2024-04-04 06:21:03', '2024-04-04 06:21:03'),
(184, 84, '84-184-1712236863.jpg', NULL, '2024-04-04 06:21:03', '2024-04-04 06:21:03'),
(185, 85, '85-185-1712236911.jpg', NULL, '2024-04-04 06:21:51', '2024-04-04 06:21:51'),
(186, 85, '85-186-1712236911.jpg', NULL, '2024-04-04 06:21:51', '2024-04-04 06:21:51'),
(187, 86, '86-187-1712236955.jpg', NULL, '2024-04-04 06:22:35', '2024-04-04 06:22:35'),
(188, 86, '86-188-1712236955.jpg', NULL, '2024-04-04 06:22:35', '2024-04-04 06:22:35'),
(189, 87, '87-189-1712237011.jpg', NULL, '2024-04-04 06:23:31', '2024-04-04 06:23:31'),
(190, 87, '87-190-1712237011.jpg', NULL, '2024-04-04 06:23:31', '2024-04-04 06:23:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` double(3,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `username`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 51, 'John Doe', 'john@example.com', 'Produk mantap', 5.00, 0, '2024-06-12 05:11:34', '2024-06-12 05:11:34'),
(2, 39, 'John Doe', 'john@example.com', 'Produk mantap!!', 5.00, 0, '2024-06-12 05:15:29', '2024-06-12 05:15:29'),
(3, 51, 'Dimas Utama', 'dimas@gmail.com', 'Keren produknya', 4.00, 0, '2024-06-12 05:31:32', '2024-06-12 05:31:32'),
(4, 39, 'Josh', 'josh@example.com', 'pengiriman cepat', 4.00, 0, '2024-06-12 05:52:15', '2024-06-12 05:52:15'),
(5, 51, 'Josh', 'josh@example.com', 'pengiriman cepat', 4.00, 0, '2024-06-12 05:57:46', '2024-06-12 05:57:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '101', 15000.00, '2024-04-08 04:41:38', '2024-04-08 05:00:17'),
(2, 'rest_of_world', 200000.00, '2024-04-08 05:00:47', '2024-04-08 05:00:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(13, 'T-Shirt', 't-shirt', 1, 'No', 1, '2024-03-24 03:31:04', '2024-03-24 03:31:04'),
(14, 'Hoodie', 'hoodie', 1, 'No', 1, '2024-03-24 03:31:20', '2024-03-24 03:31:20'),
(17, 'Shirt', 'shirt', 1, 'No', 1, '2024-03-26 03:34:49', '2024-03-26 03:34:49'),
(18, 'Sweatshirt', 'sweatshirt', 1, 'No', 1, '2024-03-26 03:35:00', '2024-03-26 03:35:00'),
(19, 'Pants', 'pants', 1, 'No', 70, '2024-03-26 03:35:11', '2024-03-26 03:35:11'),
(20, 'Shorts', 'shorts', 1, 'No', 70, '2024-03-26 03:35:21', '2024-03-26 03:35:21'),
(21, 'Skirt', 'skirt', 1, 'No', 70, '2024-03-26 03:35:34', '2024-03-26 03:35:34'),
(22, 'Cardigan', 'cardigan', 1, 'No', 76, '2024-03-26 03:35:46', '2024-03-26 03:35:46'),
(23, 'Jacket', 'jacket', 1, 'No', 76, '2024-03-26 03:35:59', '2024-03-26 03:35:59'),
(24, 'Vest', 'vest', 1, 'No', 76, '2024-03-26 03:36:07', '2024-03-31 01:54:44'),
(25, 'Cap', 'cap', 1, 'No', 104, '2024-03-26 03:37:56', '2024-03-26 03:37:56'),
(26, 'Sock', 'sock', 1, 'No', 104, '2024-03-26 03:38:03', '2024-03-26 03:40:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@voguish.com', NULL, 2, 1, NULL, '$2y$10$7SrGOePUDGLcIfo6tW0OP.geNDmBaj8fiWwq6TKp2IgTI3AnnBzvi', NULL, '2024-03-21 02:49:03', '2024-06-03 07:45:43'),
(3, 'Dimas', 'dimas@gmail.com', '081282088013', 1, 1, NULL, '$2y$10$LxKtAIgJReaV2JFPqqSUHukt/Uu3qF.vcH0.enPvWbTGRNjTo4LE6', NULL, '2024-04-06 03:42:47', '2024-06-03 06:41:04'),
(4, 'John Doe', 'john@example.com', '1234567890', 1, 1, NULL, '$2y$10$ndXm8KEzyhoTQImZ72lFvuoOPKRtPWRI.38HFswW8XEijjiZgRm8u', NULL, '2024-04-06 04:06:45', '2024-06-11 07:02:10'),
(5, 'Mark Doe', 'mark@example.com', '1234567890', 1, 1, NULL, '$2y$10$RiOcOgDXZZDFQNrO7dA1AOWLV/Fdj4Upy.qf8/xyUOoMbHjYxd3Au', NULL, '2024-04-06 04:13:28', '2024-04-06 04:13:28'),
(6, 'James', 'james@example.com', '10101010101010', 1, 1, NULL, '$2y$10$Vw1E.5Nhb/ERjofRXMZGAemY1jfi.WEiN2DRhb2ychHSVCRFbh9Xy', NULL, '2024-04-08 06:17:45', '2024-04-08 06:17:45'),
(7, 'Josh', 'josh@example.com', '123123123', 1, 1, NULL, '$2y$10$uEcxvPPMGEqQ4jY8eBYv3ORXSdJ59WS2zPK/LrgGfKTobLivQKb2i', NULL, '2024-04-16 03:33:45', '2024-04-16 03:33:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(9, 4, 56, '2024-04-14 02:25:22', '2024-04-14 02:25:22'),
(10, 4, 43, '2024-04-14 02:28:57', '2024-04-14 02:28:57'),
(13, 4, 86, '2024-06-13 05:47:21', '2024-06-13 05:47:21'),
(14, 4, 84, '2024-06-13 05:47:40', '2024-06-13 05:47:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indeks untuk tabel `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT untuk tabel `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT untuk tabel `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
