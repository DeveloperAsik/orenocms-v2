-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2026 pada 08.28
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
-- Database: `db_project_orenocms_uac_backup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `__is_selected` tinyint(1) NOT NULL DEFAULT 0,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_open` tinyint(1) NOT NULL DEFAULT 0,
  `__is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `__segment6` varchar(255) DEFAULT NULL,
  `__segment7` varchar(255) DEFAULT NULL,
  `__segment8` varchar(255) DEFAULT NULL,
  `__description` text NOT NULL,
  `__is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `__is_public` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_schemes_p`
--

CREATE TABLE `tbl_a_uac_permissions_schemes_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__title` varchar(255) NOT NULL,
  `__group_id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `__is_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(43) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(43) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_users_module_c`
--

CREATE TABLE `tbl_a_uac_users_module_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__user_id` int(32) NOT NULL,
  `__module_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `__uac_user_location_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_user_locations_p`
--

CREATE TABLE `tbl_a_uac_user_locations_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__country_id` int(32) NOT NULL,
  `__province_id` int(32) NOT NULL,
  `__city_id` int(32) NOT NULL,
  `__district_id` int(32) NOT NULL,
  `__area_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_b_uac_group_permissions_r`
--

CREATE TABLE `tbl_b_uac_group_permissions_r` (
  `id` int(32) NOT NULL,
  `__user_id` int(32) NOT NULL DEFAULT 0,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_a_country_p`
--

CREATE TABLE `tbl_c_uac_location_a_country_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__phone_ext` varchar(6) NOT NULL,
  `__initial` varchar(32) NOT NULL,
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
  `__initial` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__capital_city` varchar(255) NOT NULL,
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
  `__initial` varchar(32) NOT NULL,
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
  `__initial` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL DEFAULT '0',
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
  `__initial` varchar(32) NOT NULL,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_d_uac_installer_list_p`
--

CREATE TABLE `tbl_d_uac_installer_list_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(32) NOT NULL,
  `__subject` text NOT NULL,
  `__target_table` text NOT NULL,
  `__action` text NOT NULL,
  `__run_count` tinyint(1) NOT NULL DEFAULT 0,
  `__description` text NOT NULL,
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
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indeks untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_module_c`
--
ALTER TABLE `tbl_a_uac_users_module_c`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
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
-- Indeks untuk tabel `tbl_d_uac_installer_list_p`
--
ALTER TABLE `tbl_d_uac_installer_list_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_modules_p`
--
ALTER TABLE `tbl_a_uac_modules_p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_p`
--
ALTER TABLE `tbl_a_uac_permissions_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_module_c`
--
ALTER TABLE `tbl_a_uac_users_module_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_users_p`
--
ALTER TABLE `tbl_a_uac_users_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_locations_p`
--
ALTER TABLE `tbl_a_uac_user_locations_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_user_token_c`
--
ALTER TABLE `tbl_a_uac_user_token_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_menu_permissions_r`
--
ALTER TABLE `tbl_b_uac_menu_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_group_c`
--
ALTER TABLE `tbl_b_uac_user_group_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_user_permissions_r`
--
ALTER TABLE `tbl_b_uac_user_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

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

--
-- AUTO_INCREMENT untuk tabel `tbl_d_uac_installer_list_p`
--
ALTER TABLE `tbl_d_uac_installer_list_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
