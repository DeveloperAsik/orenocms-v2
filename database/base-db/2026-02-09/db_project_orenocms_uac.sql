-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2026 pada 11.27
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
-- Database: `db_project_orenocms_uac`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `payload` text NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_groups_p`
--

CREATE TABLE `tbl_a_uac_groups_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__level` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `__uac_group_parent_id` int(32) NOT NULL,
  `__is_key_group` tinyint(1) NOT NULL DEFAULT 0,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_group_project` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_groups_p`
--

INSERT INTO `tbl_a_uac_groups_p` (`id`, `code`, `__name`, `__icon`, `__rank`, `__level`, `__description`, `__uac_group_parent_id`, `__is_key_group`, `__is_menu`, `__is_group_project`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '001', 'system', '-', 1, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(2, '002', 'superuser', '-', 2, 1, '', 0, 1, 1, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(3, '003', 'guest', '-', 3, 1, '', 0, 0, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_menu_p`
--

CREATE TABLE `tbl_a_uac_menu_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` text NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__level` int(4) NOT NULL,
  `__rank` int(4) NOT NULL,
  `__badge` varchar(255) NOT NULL,
  `__badge_value` varchar(255) NOT NULL,
  `__badge_id` int(32) NOT NULL DEFAULT 0,
  `__is_badge` tinyint(1) NOT NULL DEFAULT 0,
  `__uac_menu_parent_id` int(32) NOT NULL DEFAULT 0,
  `__is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `__is_head` tinyint(1) NOT NULL DEFAULT 0,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_open` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_menu_p`
--

INSERT INTO `tbl_a_uac_menu_p` (`id`, `code`, `__name`, `__path`, `__icon`, `__level`, `__rank`, `__badge`, `__badge_value`, `__badge_id`, `__is_badge`, `__uac_menu_parent_id`, `__is_dashboard`, `__is_head`, `__is_basic`, `__is_open`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '231321', 'Dashboard', 'extraweb/dashboard/', '<i class=\"icon-home\"></i>', 1, 1, '', '', 0, 0, 0, 1, 0, 1, 0, 1, 1, '2026-02-06 09:10:56', 1, '2026-02-06 09:10:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_modules_p`
--

CREATE TABLE `tbl_a_uac_modules_p` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__default_path` varchar(255) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_modules_p`
--

INSERT INTO `tbl_a_uac_modules_p` (`id`, `code`, `__alias`, `__name`, `__default_path`, `__rank`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '', 'cdn-static', 'CDN Static Files', 'cdn.static.files/v1/', 1, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(2, '', 'backend-api', 'Backend API', 'api/v1/', 2, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(3, '', 'backend-cms', 'Backend CMS', 'extraweb/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(4, '', 'frontend-application-home', 'Frontend Application Home', 'home/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53'),
(5, '', 'frontend-application-cdn', 'Frontend Application CDN', 'cdn/', 3, '-', 1, 1, '2025-12-24 05:02:53', 1, '2025-12-24 05:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_p`
--

CREATE TABLE `tbl_a_uac_permissions_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` varchar(255) NOT NULL,
  `__controller` varchar(255) NOT NULL,
  `__action` varchar(255) NOT NULL,
  `__method` varchar(255) NOT NULL,
  `__segment1` varchar(255) DEFAULT NULL,
  `__segment2` varchar(255) DEFAULT NULL,
  `__segment3` varchar(255) DEFAULT NULL,
  `__segment4` varchar(255) DEFAULT NULL,
  `__segment5` varchar(255) DEFAULT NULL,
  `__segment6` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_public` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_permissions_p`
--

INSERT INTO `tbl_a_uac_permissions_p` (`id`, `code`, `__alias`, `__name`, `__path`, `__controller`, `__action`, `__method`, `__segment1`, `__segment2`, `__segment3`, `__segment4`, `__segment5`, `__segment6`, `__description`, `__is_basic`, `__is_public`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '321redss', 'extraweb', 'extraweb', 'extraweb/', 'AuthentificationMD', 'handle', 'get', 'extraweb', 'null', 'null', 'null', 'null', '', 'route direct access to middleware', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(2, 'wewrewr123', 'extraweb-login', 'extraweb/login/', 'extraweb/login/', 'AppController', 'login', 'get', 'extraweb', 'login', 'null', 'null', 'null', '', 'logon page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(3, '324wr123', 'extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth/', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', 'null', 'null', 'null', '', 'validate page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(4, '324wr123', 'extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init/', 'AppController', '__init', 'post', 'extraweb', 'authentification', 'init', 'null', 'null', '', 'validate login page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(5, 'wewrewr123', 'extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard/', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', 'null', 'null', 'null', '', 'dashboard page', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(6, '333ewwr123', 'extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get/{param}', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', 'null', 'null', '', 'ajax action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(7, '756wr123', 'extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/{param}', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', 'null', 'null', '', 'ajax action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(8, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', '', 'users view action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(9, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', '', 'users get_list action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_users_p`
--

CREATE TABLE `tbl_a_uac_users_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__user_name` varchar(255) NOT NULL,
  `__user_ldap` varchar(255) NOT NULL,
  `__first_name` varchar(100) NOT NULL,
  `__last_name` varchar(155) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__phone_number` varchar(16) NOT NULL,
  `__password` text NOT NULL,
  `__salt` text NOT NULL,
  `__description` text NOT NULL,
  `__score` int(11) NOT NULL,
  `__uac_user_profile_id` int(32) NOT NULL,
  `__uac_user_registered_type_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_users_p`
--

INSERT INTO `tbl_a_uac_users_p` (`id`, `code`, `__user_name`, `__user_ldap`, `__first_name`, `__last_name`, `__email`, `__phone_number`, `__password`, `__salt`, `__description`, `__score`, `__uac_user_profile_id`, `__uac_user_registered_type_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '', 'system.core', '', 'system', 'core', 'system.core@orenocms.com', '08886137768', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(2, '', 'mobile.sys', '', 'mobile', 'sys', 'mobile.sys@orenocms.com', '08886137769', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(3, '', 'admin.web', '', 'admin', 'web', 'admin.web@orenocms.com', '08886137767', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_login_attempts_c`
--

CREATE TABLE `tbl_a_uac_user_login_attempts_c` (
  `id` int(32) NOT NULL,
  `__email` varchar(255) NOT NULL,
  `__pass_attempt` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__ip_address` varchar(32) NOT NULL,
  `__browser` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_profiles_c`
--

CREATE TABLE `tbl_a_uac_user_profiles_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__address` text NOT NULL,
  `__lat` varchar(255) NOT NULL,
  `__lng` varchar(255) NOT NULL,
  `__zoom` int(4) NOT NULL,
  `__socmed_fb` varchar(255) NOT NULL,
  `__socmed_tw` varchar(255) NOT NULL,
  `__socmed_ins` varchar(255) NOT NULL,
  `__socmed_lnkd` varchar(255) NOT NULL,
  `__photos` text NOT NULL,
  `__last_education` varchar(255) NOT NULL,
  `__last_education_institution` varchar(255) NOT NULL,
  `__skill` text NOT NULL,
  `__notes` text NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_registered_type_c`
--

CREATE TABLE `tbl_a_uac_user_registered_type_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_user_registered_type_c`
--

INSERT INTO `tbl_a_uac_user_registered_type_c` (`id`, `code`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '23ewrwe43242', 'system.auto.create', '', 1, 1, '2025-12-29 12:06:16', 1, '2025-12-29 12:06:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_token_c`
--

CREATE TABLE `tbl_a_uac_user_token_c` (
  `id` int(32) NOT NULL,
  `__token` text NOT NULL,
  `__device_id` varchar(255) NOT NULL,
  `__expiry_date` datetime NOT NULL,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__is_logged_in` tinyint(1) NOT NULL DEFAULT 0,
  `__is_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_a_uac_user_token_c`
--

INSERT INTO `tbl_a_uac_user_token_c` (`id`, `__token`, `__device_id`, `__expiry_date`, `__uac_group_id`, `__uac_user_id`, `__is_logged_in`, `__is_expiry`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUkdUbVZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJST1VrVkZNVlJXVWtaa01EbFZVbGhvVDFKRmJETlVNVkpxWkRBeFZWSlliRTVoYTFZMFZHdFNTbVF3T1ZWWk0yUk9Wa1ZWZUZSWWNFWmxSVEZ4VTFob1RsWkdSalZVVmxKR1pWVXhjVkZVVmxCV1JXd3pWREZTYW1Rd09WVmhla0pQVmtkek1WUnNVbFpPVlRsVlVWaG9VRlpIZERWVVdIQk9UVVUxVlZkVVZsQldSVVV3VkRGU2NrNUZNWEZoZWxaUFlXeFZlbFF3VWxwT1JUbFZZWHBDVDFaRlJURlVWM0JPWlVVeFZWWlVTazVXUlZWM1ZGZHdRazVWTlRaWk0yaE9Wa1pXTmxSV1VrWk5SVEZ4VVZSV1QyVnRUalJVVmxKeVRsVXhWVkpVVmxCV1JVWXpWRlZTY21WRk1WVlJWRlpPVmtWVmQxUlhjRUpPVlRVMlVWaG9UbFpGYkRWVVZsSkdUVVV4Y1ZGVVZrOWxhMFkwVkZaU1ZtVnJNVlZTV0d4T1lXdFdORlJyVWtwbFJURlZVMWhzVGxKSGN6RlVWM0JDVGxVMU5sRlVWbEJXUmtWNFZERlNjazFWTlZWaGVsWk9Va1ZWTVZReFVrcGxhemxWWVhwQ1QxWkhjekZVYkZKV1RsVTVWVkZZYUZCV1IzTjNWR3hTY2s1Vk1VVmFlbFpRVmtka00xUlZVbkpsVlRFMlVWUldUbUZyYkROVU1WSktaVlV4UlZGVVRrNVNSVVl6Vkcxd1JrNVZPVlZTV0hCT1ZrVlZNVlF4VWtabFJURnhVMWhrVGxKSGREVlVWVkpDWlVVeGNWRllaRTlsYldRelZGVlNjazVWTVVWUlZFNVFVa1ZHTTFSc1VuSk9WVGxWVjFSR1VGWkhkRE5VTVZKQ1pEQTVWVk5VVmxCV1JXdzBWRlZTUWs1Vk1VVlJXR1JQWlcxa00xUlZVbXBOYXpsVllYcFdUMUpGUmpOVU1GSnlUbFU1VlZSVVFrNVNSVVY2VkRCU1FtUXdOWEZTV0dST1VrVlZkMVF4VW5KbGF6RTJZWHBXVDFKR1ZURlVNVkpDWlVVeFJWRlVUbEJTUlVZelZHNXdibVF3TVVWVVdHUlFWa2QwTTFRd1VrWmxSVGxWWVROb1RsWkdSalZVVlZKQ1RUQTFjV0Y2Vms1V1JWWXpWRlZTUmsxRk1VVlJXR2hPWVd0R00xUnVjRzVrTURsVllUTnNUbEpIYzNwVVZWSnlUbFV4Y1ZSVVZsQldSMlExVkRGU2NrMXJOVlZoZWxaUFZrZHpNVlF4VWtabFJUbFZZVE5rVUZKSGN6RlVibkJhWkRBNVZWTlljRTVTUjNRMVZGZHdRazVWTVhGVFdHUk9Va2RPTTFSVlVrSk5hekZWWVhwV1RsWkZNVFJVVmxKeVRsVXhWVkpZYkU1aGEwWXpWREZTU21Rd01VVlNXR3hPVWtWRmVsUXdVa0prTURsVllUTmtUbEpIVFRCVVZWSkNUVlU1VldGNlZrOWhiRlV4VkRGU1FrNVZNVVZSVkZaT1lXMXpNVlJYY0Vaa01ERkZZVE5rVGxKRlJYcFVNRkpDWkRBMU5sZFVWbEJXUjNOM1ZGVlNRazVGT1ZWaGVsWk9aV3hHTTFSVlVtcE9SVEZGVVZSS1RsWkZSak5VVmxKU1RsVTVWVlJZY0ZCV1IzTjNWR3hTY2s1Vk1VVlNXR1JPVWtkTk1GUlZVa0pOTURsRlVWaGtUbVZyUlRGVU1WSkNUa1V4VlZKVVZsQldSVlkwVkd0U1NtUXdNVVZaZWtwUVZrZDBORlJXVWtKa01ERlZWVmhrVGxKRlZqVlVWVkpDVFRBNVJWRlVWbEJXUld3elZERlNhbVF3T1ZWaE0yeE9aVzF6TVZRd1VrcE9WVGxWVVZSU1VGWkhjM2RVYkZKeVRsVXhjVkpVVmxCV1JsVXhWRlpTUm1Rd05YRlJWRVU5XCJ9Ig.67KQYINbCZXiQ2dVshH-Y8Ccf3SjKzAM1hGlYP8et8g', '69895c952542c', '2026-02-09 15:06:05', 1, 1, 1, 0, 1, 1, '2026-01-22 16:41:24', 1, '2026-02-09 11:06:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_group_permissions_r`
--

CREATE TABLE `tbl_b_uac_group_permissions_r` (
  `id` int(32) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_group_permissions_r`
--

INSERT INTO `tbl_b_uac_group_permissions_r` (`id`, `__group_id`, `__permission_id`, `__module_id`, `__is_allowed`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(2, 1, 2, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(3, 1, 3, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(4, 1, 4, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(5, 1, 5, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(6, 1, 6, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(7, 1, 7, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(8, 1, 8, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(9, 1, 9, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_menu_permissions_r`
--

CREATE TABLE `tbl_b_uac_menu_permissions_r` (
  `id` int(32) NOT NULL,
  `__menu_id` int(32) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_group_c`
--

CREATE TABLE `tbl_b_uac_user_group_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__uac_user_id` int(32) NOT NULL DEFAULT 0,
  `__uac_group_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_user_group_c`
--

INSERT INTO `tbl_b_uac_user_group_c` (`id`, `code`, `__uac_user_id`, `__uac_group_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '32423qweq', 1, 1, 1, 1, '2026-01-05 08:51:27', 1, '2026-01-05 08:51:27'),
(2, 'e3weawea', 1, 2, 1, 1, '2026-01-05 08:51:27', 1, '2026-01-05 08:51:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_user_permissions_r`
--

CREATE TABLE `tbl_b_uac_user_permissions_r` (
  `id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_b_uac_user_permissions_r`
--

INSERT INTO `tbl_b_uac_user_permissions_r` (`id`, `__user_id`, `__permission_id`, `__is_denied`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(2, 1, 2, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(3, 1, 3, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(4, 1, 4, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(5, 1, 5, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(6, 1, 6, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(7, 1, 7, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(8, 1, 8, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(9, 1, 9, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_a_country_p`
--

CREATE TABLE `tbl_c_uac_location_a_country_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_b_provinces_p`
--

CREATE TABLE `tbl_c_uac_location_b_provinces_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_c_cities_p`
--

CREATE TABLE `tbl_c_uac_location_c_cities_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_d_districts_p`
--

CREATE TABLE `tbl_c_uac_location_d_districts_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` int(32) NOT NULL DEFAULT 0,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_e_areas_p`
--

CREATE TABLE `tbl_c_uac_location_e_areas_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `__country_id` int(32) NOT NULL DEFAULT 0,
  `__province_id` int(32) NOT NULL DEFAULT 0,
  `__city_id` int(32) NOT NULL DEFAULT 0,
  `__disctrict_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_login_attempts_c`
--
ALTER TABLE `tbl_a_uac_user_login_attempts_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_profiles_c`
--
ALTER TABLE `tbl_a_uac_user_profiles_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_registered_type_c`
--
ALTER TABLE `tbl_a_uac_user_registered_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_c_cities_p`
--
ALTER TABLE `tbl_c_uac_location_c_cities_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_d_districts_p`
--
ALTER TABLE `tbl_c_uac_location_d_districts_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_e_areas_p`
--
ALTER TABLE `tbl_c_uac_location_e_areas_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
