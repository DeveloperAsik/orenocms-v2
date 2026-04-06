-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2026 at 03:05 PM
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
-- Database: `db_project_orenocms_app_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_a_app_contents_categories_c`
--

CREATE TABLE `tbl_a_app_contents_categories_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__element` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_a_app_contents_meta_c`
--

CREATE TABLE `tbl_a_app_contents_meta_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__meta_keyword` text NOT NULL,
  `__meta_description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_a_app_contents_p`
--

CREATE TABLE `tbl_a_app_contents_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__content_title` varchar(255) NOT NULL,
  `__content_icon` varchar(255) NOT NULL,
  `__content_raw` text NOT NULL,
  `__content_sanitize` text NOT NULL,
  `__uac_content_type_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_photo_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_category_id` int(32) NOT NULL DEFAULT 0,
  `__uac_content_meta_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_a_app_contents_photo_c`
--

CREATE TABLE `tbl_a_app_contents_photo_c` (
  `id` int(32) NOT NULL,
  `code` text NOT NULL,
  `__path` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_a_app_contents_types_c`
--

CREATE TABLE `tbl_a_app_contents_types_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__element` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_b_app_messages_attachments_c`
--

CREATE TABLE `tbl_b_app_messages_attachments_c` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__path` text NOT NULL,
  `__app_message_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_b_app_messages_p`
--

CREATE TABLE `tbl_b_app_messages_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__subject` varchar(255) NOT NULL,
  `__text` text NOT NULL,
  `__icon` varchar(255) NOT NULL,
  `__is_chat` tinyint(1) NOT NULL DEFAULT 0,
  `__is_mail` tinyint(1) NOT NULL DEFAULT 0,
  `__is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `__is_junk` tinyint(1) NOT NULL DEFAULT 0,
  `__is_trash` tinyint(1) NOT NULL DEFAULT 0,
  `__is_read_notif` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_b_app_messages_send_r`
--

CREATE TABLE `tbl_b_app_messages_send_r` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL DEFAULT '0',
  `__message_from` int(32) NOT NULL DEFAULT 0,
  `__message_to` int(32) NOT NULL DEFAULT 0,
  `__message_id` int(32) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_c_app_logs`
--

CREATE TABLE `tbl_c_app_logs` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__fraud_scan` text NOT NULL,
  `__ip_address` varchar(16) NOT NULL,
  `__browser` text NOT NULL,
  `__class` varchar(255) NOT NULL,
  `__method` varchar(255) NOT NULL,
  `__event` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_currency_p`
--

CREATE TABLE `tbl_d_app_assets_currency_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__rate` double NOT NULL,
  `__base_to` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_documents_p`
--

CREATE TABLE `tbl_d_app_assets_documents_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__content` mediumtext NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_documents_type_c`
--

CREATE TABLE `tbl_d_app_assets_documents_type_c` (
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
-- Table structure for table `tbl_d_app_assets_document_type_r`
--

CREATE TABLE `tbl_d_app_assets_document_type_r` (
  `id` int(32) NOT NULL,
  `__app_document_id` int(32) NOT NULL DEFAULT 0,
  `__app_document_type_id` int(32) NOT NULL DEFAULT 0,
  `is_acticve` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_icons_p`
--

CREATE TABLE `tbl_d_app_assets_icons_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__class` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_master_controller_p`
--

CREATE TABLE `tbl_d_app_assets_master_controller_p` (
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
-- Table structure for table `tbl_d_app_assets_master_form_method_p`
--

CREATE TABLE `tbl_d_app_assets_master_form_method_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__alias` varchar(255) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__description` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_master_method_p`
--

CREATE TABLE `tbl_d_app_assets_master_method_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__param` varchar(255) NOT NULL,
  `__method` varchar(5) NOT NULL,
  `__rank` tinyint(4) NOT NULL,
  `__description` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_shorten_url_p`
--

CREATE TABLE `tbl_d_app_assets_shorten_url_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__name` varchar(255) NOT NULL,
  `__value` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_smart_list_p`
--

CREATE TABLE `tbl_d_app_assets_smart_list_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__keyword` varchar(255) NOT NULL,
  `__value` varchar(255) NOT NULL,
  `__foreign_id` int(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(32) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(32) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_d_app_assets_web_params_p`
--

CREATE TABLE `tbl_d_app_assets_web_params_p` (
  `id` int(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `__keyword` varchar(255) NOT NULL,
  `__value1` text NOT NULL,
  `__value2` text NOT NULL,
  `__value3` text NOT NULL,
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
-- Indexes for table `tbl_a_app_contents_categories_c`
--
ALTER TABLE `tbl_a_app_contents_categories_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_a_app_contents_meta_c`
--
ALTER TABLE `tbl_a_app_contents_meta_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_a_app_contents_p`
--
ALTER TABLE `tbl_a_app_contents_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_a_app_contents_photo_c`
--
ALTER TABLE `tbl_a_app_contents_photo_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_a_app_contents_types_c`
--
ALTER TABLE `tbl_a_app_contents_types_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_b_app_messages_attachments_c`
--
ALTER TABLE `tbl_b_app_messages_attachments_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_b_app_messages_p`
--
ALTER TABLE `tbl_b_app_messages_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_b_app_messages_send_r`
--
ALTER TABLE `tbl_b_app_messages_send_r`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_c_app_logs`
--
ALTER TABLE `tbl_c_app_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_currency_p`
--
ALTER TABLE `tbl_d_app_assets_currency_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_documents_p`
--
ALTER TABLE `tbl_d_app_assets_documents_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_icons_p`
--
ALTER TABLE `tbl_d_app_assets_icons_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_master_controller_p`
--
ALTER TABLE `tbl_d_app_assets_master_controller_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_master_form_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_form_method_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_master_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_method_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_shorten_url_p`
--
ALTER TABLE `tbl_d_app_assets_shorten_url_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_smart_list_p`
--
ALTER TABLE `tbl_d_app_assets_smart_list_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_d_app_assets_web_params_p`
--
ALTER TABLE `tbl_d_app_assets_web_params_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_a_app_contents_categories_c`
--
ALTER TABLE `tbl_a_app_contents_categories_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_a_app_contents_meta_c`
--
ALTER TABLE `tbl_a_app_contents_meta_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_a_app_contents_p`
--
ALTER TABLE `tbl_a_app_contents_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_a_app_contents_photo_c`
--
ALTER TABLE `tbl_a_app_contents_photo_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_a_app_contents_types_c`
--
ALTER TABLE `tbl_a_app_contents_types_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_b_app_messages_attachments_c`
--
ALTER TABLE `tbl_b_app_messages_attachments_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_b_app_messages_p`
--
ALTER TABLE `tbl_b_app_messages_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_b_app_messages_send_r`
--
ALTER TABLE `tbl_b_app_messages_send_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_c_app_logs`
--
ALTER TABLE `tbl_c_app_logs`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_currency_p`
--
ALTER TABLE `tbl_d_app_assets_currency_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_documents_p`
--
ALTER TABLE `tbl_d_app_assets_documents_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_documents_type_c`
--
ALTER TABLE `tbl_d_app_assets_documents_type_c`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_document_type_r`
--
ALTER TABLE `tbl_d_app_assets_document_type_r`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_icons_p`
--
ALTER TABLE `tbl_d_app_assets_icons_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_master_controller_p`
--
ALTER TABLE `tbl_d_app_assets_master_controller_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_master_form_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_form_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_master_method_p`
--
ALTER TABLE `tbl_d_app_assets_master_method_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_shorten_url_p`
--
ALTER TABLE `tbl_d_app_assets_shorten_url_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_smart_list_p`
--
ALTER TABLE `tbl_d_app_assets_smart_list_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_d_app_assets_web_params_p`
--
ALTER TABLE `tbl_d_app_assets_web_params_p`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
