-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2026 pada 10.44
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

--
-- Dumping data untuk tabel `tbl_a_uac_permissions_p`
--

INSERT INTO `tbl_a_uac_permissions_p` (`id`, `code`, `__alias`, `__name`, `__path`, `__controller`, `__action`, `__method`, `__segment1`, `__segment2`, `__segment3`, `__segment4`, `__segment5`, `__segment6`, `__segment7`, `__segment8`, `__description`, `__is_basic`, `__is_public`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '321redss', 'extraweb', 'extraweb', 'extraweb', 'AuthentificationMD', 'handle', 'get', 'extraweb', 'null', 'null', 'null', 'null', 'null', NULL, NULL, 'route direct access to middleware', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-18 17:21:03'),
(2, 'wewrewr123', 'extraweb-login', 'extraweb/login/', 'extraweb/login', 'AppController', 'login', 'get', 'extraweb', 'login', 'null', 'null', 'null', 'null', NULL, NULL, 'logon page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(3, 'wewrewr123', 'extraweb-logout', 'extraweb/logout/', 'extraweb/logout', 'AppController', 'logout', 'get', 'extraweb', 'logout', 'null', 'null', 'null', 'null', NULL, NULL, 'logout page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(4, 'wewrewr123', 'extraweb-forgot-password', 'extraweb/forgot-password/', 'extraweb/forgot-password', 'AppController', 'forgot_password', 'get', 'extraweb', 'forgot-password', 'null', 'null', 'null', 'null', NULL, NULL, 'forgot password page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(5, 'wewrewr123', 'extraweb-register', 'extraweb/register/', 'extraweb/register', 'AppController', 'register', 'get', 'extraweb', 'register', 'null', 'null', 'null', 'null', NULL, NULL, 'register page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(6, '324wr123', 'extraweb-validate-auth', 'extraweb/validate-auth/', 'extraweb/validate-auth', 'AppController', '__validate', 'post', 'extraweb', 'validate-auth', 'null', 'null', 'null', 'null', NULL, NULL, 'validate page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(7, '324wr123', 'extraweb-authentification-init', 'extraweb/authentification/init/', 'extraweb/authentification/init', 'AppController', '__init', 'post', 'extraweb', 'authentification', 'init', 'null', 'null', 'null', NULL, NULL, 'validate login page', 1, 1, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(8, 'wewrewr123', 'extraweb-dashboard', 'extraweb/dashboard/', 'extraweb/dashboard', 'AppController', 'dashboard', 'get', 'extraweb', 'dashboard', 'null', 'null', 'null', 'null', NULL, NULL, 'dashboard page', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2026-02-19 08:27:31'),
(9, '333ewwr123', 'extraweb-ajax-get', 'extraweb/ajax/get', 'extraweb/ajax/get/{param}', 'AjaxController', '__fn_ajax_get', 'get', 'extraweb', 'ajax', 'get', '{param}', 'null', 'null', NULL, NULL, 'ajax action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(10, '756wr123', 'extraweb-ajax-post', 'extraweb/ajax/post/', 'extraweb/ajax/post/{param}', 'AjaxController', '__fn_ajax_post', 'post', 'extraweb', 'ajax', 'post', '{param}', 'null', 'null', NULL, NULL, 'ajax action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(11, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/view', 'extraweb/master/uac/users/view', 'UserController', 'view', 'get', 'extraweb', 'master', 'uac', 'users', 'view', 'null', NULL, NULL, 'users view action get', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(12, '756wr123', 'extraweb-master-uac-users', 'extraweb/master/uac/users/get_list', 'extraweb/master/uac/users/get_list', 'UserController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'users', 'get_list', 'null', NULL, NULL, 'users get_list action post', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(13, 'aaaa000', 'extraweb-master-uac-users-edit', 'extraweb/master/uac/users/edit/{id}', 'extraweb/master/uac/users/edit/{id}', 'UserController', 'edit', 'get', 'extraweb', 'master', 'uac', 'users', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(14, 'aaaa000', 'extraweb-master-uac-users-update', 'extraweb/master/uac/users/update/{id}', 'extraweb/master/uac/users/update/{id}', 'UserController', 'update', 'post', 'extraweb', 'master', 'uac', 'users', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(15, 'aaaa000', 'extraweb-master-uac-users-create', 'extraweb/master/uac/users/create', 'extraweb/master/uac/users/create', 'UserController', 'create', 'get', 'extraweb', 'master', 'uac', 'users', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(16, 'aaaa000', 'extraweb-master-uac-users-insert', 'extraweb/master/uac/users/insert', 'extraweb/master/uac/users/insert', 'UserController', 'insert', 'post', 'extraweb', 'master', 'uac', 'users', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(17, 'aaaa000', 'extraweb-master-uac-users-delete', 'extraweb/master/uac/users/delete/{id}', 'extraweb/master/uac/users/delete/{id}', 'UserController', 'delete', 'get', 'extraweb', 'master', 'uac', 'users', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(18, 'aaaa000', 'extraweb-master-uac-users-remove', 'extraweb/master/uac/users/remove/{id}', 'extraweb/master/uac/users/remove/{id}', 'UserController', 'remove', 'get', 'extraweb', 'master', 'uac', 'users', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(19, 'aaaa000', 'extraweb-master-uac-groups-view', 'extraweb/master/uac/groups/view', 'extraweb/master/uac/groups/view', 'GroupsController', 'view', 'get', 'extraweb', 'master', 'uac', 'groups', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(20, 'aaaa000', 'extraweb-master-uac-groups-get_list', 'extraweb/master/uac/groups/get_list', 'extraweb/master/uac/groups/get_list', 'GroupsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'groups', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(21, 'aaaa000', 'extraweb-master-uac-groups-edit', 'extraweb/master/uac/groups/edit/{id}', 'extraweb/master/uac/groups/edit/{id}', 'GroupsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'groups', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(22, 'aaaa000', 'extraweb-master-uac-groups-update', 'extraweb/master/uac/groups/update/{id}', 'extraweb/master/uac/groups/update/{id}', 'GroupsController', 'update', 'post', 'extraweb', 'master', 'uac', 'groups', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(23, 'aaaa000', 'extraweb-master-uac-groups-create', 'extraweb/master/uac/groups/create', 'extraweb/master/uac/groups/create', 'GroupsController', 'create', 'get', 'extraweb', 'master', 'uac', 'groups', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(24, 'aaaa000', 'extraweb-master-uac-groups-insert', 'extraweb/master/uac/groups/insert', 'extraweb/master/uac/groups/insert', 'GroupsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'groups', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(25, 'aaaa000', 'extraweb-master-uac-groups-delete', 'extraweb/master/uac/groups/delete', 'extraweb/master/uac/groups/delete', 'GroupsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'groups', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(26, 'aaaa000', 'extraweb-master-uac-groups-remove', 'extraweb/master/uac/groups/remove/{id}', 'extraweb/master/uac/groups/remove/{id}', 'GroupsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'groups', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(27, 'aaaa000', 'extraweb-master-uac-menus-view', 'extraweb/master/uac/menus/view', 'extraweb/master/uac/menus/view', 'MenusController', 'view', 'get', 'extraweb', 'master', 'uac', 'menus', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(28, 'aaaa000', 'extraweb-master-uac-menus-get_list', 'extraweb/master/uac/menus/get_list', 'extraweb/master/uac/menus/get_list', 'MenusController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'menus', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(29, 'aaaa000', 'extraweb-master-uac-menus-edit', 'extraweb/master/uac/menus/edit/{id}', 'extraweb/master/uac/menus/edit/{id}', 'MenusController', 'edit', 'get', 'extraweb', 'master', 'uac', 'menus', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(30, 'aaaa000', 'extraweb-master-uac-menus-update', 'extraweb/master/uac/menus/update/{id}', 'extraweb/master/uac/menus/update/{id}', 'MenusController', 'update', 'post', 'extraweb', 'master', 'uac', 'menus', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(31, 'aaaa000', 'extraweb-master-uac-menus-create', 'extraweb/master/uac/menus/create', 'extraweb/master/uac/menus/create', 'MenusController', 'create', 'get', 'extraweb', 'master', 'uac', 'menus', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(32, 'aaaa000', 'extraweb-master-uac-menus-insert', 'extraweb/master/uac/menus/insert', 'extraweb/master/uac/menus/insert', 'MenusController', 'insert', 'post', 'extraweb', 'master', 'uac', 'menus', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(33, 'aaaa000', 'extraweb-master-uac-menus-delete', 'extraweb/master/uac/menus/delete/{id}', 'extraweb/master/uac/menus/delete/{id}', 'MenusController', 'delete', 'get', 'extraweb', 'master', 'uac', 'menus', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(34, 'aaaa000', 'extraweb-master-uac-menus-remove', 'extraweb/master/uac/menus/remove/{id}', 'extraweb/master/uac/menus/remove/{id}', 'MenusController', 'remove', 'get', 'extraweb', 'master', 'uac', 'menus', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(35, 'aaaa000', 'extraweb-master-uac-permission-view', 'extraweb/master/uac/permissions/view', 'extraweb/master/uac/permissions/view', 'PermissionsController', 'view', 'get', 'extraweb', 'master', 'uac', 'permissions', 'view', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(36, 'aaaa000', 'extraweb-master-uac-permission-get_list', 'extraweb/master/uac/permissions/get_list', 'extraweb/master/uac/permissions/get_list', 'PermissionsController', 'get_list', 'post', 'extraweb', 'master', 'uac', 'permissions', 'get_list', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(37, 'aaaa000', 'extraweb-master-uac-permission-edit', 'extraweb/master/uac/permissions/edit/{id}', 'extraweb/master/uac/permissions/edit/{id}', 'PermissionsController', 'edit', 'get', 'extraweb', 'master', 'uac', 'permissions', 'edit', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(38, 'aaaa000', 'extraweb-master-uac-permission-update', 'extraweb/master/uac/permissions/update/{id}', 'extraweb/master/uac/permissions/update/{id}', 'PermissionsController', 'update', 'post', 'extraweb', 'master', 'uac', 'permissions', 'update', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(39, 'aaaa000', 'extraweb-master-uac-permission-create', 'extraweb/master/uac/permissions/create', 'extraweb/master/uac/permissions/create', 'PermissionsController', 'create', 'get', 'extraweb', 'master', 'uac', 'permissions', 'create', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(40, 'aaaa000', 'extraweb-master-uac-permission-insert', 'extraweb/master/uac/permissions/insert', 'extraweb/master/uac/permissions/insert', 'PermissionsController', 'insert', 'post', 'extraweb', 'master', 'uac', 'permissions', 'insert', 'null', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(41, 'aaaa000', 'extraweb-master-uac-permission-delete', 'extraweb/master/uac/permissions/delete/{id}', 'extraweb/master/uac/permissions/delete/{id}', 'PermissionsController', 'delete', 'get', 'extraweb', 'master', 'uac', 'permissions', 'delete', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(42, 'aaaa000', 'extraweb-master-uac-permission-remove', 'extraweb/master/uac/permissions/remove/{id}', 'extraweb/master/uac/permissions/remove/{id}', 'PermissionsController', 'remove', 'get', 'extraweb', 'master', 'uac', 'permissions', 'remove', '{id}', NULL, NULL, '', 1, 0, 1, 1, '2025-12-29 11:53:44', 1, '2025-12-29 11:53:44'),
(43, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/create', 'extraweb/master/assets/test/create', 'TestController', 'create', 'get', 'extraweb', 'master', 'assets', 'test', 'create', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(44, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/edit/{id}', 'extraweb/master/assets/test/edit/{id}', 'TestController', 'edit', 'get', 'extraweb', 'master', 'assets', 'test', 'edit', '{id}', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(45, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/view', 'extraweb/master/assets/test/view', 'TestController', 'view', 'get', 'extraweb', 'master', 'assets', 'test', 'view', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(46, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/update/{id}', 'extraweb/master/assets/test/update/{id}', 'TestController', 'update', 'post', 'extraweb', 'master', 'assets', 'test', 'update', '{id}', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(47, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/insert', 'extraweb/master/assets/test/insert', 'TestController', 'insert', 'post', 'extraweb', 'master', 'assets', 'test', 'insert', '', '', '', '1', 1, 1, 1, 1, '2026-03-26 18:58:04', 1, '2026-03-26 18:58:04'),
(48, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/remove/{id}', 'extraweb/master/assets/test/remove/{id}', 'TestController', 'remove', 'get', 'extraweb', 'master', 'assets', 'test', 'remove', '{id}', '', '', '1', 1, 1, 0, 1, '2026-03-26 18:58:04', 1, '2026-03-26 20:58:16'),
(49, 'miJT7ISKYFWKaJfW7NHl', 'extraweb-master-assets-test', 'extraweb/master/assets/test/delete/{id}', 'extraweb/master/assets/test/delete/{id}', 'TestController', 'delete', 'get', 'extraweb', 'master', 'assets', 'test', 'delete', '{id}', '', '', '1', 1, 1, 0, 1, '2026-03-26 18:58:04', 1, '2026-03-26 20:56:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_a_uac_permissions_schemes_p`
--

CREATE TABLE `tbl_a_uac_permissions_schemes_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__title` varchar(255) NOT NULL,
  `__permission_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(43) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(43) NOT NULL,
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
(1, '21343rdw', 'system.core', '', 'system', 'core', 'system.core@orenocms.com', '08886137768', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(2, '3432dsa', 'mobile.sys', '', 'mobile', 'sys', 'mobile.sys@orenocms.com', '08886137769', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53'),
(3, '3435dsd', 'admin.web', '', 'admin', 'web', 'admin.web@orenocms.com', '08886137767', 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJjbVE9JmFtcDtkMjg9JmFtcDtjM009JmFtcDtVRUE9XCJ9Ig.MwivwTsUWo1TGivs8JsXI9JB_lYtqbvUPTXy5Hfq6jI', '', '', 1, 1, 1, 1, 1, '2025-12-29 12:04:53', 1, '2025-12-29 12:04:53');

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
(1, '', '699584f118594', '2026-02-18 16:39:16', 1, 1, 0, 1, 1, 1, '2026-01-22 16:41:24', 1, '2026-02-18 16:23:03'),
(2, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUlNUMlZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWTlliRTVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlZrOVNSVlkwVkd0U1NtUXdNVVZUVkZaT1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNibVZWT1ZWaGVrWlBWa2R6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZYUU1V1IzTXhWREZTY2s1Rk1VVmhlbFpPVmtWVk1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVU1WSktaREF4UlZrelpFNVNSVVkwVkd0U2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2R6ZDFSV1VrWk5SVEZ4VVZoa1RtRnRkRE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRsRlUxUldVRlpHVlhoVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZXak5rVUZaSGREUlVWbEp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBaV3RHTTFSVlVrWk5SVGxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFWVlZZYkU5a2VqQTVcIn0i.wemzB0XiRNtBe4NToorkHSyjhYkGvVA4cxHlTfgI624', '699588ea2f24f', '2026-02-18 22:54:27', 1, 1, 1, 0, 1, 1, '2026-02-18 16:54:27', 1, '2026-02-18 16:54:27'),
(3, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1WVk1YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVVZWSktaREE1VlZsNlRrNVdSVll6VkZkd1JtVkZPVlZoTTJoT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWM0JLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1VGWkhaRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSM014VkZkd1RrNVZPVlZSVkZaT1VrVkdOVlF4VWtKa01EVTJXbnBXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZZelZGVlNWazVWTVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGWVROc1VGWkhkRFZVVmxKQ1pEQTVWVkZZWkU1U1IwMHdWRlZTUWswd05YRmhlbFpPVWtka00xUlZVbFpOUlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZkWWFGQldSM041Vkd4U2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZReFVuSmxWVEUyWVhwV1RsSkhkRE5VVlZKS1RsVXhSVkZVVGxCU1IzTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVa0prTURWVllUTmtUbEpGYkRWVU1WSnlaV3N4TmxGWVpGQldSV3N4VkRGU1NtVkZNVVZSVkZaT1VrVkdNMVJ1Y0c1a01ERkZXWHBLVUZaSGRETlVNRkpDWkRBMVZWVlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVscE5WVGxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RUQXhObHA2Ums1YWVqQTVcIn0i.j_ifgevpGU8EVHhINSIEm2eeO9q4ineWqk3_eJ7Nsu8', '69965b954697a', '2026-02-19 13:38:52', 1, 1, 1, 0, 1, 1, '2026-02-19 07:38:52', 1, '2026-02-19 07:38:52'),
(4, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZNVlJYY0VKa01ERnhWRlJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFSV1VrcE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpPVWtkamVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFNVdSVlY0Vkcxd2NrNVZNVVZoZWxaUVZrWkZlRlF4VW5KbGF6bFZVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKeVpWVXhSVkZZYkU1bGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMllUTmtUbEpHVlRGVVZWSkNaVVV4Y1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZWVlJHVUZaSGRETlVNRkpxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZXTkZSV1VsWk5hemxWWVROa1VGWkhjekZVYTFKV1RsVTVWVlJVVms1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhSVlpZWkU5a2VqQTVcIn0i.MuJDAcECc9wNG7s1Rr8dd8oKZH1PySONpfG9cDGYuyw', '6997cf5c4c9a1', '2026-02-20 16:05:07', 1, 1, 1, 0, 1, 1, '2026-02-20 10:05:07', 1, '2026-02-20 10:05:07'),
(5, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhiWE14VkZkd1RtUXdNVVZoTTJ4T1VrVkdOVlJZY0VKa01EVTJXak5rVGxKRlZqVlVWVkpDWldzMVJWRllaRTlsYkd3elZGVlNWazVWT1ZWaGVrcFBWa2R6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JQVWtVd2VsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVVYzQk9UbFU1VlZGWWFFOWxiV041VkRCU1JtVkZNWEZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZReFVuSmxWVEUyVVZoa1VGWkZiRE5VVlZKS1pXc3hSVkZVVGxCU1JVWXpWRlpTU21Rd01VVlVWRUpPVWtWRmVsUnRjRUprTURWVllYcFdVRlpHYTNoVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVGxKRlJYZFVXSEJxVGtVMWNWb3paRTVTUldzeFZGVlNRbVZWTVRaaGVsWk9Va1ZWZWxRd1VscE9SVEZWVWxoc1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSVlpVUWs5YWVqQTVcIn0i.CH4dmAyTcsaGbHAioxoK1kBYZZHZBI3bsD2wRT1-Gtk', '699bb403b718e', '2026-02-23 15:05:46', 1, 1, 1, 0, 1, 1, '2026-02-23 09:05:46', 1, '2026-02-23 09:05:46'),
(6, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaHNUbUZyVmpSVU1WSnlaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrZGplbFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVhGVFdHaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVVWs5bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhhMVkwVkRGU2NrNVZPVlZWVkVKT1VrVkZNVlJYY0VabFJUVkZVMWhrVGxKR1ZYZFVWVkpDWlVVeFZWRllaRTlsYkdzeFZERlNRazVWTVVWUldHeE9ZV3RHTTFRd1VscE9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZYUU1V1IzTXhWREZTY2s1Rk1VVlJXR1JPWlcxak1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVU1WSktaREF4UlZSWVpFNVNSVVV4VkZWU1JtVkZNVVZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKeVpWVXhWVkpVUWs1aGEwWXpWR3hTVW1Rd01VVlNXR2hPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGYkRWVVZWSkNUa1UxY1dGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZXak5rVGxKRlJqWlVNRkp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazVWTVhGUldHUk9aV3RHTTFSVlVuSmtNREZWVWxoa1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhWVk5ZYkU5VlZEQTVcIn0i.0pFiPEjy2MQsxwFuHft9lx-N7xN9cCkjgxTFjxniXIE', '699d07ef90fae', '2026-02-24 16:12:25', 1, 1, 1, 0, 1, 1, '2026-02-24 10:12:25', 1, '2026-02-24 10:12:25'),
(7, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUldVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrWlZlVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWRlliRTVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVUms5aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxhMVkwVkRGU2NrNVZPVlZWVkVKT1VrVkZNVlJYY0dwT1JUVnhXbnBPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkd3elZGVlNWazVWTVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1QyVnRZM2xVTUZKQ1pEQTFObEZZYUU1V1IzTXhWREZTY21WVk1UWlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1JtVkZNVVZUV0dST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKeVpWVTFObHA2U2xCU1IwMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjRUprTURWVllUTmtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1Y2VkRCU1drNUZNVVZSVkU1T1VrVldORlF4VW5KT1ZUbFZVMWh3VGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZWVWxoa1RtRnJSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhObEpZY0ZCUlZEQTVcIn0i.PsAgNoXG9bNHprsEMk3DYip49Yxssq3Tqlf0dgs5tvE', '699e5049e7b1c', '2026-02-25 15:31:38', 1, 1, 1, 0, 1, 1, '2026-02-25 09:31:38', 1, '2026-02-25 09:31:38'),
(8, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlV3Vkc1d1JtVkZPVlZoTTJoT1ZrWldObFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpLWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKU1pWVXhWVkpVUms1bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV05WUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NrNVZPVlZWVkVKT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWswd05YRlJXR1JQWlcxa00xUlZVa1pOUlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVkwVkZkd2JrMHdPVlZoTTJST1VrZDBNMVF4VW5KT1JURnhVVmhrVDJWdFpETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWWVhwV1QxSkdSak5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZXWHBLVGxKRlJYcFVNRkpDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVrWmxWVGxGV1hwV1VGWkZSak5VTVZKQ1RsVTVWVm96YkU1U1JVVjZWREJTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RrVTFSVlpZYkU5YWVqQTVcIn0i.G6ZLKxxH5rFk5VZBeBEL3wDQ7WY7Y7bGdHbUjCHfUVU', '699fa58a09eeb', '2026-02-26 14:45:26', 1, 1, 1, 0, 1, 1, '2026-02-26 08:45:26', 1, '2026-02-26 08:45:26'),
(9, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVUWs1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJsQldSVVl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtKa01EVTJXbnBXVUZaRk1UWlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNUbVZyT1ZWaGVrcFBWa1ZHTTFSdWNHNWtNREZGV1hwS1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JQVWtVd2VsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlaREF4UlZkWWFFNVNSVVkwVkZkd1FtUXdPVlZoZWxaUVZrVkdOVlJWVWtKbGF6bEZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWTVZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhSVkZVVGxCU1IzTXhWRmh3VG1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRFMlZGUldVRlpHYTNoVVZWSkNUVEE1UlZGWVpFOWxiR3N4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZWbFJXVGxKRlJYZFVXSEJxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWUldHUlBZV3RXTTFSVlVrWmxWVEZGVVZSV1VGWkhjekZVVlZKS1pEQXhSVlJVVWxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSVnA2Ums1a2VqQTVcIn0i.v-3m2xg3GoyA2CVRHv7oDx5Xr8nLS5yVd2nlSOWINDE', '69af7d1ff1967', '2026-03-10 15:08:53', 1, 1, 1, 0, 1, 1, '2026-03-10 09:08:53', 1, '2026-03-10 09:08:53'),
(10, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hPVWtWc00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVWExSktaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrZHpNRlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVVmxCU1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0dwT1JUVnhXbnBPVUZKR2F6QlVNVkp5VFVVMVJWRllaRTlsYldNeFZERlNibVZWT1ZWaE0yeE9aVzF6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZVVmxCV1JURTJWREZTY2s1Rk1VVlJXR1JPWlcxa05GUldVbkpPVlRGRlVWaHNVRlpGUmpOVVYzQk9UbFU1VlZGWWFFNVNSVVkxVkZkd1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVTFObHA2U2xCU1IwMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRmVsUXdVbkpPVlRsRlUxUldVRlpGYkRaVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZXak5rVGxKRlJqWlVNRkpHWlVVNVZXRXpaRTVTUldzeFZGVlNRbVZWTVRaaGVsWk9Va1ZXTTFSVlVrcGxWVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0Y2VmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhSV0V6Y0U1UlZEQTVcIn0i.k6ym_ZdH0Upn1Cuub3JdCx3IhYQ_Hj4c2VyTR_el0Zw', '69b8b7d3afb26', '2026-03-17 15:09:30', 1, 1, 1, 0, 1, 1, '2026-03-17 09:09:30', 1, '2026-03-17 09:09:30'),
(11, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVll6VkRGU1JtVkZOVVZUV0doT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpLWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkZiRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlRsQlNSVVl6Vkd4U2NtUXdNVVZoZWxaT1VrVkdOVlF4VW1wT1JUVnhXak5rVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldRelZGVlNUbVF3T1ZWaGVrcFBWa1ZHTTFSWGNGWk9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWREZTY2s1Rk1VVlJXR1JPVmtac00xUlZVa1psVlRsVllUTndUMUpGUmpOVU1WSktaREF4UlZSWVpFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2ROTUZSVlVrSk5WVGxWVVZoa1VGWkhkRE5VVlZKS1RsVTFObHA2U2xCU1JVWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVa0prTURFMlVWUldVRlpHYTNoVVZWSkNaVlUxVldGNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZXak5rVGxKRlJqUlViWEJDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazVWTVhGUldHUk9aV3RGZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0Y2VmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1pXczFSVlJVUWs1UlZEQTVcIn0i.IGC8Yl0s-CYNQmllzdvaUXTbI9gr8ottBG9V7OmCkV8', '69bb0ddb29f71', '2026-03-19 09:43:40', 1, 1, 1, 0, 1, 1, '2026-03-19 03:43:40', 1, '2026-03-19 03:43:40'),
(12, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9VVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkdUbVZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVll6VkZkd1JtVkZNWEZUV0doT1ZrWldObFJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp1WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlZWVVdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1VGWkhaRFJVVmxKeVRsVXhWVkpVUms1bGExWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemNFOVNSM014VkZod2NtUXdNVVZaZWxKT1VrVkZlbFF3VWtKa01ERTJWRmhrVGxKSFRUQlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGVkZSU1RsSkZSVEZVVjNCeVRsVXhjVlJZWkU1U1JWWTFWREZTY2s1Rk1VVlJXR1JPVmtac00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVkwVkd0U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1V3ZDFReFVuSmxhemxWVVZoa1QyVnRaRE5VVlZKcVRrVXhSVkZZY0U1bGEwWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaV3N4TmxGWVpFNWxiV1F6VkZWU2NtVlZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZXak5rVGxKRlJqUlViWEJDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVrWk5SVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RUQTFWVmRZY0U5a2VqQTVcIn0i.xZRgHrvxQFBh8erM1qF9QA_RWTpi2zu9T7qGPfCt4-I', '69c510bcd94d0', '2026-03-26 23:56:37', 1, 1, 1, 0, 1, 1, '2026-03-26 17:56:37', 1, '2026-03-26 17:56:37'),
(13, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkNUbVZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlV3Vkc1d1JtVkZPVlZoTTJoT1ZrZHpNRlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKU1pWVXhWVkpVVmxCU1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZlbFF3VWtKa01ERnhWRlJPVUZKR2F6QlVNVkp5VFVVMVJWRllaRkJXUlVZelZGVlNUbVF3TVVWUldHaFBVa1ZHTTFSV1VrcGtNREZGVWxSQ1RsSkZSWHBVTUZKQ1pEQTVWVkZZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JQVWtVeE0xUlZVa1psVlRsVllUTndUMUpGUmpOVU1WSktUbFU1VlZSVVZrNVNSVVkwVkd0U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKcVRrVXhSVkZZYkU1bGJVMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRk1WUlZVa0prTURFMlVWaGtUbEpGVlhkVVZWSkNaVVV4Y1ZGWVpFNVdSa1l6VkZWU2FrNUZNVVZSVkZaT1VrVldORlF4VW5Ka01ERkZXWHBLVGxKRlJYZFVXSEJDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazVWTVhGaGVsWk9aVzEwTTFSVlVrWk5SVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RrVXhjVm96YkZCUlZEQTVcIn0i.u2OJrNsLYfrF_ZnZM_T-Wi_KlRUsCVZ5gAyYaWV-sXM', '69c5dd00e8ae2', '2026-03-27 14:28:28', 1, 1, 1, 0, 1, 1, '2026-03-27 08:28:28', 1, '2026-03-27 08:28:28'),
(14, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUldVRkpGVmpSVU1GSnFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrZHpNRlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVVmxCU1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtKa01ERTJWRmhrVGxKSFRUQlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNUbVF3TVVWUldHeE9ZVzF6TVZSWWNFNWtNREZGVkZSU1RsSkZSVEZVVjNCeVRsVXhjVlJZYUU1V1IzTXhWRlZTUWswd05YRlJXR1JPWVcxME0xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM041Vkd4U1FtUXdNWEZXV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhSVkZZY0U1bGEwWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURFMlVWaGtUbEpGYkRWVU1WSnlaV3N4TmxGWVpFNWxiV1F6VkZWU2NtVlZPVlZoTTJ4T1pXdFdORlF4VW5Ka01ERkZXWHBLVGxKRlJqVlVNVkpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVscE5WVEZGVVZoc1QxWkZSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFSVmt6Y0ZCVlZEQTVcIn0i.Tq8kKqLS6CrTS0vyioYRPVfjezT9PlhdMGEACjxoqWc', '69c6510cd94c4', '2026-03-27 22:47:39', 1, 1, 1, 0, 1, 1, '2026-03-27 16:47:39', 1, '2026-03-27 16:47:39'),
(15, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtaa01ERnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRlZTU21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1UlZsNlZsQldSVlkwVkRGU2NtUXdNVVZUVkZaT1VrVkZlbFF3VWtabFJUVkZVMVJPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNUazVWT1ZWaE0yeE9aVzF6TVZSWWNFNWtNREZGWVROc1RsSkZSalZVTVZKQ1pEQTVWVkZVVmxCV1JURTJWREZTY2sxRk5WVmhlbFpPVWtka00xUlZVa1psVlRsVllUTndUMUpGUmpOVWJuQnVUbFU1VlZSVVZrNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGSlBaVzF6TVZSV1VrWk9WVGxWVVZoa1RtRnRkRE5VVlZKcVRrVXhWVkpVUWs1aGJVMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRFMllYcFdVRlpGYkRaVU1WSnlaV3N4TmxGWVpGQldSV3d6VkZWU1NrNVZNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZWVlJHVUZaSGRETlVNRkpDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazB3T1VWaGVsWk9aVzEwTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhObFpZY0U1VlZEQTVcIn0i.L4Rp6zwYpnaubw23vsIlsUCXF9iCa5ID5xpGVS9U1w8', '69c9ef715dbdd', '2026-03-30 16:35:31', 1, 1, 1, 0, 1, 1, '2026-03-30 10:35:31', 1, '2026-03-30 10:35:31'),
(16, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkNUbVZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlkxVkZkd1JtVkZNWEZUV0doT1ZrZHpNVlJXVWtaa01ERnhVVlJXVDJWclJqUlVWbEpDWlZVeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlVWVVdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1QxWkZNVFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWRlZTU21Rd09WVlpNMlJPVmtWV00xUlhjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemFFNWxiWE14VkZkd1RtUXdNVVZoTTJ4T1VrVkdOVlJZY0dwT1JUVnhXbnBPVUZKR2F6QlVNVkp5VFVVMVJWRllaRTlsYldNeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFSV1VrcGtNREZGVWxSQ1VGWkhkRFZVVmxKQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JPWVcxME0xUlZVbFpOUlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZrelpFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZXTmxReFVuSmxWVEUyVVZoa1VGWkZiRE5VVlZKS1pXczFObHA2U2xCU1IwMHdWRzF3Yms1Vk9WVlZWRUpPVWtWRmVsUXdVbkpPVlRFMllUTmtUbEpHVlRGVVZWSkNaVVV4Y1ZGWVpFNVdSa1V4VkRGU1NtVkZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZWbFJXVGxKRlJqVlVNVkpDWkRBMVZWVlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBaV3RGZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RXczFWVm96YUU1a2VqQTVcIn0i.BaphEPif7PMsj9UlpgdaTqsQcEgcJFnuteDsOQRz_AY', '69cb9a15dbb8c', '2026-03-31 22:58:13', 1, 1, 1, 0, 1, 1, '2026-03-31 16:58:13', 1, '2026-03-31 16:58:13'),
(17, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWR3RTU21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSM014Vkcxd1ZtUXdNVVZTV0doT1VrVkdOVlJZY0VKa01EVTJXbnBPVUZKR2F6QlVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNRazVWTVVWUldHeE9ZVzF6TVZSdWNHNWtNREZGWVROc1VGWkhkRE5VTUZKeVRsVXhjVlJZWkU1U1IwMHdWRlZTUWsxVk9WVlJXR1JQVWtVeE0xUlZVa1pOUlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVY0Vkd0U1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFReFVuSk5helZWVVZoa1RsWkZWak5VVlZKS1pXc3hSVkZVVGxCU1IwMHdWRzF3Ym1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRGRllUTmtUbEpGYkRWVU1WSnlUVEE1UlZGWVpGQldSV3N4VkRGU1FrNUZPVlZoTTJ4T1pXdEdNMVJ1Y0c1a01ERkZWbFJXVGxKRlJYZFVXSEJDWkRBeFZWVlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVsWk5SVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVTFWVlJZWkU1a2VqQTVcIn0i.PSYHkKNp2wzO_MoXeWHCCj1O7m_m86UfbFTyPtEa10w', '69cca42d90a94', '2026-04-01 17:53:03', 1, 1, 1, 0, 1, 1, '2026-04-01 11:53:03', 1, '2026-04-01 11:53:03'),
(18, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hQVWtWc00xUXhVbXBOTURGVlVsUldVRlpGVmpSVVZWSktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrVkdOVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWVlliRTVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJrOVNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtabFJUVlZWMVJXVUZaR1ZYaFVWVkpDWlZVNVZWRllaRTlsYkdzeFZERlNRazVWTVZWU1ZFWlBZV3RHTTFSclVrNU9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWRlZTUWsxVk9WVlplbEpQWVcxa00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURnhZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWZDFSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhWVkpVUms5aGJYTXhWR3hTVm1Rd01VVlRWRlpPVWtWRmVsUnRjSEpPVlRGRllUTm9UbFpHVlhsVVZWSkNUVVV4Tm1GNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1a01ERkZWbFJXVDJWdFkzbFVNRkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6YkZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhObEpZWkZCVlZEQTVcIn0i.kBLFlFdKKN2gxU1uAxAvrxmqWIRMRzf0vsm8fPQlS6A', '69ce533b80cc4', '2026-04-03 00:31:09', 1, 1, 1, 0, 1, 1, '2026-04-02 18:31:09', 1, '2026-04-02 18:31:09'),
(19, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVmtac00xUXhVbXBOTURGVlVsUldVRlpGVmpSVU1WSnlaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEp1VFRBeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1ZWaE0yaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVk1GUnVjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01ERlZVMVJXVUZaRk1UWlVNRkpxVGxVNVZXRjZWazVTUlZZelZGVlNWazVWTVVWUldHeE9ZV3RHTTFSV1VrcE9WVGxWV2pOa1RsSkZSalJVVmxKeVRsVXhjVlJVVmxCV1JURTJWREZTY2s1Rk1VVmhlbFpRVmtaRmVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlaREF4UlZkWWFFNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKbFZUbFZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZZYUU1aGJYTXhWRmh3VGs1Rk5UWmhlbFpRVmtkME0xUldVa0prTURWVllUTmtUbEpGYkRWVVZWSkNaVVV4Y1dGNlZsQlNSVVl6VkZWU1JtVkZPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZXak5rVUZaSGN6RlVhMUpxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWUldHUlBZV3RXTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSVk5VVmxCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVXhWVkpVUms5YWVqQTVcIn0i.TBPiiBLwWFFf-_Yr9BULrywgjDnS7cMZF1JRSX_UBwA', '69e97fdb46826', '2026-04-23 15:11:56', 1, 1, 1, 0, 1, 1, '2026-04-23 09:11:56', 1, '2026-04-23 09:11:56'),
(20, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxRk1UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVWExSktaREE1VlZsNlRrNVdSVlV4VkRGU1JtVkZNWEZUV0doT1ZrWlZlVlJXVWtaTlJURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVhMUpPWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1QxWkdiRFJVVmxKeVRsVXhWVkpVUms5aGExWTBWR3RTU21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVJsQldSM014Vkcxd1ZtUXdNVVZTV0doT1VrVkdOVlJZY0VKa01ERlZVMVJXVUZaRk1UWlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNibVZWTVZWU1dHUlFWa1ZHTTFSWGNGWk9WVGxWV2pOa1RsSkZSalZVV0hCQ1pEQTVWVkZZWkU1U1IwMHdWRlZTUWswd05YRmhlbFpRVmtaR00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZGWWFFNVNSVVkwVkd0U1FtUXdNVlZUV0dST1VrZE5NRlJWVWtKbFJURlZZWHBXVG1WdGRETlVWVkpxVGtVeFJWRlljRTVTUjNNeFZGVlNibVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1pWTVZReFVuSk5helZWVVZoa1RsWkZWak5VVlZKS1pXc3hSVkZZYUU1aGJYTXhWRmh3VG1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRsRlUxaG9UbFpGUlRGVVZWSkNaVlUxVldGNlZsQlNSVVl6VkZWU1NtVnJNVVZSVkZaT1VrVkdNMVJ1Y0c1a01ERkZXWHBLVUZaSGN6RlVhMUpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9Va1ZXTTFSVlVrWk5SVEZGVVZob1RtRnJSak5VYm5CdVpEQXhSVkpZYUZCV1IzUTJWREZTUW1Rd05UWmFNMlJPVWtVeE0xUXhVbkprTURsRlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RWVXhSVkZZYkZCUlZEQTVcIn0i.boFgbBGo4yamc5r5HI5pTXJscG461UH8vcBSLGy2vyo', '69f9a3933e897', '2026-05-05 21:00:28', 1, 1, 1, 0, 1, 1, '2026-05-05 15:00:28', 1, '2026-05-05 15:00:28'),
(21, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd09WVlNXR2hPVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkp5WlVVeFZWRlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVVmxCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWJFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNWazVWT1ZWaGVrcFBWa2R6TVZSVlVuSmtNREZGVkZSU1VGWkhjM3BVYm5CQ1pEQTVWVkZVVmxCV1JURTJWREZTY2sxRk5WVlJXR1JQWlcxa00xUlZVa1psVlRsVllUTndUMUpGUmpOVWJuQnVaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZzTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURWVllYcFdVRlpHYTNoVU1WSnlaREE1VlZGWVpFNWxiV014VkRGU2FrMHdNVVZSVkZaT1VrZHpNVlJZY0U1T1ZUbFZWVlJHVGxKRlJYcFVNRkpDWkRBeFZWTlVWbEJXUlRCM1ZGVlNRazB3T1VWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVTFSVlJZY0ZCVlZEQTVcIn0i.7_0zxDmELORu6hU59UIA_PJRJSJE6s3X20R8i1V4GJE', '6a015e77b53f6', '2026-05-11 17:43:39', 1, 1, 1, 0, 1, 1, '2026-05-11 11:43:39', 1, '2026-05-11 11:43:39'),
(22, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hQVmtac00xUXhVbXBOTURGVlVsUlNUMlZyVmpSVU1WSnlaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrVnNOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1VWWk0yaE9Wa2R6TVZSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpZYkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFemNFOVNSM014VkZod2NrNVZPVlZVV0hCT1VrVkZNVlJYY0VKa01ERlZVMWhrVGxKSFRUQlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUbVZyT1ZWaGVrcFBWa1ZHTTFSV1VrcE9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY2sxRk5WVmhlbFpRVmtaR00xUlZVbkpsVlRsVllUTmtVRlpGUmpOVU1WSktUbFU1VlZSVVZrOWxiV041VkRCU1FtUXdOVVZVV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1V3ZDFReFVuSmxhemxWWVhwV1RtVnJNVE5VVlZKeVpWVXhSVkZZYUU1aGEwWXpWRzV3Yms1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMlZGUldVRlpHYTNoVVZWSkNaVVV4Y1dGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZWVlJHVUZaSGN6RlVhMUpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazVWTVhGaGVsWk9aVzF6ZWxRd1VscE9SVEZGVVZSQ1RtVnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVXhWVlZVUms1VlZEQTVcIn0i.I-KfBG4ABFJfrmwFQ0uJGFEXrqs7XXM_Q_hFo94SaZI', '6a02d35f63410', '2026-05-12 20:14:51', 1, 1, 1, 0, 1, 1, '2026-05-12 14:14:51', 1, '2026-05-12 14:14:51');
INSERT INTO `tbl_a_uac_user_token_c` (`id`, `__token`, `__device_id`, `__expiry_date`, `__uac_group_id`, `__uac_user_id`, `__is_logged_in`, `__is_expiry`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(23, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hRVWtkT00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVVZWSktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZOVVZUV0doT1ZrVkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa1ZHTlZSVlVuSk5NRFUyVWxob1QxSkZNVFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldGNlZrOVNSVlkwVkd0U1NtVkZNVlZUV0d4T1VrVkZNVlJYY0VabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRTlsYldNeFZERlNUazVWTVZWU1dHUlFWa2R6TVZSVlVuSmtNREZGVkZSU1RsSkZSVEZVVjNCQ1pEQTVWVkZZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JQVWtVeE0xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa2R6ZDFSV1VrWk5SVEZ4VWxob1RtRnJiRE5VVlZKeVpWVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRmVsUXdVbkpPVlRFMllUTm9UbFpGUlRGVU1WSnlaREE1VlZGWVpFNWxiV1F6VkZWU2NtVlZNVVZSVkZaT1VrVkdNMVJXVWtwa01ERkZWbFJXVGxKRlJYZFVXSEJDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RrVXhObFJVUWs5VlZEQTVcIn0i.Z99pOuCqdyFebnqBqkILo03XzJXecfRwFuneJFUUAbM', '6a031013cb3bf', '2026-05-13 00:33:45', 1, 1, 1, 0, 1, 1, '2026-05-12 18:33:45', 1, '2026-05-12 18:33:45'),
(24, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hRVmtkME0xUXhVbXBOTURGVlVsUkdUMkZyVmpSVWJGSmFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkdOVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZXRjZWazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1pWZVZSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkU1aGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVZrNVNSVVl6VkRGU1FtVkZNVlZoZWxaT1VrVkZNVlJYY0VKa01EVTJXak5rVGxKRlZqVlVWVkpDVGxVNVZWRllaRTlsYldRelZGVlNWazVWTVZWU1ZFWlBZVzF6TVZSVlVuSmtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1JWWTFWRlZTUWsxVk9WVlJXR1JPWld0Rk1WUXhVa3BsYXpsVllUTmtVRlpGUmpOVWJuQnVUbFU1VlZSVVZrNVNSVVY0Vkd0U1FtUXdPVVZYV0dST1VrVnJNVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2QwTTFSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKeVpWVXhSVkZVVGxCU1JVWXpWRlpTU21Rd01VVmhlbFpPVWtWRmVsUXdVa0prTURWVllUTm9UbFpHVlhsVU1WSnlaREE1VlZGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJXVWtwa01ERkZWbFJXVGxKRlJqWlVWVkp5VGxVeGNWUlVWbEJXUlVVeFZGVlNRazB3T1VWaGVsWk9aVzEwTTFSVlVsWk5SVEZGVVZSU1QyRnJSak5VVjNCeVpEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFWVlpZYUU5YWVqQTVcIn0i.IXK4a7Jj8HazxZN91ryYE_cGrPDEQiP3nuQU1irMHu4', '6a03e71a35128', '2026-05-13 15:55:16', 1, 1, 1, 0, 1, 1, '2026-05-13 09:55:16', 1, '2026-05-13 09:55:16'),
(25, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlV4VkRCU1JtVkZPVlZoTTJoT1ZrWkdObFJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1VGWkhkRFJVVmxKeVRsVXhWVkpVUWs1bGExWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVRsQlNSVVl6VkRGU1FtUXdNVVZaZWxKT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKRlZqVlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNUazVWT1ZWaE0yeE9aV3RHTTFSV1VrcGtNREZGVWxSQ1VGWkhkRE5VTUZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY21WVk1UWlNXR2hRVmtkME0xUlZVbkpsVlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZrelpGQldSM1EyVkRGU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2ROTUZSVlVrSk9WVEZGVVZoa1QyVnRaRE5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWRlpTU21Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRFMllYcFdVRlpGYkRaVVZWSkNaVVV4Y1ZGWVpFNVdSa1V4VkRGU1FrNUZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZVMWh3VGxaRlZURlVNVkpDWkRBNVZWTlVWbEJXUlVVeFZGVlNRazB3T1VWUldHUlBaV3RGTVZReFVrNU9WVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pVVXhjVlpVUWs1VlZEQTVcIn0i.k9hpcCqn1joxwY7XwJHljNzC7NwQHpASzNHxonXPglc', '6a0a93fdea1d9', '2026-05-18 17:25:41', 1, 1, 1, 0, 1, 1, '2026-05-18 11:25:41', 1, '2026-05-18 11:25:41'),
(26, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk1UWlNXR2hQVmtac00xUXhVbXBOTURGVlVsUldVRkpGVmpSVU1GSnFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkpPWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGT1ZWYU0yaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4VlZKWVpFNWhhMVkwVkRGU2NtVkZNVlZUV0d4T1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKSGRETlVNRkpxVGxVNVZXRjZWazVTUlZVeFZERlNUazVWT1ZWaE0yeE9aV3RHTTFSdWNHNWtNREZGV1hwS1RsSkZSalJVVmxKeVRsVXhjVlJZYUU1V1IzTXhWREZTY21WVk1UWlJXR1JPVmtWcmVsUXdVbHBPUlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFOWxiV041VkRCU1FtUXdNWEZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHaE9Wa1ZHTlZSV1VrWk9WVGxWVWxob1RtRnJiRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWREZTUWs1Rk5UWmhlbFpRVmtkME0xUldVbkpPVlRFMllYcFdVRlpGYkRaVVZWSkNUVEE1UlZGWVpFOWxiR3d6VkZWU1JtVkZPVlZoTTJ4T1pXdFdORlF4VW5KT1ZUbFZVMWh3VGxKRlJqUlVWM0JxVGtVMWNWb3paRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZWZWxRd1VscE9SVEZGVVZoc1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFSVmw2Ums5YWVqQTVcIn0i.s3-kciYviWTbmd1shyvdOkXJ2iymLyVe9BUztz0KNAQ', '6a0bcd4bec7fe', '2026-05-19 15:47:56', 1, 1, 1, 0, 1, 1, '2026-05-19 09:47:56', 1, '2026-05-19 09:47:56'),
(27, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUm1Rd01YRlNXR2hQVmtac00xUXhVbXBOTURGVlVsUkdUMkZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlYzVkZkd1JtVkZNWEZUV0doT1ZrVkZNVlJXVWtaT1ZUbFZVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVWVkpLWlVVeFZWWlVTazVTUjNONlZHNXdSbVZGTlZWWFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1VGSkhUalJVVmxKeVRsVXhWVkpZWkZCV1JWWTBWREZTY21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGVVRsQlNSVVl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKR1ZYZFVWVkpDWlVVeFZWRllaRTlsYkdzeFZERlNUazVWTVVWUlZFWlFWa1ZHTTFRd1VscE9WVGxWV2pOa1RsSkZSalZVV0hCeVRsVXhjVlJVVmxCV1JURTJWREZTY2sxRk5WVlJXR1JPVmtWc00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVWJuQnVaREF4UlZSWVpFNVNSVVY0Vkd0U1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va2ROTUZSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWR3hTVW1Rd01VVlNXR2hPVWtWRmVsUnRjSEpPVlRFMllUTmtUbEpHVlRGVVZWSkNUa1UxY1dGNlZsQlNSVVl6VkZWU1NtVnJPVlZoTTJ4T1pXMXpNVlJZY0U1T1ZUbFZWVlJHVGxKRlJqUlVWM0JDWkRBMU5scDZWbEJXUlVVeFZGVlNRazB3T1VWUldHUk9aV3RHTTFSVlVsWk5SVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1RVVXhjVlpVUms1a2VqQTVcIn0i.yleWqtVAwtk28f8ofS9fNZJ9fJGQeNprBLiYxSojioc', '6a0c107c9df39', '2026-05-19 20:25:53', 1, 1, 1, 0, 1, 1, '2026-05-19 14:25:53', 1, '2026-05-19 14:25:53'),
(28, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Rk5UWlNXR2hPWVd0c00xUXhVbXBOTURGVlVsaGtVRlpGVmpSVWExSktaREE1VlZsNlRrNVdSVlYzVkZod1JtVkZPVlZoTTJoT1ZrWkdOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNRkpxWlVVeFZWTlliRTVTUjNONlZHNXdSbVZGTVVWaE0yaE9Wa1pHTlZSVlVuSk5NRFUyVWxob1RtRnJiRFJVVmxKeVRsVXhWVkpVUWs1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVU1VldFelpGQlNSVlkwVkRGU2NtUXdNVVZWV0hCT1VrVkZlbFF3VW1wT1JUVnhXak5rVGxKSFRUQlVWVkpDVGxVNVZWRllaRkJXUlVVeFZERlNibVZWTVZWU1dHUlFWa1ZHTTFSWGNGWk9WVGxWV2pOa1VGWkhjM2hVYkZKeVRsVXhjVlJZWkU1U1JWWTFWREZTY21WVk1UWmhlbFpPVWtWV00xUlZVbXBPUlRsVllUTmtVRlpGUmpOVU1WSktaREF4UlZkWWFFNVNSVVV4VkZWU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1ZGWlFWa1ZGTUZSV1VrWk9WVGxWVVZoa1QxSkZNVE5VVlZKcVRrVTFObHA2U2xCU1JVWXpWRzV3Ym1Rd01VVmhlbFpPVWtWRk1WUlZVbkpPVlRsRlUxaG9UbFpGUlRGVVZWSkNaVlUxVldGNlZsQlNSVVV4VkRGU1ZrMVZPVlZoTTJ4T1pXdEdNMVJXVWtwT1ZUbFZVMWh3VUZaSGRETlVWbEpDWkRBMU5scDZWbEJXUlVVeFZGVlNRazVWTVhGUldHUlBZV3RXTTFSVlVuSmtNREZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pWVXhSV0V6YkU5UlZEQTVcIn0i.qAn4UzGvax4arUG_OOJNvZT5X8nYqlVIYQoWMlSRU0A', '6a0d41ff3e63b', '2026-05-20 18:09:24', 1, 1, 1, 0, 1, 1, '2026-05-20 12:09:24', 1, '2026-05-20 12:09:24'),
(29, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUmsxVk5YRlNXR2hQVWtWc00xUXhVbXBOTURGVlVsaGtUbUZyVmpSVU1GSnFaREE1VlZsNlRrNVdSVlY0Vkcxd1JtVkZPVlZoTTJoT1ZrZHpNVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlViRkphWlVVeFZWVlliRTVTUjNONlZHNXdSbVZGTVVWVFdHaE9Wa2RqZWxSVlVuSk5NRFUyVWxob1RsSkhkRFJVVmxKU1pWVXhWVkpVVmxCV1JWWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWFFNWhhMFl6VkRGU1FtUXdNVVZTV0d4T1VrVkZlbFF3VWtabFJUVlZWMWhrVGxKR1ZYZFVWVkpDVGxVNVZWRllaRkJXUlVZelZGVlNUbVF3T1ZWaGVrcFBWa1ZHTTFSWGNGWmtNREZGVWxSQ1VGWkhkRFZVVmxKQ1pEQTVWVkZVVmxCV1JURTJWRlZTUWsxVk9WVlJXR1JPWVcxek1WUXhVbFpOVlRGRlVWaHNVRlpGUmpOVVZsSlNaREF4UlZkWWFGQldSM1EyVkRGU1FtUXdNVlZTVkZaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZXTlZSVlVrSk9WVEZGVVZoa1RsWkZiRE5VVlZKcVRrVXhWVkpVUms5aGEwWXpWR3hTVW1Rd01VVmhlbFpPVWtWRk1WUlZVa0prTURFMlVWUldVRlpHYTNoVVZWSkNaVlUxVlZGWVpFNVdSa1V4VkRGU1NtVkZNVVZSVkZaT1VrZHpNVlJZY0U1a01ERkZWbFJXVGxKRlJqVlVNVkp5VGxVMVZWWllaRTVTUldzeFZGVlNRbVZGTlVWUldHUlBZV3RWTVZReFVrNU9WVEZGVVZob1RsWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKQ1RsVTFSVlJZWkU5VlZEQTVcIn0i.5qaLyEYKPhjUjHX_Yu1a3MuLAAFspOe58W2HX0zn4aU', '6a0e7135b83c5', '2026-05-21 15:43:05', 1, 1, 1, 0, 1, 1, '2026-05-21 09:43:05', 1, '2026-05-21 09:43:05'),
(30, 'IntcInR5cFwiOlwiSldUXCIsXCJhbGdcIjpcIkhTMjU2XCJ9Ig.IntcInZhbHVlXCI6XCJWRlpTUms1Vk9WVlNXR2hRVWtkT00xUXhVbXBOTURGVlVsUkNUbUZyVmpSVVYzQktaREE1VlZsNlRrNVdSVlY0VkZod1JtVkZPVlZoTTJoT1ZrVnNOVlJXVWtabFZURnhVVlJXVDJWclJqUlVWbEpXVFdzeFZWSlVRazVoYTBVeFZHNXdRbVZGTVZWV1dIQk9Wa1ZXTlZSWGNFWmxSVFZGVTFob1RsWkZiRFZVVlZKeVRsVXhjVkZVVms5bGEwVXhWREZTVWsxVk9WVmhla1pQVmtkek1WUlZVa1pPVlRsVlUxaHdUbVZzUlhoVWJYQnlUbFV4UlZwNlZsQldSMlExVkRGU2NrMXJOVlZaZWxKUFlXMWpNVlF4VWxKTlZURkZZVE5zVG1WclZqUlVNVkp5WlVVeFZWcDZUazVTUjNONlZHNXdSbVZGTlVWVFdHaE9Wa1ZzTlZSVlVuSk5NRFUyVWxob1QxSkZiRFJVVmxKeVRsVXhWVkpZYkU1aGExWTBWRmR3U21Rd09WVlpNMlJPVmtWVmVGUnRjRVpsUlRWRlUxaGtVRlpIVGpOVVZsSkdUVlV4TmxKWWFFNWhhMncwVkZaU1VtVlZNVlZTV0d4T1lXdEZNVlF4VWtwa01EbFZXVE5rVUZaSGMzZFViRkp5VGxVMVZWWlVWbEJXUlVZMFZERlNjbVZWTVRaaGVsWlBVa1pWTVZReFVsWk5WVGxWWVROa1RsWkhjekZVYTFKV1RsVTVWVkZVVWxCV1IzTXdWRlZTUWs1Vk1YRlVXR1JRVmtWc05WUlZVbkpsVlRGeFVWaGtUMlZyUmpOVVZWSmFaVVV4UlZGWWFFNWhhMFl6VkRGU1FtVkZNVlZoZWxaT1VrVkZlbFF3VWtKa01ERnhWRmhrVGxKR1ZYZFVNVkp5VFRBNVJWRllaRTlsYldNeFZERlNUazVWT1ZWaE0yeE9aVzF6TVZSWWNFNWtNREZGWVROc1RsSkZSalZVTVZKeVRsVXhjVlJZWkU1U1IwMHdWREZTY2s1Rk1VVmhlbFpPVWtWVk1WUXhVbFpOVlRGRlVWaHNVRlpGUmpOVU1WSnlUbFU1VlZGWWFFNVNSVVkwVkZkd1FtUXdPVlZoZWxaUVZrVkdOVlJWVWtKT1ZURkZVVmhrVDJWdFpETlVWVkpHWlZVNVZXRXpaRTVoYlhNeFZGZHdSbVZGTVZWaGVsWk9Wa1ZWZDFSWGNFSmtNRFUyVjFSV1VGWkZWalJVVlZKQ1pVVTFSVkZZWkU1V1JXd3pWRlZTYWs1Rk1VVmhlbFpPWVd0Rk1WUnVjRUpPVlRsVlUxaHdVRlpIY3pCVVYzQnlUbFUxY1ZaVVZsQldSbFV4VkRGU2NtVkZNVlZoZWxaT1VrZGpNVlF4VW1wTmF6RkZZVE5zVG1WclJURlVWM0JLWkRBNVZWTlliRTVTUlVWNlZGVlNRbVF3TlhGU1dHUk9Va1ZXTlZSVlVrSk9WVEZGVWxob1VGWkhkRE5VVlZKcVRrVXhSVkZZYkU1bGEwWXpWR3hTVWs1Vk9WVlplbEpPVWtWRmVsUXdVbkpPVlRFMllYcFdVRlpGYkRaVU1WSnlaV3N4TmxGWVpGQldSV3d6VkZWU1NrNVZPVlZoTTJ4T1pXdEdNMVJ1Y0c1T1ZUbFZXak5rVUZaSGRETlVWbEp5VGxVMVZWWllaRTVTUldzeFZGVlNRazVWT1ZWaGVsWk9Va1ZXTTFSVlVrWmxWVEZGVVZSV1VGWkhjekZVVlZKS1pEQXhSV0V6WkU1U1JVVjZWREJTUW1Rd01WVlRWRlpRVmtWR05WUXhVbkpsVlRGVlVsaG9VRlpIZERSVVZsSlNaVlV4UlZGVVRrOWhiWE14VkZaU1JtUXdNVVZTVkVKT1VrVkdORlJYY0VKa01EVTJXak5rVUZaSGREVlVWVkp5VFRBeFJXRjZWazVoYXpBeFZERlNibVZWT1ZWaE0yUlFVa2R6TVZSclVsWk9WVGxWVTFob1VGWkhjM2hVTVZKR1pEQXhjVkZVUWs1VlZEQTVcIn0i.MjOa3xifRbJCjq7gp1N2n90tsGj-C2uxwa7BM2DLV60', '6a0fcaca5bef5', '2026-05-22 16:20:41', 1, 1, 1, 0, 1, 1, '2026-05-22 10:20:41', 1, '2026-05-22 10:20:41');

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
(9, 1, 9, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(10, 1, 10, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(11, 1, 11, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(12, 1, 12, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(13, 1, 13, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(14, 1, 14, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(15, 1, 15, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(16, 1, 16, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(17, 1, 17, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(18, 1, 18, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(19, 1, 19, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(20, 1, 20, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(21, 1, 21, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(22, 1, 22, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(23, 1, 23, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(24, 1, 24, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(25, 1, 25, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(26, 1, 26, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(27, 1, 27, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(28, 1, 28, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(29, 1, 29, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(30, 1, 30, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(31, 1, 31, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(32, 1, 32, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(33, 1, 33, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(34, 1, 34, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(35, 1, 35, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(36, 1, 36, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(37, 1, 37, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(38, 1, 38, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(39, 1, 39, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(40, 1, 40, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(41, 1, 41, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(42, 1, 42, 3, 1, 1, 1, '2025-12-30 05:26:04', 1, '2025-12-30 05:26:04'),
(43, 1, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(44, 2, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(45, 3, 43, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(46, 1, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(47, 2, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(48, 3, 44, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(49, 1, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(50, 2, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(51, 3, 45, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(52, 1, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(53, 2, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(54, 3, 46, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(55, 1, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(56, 2, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(57, 3, 47, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(58, 1, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(59, 2, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(60, 3, 48, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(61, 1, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(62, 2, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(63, 3, 49, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(64, 1, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(65, 2, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(66, 3, 50, 3, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46');

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
(9, 1, 9, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(10, 1, 10, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(11, 1, 11, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(12, 1, 12, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(13, 1, 13, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(14, 1, 14, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(15, 1, 15, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(16, 1, 16, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(17, 1, 17, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(18, 1, 18, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(19, 1, 19, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(20, 1, 20, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(21, 1, 21, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(22, 1, 22, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(23, 1, 23, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(24, 1, 24, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(25, 1, 25, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(26, 1, 26, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(27, 1, 27, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(28, 1, 28, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(29, 1, 29, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(30, 1, 30, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(31, 1, 31, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(32, 1, 32, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(33, 1, 33, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(34, 1, 34, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(35, 1, 35, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(36, 1, 36, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(37, 1, 37, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(38, 1, 38, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(39, 1, 39, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(40, 1, 40, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(41, 1, 41, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(42, 1, 42, 0, 1, 1, '2026-01-05 08:53:00', 1, '2026-01-05 08:53:00'),
(43, 1, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(44, 2, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(45, 3, 43, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(46, 1, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(47, 2, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(48, 3, 44, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(49, 1, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(50, 2, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(51, 3, 45, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(52, 1, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(53, 2, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(54, 3, 46, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(55, 1, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(56, 2, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(57, 3, 47, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(58, 1, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(59, 2, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(60, 3, 48, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(61, 1, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(62, 2, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(63, 3, 49, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(64, 1, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(65, 2, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46'),
(66, 3, 50, 0, 1, 1, '2026-03-26 20:28:46', 1, '2026-03-26 20:28:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_a_country_p`
--

CREATE TABLE `tbl_c_uac_location_a_country_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__phone_ext` varchar(6) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_c_uac_location_a_country_p`
--

INSERT INTO `tbl_c_uac_location_a_country_p` (`id`, `code`, `__phone_ext`, `__name`, `__description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'idn', '+62', 'Indonesia', '', 1, 1, '2026-05-13 11:38:41', 1, '2026-05-13 11:38:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_c_uac_location_b_provinces_p`
--

CREATE TABLE `tbl_c_uac_location_b_provinces_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
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

--
-- Dumping data untuk tabel `tbl_c_uac_location_b_provinces_p`
--

INSERT INTO `tbl_c_uac_location_b_provinces_p` (`id`, `code`, `__name`, `__capital_city`, `__description`, `__country_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '11', 'Aceh', 'Banda Aceh', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(2, '51', 'Bali', 'Denpasar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(3, '36', 'Banten', 'Serang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(4, '17', 'Bengkulu', 'Bengkulu', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(5, '34', 'Daerah Istimewa Yogyakarta', 'Yogyakarta', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(6, '31', 'Daerah Khusus Ibukota Jakarta', 'DKI', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(7, '75', 'Gorontalo', 'Gorontalo', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(8, '15', 'Jambi', 'Jambi', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(9, '32', 'Jawa Barat', 'Bandung', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(10, '33', 'Jawa Tengah', 'Semarang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(11, '35', 'Jawa Timur', 'Surabaya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(12, '61', 'Kalimantan Barat', 'Pontianak', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(13, '63', 'Kalimantan Selatan', 'Banjarbaru', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(14, '62', 'Kalimantan Tengah', 'Palangka Raya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(15, '64', 'Kalimantan Timur', 'Samarinda', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(16, '65', 'Kalimantan Utara', 'Tanjung Selor', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(17, '19', 'Kepulauan Bangka Belitung', 'Pangkalpinang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(18, '21', 'Kepulauan Riau', 'Tanjungpinang 	', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(19, '81', 'Maluku', 'Ambon', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(20, '82', 'Maluku Utara', 'Sofifi', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(21, '52', 'Nusa Tenggara Barat', 'Mataram', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(22, '53', 'Nusa Tenggara Timur', 'Kupang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(23, '91', 'Papua', 'Jayapura', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(24, '92', 'Papua Barat', 'Manokwari', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(25, '96', 'Papua Barat Daya', 'Sorong', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(26, '95', 'Papua Pegunungan', 'Jayawijaya', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(27, '93', 'Papua Selatan', 'Salor', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(28, '94', 'Papua Tengah', 'Wanggar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(29, '14', 'Riau', 'Pekanbaru', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(30, '76', 'Sulawesi Barat', 'Mamuju', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(31, '73', 'Sulawesi Selatan', 'Makassar', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(32, '72', 'Sulawesi Tengah', 'Palu', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(33, '74', 'Sulawesi Tenggara', 'Kendari', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(34, '71', 'Sulawesi Utara', 'Manado', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(35, '13', 'Sumatera Barat', 'Padang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(36, '16', 'Sumatera Selatan', 'Palembang', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17'),
(37, '12', 'Sumatera Utara', 'Medan', '', 1, 1, 1, '2026-05-13 11:49:17', 1, '2026-05-13 11:49:17');

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
-- Indeks untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_a_uac_permissions_schemes_p`
--
ALTER TABLE `tbl_a_uac_permissions_schemes_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tbl_b_uac_group_permissions_r`
--
ALTER TABLE `tbl_b_uac_group_permissions_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_a_country_p`
--
ALTER TABLE `tbl_c_uac_location_a_country_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_c_uac_location_b_provinces_p`
--
ALTER TABLE `tbl_c_uac_location_b_provinces_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
