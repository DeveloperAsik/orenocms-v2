-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2026 pada 13.09
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
(2, '002', 'superuser', '-', 2, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(3, '003', 'webmaster', '-', 3, 1, '', 0, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(4, '004', 'webmaster-appsec-spv', '-', 1, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(5, '005', 'webmaster-appsec-soc', '-', 2, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(6, '006', 'webmaster-appsec-spc', '-', 3, 2, '', 3, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(7, '007', 'officer', '-', 4, 1, '', 2, 0, 0, 0, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(8, '008', 'officer-sat', '-', 1, 2, '', 7, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26'),
(9, '009', 'officer-pentes', '-', 2, 2, '', 7, 1, 1, 1, 1, 1, '2025-12-24 05:00:26', 1, '2025-12-24 05:00:26');

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

--
-- Dumping data untuk tabel `tbl_a_uac_menu_p`
--

INSERT INTO `tbl_a_uac_menu_p` (`id`, `code`, `__name`, `__path`, `__icon`, `__level`, `__rank`, `__badge`, `__badge_value`, `__badge_id`, `__is_badge`, `__uac_menu_parent_id`, `__is_dashboard`, `__is_selected`, `__is_basic`, `__is_open`, `__is_disabled`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'olCjDyG9dcWcSRDcfNQu79HOIutcDt7C', 'Dashboard', '/javascript:;', 'icon-home', 1, 1, '-', '-', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, '2026-06-25 15:38:29', 0, '2026-06-25 15:38:29'),
(2, 'olCjDyG9dcWcSRDcfNQu79HOIutcDt7C', 'Masters', '/javascript:;', 'icon-puzzle', 2, 2, '-', '-', 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, '2026-06-25 15:39:53', 0, '2026-06-29 11:07:21'),
(3, 'olCjDyG9dcWcSRDcfNQu79HOIutcDt7C', 'Settings', '/javascript:;', 'icon-settings', 2, 0, '-', '-', 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, '2026-06-25 15:46:56', 0, '2026-06-25 15:46:56'),
(4, 'JXrOO11hvy83t9KoUnoOPDo35VVuF8nU', 'Prefferences', '/javascript:;', 'icon-briefcase', 2, 0, '-', '-', 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, '2026-06-25 15:47:46', 0, '2026-06-25 15:47:46'),
(5, 'uibIdnNI2D2fumJjBELQBfWjDAUGz1qj', 'Reports', '/javascript:;', 'icon-docs', 2, 0, '-', '-', 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, '2026-06-25 15:48:03', 0, '2026-06-25 15:48:03'),
(6, 'ayY6zDD2HwZamVGqIy4sFeJx1EjfCb8m', 'UAC', '/javascript:;', 'fa fa-folder icon-state-default', 3, 0, '-', '-', 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 16:51:00', 0, '2026-06-29 16:51:00'),
(7, 'RROfzJWwaGTXqJSt8NZEItnPf4kNL62v', 'User', '/javascript:;', 'fa fa-folder icon-state-default', 4, 0, '-', '-', 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 16:54:51', 0, '2026-06-29 16:54:51'),
(8, 'XXL6rvkS7K3vNFgXNQo4EWXzWo8xEzpP', 'Group', '/javascript:;', 'fa fa-folder icon-state-default', 4, 0, '-', '-', 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 16:55:16', 0, '2026-06-29 16:55:16'),
(9, 'syh3XDdzqIsKDZZoXX6ayY8vHZKLcDlg', 'Permission', '/javascript:;', 'fa fa-folder icon-state-default', 4, 0, '-', '-', 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 16:55:23', 0, '2026-06-29 16:55:23'),
(10, 'NV2nBToalALjnUhUUjlNgSlGtGMPoxFs', 'Menu', '/javascript:;', 'fa fa-folder icon-state-default', 4, 0, '-', '-', 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 16:55:31', 0, '2026-06-29 16:55:31'),
(11, 'pqNrL4OYxjLd8YhBTb1i2GUgdhEZcMH2', 'View', '/master/uac/users/view', 'fa fa-folder icon-state-default', 5, 1, '-', '-', 0, 0, 7, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 17:13:16', 0, '2026-06-29 17:58:05'),
(12, '8wZtpFuUnQUSLJv4seyqX1kg37i6E35F', 'Create', '/master/uac/users/create', 'fa fa-folder icon-state-default', 5, 2, '-', '-', 0, 0, 7, 0, 0, 1, 0, 0, 1, 0, '2026-06-29 17:15:29', 0, '2026-06-29 17:58:20'),
(13, '2Q5ka43RugVBVnhKgKLQHDIyPUjxsOv4', 'View', '/master/uac/groups/view', 'fa fa-folder icon-state-default', 5, 1, '-', '-', 0, 0, 8, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:05', 0, '2026-06-30 16:13:03'),
(14, 'dDNAQ3eKkDPx5PkRQu5dKp4KDdFWl4R3', 'Create', '/master/uac/groups/create', 'fa fa-folder icon-state-default', 5, 2, '-', '-', 0, 0, 8, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:10', 0, '2026-06-30 16:13:10'),
(15, 'qaea3J1dHfn3KIzAfI3FCyKBbhMtstRv', 'View', '/master/uac/permissions/view', 'fa fa-folder icon-state-default', 5, 1, '-', '-', 0, 0, 9, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:29', 0, '2026-06-30 16:12:40'),
(16, 'j4c1ldoklZUVCH1ElLIbOFpfSwOK4m17', 'Create', '/master/uac/permissions/create', 'fa fa-folder icon-state-default', 5, 2, '-', '-', 0, 0, 9, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:34', 0, '2026-06-30 16:12:51'),
(17, '9GYHwtJoSYigbQTnYYpjn7KSKjfbPZuF', 'Create', '/master/uac/menu/create', 'fa fa-folder icon-state-default', 5, 1, '-', '-', 0, 0, 10, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:41', 0, '2026-06-30 16:13:27'),
(18, 'BjmX4jFHkNdXHFRPMC5K1bLVyPEZ8zSd', 'List View', '/master/uac/menu/list-view', 'fa fa-folder icon-state-default', 5, 2, '-', '-', 0, 0, 10, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:51', 0, '2026-06-30 16:13:42'),
(19, 'MyLXoWLlMRY72VluP45HUHjeUxs5t1fY', 'Tree View', '/master/uac/menu/tree-view', 'fa fa-folder icon-state-default', 5, 3, '-', '-', 0, 0, 10, 0, 0, 1, 1, 0, 1, 0, '2026-06-29 17:47:59', 0, '2026-06-30 16:13:50');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_groups_p`
--
ALTER TABLE `tbl_a_uac_groups_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_menu_p`
--
ALTER TABLE `tbl_a_uac_menu_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
