-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikonic-task`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ikonic-task', 'yes'),
(2, 'home', 'http://localhost/ikonic-task', 'yes'),
(3, 'blogname', 'Ikonic Task', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'baladiwahab25@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '12', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:136:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"Project/?$\";s:28:\"index.php?post_type=projects\";s:40:\"Project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:35:\"Project/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:27:\"Project/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=projects&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"vc_grid_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"vc_grid_item/([^/]+)/embed/?$\";s:45:\"index.php?vc_grid_item=$matches[1]&embed=true\";s:33:\"vc_grid_item/([^/]+)/trackback/?$\";s:39:\"index.php?vc_grid_item=$matches[1]&tb=1\";s:41:\"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&paged=$matches[2]\";s:48:\"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]\";s:37:\"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?vc_grid_item=$matches[1]&page=$matches[2]\";s:29:\"vc_grid_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"vc_grid_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"vc_grid_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:48:\"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:29:\"project-type/([^/]+)/embed/?$\";s:45:\"index.php?project_type=$matches[1]&embed=true\";s:41:\"project-type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?project_type=$matches[1]&paged=$matches[2]\";s:23:\"project-type/([^/]+)/?$\";s:34:\"index.php?project_type=$matches[1]\";s:35:\"Project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"Project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"Project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"Project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"Project/([^/]+)/embed/?$\";s:41:\"index.php?projects=$matches[1]&embed=true\";s:28:\"Project/([^/]+)/trackback/?$\";s:35:\"index.php?projects=$matches[1]&tb=1\";s:48:\"Project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:43:\"Project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:36:\"Project/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&paged=$matches[2]\";s:43:\"Project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&cpage=$matches[2]\";s:32:\"Project/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?projects=$matches[1]&page=$matches[2]\";s:24:\"Project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"Project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"Project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"Project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"copy-delete-posts/copy-delete-posts.php\";i:1;s:27:\"js_composer/js_composer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:\"C:\\xampp\\htdocs\\ikonic-task/wp-content/themes/wpbstarter/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'wpbstarter', 'yes'),
(41, 'stylesheet', 'wpbstarter', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:39:\"copy-delete-posts/copy-delete-posts.php\";a:2:{i:0;s:15:\"Account\\Account\";i:1;s:25:\"onUninstallPluginListener\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1719259301', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:7:{i:1703844103;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1703880103;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703880110;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703880112;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1704312176;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1704398503;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:1:{s:22:\"D2JgoyPewVPFb7YC4EHQQI\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bs6wmtZpRAIqWWAwx6uJyS7agVUeml.\";s:10:\"created_at\";i:1703768450;}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1703843083;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1703707401;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(131, '_site_transient_timeout_browser_9c1ce27f08b16479d2e17743062b28ed', '1704312110', 'no'),
(132, '_site_transient_browser_9c1ce27f08b16479d2e17743062b28ed', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"120.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_53fa02513e93f8d5b695fa686a20e650', '1704312111', 'no'),
(134, '_site_transient_php_check_53fa02513e93f8d5b695fa686a20e650', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'wpbstarter', 'yes'),
(157, 'theme_mods_wpbstarter', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary_menu\";i:14;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:7;s:19:\"blog_title_bg_color\";s:7:\"#1e73be\";}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(162, 'site_logo', '7', 'yes'),
(163, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703843086;s:7:\"checked\";a:2:{s:15:\"twentytwentytwo\";s:3:\"1.6\";s:10:\"wpbstarter\";s:6:\"1.1.10\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"wpbstarter\";a:6:{s:5:\"theme\";s:10:\"wpbstarter\";s:11:\"new_version\";s:6:\"1.1.10\";s:3:\"url\";s:40:\"https://wordpress.org/themes/wpbstarter/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/wpbstarter.1.1.10.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(164, 'recently_activated', 'a:2:{s:57:\"wp-dummy-content-generator/wp_dummy_content_generator.php\";i:1703709314;s:28:\"generate-dummy-posts/gdp.php\";i:1703708863;}', 'yes'),
(171, 'WPLANG', '', 'yes'),
(172, 'new_admin_email', 'baladiwahab25@gmail.com', 'yes'),
(179, 'wp_calendar_block_has_published_posts', '', 'yes'),
(191, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(193, '_cdp_review', 'a:2:{s:9:\"installed\";i:1703709214;s:5:\"users\";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(194, '_cdp_globals', 'a:1:{s:6:\"others\";a:14:{s:17:\"cdp-content-pages\";s:4:\"true\";s:17:\"cdp-content-posts\";s:4:\"true\";s:18:\"cdp-content-custom\";s:4:\"true\";s:17:\"cdp-display-posts\";s:4:\"true\";s:16:\"cdp-display-edit\";s:4:\"true\";s:17:\"cdp-display-admin\";s:4:\"true\";s:16:\"cdp-display-bulk\";s:4:\"true\";s:21:\"cdp-display-gutenberg\";s:4:\"true\";s:19:\"cdp-references-post\";s:5:\"false\";s:19:\"cdp-references-edit\";s:5:\"false\";s:18:\"cdp-premium-import\";s:5:\"false\";s:24:\"cdp-premium-hide-tooltip\";s:5:\"false\";s:26:\"cdp-premium-replace-domain\";s:5:\"false\";s:20:\"cdp-menu-in-settings\";s:5:\"false\";}}', 'yes'),
(195, '_cdp_profiles', 'a:1:{s:7:\"default\";a:25:{s:5:\"title\";s:4:\"true\";s:4:\"date\";s:5:\"false\";s:6:\"status\";s:5:\"false\";s:4:\"slug\";s:4:\"true\";s:7:\"excerpt\";s:4:\"true\";s:7:\"content\";s:4:\"true\";s:7:\"f_image\";s:4:\"true\";s:8:\"template\";s:4:\"true\";s:6:\"format\";s:4:\"true\";s:6:\"author\";s:4:\"true\";s:8:\"password\";s:4:\"true\";s:11:\"attachments\";s:5:\"false\";s:8:\"children\";s:5:\"false\";s:8:\"comments\";s:5:\"false\";s:10:\"menu_order\";s:4:\"true\";s:8:\"category\";s:4:\"true\";s:8:\"post_tag\";s:4:\"true\";s:8:\"taxonomy\";s:4:\"true\";s:8:\"nav_menu\";s:4:\"true\";s:13:\"link_category\";s:4:\"true\";s:12:\"all_metadata\";s:5:\"false\";s:5:\"names\";a:5:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:10:\"#[Counter]\";s:6:\"format\";s:1:\"1\";s:6:\"custom\";s:5:\"m/d/Y\";s:7:\"display\";s:7:\"Default\";}s:9:\"usmplugin\";s:5:\"false\";s:5:\"yoast\";s:5:\"false\";s:3:\"woo\";s:5:\"false\";}}', 'yes'),
(196, '_cdp_default_setup', '1', 'yes'),
(197, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:0:{}s:17:\"copy-delete-posts\";i:1703709214;}', 'yes'),
(198, '_tifm_force_disable_feature_update', '1', 'yes'),
(199, '_cdp_preselections', 'a:1:{i:1;s:7:\"default\";}', 'yes'),
(201, 'cdp_copy_logs_times', 'a:12:{i:0;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.49400901794433594;s:6:\"perOne\";d:0.49400901794433594;s:4:\"data\";i:1703709401;s:6:\"memory\";i:32828608;s:4:\"peak\";i:35651584;}i:1;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11357498168945312;s:6:\"perOne\";d:0.11357498168945312;s:4:\"data\";i:1703709394;s:6:\"memory\";i:32827936;s:4:\"peak\";i:35651584;}i:2;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11571693420410156;s:6:\"perOne\";d:0.11571693420410156;s:4:\"data\";i:1703709389;s:6:\"memory\";i:32826640;s:4:\"peak\";i:35651584;}i:3;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.09578895568847656;s:6:\"perOne\";d:0.09578895568847656;s:4:\"data\";i:1703709383;s:6:\"memory\";i:32825688;s:4:\"peak\";i:35651584;}i:4;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.09534001350402832;s:6:\"perOne\";d:0.09534001350402832;s:4:\"data\";i:1703709371;s:6:\"memory\";i:32825056;s:4:\"peak\";i:35651584;}i:5;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11218905448913574;s:6:\"perOne\";d:0.11218905448913574;s:4:\"data\";i:1703709365;s:6:\"memory\";i:32825600;s:4:\"peak\";i:35651584;}i:6;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.12784385681152344;s:6:\"perOne\";d:0.12784385681152344;s:4:\"data\";i:1703709362;s:6:\"memory\";i:32824840;s:4:\"peak\";i:35651584;}i:7;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.10137486457824707;s:6:\"perOne\";d:0.10137486457824707;s:4:\"data\";i:1703709356;s:6:\"memory\";i:32824336;s:4:\"peak\";i:35651584;}i:8;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11728906631469727;s:6:\"perOne\";d:0.11728906631469727;s:4:\"data\";i:1703709353;s:6:\"memory\";i:32822912;s:4:\"peak\";i:35651584;}i:9;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11655092239379883;s:6:\"perOne\";d:0.11655092239379883;s:4:\"data\";i:1703709345;s:6:\"memory\";i:32818176;s:4:\"peak\";i:35651584;}i:10;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.11468195915222168;s:6:\"perOne\";d:0.11468195915222168;s:4:\"data\";i:1703709342;s:6:\"memory\";i:32833792;s:4:\"peak\";i:35651584;}i:11;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.10911202430725098;s:6:\"perOne\";d:0.10911202430725098;s:4:\"data\";i:1703709339;s:6:\"memory\";i:32832744;s:4:\"peak\";i:35651584;}}', 'yes'),
(204, 'cdp_latest_slow_performance', '1', 'yes'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(243, 'category_children', 'a:0:{}', 'yes'),
(260, 'vc_version', '6.10.0', 'yes'),
(261, 'wpb_license_errors', 'a:0:{}', 'yes'),
(297, 'project_type_children', 'a:0:{}', 'yes'),
(313, 'recovery_mode_email_last_sent', '1703768450', 'yes'),
(318, '_site_transient_timeout_theme_roots', '1703844871', 'no'),
(319, '_site_transient_theme_roots', 'a:2:{s:15:\"twentytwentytwo\";s:7:\"/themes\";s:10:\"wpbstarter\";s:7:\"/themes\";}', 'no'),
(320, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(321, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":3,\"critical\":2}', 'yes'),
(323, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1703843088;s:8:\"response\";a:1:{s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":6:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:3:\"7.3\";s:6:\"plugin\";s:27:\"js_composer/js_composer.php\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:21:\"WPBakery Page Builder\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:39:\"copy-delete-posts/copy-delete-posts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/copy-delete-posts\";s:4:\"slug\";s:17:\"copy-delete-posts\";s:6:\"plugin\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:11:\"new_version\";s:5:\"1.4.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/copy-delete-posts/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/copy-delete-posts.1.4.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/copy-delete-posts/assets/icon-128x128.png?rev=2997966\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/copy-delete-posts/assets/banner-772x250.jpg?rev=2267040\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:5:\"1.4.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"js_composer/js_composer.php\";s:6:\"6.10.0\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1703707436:1'),
(4, 7, '_wp_attached_file', '2023/12/logo-color.png'),
(5, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:588;s:6:\"height\";i:120;s:4:\"file\";s:22:\"2023/12/logo-color.png\";s:8:\"filesize\";i:4913;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1703707456'),
(11, 9, '_wp_attached_file', '2023/12/wp_dummy_content_generator_8.jpg'),
(12, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:40:\"2023/12/wp_dummy_content_generator_8.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, 'wp_dummy_content_generator_attachment', 'true'),
(18, 11, '_wp_attached_file', '2023/12/wp_dummy_content_generator_10.jpg'),
(19, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_10.jpg\";s:8:\"filesize\";i:17154;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, 'wp_dummy_content_generator_attachment', 'true'),
(25, 13, '_wp_attached_file', '2023/12/wp_dummy_content_generator_12.jpg'),
(26, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_12.jpg\";s:8:\"filesize\";i:28880;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 13, 'wp_dummy_content_generator_attachment', 'true'),
(32, 15, '_wp_attached_file', '2023/12/wp_dummy_content_generator_14.jpg'),
(33, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_14.jpg\";s:8:\"filesize\";i:33995;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 15, 'wp_dummy_content_generator_attachment', 'true'),
(39, 17, '_wp_attached_file', '2023/12/wp_dummy_content_generator_16.jpg'),
(40, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_16.jpg\";s:8:\"filesize\";i:17154;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 17, 'wp_dummy_content_generator_attachment', 'true'),
(46, 19, '_wp_attached_file', '2023/12/wp_dummy_content_generator_18.jpg'),
(47, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_18.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 19, 'wp_dummy_content_generator_attachment', 'true'),
(53, 21, '_wp_attached_file', '2023/12/wp_dummy_content_generator_20.jpg'),
(54, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_20.jpg\";s:8:\"filesize\";i:17154;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 21, 'wp_dummy_content_generator_attachment', 'true'),
(60, 23, '_wp_attached_file', '2023/12/wp_dummy_content_generator_22.jpg'),
(61, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_22.jpg\";s:8:\"filesize\";i:32712;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 23, 'wp_dummy_content_generator_attachment', 'true'),
(67, 25, '_wp_attached_file', '2023/12/wp_dummy_content_generator_24.jpg'),
(68, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_24.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 25, 'wp_dummy_content_generator_attachment', 'true'),
(74, 27, '_wp_attached_file', '2023/12/wp_dummy_content_generator_26.jpg'),
(75, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_26.jpg\";s:8:\"filesize\";i:33004;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 27, 'wp_dummy_content_generator_attachment', 'true'),
(81, 29, '_wp_attached_file', '2023/12/wp_dummy_content_generator_28.jpg'),
(82, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_28.jpg\";s:8:\"filesize\";i:10218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 29, 'wp_dummy_content_generator_attachment', 'true'),
(88, 31, '_wp_attached_file', '2023/12/wp_dummy_content_generator_30.jpg'),
(89, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:41:\"2023/12/wp_dummy_content_generator_30.jpg\";s:8:\"filesize\";i:10460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 31, 'wp_dummy_content_generator_attachment', 'true'),
(92, 32, '_edit_last', '1'),
(93, 32, '_thumbnail_id', '31'),
(94, 32, '_edit_lock', '1703756009:1'),
(95, 33, '_wp_trash_meta_status', 'publish'),
(96, 33, '_wp_trash_meta_time', '1703709264'),
(137, 47, '_cdp_origin', '32'),
(138, 47, '_cdp_origin_site', '-1'),
(139, 47, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(140, 47, '_cdp_counter', '2'),
(141, 47, '_thumbnail_id', '31'),
(142, 48, '_cdp_origin', '32'),
(143, 48, '_cdp_origin_site', '-1'),
(144, 48, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(145, 48, '_cdp_counter', '3'),
(146, 48, '_thumbnail_id', '31'),
(147, 49, '_cdp_origin', '32'),
(148, 49, '_cdp_origin_site', '-1'),
(149, 49, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(150, 49, '_cdp_counter', '4'),
(151, 49, '_thumbnail_id', '31'),
(152, 50, '_cdp_origin', '32'),
(153, 50, '_cdp_origin_site', '-1'),
(154, 50, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(155, 50, '_cdp_counter', '5'),
(156, 50, '_thumbnail_id', '31'),
(157, 51, '_cdp_origin', '47'),
(158, 51, '_cdp_origin_site', '-1'),
(159, 51, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #2 #[Counter]'),
(160, 51, '_cdp_counter', '2'),
(161, 51, '_cdp_origin', '32'),
(162, 51, '_thumbnail_id', '31'),
(163, 52, '_cdp_origin', '48'),
(164, 52, '_cdp_origin_site', '-1'),
(165, 52, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #3 #[Counter]'),
(166, 52, '_cdp_counter', '2'),
(167, 52, '_cdp_origin', '32'),
(168, 52, '_thumbnail_id', '31'),
(169, 53, '_cdp_origin', '47'),
(170, 53, '_cdp_origin_site', '-1'),
(171, 53, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #2 #[Counter]'),
(172, 53, '_cdp_counter', '3'),
(173, 53, '_cdp_origin', '32'),
(174, 53, '_thumbnail_id', '31'),
(175, 54, '_cdp_origin', '32'),
(176, 54, '_cdp_origin_site', '-1'),
(177, 54, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(178, 54, '_cdp_counter', '4'),
(179, 54, '_thumbnail_id', '31'),
(180, 55, '_cdp_origin', '32'),
(181, 55, '_cdp_origin_site', '-1'),
(182, 55, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(183, 55, '_cdp_counter', '5'),
(184, 55, '_thumbnail_id', '31'),
(185, 56, '_cdp_origin', '32'),
(186, 56, '_cdp_origin_site', '-1'),
(187, 56, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #[Counter]'),
(188, 56, '_cdp_counter', '6'),
(189, 56, '_thumbnail_id', '31'),
(190, 57, '_cdp_origin', '55'),
(191, 57, '_cdp_origin_site', '-1'),
(192, 57, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #5 #[Counter]'),
(193, 57, '_cdp_counter', '2'),
(194, 57, '_cdp_origin', '32'),
(195, 57, '_thumbnail_id', '31'),
(196, 58, '_cdp_origin', '57'),
(197, 58, '_cdp_origin_site', '-1'),
(198, 58, '_cdp_origin_title', ' Why Lorem Ipsum Is Used? #5 #2 #[Counter]'),
(199, 58, '_cdp_counter', '2'),
(200, 58, '_cdp_origin', '55'),
(201, 58, '_cdp_origin', '32'),
(202, 58, '_thumbnail_id', '31'),
(203, 58, '_edit_last', '1'),
(204, 58, '_edit_lock', '1703756004:1'),
(205, 57, '_edit_last', '1'),
(206, 57, '_edit_lock', '1703755996:1'),
(207, 56, '_edit_last', '1'),
(208, 56, '_edit_lock', '1703755991:1'),
(209, 55, '_edit_lock', '1703755972:1'),
(210, 54, '_edit_lock', '1703755967:1'),
(211, 53, '_edit_lock', '1703756000:1'),
(212, 52, '_edit_lock', '1703756014:1'),
(213, 51, '_edit_lock', '1703755950:1'),
(214, 50, '_edit_lock', '1703755941:1'),
(215, 49, '_edit_lock', '1703755938:1'),
(216, 48, '_edit_lock', '1703755902:1'),
(217, 47, '_edit_lock', '1703755897:1'),
(218, 55, '_edit_last', '1'),
(219, 55, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(220, 54, '_edit_last', '1'),
(221, 54, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(222, 53, '_edit_last', '1'),
(223, 53, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(224, 52, '_edit_last', '1'),
(225, 52, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(226, 51, '_edit_last', '1'),
(227, 51, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(228, 50, '_edit_last', '1'),
(229, 50, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(230, 49, '_edit_last', '1'),
(231, 49, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(232, 48, '_edit_last', '1'),
(233, 48, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(234, 47, '_edit_last', '1'),
(235, 47, '_wp_old_slug', 'why-lorem-ipsum-is-used'),
(276, 59, '_wp_trash_meta_status', 'publish'),
(277, 59, '_wp_trash_meta_time', '1703711242'),
(278, 65, '_wp_trash_meta_status', 'publish'),
(279, 65, '_wp_trash_meta_time', '1703711401'),
(280, 66, '_edit_lock', '1703711965:1'),
(283, 68, '_edit_lock', '1703755184:1'),
(284, 68, '_edit_last', '1'),
(285, 68, '_wp_page_template', 'default'),
(286, 68, '_wpb_vc_js_status', 'true'),
(296, 68, '_wp_trash_meta_status', 'publish'),
(297, 68, '_wp_trash_meta_time', '1703758894'),
(298, 68, '_wp_desired_post_slug', 'projects'),
(299, 76, '_edit_lock', '1703761888:1'),
(300, 76, '_edit_last', '1'),
(301, 76, '_wp_page_template', 'kanye-quote.php'),
(302, 76, '_wpb_vc_js_status', 'false'),
(303, 76, '_wp_trash_meta_status', 'publish'),
(304, 76, '_wp_trash_meta_time', '1703762031'),
(305, 76, '_wp_desired_post_slug', '76-2'),
(306, 78, '_edit_lock', '1703776224:1'),
(307, 78, '_edit_last', '1'),
(308, 78, '_wp_page_template', 'default'),
(309, 78, '_wpb_vc_js_status', 'true'),
(310, 78, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(311, 81, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}'),
(312, 82, '_menu_item_type', 'post_type'),
(313, 82, '_menu_item_menu_item_parent', '0'),
(314, 82, '_menu_item_object_id', '78'),
(315, 82, '_menu_item_object', 'page'),
(316, 82, '_menu_item_target', ''),
(317, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 82, '_menu_item_xfn', ''),
(319, 82, '_menu_item_url', ''),
(321, 84, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(322, 85, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(323, 86, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(324, 87, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(325, 88, '_wpb_shortcodes_custom_css', '.vc_custom_1703767167001{padding-top: 80px !important;}.vc_custom_1703767167001{padding-top: 80px !important;}'),
(326, 90, '_menu_item_type', 'taxonomy'),
(327, 90, '_menu_item_menu_item_parent', '0'),
(328, 90, '_menu_item_object_id', '15'),
(329, 90, '_menu_item_object', 'project_type'),
(330, 90, '_menu_item_target', ''),
(331, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(332, 90, '_menu_item_xfn', ''),
(333, 90, '_menu_item_url', ''),
(334, 89, '_wp_trash_meta_status', 'publish'),
(335, 89, '_wp_trash_meta_time', '1703773374');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-12-27 20:01:43', '2023-12-27 20:01:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/ikonic-task/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-12-27 20:01:43', '2023-12-27 20:01:43', '', 0, 'http://localhost/ikonic-task/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-12-27 20:01:43', '2023-12-27 20:01:43', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/ikonic-task.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-12-27 20:01:43', '2023-12-27 20:01:43', '', 0, 'http://localhost/ikonic-task/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-12-27 20:01:45', '2023-12-27 20:01:45', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-12-27 20:01:45', '2023-12-27 20:01:45', '', 0, 'http://localhost/ikonic-task/2023/12/27/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2023-12-27 20:01:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-12-27 20:01:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/ikonic-task/?p=5', 0, 'post', '', 0),
(6, 1, '2023-12-27 20:04:16', '2023-12-27 20:04:16', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 20:03:56\"\n    },\n    \"wpbstarter::custom_logo\": {\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 20:04:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '049492d7-fc66-4fe5-b11a-d1969d931a30', '', '', '2023-12-27 20:04:16', '2023-12-27 20:04:16', '', 0, 'http://localhost/ikonic-task/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2023-12-27 20:04:02', '2023-12-27 20:04:02', '', 'logo-color', '', 'inherit', 'open', 'closed', '', 'logo-color', '', '', '2023-12-27 20:04:02', '2023-12-27 20:04:02', '', 0, 'http://localhost/ikonic-task/wp-content/uploads/2023/12/logo-color.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2023-12-27 20:28:00', '2023-12-27 20:28:00', '', 'wp_dummy_content_generator_8.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_8-jpg', '', '', '2023-12-27 20:28:00', '2023-12-27 20:28:00', '', 0, 'http://localhost/ikonic-task/minus-rerum-atque-temporibus-ut/wp_dummy_content_generator_8-jpg/', 0, 'attachment', 'image/jpg', 0),
(11, 1, '2023-12-27 20:28:01', '2023-12-27 20:28:01', '', 'wp_dummy_content_generator_10.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_10-jpg', '', '', '2023-12-27 20:28:01', '2023-12-27 20:28:01', '', 0, 'http://localhost/ikonic-task/repellendus-ipsum-nostrum-sunt-nam/wp_dummy_content_generator_10-jpg/', 0, 'attachment', 'image/jpg', 0),
(13, 1, '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 'wp_dummy_content_generator_12.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_12-jpg', '', '', '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 0, 'http://localhost/ikonic-task/amet-voluptas-libero-aut-iure-hic/wp_dummy_content_generator_12-jpg/', 0, 'attachment', 'image/jpg', 0),
(15, 1, '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 'wp_dummy_content_generator_14.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_14-jpg', '', '', '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 0, 'http://localhost/ikonic-task/quo-dolores-quo-dicta-rerum/wp_dummy_content_generator_14-jpg/', 0, 'attachment', 'image/jpg', 0),
(17, 1, '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 'wp_dummy_content_generator_16.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_16-jpg', '', '', '2023-12-27 20:28:03', '2023-12-27 20:28:03', '', 0, 'http://localhost/ikonic-task/aliquam-fuga-omnis-et/wp_dummy_content_generator_16-jpg/', 0, 'attachment', 'image/jpg', 0),
(19, 1, '2023-12-27 20:28:04', '2023-12-27 20:28:04', '', 'wp_dummy_content_generator_18.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_18-jpg', '', '', '2023-12-27 20:28:04', '2023-12-27 20:28:04', '', 0, 'http://localhost/ikonic-task/magni-et-laudantium-qui-architecto/wp_dummy_content_generator_18-jpg/', 0, 'attachment', 'image/jpg', 0),
(21, 1, '2023-12-27 20:28:05', '2023-12-27 20:28:05', '', 'wp_dummy_content_generator_20.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_20-jpg', '', '', '2023-12-27 20:28:05', '2023-12-27 20:28:05', '', 0, 'http://localhost/ikonic-task/eum-et-maxime-dolores-consequuntur/wp_dummy_content_generator_20-jpg/', 0, 'attachment', 'image/jpg', 0),
(23, 1, '2023-12-27 20:28:05', '2023-12-27 20:28:05', '', 'wp_dummy_content_generator_22.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_22-jpg', '', '', '2023-12-27 20:28:05', '2023-12-27 20:28:05', '', 0, 'http://localhost/ikonic-task/ad-ut-repudiandae-velit-debitis/wp_dummy_content_generator_22-jpg/', 0, 'attachment', 'image/jpg', 0),
(25, 1, '2023-12-27 20:28:06', '2023-12-27 20:28:06', '', 'wp_dummy_content_generator_24.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_24-jpg', '', '', '2023-12-27 20:28:06', '2023-12-27 20:28:06', '', 0, 'http://localhost/ikonic-task/esse-numquam-molestiae-consectetur/wp_dummy_content_generator_24-jpg/', 0, 'attachment', 'image/jpg', 0),
(27, 1, '2023-12-27 20:28:06', '2023-12-27 20:28:06', '', 'wp_dummy_content_generator_26.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_26-jpg', '', '', '2023-12-27 20:28:06', '2023-12-27 20:28:06', '', 0, 'http://localhost/ikonic-task/ducimus-fuga-nihil-harum-et/wp_dummy_content_generator_26-jpg/', 0, 'attachment', 'image/jpg', 0),
(29, 1, '2023-12-27 20:28:08', '2023-12-27 20:28:08', '', 'wp_dummy_content_generator_28.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_28-jpg', '', '', '2023-12-27 20:28:08', '2023-12-27 20:28:08', '', 0, 'http://localhost/ikonic-task/dolorem-et-et-sit-exercitationem-quasi/wp_dummy_content_generator_28-jpg/', 0, 'attachment', 'image/jpg', 0),
(31, 1, '2023-12-27 20:28:08', '2023-12-27 20:28:08', '', 'wp_dummy_content_generator_30.jpg', '', 'inherit', 'open', 'closed', '', 'wp_dummy_content_generator_30-jpg', '', '', '2023-12-27 20:28:08', '2023-12-27 20:28:08', '', 0, 'http://localhost/ikonic-task/et-odit-commodi-eveniet-eius/wp_dummy_content_generator_30-jpg/', 0, 'attachment', 'image/jpg', 0),
(32, 1, '2023-12-27 20:31:03', '2023-12-27 20:31:03', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Why Lorem Ipsum Is Used?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used', '', '', '2023-12-28 09:33:29', '2023-12-28 09:33:29', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=32', 0, 'projects', '', 0),
(33, 1, '2023-12-27 20:34:23', '2023-12-27 20:34:23', '{\n    \"wpbstarter::blog_title_bg_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 20:34:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ab7490a-89b0-4c0b-bebd-2a3c9497143e', '', '', '2023-12-27 20:34:23', '2023-12-27 20:34:23', '', 0, 'http://localhost/ikonic-task/3ab7490a-89b0-4c0b-bebd-2a3c9497143e/', 0, 'customize_changeset', '', 0),
(47, 1, '2023-12-27 20:45:04', '2023-12-27 20:45:04', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'How to Use OpenAI’s', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-11', '', '', '2023-12-28 09:31:35', '2023-12-28 09:31:35', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=47', 0, 'projects', '', 0),
(48, 1, '2023-12-27 20:44:47', '2023-12-27 20:44:47', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'How to Use Obsidian for', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-10', '', '', '2023-12-28 09:31:42', '2023-12-28 09:31:42', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=48', 0, 'projects', '', 0),
(49, 1, '2023-12-27 20:43:31', '2023-12-27 20:43:31', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'How to Install a Larger', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-9', '', '', '2023-12-28 09:32:15', '2023-12-28 09:32:15', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=49', 0, 'projects', '', 0),
(50, 1, '2023-12-27 20:43:19', '2023-12-27 20:43:19', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Specify Paragraph Count', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-8', '', '', '2023-12-28 09:32:21', '2023-12-28 09:32:21', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=50', 0, 'projects', '', 0),
(51, 1, '2023-12-27 20:43:09', '2023-12-27 20:43:09', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Visit Our Website', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-7', '', '', '2023-12-28 09:32:30', '2023-12-28 09:32:30', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=51', 0, 'projects', '', 0),
(52, 1, '2023-12-27 20:42:34', '2023-12-27 20:42:34', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Why Lorem Ipsum?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-6', '', '', '2023-12-28 09:33:34', '2023-12-28 09:33:34', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=52', 0, 'projects', '', 0),
(53, 1, '2023-12-27 20:39:51', '2023-12-27 20:39:51', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Who Can Use Lorem Ipsum?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-5', '', '', '2023-12-28 09:33:20', '2023-12-28 09:33:20', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=53', 0, 'projects', '', 0),
(54, 1, '2023-12-27 20:39:40', '2023-12-27 20:39:40', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'How Can I Use Lorem Ipsum Tool For My Website?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-4', '', '', '2023-12-28 09:32:47', '2023-12-28 09:32:47', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=54', 0, 'projects', '', 0),
(55, 1, '2023-12-27 20:39:14', '2023-12-27 20:39:14', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'How Lorem Ipsum Can Be Used?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-3', '', '', '2023-12-28 09:32:52', '2023-12-28 09:32:52', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=55', 0, 'projects', '', 0),
(56, 1, '2023-12-27 20:38:24', '2023-12-27 20:38:24', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Where can I get some?', '', 'publish', 'open', 'closed', '', 'why-lorem-ipsum-is-used-2', '', '', '2023-12-28 09:33:11', '2023-12-28 09:33:11', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=56', 0, 'projects', '', 0),
(57, 1, '2023-12-27 20:38:23', '2023-12-27 20:38:23', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Where does it come from?', '', 'publish', 'open', 'closed', '', 'where-does-it-come-from', '', '', '2023-12-28 09:33:16', '2023-12-28 09:33:16', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=57', 0, 'projects', '', 0),
(58, 1, '2023-12-27 20:38:21', '2023-12-27 20:38:21', 'It helps the designer plan where the content will sit. It helps in creating drafts of the content on the pages of the website. It originates from the Latin text but is seen as gibberish.\r\n\r\nSometimes, the reader gets distracted while creating or working on the website. That’s why this language is important.\r\n\r\nThis tool makes the work easier for the webmaster.', 'Why do we use it?', '', 'publish', 'open', 'closed', '', 'why-do-we-use-it', '', '', '2023-12-28 09:33:24', '2023-12-28 09:33:24', '', 0, 'http://localhost/ikonic-task/?post_type=projects&#038;p=58', 0, 'projects', '', 0),
(59, 1, '2023-12-27 21:07:22', '2023-12-27 21:07:22', '{\n    \"wpbstarter::nav_menu_locations[primary_menu]\": {\n        \"value\": -7314860162384179000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu[-7314860162384179000]\": {\n        \"value\": {\n            \"name\": \"Main menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu_item[-3403690052914231300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"projects\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type_archive\",\n            \"title\": \"Project Archives\",\n            \"url\": \"http://localhost/ikonic-task/Project/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Project Archives\",\n            \"nav_menu_term_id\": -7314860162384179000,\n            \"_invalid\": false,\n            \"type_label\": \"Post Type Archive\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu_item[-1226172656669909000]\": {\n        \"value\": {\n            \"object_id\": 47,\n            \"object\": \"projects\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"How to Use OpenAI\\u2019s\",\n            \"url\": \"http://localhost/ikonic-task/Project/why-lorem-ipsum-is-used-11/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"How to Use OpenAI\\u2019s\",\n            \"nav_menu_term_id\": -7314860162384179000,\n            \"_invalid\": false,\n            \"type_label\": \"Project Item\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu_item[-4167873715590076400]\": {\n        \"value\": {\n            \"object_id\": 48,\n            \"object\": \"projects\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"How to Use Obsidian for\",\n            \"url\": \"http://localhost/ikonic-task/Project/why-lorem-ipsum-is-used-10/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"How to Use Obsidian for\",\n            \"nav_menu_term_id\": -7314860162384179000,\n            \"_invalid\": false,\n            \"type_label\": \"Project Item\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu_item[-7609008053191754000]\": {\n        \"value\": {\n            \"object_id\": 49,\n            \"object\": \"projects\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"How to Install a Larger\",\n            \"url\": \"http://localhost/ikonic-task/Project/why-lorem-ipsum-is-used-9/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"How to Install a Larger\",\n            \"nav_menu_term_id\": -7314860162384179000,\n            \"_invalid\": false,\n            \"type_label\": \"Project Item\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    },\n    \"nav_menu_item[-8015367743761783000]\": {\n        \"value\": {\n            \"object_id\": 50,\n            \"object\": \"projects\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Specify Paragraph Count\",\n            \"url\": \"http://localhost/ikonic-task/Project/why-lorem-ipsum-is-used-8/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Specify Paragraph Count\",\n            \"nav_menu_term_id\": -7314860162384179000,\n            \"_invalid\": false,\n            \"type_label\": \"Project Item\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:07:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '51f9680f-2a4e-4306-93ec-5d12f2dff7d2', '', '', '2023-12-27 21:07:22', '2023-12-27 21:07:22', '', 0, 'http://localhost/ikonic-task/51f9680f-2a4e-4306-93ec-5d12f2dff7d2/', 0, 'customize_changeset', '', 0),
(65, 1, '2023-12-27 21:10:01', '2023-12-27 21:10:01', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-27 21:10:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e78baa9-daef-498a-900a-b8b84177e922', '', '', '2023-12-27 21:10:01', '2023-12-27 21:10:01', '', 0, 'http://localhost/ikonic-task/7e78baa9-daef-498a-900a-b8b84177e922/', 0, 'customize_changeset', '', 0),
(66, 1, '2023-12-27 21:21:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-12-27 21:21:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/ikonic-task/?page_id=66', 0, 'page', '', 0),
(68, 1, '2023-12-27 21:23:45', '2023-12-27 21:23:45', '[vc_row][vc_column][vc_column_text][display_ikonic_post][/vc_column_text][vc_column_text][display_projects][/vc_column_text][/vc_column][/vc_row]', 'Projects', '', 'trash', 'closed', 'closed', '', 'projects__trashed', '', '', '2023-12-28 10:21:34', '2023-12-28 10:21:34', '', 0, 'http://localhost/ikonic-task/?page_id=68', 0, 'page', '', 0),
(69, 1, '2023-12-27 21:23:45', '2023-12-27 21:23:45', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-12-27 21:23:45', '2023-12-27 21:23:45', '', 68, 'http://localhost/ikonic-task/?p=69', 0, 'revision', '', 0),
(71, 1, '2023-12-27 21:44:19', '2023-12-27 21:44:19', '[vc_row][vc_column][vc_column_text][display_six_posts][/vc_column_text][/vc_column][/vc_row]', 'Projects', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-12-27 21:44:19', '2023-12-27 21:44:19', '', 68, 'http://localhost/ikonic-task/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-12-28 09:07:29', '2023-12-28 09:07:29', '[vc_row][vc_column][vc_column_text][ikonic_post_six][/vc_column_text][/vc_column][/vc_row]', 'Projects', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-12-28 09:07:29', '2023-12-28 09:07:29', '', 68, 'http://localhost/ikonic-task/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-12-28 09:15:04', '2023-12-28 09:15:04', '[vc_row][vc_column][vc_column_text][display_ikonic_post][/vc_column_text][/vc_column][/vc_row]', 'Projects', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-12-28 09:15:04', '2023-12-28 09:15:04', '', 68, 'http://localhost/ikonic-task/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-12-28 09:18:52', '2023-12-28 09:18:52', '[vc_row][vc_column][vc_column_text][display_ikonic_post][/vc_column_text][vc_column_text][display_projects][/vc_column_text][/vc_column][/vc_row]', 'Projects', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-12-28 09:18:52', '2023-12-28 09:18:52', '', 68, 'http://localhost/ikonic-task/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-12-28 09:23:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-12-28 09:23:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/ikonic-task/?post_type=project&p=75', 0, 'project', '', 0),
(76, 1, '2023-12-28 11:13:19', '2023-12-28 11:13:19', '', '', '', 'trash', 'closed', 'closed', '', '76-2__trashed', '', '', '2023-12-28 11:13:51', '2023-12-28 11:13:51', '', 0, 'http://localhost/ikonic-task/?page_id=76', 0, 'page', '', 0),
(77, 1, '2023-12-28 11:13:19', '2023-12-28 11:13:19', '', '', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2023-12-28 11:13:19', '2023-12-28 11:13:19', '', 76, 'http://localhost/ikonic-task/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-12-28 12:29:24', '2023-12-28 12:29:24', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[get_coffee_link]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'publish', 'closed', 'closed', '', 'kanye-qoutes', '', '', '2023-12-28 13:37:38', '2023-12-28 13:37:38', '', 0, 'http://localhost/ikonic-task/?page_id=78', 0, 'page', '', 0),
(79, 1, '2023-12-28 12:29:24', '2023-12-28 12:29:24', '[vc_row][vc_column][vc_column_text el_id=\"kanye-quotes\"][/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 12:29:24', '2023-12-28 12:29:24', '', 78, 'http://localhost/ikonic-task/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-12-28 12:36:51', '2023-12-28 12:36:51', '[vc_row][vc_column][vc_column_text][kanye_quotes][/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 12:36:51', '2023-12-28 12:36:51', '', 78, 'http://localhost/ikonic-task/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-12-28 12:39:39', '2023-12-28 12:39:39', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 12:39:39', '2023-12-28 12:39:39', '', 78, 'http://localhost/ikonic-task/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-12-28 12:40:13', '2023-12-28 12:40:13', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2023-12-28 12:40:13', '2023-12-28 12:40:13', '', 0, 'http://localhost/ikonic-task/?p=82', 1, 'nav_menu_item', '', 0),
(83, 1, '2023-12-28 12:53:11', '2023-12-28 12:53:11', '<p>[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]</p>\n<p style=\"text-align: center;\">[kanye_quotes]</p>\n<p>[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]</p>\n<p style=\"text-align: center;\">[kanye_quotes]</p>\n<p>[/vc_column_text][/vc_column][/vc_row]</p>\n', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2023-12-28 12:53:11', '2023-12-28 12:53:11', '', 78, 'http://localhost/ikonic-task/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-12-28 12:54:31', '2023-12-28 12:54:31', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[display_coffee_link]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 12:54:31', '2023-12-28 12:54:31', '', 78, 'http://localhost/ikonic-task/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-12-28 13:01:53', '2023-12-28 13:01:53', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[coffee_link]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 13:01:53', '2023-12-28 13:01:53', '', 78, 'http://localhost/ikonic-task/?p=85', 0, 'revision', '', 0),
(86, 1, '2023-12-28 13:05:13', '2023-12-28 13:05:13', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[random_coffee]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 13:05:13', '2023-12-28 13:05:13', '', 78, 'http://localhost/ikonic-task/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-12-28 13:05:37', '2023-12-28 13:05:37', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[coffee_link]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 13:05:37', '2023-12-28 13:05:37', '', 78, 'http://localhost/ikonic-task/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-12-28 13:37:38', '2023-12-28 13:37:38', '[vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[kanye_quotes]</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row css=\".vc_custom_1703767167001{padding-top: 80px !important;}\"][vc_column][vc_column_text]\r\n<p style=\"text-align: center;\">[get_coffee_link]</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'kanye Qoutes', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-12-28 13:37:38', '2023-12-28 13:37:38', '', 78, 'http://localhost/ikonic-task/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-12-28 14:22:53', '2023-12-28 14:22:53', '{\n    \"nav_menu_item[-2386146713000577000]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"project_type\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"Architecture\",\n            \"url\": \"http://localhost/ikonic-task/project-type/architecture/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Architecture\",\n            \"nav_menu_term_id\": 14,\n            \"_invalid\": false,\n            \"type_label\": \"Project Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-28 14:22:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e14d2560-5f13-4d14-93f5-289d0c6ce5cf', '', '', '2023-12-28 14:22:53', '2023-12-28 14:22:53', '', 0, 'http://localhost/ikonic-task/e14d2560-5f13-4d14-93f5-289d0c6ce5cf/', 0, 'customize_changeset', '', 0),
(90, 1, '2023-12-28 14:22:53', '2023-12-28 14:22:53', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2023-12-28 14:22:53', '2023-12-28 14:22:53', '', 0, 'http://localhost/ikonic-task/90/', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(7, 'in', 'in', 0),
(8, 'omnis', 'omnis', 0),
(9, 'laborum', 'laborum', 0),
(10, 'perspiciatis', 'perspiciatis', 0),
(11, 'necessitatibus', 'necessitatibus', 0),
(14, 'Main Menu', 'main-menu', 0),
(15, 'Architecture', 'architecture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(32, 15, 0),
(47, 15, 0),
(48, 15, 0),
(49, 15, 0),
(50, 15, 0),
(51, 15, 0),
(52, 15, 0),
(53, 15, 0),
(54, 15, 0),
(55, 15, 0),
(56, 15, 0),
(57, 15, 0),
(58, 15, 0),
(82, 14, 0),
(90, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'post_tag', '', 0, 0),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 0),
(14, 14, 'nav_menu', '', 0, 2),
(15, 15, 'project_type', '', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,vc_pointers_backend_editor,vc_pointers_frontend_editor'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"27acd7e9cf85d5d2f19a53f12fa1d7a3f1221ff40013cd16bfe6764f524acc06\";a:4:{s:10:\"expiration\";i:1703880109;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703707309;}s:64:\"8bb7bb6f0f800b38b113c8ba2fa4aadebe987212df622011c63927a75e53fec8\";a:4:{s:10:\"expiration\";i:1703927040;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1703754240;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px'),
(19, 1, 'wp_user-settings-time', '1703768067'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:22:\"add-post-type-projects\";i:1;s:12:\"add-post_tag\";i:2;s:16:\"add-project_type\";}'),
(22, 1, 'nav_menu_recently_edited', '14'),
(23, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:16:\"discussion-panel\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-12-28T11:13:24.987Z\";s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bcfyatzbt1WaPukDr8NAXITvpC4q1O/', 'admin', 'baladiwahab25@gmail.com', 'http://localhost/ikonic-task', '2023-12-27 20:01:42', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
