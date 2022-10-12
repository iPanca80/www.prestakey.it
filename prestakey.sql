-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 12, 2022 alle 16:25
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prestakey`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://prestakey/', 'yes'),
(2, 'home', 'http://prestakey/', 'yes'),
(3, 'blogname', 'Prestakey', 'yes'),
(4, 'blogdescription', 'Il tuo finanziamento facile, veloce e smart.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@matteopancani.it', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:137:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:6:\"faq/?$\";s:23:\"index.php?post_type=faq\";s:36:\"faq/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:31:\"faq/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:23:\"faq/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=faq&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"rassegna_stampa/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"rassegna_stampa/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"rassegna_stampa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"rassegna_stampa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"rassegna_stampa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"rassegna_stampa/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"rassegna_stampa/([^/]+)/embed/?$\";s:48:\"index.php?rassegna_stampa=$matches[1]&embed=true\";s:36:\"rassegna_stampa/([^/]+)/trackback/?$\";s:42:\"index.php?rassegna_stampa=$matches[1]&tb=1\";s:44:\"rassegna_stampa/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?rassegna_stampa=$matches[1]&paged=$matches[2]\";s:51:\"rassegna_stampa/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?rassegna_stampa=$matches[1]&cpage=$matches[2]\";s:40:\"rassegna_stampa/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?rassegna_stampa=$matches[1]&page=$matches[2]\";s:32:\"rassegna_stampa/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"rassegna_stampa/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"rassegna_stampa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"rassegna_stampa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"rassegna_stampa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"rassegna_stampa/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:24:\"faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:44:\"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:39:\"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?faq=$matches[1]&feed=$matches[2]\";s:32:\"faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:39:\"faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:28:\"faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:20:\"faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:5;s:27:\"maintenance/maintenance.php\";i:6;s:37:\"post-types-order/post-types-order.php\";i:7;s:37:\"user-role-editor/user-role-editor.php\";i:8;s:40:\"wordpress-seo-premium/wp-seo-premium.php\";i:9;s:24:\"wordpress-seo/wp-seo.php\";i:10;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'prestakey', 'yes'),
(41, 'stylesheet', 'prestakey', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(79, 'uninstall_plugins', 'a:3:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:37:\"user-role-editor/user-role-editor.php\";a:2:{i:0;s:16:\"User_Role_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', 'Europe/Rome', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '38', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1678694293', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:24:\"wpcf7_edit_contact_forms\";b:1;s:12:\"create_posts\";b:1;s:17:\"install_languages\";b:1;s:14:\"resume_plugins\";b:1;s:13:\"resume_themes\";b:1;s:23:\"view_site_health_checks\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:9:\"prestakey\";a:2:{s:4:\"name\";s:9:\"PrestaKey\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'it_IT', 'yes'),
(103, 'user_count', '3', 'no'),
(104, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1665586701;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1665604701;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665604711;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665606269;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665647900;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665647911;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665647913;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:21:\"Verifica SSL fallita.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Forbidden\";}}', 'yes'),
(126, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1663142325;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(156, 'current_theme', 'prestakey', 'yes'),
(157, 'theme_mods_prestakey', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(170, 'finished_updating_comment_type', '1', 'yes'),
(183, 'recovery_mode_email_last_sent', '1663142847', 'yes'),
(460, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":0}', 'yes'),
(729, 'recently_activated', 'a:1:{s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:1664267575;}', 'yes'),
(730, 'acf_version', '6.0.0', 'yes'),
(731, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1663411451;s:7:\"version\";s:7:\"5.5.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(732, 'swpsmtp_options', 'a:6:{s:16:\"from_email_field\";s:0:\"\";s:15:\"from_name_field\";s:0:\"\";s:23:\"force_from_name_replace\";i:0;s:8:\"sub_mode\";i:0;s:13:\"smtp_settings\";a:7:{s:4:\"host\";s:16:\"smtp.example.com\";s:15:\"type_encryption\";s:4:\"none\";s:4:\"port\";i:25;s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:13:\"log_file_name\";s:33:\"logs\\.6325a50435a829.91963035.txt\";}s:15:\"allowed_domains\";s:12:\"cHJlc3Rha2V5\";}', 'yes'),
(1119, 'cptui_new_install', 'false', 'yes'),
(1120, 'cptui_post_types', 'a:2:{s:15:\"rassegna_stampa\";a:34:{s:4:\"name\";s:15:\"rassegna_stampa\";s:5:\"label\";s:15:\"Rassegna stampa\";s:14:\"singular_label\";s:15:\"Rassegna stampa\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"5\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:22:\"dashicons-format-aside\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:3:\"faq\";a:34:{s:4:\"name\";s:3:\"faq\";s:5:\"label\";s:3:\"Faq\";s:14:\"singular_label\";s:3:\"Faq\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:3:\"faq\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"6\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:21:\"dashicons-testimonial\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(1154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1639, 'duplicate_post_show_notice', '0', 'no'),
(1640, 'duplicate_post_copytitle', '1', 'yes'),
(1641, 'duplicate_post_copydate', '', 'yes'),
(1642, 'duplicate_post_copystatus', '', 'yes'),
(1643, 'duplicate_post_copyslug', '', 'yes'),
(1644, 'duplicate_post_copyexcerpt', '1', 'yes'),
(1645, 'duplicate_post_copycontent', '1', 'yes'),
(1646, 'duplicate_post_copythumbnail', '1', 'yes'),
(1647, 'duplicate_post_copytemplate', '1', 'yes'),
(1648, 'duplicate_post_copyformat', '1', 'yes'),
(1649, 'duplicate_post_copyauthor', '', 'yes'),
(1650, 'duplicate_post_copypassword', '', 'yes'),
(1651, 'duplicate_post_copyattachments', '', 'yes'),
(1652, 'duplicate_post_copychildren', '', 'yes'),
(1653, 'duplicate_post_copycomments', '', 'yes'),
(1654, 'duplicate_post_copymenuorder', '1', 'yes'),
(1655, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(1656, 'duplicate_post_blacklist', '', 'yes'),
(1657, 'duplicate_post_types_enabled', 'a:6:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:13:\"wp_navigation\";i:3;s:15:\"acf-field-group\";i:4;s:15:\"rassegna_stampa\";i:5;s:3:\"faq\";}', 'yes'),
(1658, 'duplicate_post_show_original_column', '', 'yes'),
(1659, 'duplicate_post_show_original_in_post_states', '', 'yes'),
(1660, 'duplicate_post_show_original_meta_box', '', 'yes'),
(1661, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(1662, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(1663, 'duplicate_post_version', '4.5', 'yes'),
(1664, 'duplicate_post_title_prefix', '', 'yes'),
(1665, 'duplicate_post_title_suffix', '', 'yes'),
(1666, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(1667, 'duplicate_post_roles', 'a:1:{i:0;s:13:\"administrator\";}', 'yes'),
(2865, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2867, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2878, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"19.7.1\";}', 'yes'),
(2879, 'wpseo', 'a:96:{s:8:\"tracking\";b:1;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";i:1664137606;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:6:\"19.7.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1664137470;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:16:\"http://prestakey\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1664137472;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";}', 'yes'),
(2880, 'wpseo_titles', 'a:141:{s:17:\"forcerewritetitle\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Autore presso %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Hai cercato %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:39:\"Pagina non trovata %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:49:\"L\'articolo %%POSTLINK%% proviene da %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:30:\"Errore 404: Pagina non trovata\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:11:\"Archivi per\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:11:\"Hai cercato\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:52:\"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:22:\"%%term_title%% Archivi\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:52:\"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:22:\"%%term_title%% Archivi\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:52:\"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:22:\"%%term_title%% Archivi\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:21:\"title-rassegna_stampa\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-rassegna_stampa\";s:0:\"\";s:23:\"noindex-rassegna_stampa\";b:0;s:34:\"display-metabox-pt-rassegna_stampa\";b:1;s:34:\"post_types-rassegna_stampa-maintax\";s:1:\"0\";s:32:\"schema-page-type-rassegna_stampa\";s:7:\"WebPage\";s:35:\"schema-article-type-rassegna_stampa\";s:4:\"None\";s:28:\"social-title-rassegna_stampa\";s:9:\"%%title%%\";s:34:\"social-description-rassegna_stampa\";s:0:\"\";s:32:\"social-image-url-rassegna_stampa\";s:0:\"\";s:31:\"social-image-id-rassegna_stampa\";i:0;s:9:\"title-faq\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:12:\"metadesc-faq\";s:0:\"\";s:11:\"noindex-faq\";b:0;s:22:\"display-metabox-pt-faq\";b:1;s:22:\"post_types-faq-maintax\";s:1:\"0\";s:20:\"schema-page-type-faq\";s:7:\"WebPage\";s:23:\"schema-article-type-faq\";s:4:\"None\";s:16:\"social-title-faq\";s:9:\"%%title%%\";s:22:\"social-description-faq\";s:0:\"\";s:20:\"social-image-url-faq\";s:0:\"\";s:19:\"social-image-id-faq\";i:0;s:19:\"title-ptarchive-faq\";s:51:\"Archivi %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-ptarchive-faq\";s:0:\"\";s:21:\"bctitle-ptarchive-faq\";s:0:\"\";s:21:\"noindex-ptarchive-faq\";b:0;s:26:\"social-title-ptarchive-faq\";s:21:\"Archivi %%pt_plural%%\";s:32:\"social-description-ptarchive-faq\";s:0:\"\";s:30:\"social-image-url-ptarchive-faq\";s:0:\"\";s:29:\"social-image-id-ptarchive-faq\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:23:\"page-analyse-extra-post\";s:0:\"\";s:23:\"page-analyse-extra-page\";s:0:\"\";s:34:\"page-analyse-extra-rassegna_stampa\";s:0:\"\";s:22:\"page-analyse-extra-faq\";s:0:\"\";s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(2881, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(2899, 'yoast_premium_as_an_addon_installer', 'completed', 'yes'),
(2900, 'yoast_migrations_premium', 'a:1:{s:7:\"version\";s:4:\"18.6\";}', 'yes'),
(2901, 'wpseo_premium', 'a:4:{s:34:\"prominent_words_indexing_completed\";b:0;s:8:\"workouts\";a:1:{s:11:\"cornerstone\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:29:\"should_redirect_after_install\";b:0;s:29:\"activation_redirect_timestamp\";i:1664137487;}', 'yes'),
(2902, 'wpseo_current_version', '16', 'no'),
(2903, 'wpseo_premium_version', '18.6', 'yes'),
(2904, 'wpseo-premium-redirects-export-plain', 'a:0:{}', 'yes'),
(2905, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'yes'),
(2921, 'wpseo_tracking_last_request', '1664137487', 'yes'),
(2948, 'wpseo_redirect', 'a:2:{s:20:\"disable_php_redirect\";s:3:\"off\";s:13:\"separate_file\";s:3:\"off\";}', 'yes'),
(3345, 'new_admin_email', 'info@matteopancani.it', 'yes'),
(3468, 'maintenance_meta', 'a:4:{s:13:\"first_version\";s:4:\"4.06\";s:13:\"first_install\";i:1664267584;s:11:\"old_version\";b:0;s:20:\"hide_welcome_pointer\";b:1;}', 'yes'),
(3469, 'mtnc_db_version', '2', 'yes'),
(3470, 'maintenance_options', 'a:23:{s:5:\"state\";i:1;s:10:\"page_title\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:11:\"description\";s:0:\"\";s:11:\"footer_text\";s:0:\"\";s:10:\"logo_width\";s:3:\"220\";s:11:\"logo_height\";s:0:\"\";s:4:\"logo\";s:1:\"0\";s:11:\"retina_logo\";s:1:\"0\";s:7:\"body_bg\";s:0:\"\";s:17:\"bg_image_portrait\";s:1:\"0\";s:13:\"preloader_img\";s:1:\"0\";s:13:\"body_bg_color\";s:7:\"#111111\";s:10:\"font_color\";s:7:\"#ffffff\";s:17:\"controls_bg_color\";s:7:\"#111111\";s:16:\"body_font_family\";s:9:\"Open Sans\";s:16:\"body_font_subset\";s:3:\"300\";s:14:\"blur_intensity\";s:1:\"5\";s:15:\"gg_analytics_id\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:2:\"ID\";i:0;s:6:\"filter\";s:2:\"db\";s:16:\"default_settings\";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3480, 'whl_page', 'account', 'yes'),
(3481, 'whl_redirect_admin', '404', 'yes'),
(3486, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:6:\"4.63.1\";}', 'yes'),
(3487, 'wp_backup_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:22:\"wpseo_manage_redirects\";b:1;}}}', 'no'),
(3488, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(3511, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:6:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";s:13:\"wp_navigation\";s:4:\"show\";s:15:\"rassegna_stampa\";s:4:\"show\";s:3:\"faq\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(3512, 'CPT_configured', 'TRUE', 'yes'),
(3974, '_site_transient_timeout_php_check_e9a080274371e157ce748ced527522b3', '1665655722', 'no'),
(3975, '_site_transient_php_check_e9a080274371e157ce748ced527522b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3999, '_site_transient_timeout_php_check_71beb58986fe81ec54207f069dd45eee', '1665659594', 'no'),
(4000, '_site_transient_php_check_71beb58986fe81ec54207f069dd45eee', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4349, '_transient_timeout_acf_plugin_updates', '1665742016', 'no'),
(4350, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.0\";}}', 'no'),
(4351, '_site_transient_timeout_theme_roots', '1665571017', 'no'),
(4352, '_site_transient_theme_roots', 'a:2:{s:9:\"prestakey\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(4354, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1665569220;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(4355, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1665569221;s:7:\"checked\";a:2:{s:9:\"prestakey\";s:5:\"1.0.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(4356, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1665569222;s:8:\"response\";a:4:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=2791650\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"19.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:42:\"w.org/plugins/advanced-nocaptcha-recaptcha\";s:4:\"slug\";s:28:\"advanced-nocaptcha-recaptcha\";s:6:\"plugin\";s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";s:11:\"new_version\";s:5:\"7.1.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/advanced-nocaptcha-recaptcha/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/advanced-nocaptcha-recaptcha.7.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/advanced-nocaptcha-recaptcha/assets/icon-128x128.jpg?rev=2660526\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/advanced-nocaptcha-recaptcha/assets/banner-772x250.jpg?rev=2660767\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/force-regenerate-thumbnails.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:27:\"maintenance/maintenance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/maintenance\";s:4:\"slug\";s:11:\"maintenance\";s:6:\"plugin\";s:27:\"maintenance/maintenance.php\";s:11:\"new_version\";s:4:\"4.06\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/maintenance/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/maintenance.4.06.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/maintenance/assets/icon-256x256.png?rev=2689583\";s:2:\"1x\";s:64:\"https://ps.w.org/maintenance/assets/icon-128x128.png?rev=2689583\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/maintenance/assets/banner-772x250.png?rev=1637471\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.9.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.9.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:66:\"remove-dashboard-access-for-non-admins/remove-dashboard-access.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:52:\"w.org/plugins/remove-dashboard-access-for-non-admins\";s:4:\"slug\";s:38:\"remove-dashboard-access-for-non-admins\";s:6:\"plugin\";s:66:\"remove-dashboard-access-for-non-admins/remove-dashboard-access.php\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:69:\"https://wordpress.org/plugins/remove-dashboard-access-for-non-admins/\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/plugin/remove-dashboard-access-for-non-admins.1.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/remove-dashboard-access-for-non-admins/assets/icon-256x256.png?rev=970263\";s:2:\"1x\";s:90:\"https://ps.w.org/remove-dashboard-access-for-non-admins/assets/icon-128x128.png?rev=970263\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:92:\"https://ps.w.org/remove-dashboard-access-for-non-admins/assets/banner-772x250.png?rev=955417\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.1.0\";}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.63.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.63.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:15:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.0\";s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";s:5:\"7.1.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.1\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.4.7\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.0.6\";s:27:\"maintenance/maintenance.php\";s:4:\"4.06\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.9.1\";s:66:\"remove-dashboard-access-for-non-admins/remove-dashboard-access.php\";s:5:\"1.1.5\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.63.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.6\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.7.1\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:4:\"18.6\";}}', 'no'),
(4487, '_transient_timeout_global_styles_prestakey', '1665584496', 'no'),
(4488, '_transient_global_styles_prestakey', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(4489, '_transient_timeout_global_styles_svg_filters_prestakey', '1665584496', 'no'),
(4490, '_transient_global_styles_svg_filters_prestakey', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1663142361'),
(10, 2, '_wp_desired_post_slug', 'pagina-di-esempio'),
(11, 3, '_wp_trash_meta_status', 'draft'),
(12, 3, '_wp_trash_meta_time', '1663142362'),
(13, 3, '_wp_desired_post_slug', 'privacy-policy'),
(14, 10, '_edit_lock', '1664137291:1'),
(15, 10, '_wp_page_template', ''),
(16, 12, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(17, 12, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@prestakey>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(18, 12, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@prestakey>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(19, 12, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(20, 12, '_additional_settings', ''),
(21, 12, '_locale', 'it_IT'),
(22, 12, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(23, 14, '_menu_item_type', 'post_type'),
(24, 14, '_menu_item_menu_item_parent', '0'),
(25, 14, '_menu_item_object_id', '10'),
(26, 14, '_menu_item_object', 'page'),
(27, 14, '_menu_item_target', ''),
(28, 14, '_menu_item_classes', 'a:1:{i:0;s:4:\"home\";}'),
(29, 14, '_menu_item_xfn', ''),
(30, 14, '_menu_item_url', ''),
(32, 15, '_menu_item_type', 'post_type'),
(33, 15, '_menu_item_menu_item_parent', '0'),
(34, 15, '_menu_item_object_id', '10'),
(35, 15, '_menu_item_object', 'page'),
(36, 15, '_menu_item_target', ''),
(37, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 15, '_menu_item_xfn', ''),
(39, 15, '_menu_item_url', ''),
(40, 15, '_menu_item_orphaned', '1663531572'),
(41, 14, '_wp_old_date', '2022-09-18'),
(42, 16, '_edit_lock', '1663588670:1'),
(43, 17, '_dp_original', '16'),
(44, 18, '_dp_original', '16'),
(45, 19, '_dp_original', '16'),
(46, 20, '_dp_original', '16'),
(47, 20, '_edit_last', '1'),
(48, 19, '_edit_last', '1'),
(49, 18, '_edit_last', '1'),
(50, 17, '_edit_last', '1'),
(51, 16, '_edit_last', '1'),
(68, 28, '_edit_lock', '1663608355:1'),
(69, 30, '_edit_lock', '1663674135:1'),
(70, 32, '_menu_item_type', 'post_type'),
(71, 32, '_menu_item_menu_item_parent', '0'),
(72, 32, '_menu_item_object_id', '30'),
(73, 32, '_menu_item_object', 'page'),
(74, 32, '_menu_item_target', ''),
(75, 32, '_menu_item_classes', 'a:1:{i:0;s:7:\"azienda\";}'),
(76, 32, '_menu_item_xfn', ''),
(77, 32, '_menu_item_url', ''),
(79, 33, '_menu_item_type', 'post_type'),
(80, 33, '_menu_item_menu_item_parent', '0'),
(81, 33, '_menu_item_object_id', '28'),
(82, 33, '_menu_item_object', 'page'),
(83, 33, '_menu_item_target', ''),
(84, 33, '_menu_item_classes', 'a:1:{i:0;s:7:\"privato\";}'),
(85, 33, '_menu_item_xfn', ''),
(86, 33, '_menu_item_url', ''),
(88, 30, '_edit_last', '1'),
(89, 17, '_edit_lock', '1664135840:1'),
(91, 36, '_menu_item_type', 'custom'),
(92, 36, '_menu_item_menu_item_parent', '0'),
(93, 36, '_menu_item_object_id', '36'),
(94, 36, '_menu_item_object', 'custom'),
(95, 36, '_menu_item_target', ''),
(96, 36, '_menu_item_classes', 'a:1:{i:0;s:3:\"faq\";}'),
(97, 36, '_menu_item_xfn', ''),
(98, 36, '_menu_item_url', '/faq/'),
(100, 14, '_wp_old_date', '2022-09-19'),
(101, 33, '_wp_old_date', '2022-09-19'),
(102, 32, '_wp_old_date', '2022-09-19'),
(103, 37, '_wp_attached_file', '2022/09/favicon-prestakey.png'),
(104, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2022/09/favicon-prestakey.png\";s:8:\"filesize\";i:41012;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"favicon-prestakey-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25516;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"favicon-prestakey-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9782;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 38, '_wp_attached_file', '2022/09/cropped-favicon-prestakey.png'),
(106, 38, '_wp_attachment_context', 'site-icon'),
(107, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:37:\"2022/09/cropped-favicon-prestakey.png\";s:8:\"filesize\";i:44163;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"cropped-favicon-prestakey-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25516;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"cropped-favicon-prestakey-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9782;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:37:\"cropped-favicon-prestakey-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22358;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:37:\"cropped-favicon-prestakey-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14050;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:37:\"cropped-favicon-prestakey-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12518;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:35:\"cropped-favicon-prestakey-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1520;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 39, '_wp_trash_meta_status', 'publish'),
(109, 39, '_wp_trash_meta_time', '1664137382'),
(110, 40, '_edit_lock', '1664137982:1'),
(111, 40, '_edit_last', '1'),
(112, 40, '_yoast_wpseo_focuskeywords', '[]'),
(113, 40, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(114, 40, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(115, 40, '_yoast_wpseo_wordproof_timestamp', ''),
(116, 42, '_menu_item_type', 'post_type'),
(117, 42, '_menu_item_menu_item_parent', '0'),
(118, 42, '_menu_item_object_id', '40'),
(119, 42, '_menu_item_object', 'page'),
(120, 42, '_menu_item_target', ''),
(121, 42, '_menu_item_classes', 'a:1:{i:0;s:8:\"contatti\";}'),
(122, 42, '_menu_item_xfn', ''),
(123, 42, '_menu_item_url', ''),
(125, 43, '_edit_lock', '1664170393:1'),
(126, 43, '_edit_last', '1'),
(127, 43, '_yoast_wpseo_focuskeywords', '[]'),
(128, 43, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(129, 43, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(130, 43, '_yoast_wpseo_wordproof_timestamp', ''),
(131, 45, '_menu_item_type', 'post_type'),
(132, 45, '_menu_item_menu_item_parent', '0'),
(133, 45, '_menu_item_object_id', '43'),
(134, 45, '_menu_item_object', 'page'),
(135, 45, '_menu_item_target', ''),
(136, 45, '_menu_item_classes', 'a:1:{i:0;s:5:\"banca\";}'),
(137, 45, '_menu_item_xfn', ''),
(138, 45, '_menu_item_url', ''),
(140, 14, '_wp_old_date', '2022-09-25'),
(141, 33, '_wp_old_date', '2022-09-25'),
(142, 32, '_wp_old_date', '2022-09-25'),
(143, 36, '_wp_old_date', '2022-09-25'),
(144, 42, '_wp_old_date', '2022-09-25'),
(145, 46, '_edit_lock', '1664171720:1'),
(146, 46, '_edit_last', '1'),
(147, 46, '_yoast_wpseo_focuskeywords', '[]'),
(148, 46, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(149, 46, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(150, 46, '_yoast_wpseo_wordproof_timestamp', ''),
(151, 48, '_menu_item_type', 'post_type'),
(152, 48, '_menu_item_menu_item_parent', '0'),
(153, 48, '_menu_item_object_id', '46'),
(154, 48, '_menu_item_object', 'page'),
(155, 48, '_menu_item_target', ''),
(156, 48, '_menu_item_classes', 'a:1:{i:0;s:9:\"chi-siamo\";}'),
(157, 48, '_menu_item_xfn', ''),
(158, 48, '_menu_item_url', ''),
(160, 49, '_edit_lock', '1665059672:1'),
(161, 49, '_edit_last', '1'),
(162, 49, '_yoast_wpseo_focuskeywords', '[]'),
(163, 49, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(164, 49, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(165, 49, '_yoast_wpseo_wordproof_timestamp', ''),
(166, 51, '_menu_item_type', 'post_type'),
(167, 51, '_menu_item_menu_item_parent', '0'),
(168, 51, '_menu_item_object_id', '49'),
(169, 51, '_menu_item_object', 'page'),
(170, 51, '_menu_item_target', ''),
(171, 51, '_menu_item_classes', 'a:1:{i:0;s:13:\"come-funziona\";}'),
(172, 51, '_menu_item_xfn', ''),
(173, 51, '_menu_item_url', ''),
(175, 52, '_wp_attached_file', '2022/09/stefano-vantaggiato.jpg'),
(176, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:364;s:6:\"height\";i:364;s:4:\"file\";s:31:\"2022/09/stefano-vantaggiato.jpg\";s:8:\"filesize\";i:25126;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"stefano-vantaggiato-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14717;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"stefano-vantaggiato-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5783;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 17, '_wp_trash_meta_status', 'publish'),
(178, 17, '_wp_trash_meta_time', '1664204379'),
(179, 17, '_wp_desired_post_slug', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-5'),
(180, 18, '_wp_trash_meta_status', 'publish'),
(181, 18, '_wp_trash_meta_time', '1664204379'),
(182, 18, '_wp_desired_post_slug', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-4'),
(183, 19, '_wp_trash_meta_status', 'publish'),
(184, 19, '_wp_trash_meta_time', '1664204380'),
(185, 19, '_wp_desired_post_slug', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-3'),
(186, 20, '_wp_trash_meta_status', 'publish'),
(187, 20, '_wp_trash_meta_time', '1664204380'),
(188, 20, '_wp_desired_post_slug', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-2'),
(189, 16, '_wp_trash_meta_status', 'publish'),
(190, 16, '_wp_trash_meta_time', '1664204380'),
(191, 16, '_wp_desired_post_slug', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus'),
(192, 53, '_edit_lock', '1664204409:1'),
(193, 53, '_edit_last', '1'),
(194, 53, '_yoast_wpseo_content_score', '90'),
(195, 53, '_yoast_wpseo_focuskeywords', '[]'),
(196, 53, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(197, 53, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(198, 53, '_yoast_wpseo_wordproof_timestamp', ''),
(199, 54, '_edit_lock', '1664204439:1'),
(200, 54, '_edit_last', '1'),
(201, 54, '_yoast_wpseo_content_score', '90'),
(202, 54, '_yoast_wpseo_focuskeywords', '[]'),
(203, 54, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(204, 54, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(205, 54, '_yoast_wpseo_wordproof_timestamp', ''),
(206, 55, '_edit_lock', '1664204459:1'),
(207, 55, '_edit_last', '1'),
(208, 55, '_yoast_wpseo_content_score', '90'),
(209, 55, '_yoast_wpseo_focuskeywords', '[]'),
(210, 55, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(211, 55, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(212, 55, '_yoast_wpseo_wordproof_timestamp', ''),
(213, 56, '_edit_lock', '1664204475:1'),
(214, 56, '_edit_last', '1'),
(215, 56, '_yoast_wpseo_focuskeywords', '[]'),
(216, 56, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(217, 56, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(218, 56, '_yoast_wpseo_wordproof_timestamp', ''),
(219, 57, '_edit_lock', '1664204483:1'),
(220, 57, '_edit_last', '1'),
(221, 57, '_yoast_wpseo_focuskeywords', '[]'),
(222, 57, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(223, 57, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(224, 57, '_yoast_wpseo_wordproof_timestamp', ''),
(225, 58, '_edit_lock', '1664204545:1'),
(226, 58, '_edit_last', '1'),
(227, 58, '_yoast_wpseo_content_score', '90'),
(228, 58, '_yoast_wpseo_focuskeywords', '[]'),
(229, 58, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(230, 58, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(231, 58, '_yoast_wpseo_wordproof_timestamp', ''),
(232, 59, '_edit_lock', '1664204559:1'),
(233, 59, '_edit_last', '1'),
(234, 59, '_yoast_wpseo_focuskeywords', '[]'),
(235, 59, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(236, 59, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(237, 59, '_yoast_wpseo_wordproof_timestamp', ''),
(238, 60, '_edit_lock', '1664204571:1'),
(239, 60, '_edit_last', '1'),
(240, 60, '_yoast_wpseo_focuskeywords', '[]'),
(241, 60, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(242, 60, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(243, 60, '_yoast_wpseo_wordproof_timestamp', ''),
(244, 61, '_edit_lock', '1664204580:1'),
(245, 61, '_edit_last', '1'),
(246, 61, '_yoast_wpseo_focuskeywords', '[]'),
(247, 61, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(248, 61, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(249, 61, '_yoast_wpseo_wordproof_timestamp', ''),
(250, 62, '_edit_lock', '1664204594:1'),
(251, 62, '_edit_last', '1'),
(252, 62, '_yoast_wpseo_focuskeywords', '[]'),
(253, 62, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(254, 62, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(255, 62, '_yoast_wpseo_wordproof_timestamp', ''),
(256, 63, '_edit_lock', '1664204605:1'),
(257, 63, '_edit_last', '1'),
(258, 63, '_yoast_wpseo_focuskeywords', '[]'),
(259, 63, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(260, 63, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(261, 63, '_yoast_wpseo_wordproof_timestamp', ''),
(262, 64, '_edit_lock', '1664207199:1'),
(263, 64, '_edit_last', '1'),
(264, 64, '_yoast_wpseo_focuskeywords', '[]'),
(265, 64, '_yoast_wpseo_keywordsynonyms', '[\"\"]'),
(266, 64, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(267, 64, '_yoast_wpseo_wordproof_timestamp', ''),
(268, 65, '_wp_attached_file', '2022/09/mt-sample-background.jpg'),
(269, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2022/09/mt-sample-background.jpg\";s:8:\"filesize\";i:217593;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6527;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"mt-sample-background-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59755;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3124;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"mt-sample-background-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34681;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"mt-sample-background-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127837;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-09-14 09:58:19', '2022-09-14 07:58:19', '<!-- wp:paragraph -->\n<p>Questa è una pagina di esempio. Differisce da un articolo di un blog perché rimane sempre allo stesso posto e (in molti temi) appare nel menu di navigazione. Molte persone iniziano con una pagina di Informazioni che li presentano ai visitatori del sito. Potrebbe apparire una presentazione del tipo:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ciao! Sono un fattorino ciclista di giorno, aspirante attore di notte e questo è il mio sito web. Vivo a Los Angeles, ho un grande cane di nome Jack e mi piace la piña colada. (E prendere la pioggia)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o qualcosa di simile:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Società XYZ Aggeggi è stata fondata nel 1971 e da allora fornisce al pubblico aggeggi di ottima qualità. Situata a Fantasilandia, XYZ impiega oltre 2.000 persone e realizza ogni sorta di aggeggio fantastico per la comunità di Fantasilandia.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Come nuovo utente di WordPress, dovresti andare nella tua <a href=\"http://prestakey/wp-admin/\">Bacheca</a> per eliminare questa pagina, e crearne delle nuove per i tuoi contenuti. Divertiti!</p>\n<!-- /wp:paragraph -->', 'Pagina di esempio', '', 'trash', 'closed', 'open', '', 'pagina-di-esempio__trashed', '', '', '2022-09-14 09:59:21', '2022-09-14 07:59:21', '', 0, 'http://prestakey/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-09-14 09:58:19', '2022-09-14 07:58:19', '<!-- wp:heading --><h2>Chi siamo</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>L\'indirizzo del nostro sito web è: http://prestakey.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commenti</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Quando i visitatori lasciano commenti sul sito, raccogliamo i dati mostrati nel modulo dei commenti oltre all\'indirizzo IP del visitatore e la stringa dello user agent del browser per facilitare il rilevamento dello spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una stringa anonimizzata creata a partire dal tuo indirizzo email (altrimenti detta hash) può essere fornita al servizio Gravatar per vedere se lo stai usando. La privacy policy del servizio Gravatar è disponibile qui: https://automattic.com/privacy/. Dopo l\'approvazione del tuo commento, la tua immagine del profilo è visibile al pubblico nel contesto del tuo commento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se carichi immagini sul sito web, dovresti evitare di caricare immagini che includono i dati di posizione incorporati (EXIF GPS). I visitatori del sito web possono scaricare ed estrarre qualsiasi dato sulla posizione dalle immagini sul sito web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento sul nostro sito, puoi scegliere di salvare il tuo nome, indirizzo email e sito web nei cookie. Sono usati per la tua comodità in modo che tu non debba inserire nuovamente i tuoi dati quando lasci un altro commento. Questi cookie dureranno per un anno.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se visiti la pagina di login, verrà impostato un cookie temporaneo per determinare se il tuo browser accetta i cookie. Questo cookie non contiene dati personali e viene eliminato quando chiudi il browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando effettui l\'accesso, verranno impostati diversi cookie per salvare le tue informazioni di accesso e le tue opzioni di visualizzazione dello schermo. I cookie di accesso durano due giorni mentre i cookie per le opzioni dello schermo durano un anno. Se selezioni &quot;Ricordami&quot;, il tuo accesso persisterà per due settimane. Se esci dal tuo account, i cookie di accesso verranno rimossi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se modifichi o pubblichi un articolo, un cookie aggiuntivo verrà salvato nel tuo browser. Questo cookie non include dati personali, ma indica semplicemente l\'ID dell\'articolo appena modificato. Scade dopo 1 giorno.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenuto incorporato da altri siti web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Gli articoli su questo sito possono includere contenuti incorporati (ad esempio video, immagini, articoli, ecc.). I contenuti incorporati da altri siti web si comportano esattamente allo stesso modo come se il visitatore avesse visitato l\'altro sito web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Questi siti web possono raccogliere dati su di te, usare cookie, integrare ulteriori tracciamenti di terze parti e monitorare l\'interazione con essi, incluso il tracciamento della tua interazione con il contenuto incorporato se hai un account e sei connesso a quei siti web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con chi condividiamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se richiedi una reimpostazione della password, il tuo indirizzo IP verrà incluso nell\'email di reimpostazione.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Per quanto tempo conserviamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento, il commento e i relativi metadati vengono conservati a tempo indeterminato. È così che possiamo riconoscere e approvare automaticamente eventuali commenti successivi invece di tenerli in una coda di moderazione.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Per gli utenti che si registrano sul nostro sito web (se presenti), memorizziamo anche le informazioni personali che forniscono nel loro profilo utente. Tutti gli utenti possono vedere, modificare o eliminare le loro informazioni personali in qualsiasi momento (eccetto il loro nome utente che non possono cambiare). Gli amministratori del sito web possono anche vedere e modificare queste informazioni.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quali diritti hai sui tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se hai un account su questo sito, o hai lasciato commenti, puoi richiedere di ricevere un file esportato dal sito con i dati personali che abbiamo su di te, compresi i dati che ci hai fornito. Puoi anche richiedere che cancelliamo tutti i dati personali che ti riguardano. Questo non include i dati che siamo obbligati a conservare per scopi amministrativi, legali o di sicurezza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dove i tuoi dati sono inviati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>I commenti dei visitatori possono essere controllati attraverso un servizio di rilevamento automatico dello spam.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-09-14 09:59:22', '2022-09-14 07:59:22', '', 0, 'http://prestakey/?page_id=3', 0, 'page', '', 0),
(7, 1, '2022-09-14 09:59:10', '2022-09-14 07:59:10', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-prestakey', '', '', '2022-09-14 09:59:10', '2022-09-14 07:59:10', '', 0, 'http://prestakey/2022/09/14/wp-global-styles-prestakey/', 0, 'wp_global_styles', '', 0),
(8, 1, '2022-09-14 09:59:21', '2022-09-14 07:59:21', '<!-- wp:paragraph -->\n<p>Questa è una pagina di esempio. Differisce da un articolo di un blog perché rimane sempre allo stesso posto e (in molti temi) appare nel menu di navigazione. Molte persone iniziano con una pagina di Informazioni che li presentano ai visitatori del sito. Potrebbe apparire una presentazione del tipo:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ciao! Sono un fattorino ciclista di giorno, aspirante attore di notte e questo è il mio sito web. Vivo a Los Angeles, ho un grande cane di nome Jack e mi piace la piña colada. (E prendere la pioggia)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o qualcosa di simile:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Società XYZ Aggeggi è stata fondata nel 1971 e da allora fornisce al pubblico aggeggi di ottima qualità. Situata a Fantasilandia, XYZ impiega oltre 2.000 persone e realizza ogni sorta di aggeggio fantastico per la comunità di Fantasilandia.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Come nuovo utente di WordPress, dovresti andare nella tua <a href=\"http://prestakey/wp-admin/\">Bacheca</a> per eliminare questa pagina, e crearne delle nuove per i tuoi contenuti. Divertiti!</p>\n<!-- /wp:paragraph -->', 'Pagina di esempio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-09-14 09:59:21', '2022-09-14 07:59:21', '', 2, 'http://prestakey/?p=8', 0, 'revision', '', 0),
(9, 1, '2022-09-14 09:59:22', '2022-09-14 07:59:22', '<!-- wp:heading --><h2>Chi siamo</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>L\'indirizzo del nostro sito web è: http://prestakey.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commenti</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Quando i visitatori lasciano commenti sul sito, raccogliamo i dati mostrati nel modulo dei commenti oltre all\'indirizzo IP del visitatore e la stringa dello user agent del browser per facilitare il rilevamento dello spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una stringa anonimizzata creata a partire dal tuo indirizzo email (altrimenti detta hash) può essere fornita al servizio Gravatar per vedere se lo stai usando. La privacy policy del servizio Gravatar è disponibile qui: https://automattic.com/privacy/. Dopo l\'approvazione del tuo commento, la tua immagine del profilo è visibile al pubblico nel contesto del tuo commento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se carichi immagini sul sito web, dovresti evitare di caricare immagini che includono i dati di posizione incorporati (EXIF GPS). I visitatori del sito web possono scaricare ed estrarre qualsiasi dato sulla posizione dalle immagini sul sito web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento sul nostro sito, puoi scegliere di salvare il tuo nome, indirizzo email e sito web nei cookie. Sono usati per la tua comodità in modo che tu non debba inserire nuovamente i tuoi dati quando lasci un altro commento. Questi cookie dureranno per un anno.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se visiti la pagina di login, verrà impostato un cookie temporaneo per determinare se il tuo browser accetta i cookie. Questo cookie non contiene dati personali e viene eliminato quando chiudi il browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando effettui l\'accesso, verranno impostati diversi cookie per salvare le tue informazioni di accesso e le tue opzioni di visualizzazione dello schermo. I cookie di accesso durano due giorni mentre i cookie per le opzioni dello schermo durano un anno. Se selezioni &quot;Ricordami&quot;, il tuo accesso persisterà per due settimane. Se esci dal tuo account, i cookie di accesso verranno rimossi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se modifichi o pubblichi un articolo, un cookie aggiuntivo verrà salvato nel tuo browser. Questo cookie non include dati personali, ma indica semplicemente l\'ID dell\'articolo appena modificato. Scade dopo 1 giorno.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenuto incorporato da altri siti web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Gli articoli su questo sito possono includere contenuti incorporati (ad esempio video, immagini, articoli, ecc.). I contenuti incorporati da altri siti web si comportano esattamente allo stesso modo come se il visitatore avesse visitato l\'altro sito web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Questi siti web possono raccogliere dati su di te, usare cookie, integrare ulteriori tracciamenti di terze parti e monitorare l\'interazione con essi, incluso il tracciamento della tua interazione con il contenuto incorporato se hai un account e sei connesso a quei siti web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con chi condividiamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se richiedi una reimpostazione della password, il tuo indirizzo IP verrà incluso nell\'email di reimpostazione.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Per quanto tempo conserviamo i tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se lasci un commento, il commento e i relativi metadati vengono conservati a tempo indeterminato. È così che possiamo riconoscere e approvare automaticamente eventuali commenti successivi invece di tenerli in una coda di moderazione.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Per gli utenti che si registrano sul nostro sito web (se presenti), memorizziamo anche le informazioni personali che forniscono nel loro profilo utente. Tutti gli utenti possono vedere, modificare o eliminare le loro informazioni personali in qualsiasi momento (eccetto il loro nome utente che non possono cambiare). Gli amministratori del sito web possono anche vedere e modificare queste informazioni.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quali diritti hai sui tuoi dati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>Se hai un account su questo sito, o hai lasciato commenti, puoi richiedere di ricevere un file esportato dal sito con i dati personali che abbiamo su di te, compresi i dati che ci hai fornito. Puoi anche richiedere che cancelliamo tutti i dati personali che ti riguardano. Questo non include i dati che siamo obbligati a conservare per scopi amministrativi, legali o di sicurezza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dove i tuoi dati sono inviati</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Testo suggerito: </strong>I commenti dei visitatori possono essere controllati attraverso un servizio di rilevamento automatico dello spam.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-09-14 09:59:22', '2022-09-14 07:59:22', '', 3, 'http://prestakey/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-09-17 11:20:11', '2022-09-17 09:20:11', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2022-09-17 11:27:11', '2022-09-17 09:27:11', '', 0, 'http://prestakey/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-09-17 11:20:11', '2022-09-17 09:20:11', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-09-17 11:20:11', '2022-09-17 09:20:11', '', 10, 'http://prestakey/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-09-17 12:44:11', '2022-09-17 10:44:11', '<label> Your name\r\n    [text* your-name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@prestakey>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@prestakey>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Home - row two', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-09-17 12:45:43', '2022-09-17 10:45:43', '', 0, 'http://prestakey/?post_type=wpcf7_contact_form&#038;p=12', 0, 'wpcf7_contact_form', '', 0),
(14, 1, '2022-09-26 08:10:56', '2022-09-18 20:06:05', '', 'Home', '', 'publish', 'closed', 'closed', '', '14', '', '', '2022-09-26 08:10:56', '2022-09-26 06:10:56', '', 0, 'http://prestakey/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2022-09-18 22:06:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-09-18 22:06:12', '0000-00-00 00:00:00', '', 0, 'http://prestakey/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2022-09-19 11:34:52', '2022-09-19 09:34:52', '<!-- wp:paragraph -->\n<p>Nibh quisque suscipit fermentum netus nulla cras po rttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis.</p>\n<!-- /wp:paragraph -->', '￼Mauris id nibh eu fermentum mattis purus?', '', 'trash', 'closed', 'closed', '', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus__trashed', '', '', '2022-09-26 16:59:41', '2022-09-26 14:59:41', '', 0, 'http://prestakey/?post_type=faq&#038;p=16', 0, 'faq', '', 0),
(17, 1, '2022-09-19 14:01:14', '2022-09-19 12:01:14', '<!-- wp:paragraph -->\n<p>Nibh quisque suscipit fermentum netus nulla cras po rttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis.</p>\n<!-- /wp:paragraph -->', '￼Mauris id nibh eu fermentum mattis purus?', '', 'trash', 'closed', 'closed', '', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-5__trashed', '', '', '2022-09-26 16:59:39', '2022-09-26 14:59:39', '', 0, 'http://prestakey/?post_type=faq&#038;p=17', 0, 'faq', '', 0),
(18, 1, '2022-09-19 14:01:14', '2022-09-19 12:01:14', '<!-- wp:paragraph -->\n<p>Nibh quisque suscipit fermentum netus nulla cras po rttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis.</p>\n<!-- /wp:paragraph -->', '￼Mauris id nibh eu fermentum mattis purus?', '', 'trash', 'closed', 'closed', '', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-4__trashed', '', '', '2022-09-26 16:59:39', '2022-09-26 14:59:39', '', 0, 'http://prestakey/?post_type=faq&#038;p=18', 0, 'faq', '', 0),
(19, 1, '2022-09-19 14:01:13', '2022-09-19 12:01:13', '<!-- wp:paragraph -->\n<p>Nibh quisque suscipit fermentum netus nulla cras po rttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis.</p>\n<!-- /wp:paragraph -->', '￼Mauris id nibh eu fermentum mattis purus?', '', 'trash', 'closed', 'closed', '', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-3__trashed', '', '', '2022-09-26 16:59:40', '2022-09-26 14:59:40', '', 0, 'http://prestakey/?post_type=faq&#038;p=19', 0, 'faq', '', 0),
(20, 1, '2022-09-19 14:01:13', '2022-09-19 12:01:13', '<!-- wp:paragraph -->\n<p>Nibh quisque suscipit fermentum netus nulla cras po rttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis.</p>\n<!-- /wp:paragraph -->', '￼Mauris id nibh eu fermentum mattis purus?', '', 'trash', 'closed', 'closed', '', '%ef%bf%bcmauris-id-nibh-eu-fermentum-mattis-purus-2__trashed', '', '', '2022-09-26 16:59:40', '2022-09-26 14:59:40', '', 0, 'http://prestakey/?post_type=faq&#038;p=20', 0, 'faq', '', 0),
(28, 1, '2022-09-19 19:28:15', '2022-09-19 17:28:15', '', 'Sono un privato', '', 'publish', 'closed', 'closed', '', 'sono-un-privato', '', '', '2022-09-19 19:28:15', '2022-09-19 17:28:15', '', 0, 'http://prestakey/?page_id=28', 0, 'page', '', 0),
(29, 1, '2022-09-19 19:28:15', '2022-09-19 17:28:15', '', 'Sono un privato', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-09-19 19:28:15', '2022-09-19 17:28:15', '', 28, 'http://prestakey/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-09-19 19:28:29', '2022-09-19 17:28:29', '', 'Sono un\'azienda', '', 'publish', 'closed', 'closed', '', 'sono-una-azienda', '', '', '2022-09-20 13:42:15', '2022-09-20 11:42:15', '', 0, 'http://prestakey/?page_id=30', 0, 'page', '', 0),
(31, 1, '2022-09-19 19:28:29', '2022-09-19 17:28:29', '', 'Sono un\'azienda', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-09-19 19:28:29', '2022-09-19 17:28:29', '', 30, 'http://prestakey/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-09-26 08:10:57', '2022-09-19 17:28:51', '', 'Sono un’azienda', '', 'publish', 'closed', 'closed', '', 'sono-unazienda', '', '', '2022-09-26 08:10:57', '2022-09-26 06:10:57', '', 0, 'http://prestakey/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2022-09-26 08:10:56', '2022-09-19 17:28:51', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2022-09-26 08:10:56', '2022-09-26 06:10:56', '', 0, 'http://prestakey/?p=33', 2, 'nav_menu_item', '', 0),
(36, 1, '2022-09-26 08:10:58', '2022-09-25 19:48:05', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2022-09-26 08:10:58', '2022-09-26 06:10:58', '', 0, 'http://prestakey/?p=36', 7, 'nav_menu_item', '', 0),
(37, 1, '2022-09-25 22:22:55', '2022-09-25 20:22:55', '', 'favicon-prestakey', '', 'inherit', 'open', 'closed', '', 'favicon-prestakey', '', '', '2022-09-25 22:22:55', '2022-09-25 20:22:55', '', 0, 'http://prestakey/wp-content/uploads/2022/09/favicon-prestakey.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2022-09-25 22:22:56', '2022-09-25 20:22:56', 'http://prestakey/wp-content/uploads/2022/09/cropped-favicon-prestakey.png', 'cropped-favicon-prestakey.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-prestakey-png', '', '', '2022-09-25 22:22:56', '2022-09-25 20:22:56', '', 0, 'http://prestakey/wp-content/uploads/2022/09/cropped-favicon-prestakey.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2022-09-25 22:23:01', '2022-09-25 20:23:01', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-25 20:23:01\"\n    },\n    \"site_icon\": {\n        \"value\": 38,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-25 20:23:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b88f86b2-2139-4279-80ce-9736d4fe24aa', '', '', '2022-09-25 22:23:01', '2022-09-25 20:23:01', '', 0, 'http://prestakey/2022/09/25/b88f86b2-2139-4279-80ce-9736d4fe24aa/', 0, 'customize_changeset', '', 0),
(40, 1, '2022-09-25 22:33:01', '2022-09-25 20:33:01', '', 'Contatti', '', 'publish', 'closed', 'closed', '', 'contatti', '', '', '2022-09-25 22:33:02', '2022-09-25 20:33:02', '', 0, 'http://prestakey/?page_id=40', 0, 'page', '', 0),
(41, 1, '2022-09-25 22:33:01', '2022-09-25 20:33:01', '', 'Contatti', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2022-09-25 22:33:01', '2022-09-25 20:33:01', '', 40, 'http://prestakey/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-09-26 08:10:58', '2022-09-25 20:33:15', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2022-09-26 08:10:58', '2022-09-26 06:10:58', '', 0, 'http://prestakey/?p=42', 8, 'nav_menu_item', '', 0),
(43, 1, '2022-09-26 07:33:11', '2022-09-26 05:33:11', '', 'Sei una banca?', '', 'publish', 'closed', 'closed', '', 'sei-una-banca', '', '', '2022-09-26 07:33:12', '2022-09-26 05:33:12', '', 0, 'http://prestakey/?page_id=43', 0, 'page', '', 0),
(44, 1, '2022-09-26 07:33:11', '2022-09-26 05:33:11', '', 'Sei una banca?', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-09-26 07:33:11', '2022-09-26 05:33:11', '', 43, 'http://prestakey/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-09-26 08:10:57', '2022-09-26 05:33:24', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2022-09-26 08:10:57', '2022-09-26 06:10:57', '', 0, 'http://prestakey/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2022-09-26 07:55:19', '2022-09-26 05:55:19', '', 'Chi siamo', '', 'publish', 'closed', 'closed', '', 'chi-siamo', '', '', '2022-09-26 07:55:19', '2022-09-26 05:55:19', '', 0, 'http://prestakey/?page_id=46', 0, 'page', '', 0),
(47, 1, '2022-09-26 07:55:19', '2022-09-26 05:55:19', '', 'Chi siamo', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-09-26 07:55:19', '2022-09-26 05:55:19', '', 46, 'http://prestakey/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-09-26 08:10:58', '2022-09-26 05:55:35', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2022-09-26 08:10:58', '2022-09-26 06:10:58', '', 0, 'http://prestakey/?p=48', 6, 'nav_menu_item', '', 0),
(49, 1, '2022-09-26 08:10:39', '2022-09-26 06:10:39', '', 'Come funziona', '', 'publish', 'closed', 'closed', '', 'come-funziona', '', '', '2022-09-26 08:10:40', '2022-09-26 06:10:40', '', 0, 'http://prestakey/?page_id=49', 0, 'page', '', 0),
(50, 1, '2022-09-26 08:10:39', '2022-09-26 06:10:39', '', 'Come funziona', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-09-26 08:10:39', '2022-09-26 06:10:39', '', 49, 'http://prestakey/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-09-26 08:10:57', '2022-09-26 06:10:57', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2022-09-26 08:10:57', '2022-09-26 06:10:57', '', 0, 'http://prestakey/?p=51', 4, 'nav_menu_item', '', 0),
(52, 1, '2022-09-26 13:34:14', '2022-09-26 11:34:14', '', 'stefano-vantaggiato', '', 'inherit', 'open', 'closed', '', 'stefano-vantaggiato', '', '', '2022-09-26 13:34:14', '2022-09-26 11:34:14', '', 0, 'http://prestakey/wp-content/uploads/2022/09/stefano-vantaggiato.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-09-26 17:00:07', '2022-09-26 15:00:07', '<!-- wp:paragraph -->\n<p>Con PrestaKey avrai la possibilità di indicare l’importo esatto che desideri fino ad un massimo di XXX€ per le aziende e XXX euro per le Partite IVA.</p>\n<!-- /wp:paragraph -->', 'Qual è l’importo massimo che posso richiedere tramite PrestaKey?', '', 'publish', 'closed', 'closed', '', 'qual-e-limporto-massimo-che-posso-richiedere-tramite-prestakey', '', '', '2022-09-26 17:00:08', '2022-09-26 15:00:08', '', 0, 'http://prestakey/?post_type=faq&#038;p=53', 0, 'faq', '', 0),
(54, 1, '2022-09-26 17:00:37', '2022-09-26 15:00:37', '<!-- wp:paragraph -->\n<p>Una volta avute tutte le informazioni, riceverai una risposta alla tua richiesta entro 24/48 ore.</p>\n<!-- /wp:paragraph -->', 'Quanto tempo ci vuole per sapere se la mia richiesta di finanziamento è stata approvata oppure no?', '', 'publish', 'closed', 'closed', '', 'quanto-tempo-ci-vuole-per-sapere-se-la-mia-richiesta-di-finanziamento-e-stata-approvata-oppure-no', '', '', '2022-09-26 17:00:38', '2022-09-26 15:00:38', '', 0, 'http://prestakey/?post_type=faq&#038;p=54', 0, 'faq', '', 0),
(55, 1, '2022-09-26 17:00:57', '2022-09-26 15:00:57', '<!-- wp:paragraph -->\n<p>In caso positivo della richiesta di finanziamento, la liquidità indicata verrà erogata entro cinque giorni lavorativi.</p>\n<!-- /wp:paragraph -->', 'Quanto tempo ci vuole per ottenere il finanziamento richiesto?', '', 'publish', 'closed', 'closed', '', 'quanto-tempo-ci-vuole-per-ottenere-il-finanziamento-richiesto', '', '', '2022-09-26 17:00:58', '2022-09-26 15:00:58', '', 0, 'http://prestakey/?post_type=faq&#038;p=55', 0, 'faq', '', 0),
(56, 1, '2022-09-26 17:01:13', '2022-09-26 15:01:13', '', 'Sono una Partita IVA. Quali sono i requisiti da avere per avere un prestito?', '', 'publish', 'closed', 'closed', '', 'sono-una-partita-iva-quali-sono-i-requisiti-da-avere-per-avere-un-prestito', '', '', '2022-09-26 17:01:14', '2022-09-26 15:01:14', '', 0, 'http://prestakey/?post_type=faq&#038;p=56', 0, 'faq', '', 0),
(57, 1, '2022-09-26 17:01:22', '2022-09-26 15:01:22', '', 'Sono un’azienda. Quali sono i requisiti da avere per avere un finanziamento?', '', 'publish', 'closed', 'closed', '', 'sono-unazienda-quali-sono-i-requisiti-da-avere-per-avere-un-finanziamento', '', '', '2022-09-26 17:01:23', '2022-09-26 15:01:23', '', 0, 'http://prestakey/?post_type=faq&#038;p=57', 0, 'faq', '', 0),
(58, 1, '2022-09-26 17:02:24', '2022-09-26 15:02:24', '<!-- wp:paragraph -->\n<p>Se sei un’azienda:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Un numero di conto e LA VISURA CAMERALE</li><li>La Carta d’Identità DEL TITOLARE EFFETTIVO E DELL’ AMMINISTRATORE</li><li>Una copia DELL’ ULTIMO BILANCIO</li><li>Un numero di telefono e un indirizzo e-mail.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Se sei un privato</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Un numero di conto e un documento che provi che tu sei il titolare del conto.</li><li>La Carta d’Identità</li><li>Una copia della tua ultima busta paga o pensione</li><li>Un numero di telefono e un indirizzo e-mail.</li></ul>\n<!-- /wp:list -->', 'Quali documenti devo fornire per formulare la richiesta di credito?', '', 'publish', 'closed', 'closed', '', 'quali-documenti-devo-fornire-per-formulare-la-richiesta-di-credito', '', '', '2022-09-26 17:02:24', '2022-09-26 15:02:24', '', 0, 'http://prestakey/?post_type=faq&#038;p=58', 0, 'faq', '', 0),
(59, 1, '2022-09-26 17:02:38', '2022-09-26 15:02:38', '', 'Ho bisogno di un garante per ricevere il mio prestito?', '', 'publish', 'closed', 'closed', '', 'ho-bisogno-di-un-garante-per-ricevere-il-mio-prestito', '', '', '2022-09-26 17:02:39', '2022-09-26 15:02:39', '', 0, 'http://prestakey/?post_type=faq&#038;p=59', 0, 'faq', '', 0),
(60, 1, '2022-09-26 17:02:50', '2022-09-26 15:02:50', '', 'Posso richiedere un finanziamento se ho dei pagamenti in sospeso o se sono su una lista di morosità?', '', 'publish', 'closed', 'closed', '', 'posso-richiedere-un-finanziamento-se-ho-dei-pagamenti-in-sospeso-o-se-sono-su-una-lista-di-morosita', '', '', '2022-09-26 17:02:51', '2022-09-26 15:02:51', '', 0, 'http://prestakey/?post_type=faq&#038;p=60', 0, 'faq', '', 0),
(61, 1, '2022-09-26 17:02:59', '2022-09-26 15:02:59', '', 'Come funziona il rimborso del credito?', '', 'publish', 'closed', 'closed', '', 'come-funziona-il-rimborso-del-credito', '', '', '2022-09-26 17:02:59', '2022-09-26 15:02:59', '', 0, 'http://prestakey/?post_type=faq&#038;p=61', 0, 'faq', '', 0),
(62, 1, '2022-09-26 17:03:12', '2022-09-26 15:03:12', '', 'Perché avete bisogno di così tante informazioni?', '', 'publish', 'closed', 'closed', '', 'perche-avete-bisogno-di-cosi-tante-informazioni', '', '', '2022-09-26 17:03:13', '2022-09-26 15:03:13', '', 0, 'http://prestakey/?post_type=faq&#038;p=62', 0, 'faq', '', 0),
(63, 1, '2022-09-26 17:03:23', '2022-09-26 15:03:23', '', 'Posso chiedere a PrestaKey di eliminare i miei dati personali?', '', 'publish', 'closed', 'closed', '', 'posso-chiedere-a-prestakey-di-eliminare-i-miei-dati-personali', '', '', '2022-09-26 17:03:24', '2022-09-26 15:03:24', '', 0, 'http://prestakey/?post_type=faq&#038;p=63', 0, 'faq', '', 0),
(64, 1, '2022-09-26 17:03:38', '2022-09-26 15:03:38', '', 'Dove sarà versata la liquidità richiesta?', '', 'publish', 'closed', 'closed', '', 'dove-sara-versata-la-liquidita-richiesta', '', '', '2022-09-26 17:03:39', '2022-09-26 15:03:39', '', 0, 'http://prestakey/?post_type=faq&#038;p=64', 0, 'faq', '', 0),
(65, 1, '2022-09-27 10:33:03', '2022-09-27 08:33:03', '', 'mt-sample-background', '', 'inherit', 'open', 'closed', '', 'mt-sample-background', '', '', '2022-09-27 10:33:03', '2022-09-27 08:33:03', '', 0, 'http://prestakey/wp-content/uploads/2022/09/mt-sample-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2022-10-06 13:13:14', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-10-06 13:13:14', '0000-00-00 00:00:00', '', 0, 'http://prestakey/?p=70', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Senza categoria', 'senza-categoria', 0),
(2, 'prestakey', 'prestakey', 0),
(3, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(14, 3, 0),
(32, 3, 0),
(33, 3, 0),
(36, 3, 0),
(42, 3, 0),
(45, 3, 0),
(48, 3, 0),
(51, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Matteo Pancani'),
(2, 1, 'first_name', 'Matteo'),
(3, 1, 'last_name', 'Pancani'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"cca0dedb32e50082216b0215fd3e773312a42cfe7571a3c24523a106f7db138e\";a:4:{s:10:\"expiration\";i:1665344701;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1664135101;}s:64:\"d3cac472bf5c27ca970cf3d44513ef286f3acc80c8625e2b362262275c0443bb\";a:4:{s:10:\"expiration\";i:1666264392;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1665054792;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '70'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:24:\"wpseo-dashboard-overview\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:18:\"add-post-type-post\";i:1;s:29:\"add-post-type-rassegna_stampa\";i:2;s:17:\"add-post-type-faq\";i:3;s:12:\"add-category\";i:4;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(26, 1, 'wp_user-settings-time', '1665054789'),
(27, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:368:\"<p>Abbiamo notato che hai abilitato gli aggiornamenti automatici per WordPress. Ti suggeriamo di attivarli anche per Yoast SEO. In questo modo possiamo garantire che WordPress e Yoast SEO continuino a funzionare assieme correttamente. <a href=\"http://prestakey/wp-admin/plugins.php\">Vai nel menu plugin per abilitare gli aggiornamenti automatici per Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:14:\"Matteo Pancani\";s:9:\"user_pass\";s:34:\"$P$BB/glDYRO2gA1oDJStvpmu0vpfskWu1\";s:13:\"user_nicename\";s:14:\"matteo-pancani\";s:10:\"user_email\";s:21:\"info@matteopancani.it\";s:8:\"user_url\";s:16:\"http://prestakey\";s:15:\"user_registered\";s:19:\"2022-09-14 07:58:18\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:14:\"Matteo Pancani\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:319:\"Non stai ricevendo aggiornamenti o assistenza! Risolvi il problema aggiungendo questo sito e abilitando Yoast SEO Premium in <a href=\"https://yoa.st/13j?php_version=7.4&platform=wordpress&platform_version=6.0.2&software=premium&software_version=19.7.1&days_active=6-30&user_language=it_IT\" target=\"_blank\">My Yoast</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:31:\"wpseo-dismiss-yoast-seo-premium\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:14:\"Matteo Pancani\";s:9:\"user_pass\";s:34:\"$P$BB/glDYRO2gA1oDJStvpmu0vpfskWu1\";s:13:\"user_nicename\";s:14:\"matteo-pancani\";s:10:\"user_email\";s:21:\"info@matteopancani.it\";s:8:\"user_url\";s:16:\"http://prestakey\";s:15:\"user_registered\";s:19:\"2022-09-14 07:58:18\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:14:\"Matteo Pancani\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:80:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:22:\"wpseo_manage_redirects\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:24:\"wpcf7_edit_contact_forms\";b:1;s:12:\"create_posts\";b:1;s:17:\"install_languages\";b:1;s:14:\"resume_plugins\";b:1;s:13:\"resume_themes\";b:1;s:23:\"view_site_health_checks\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(28, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_page', 'a:0:{}'),
(30, 1, 'closedpostboxes_faq', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(31, 1, 'metaboxhidden_faq', 'a:0:{}'),
(32, 1, 'closedpostboxes_toplevel_page_maintenance', 'a:2:{i:0;s:8:\"mtnc-toc\";i:1;s:11:\"mtnc-themes\";}'),
(33, 1, 'metaboxhidden_toplevel_page_maintenance', 'a:0:{}'),
(34, 2, 'nickname', 'fabio'),
(35, 2, 'first_name', 'Fabio'),
(36, 2, 'last_name', 'Psoroulas'),
(37, 2, 'description', ''),
(38, 2, 'rich_editing', 'true'),
(39, 2, 'syntax_highlighting', 'true'),
(40, 2, 'comment_shortcuts', 'false'),
(41, 2, 'admin_color', 'fresh'),
(42, 2, 'use_ssl', '0'),
(43, 2, 'show_admin_bar_front', 'true'),
(44, 2, 'locale', ''),
(45, 2, 'wp_capabilities', 'a:1:{s:9:\"prestakey\";b:1;}'),
(46, 2, 'wp_user_level', '2'),
(47, 2, '_yoast_wpseo_profile_updated', '1664268052'),
(48, 2, 'dismissed_wp_pointers', ''),
(49, 2, 'session_tokens', 'a:3:{s:64:\"02852d36f5a4a0f2fe0c703fb3f0903357302053b243de35a5f5272378449b9f\";a:4:{s:10:\"expiration\";i:1665477729;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1664268129;}s:64:\"a87c57f7936f3688df8e809b5b82dc4566ed7fa0c6506b8bbb481b773c827140\";a:4:{s:10:\"expiration\";i:1664460636;s:2:\"ip\";s:13:\"101.56.57.232\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1664287836;}s:64:\"f21ee51c8bdb7f5e20b08dc97c90ac42dce6b4a7087bf5f1e326db49743b13d4\";a:4:{s:10:\"expiration\";i:1665563058;s:2:\"ip\";s:13:\"101.56.57.232\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1664353458;}}'),
(50, 2, 'wp_dashboard_quick_press_last_post_id', '66'),
(51, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"101.56.57.0\";}'),
(52, 2, 'closedpostboxes_dashboard', 'a:0:{}'),
(53, 2, 'metaboxhidden_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:24:\"wpseo-dashboard-overview\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(54, 2, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(55, 2, 'metaboxhidden_post', 'a:0:{}'),
(56, 2, 'wp_user-settings', 'libraryContent=browse'),
(57, 2, 'wp_user-settings-time', '1664268365'),
(58, 3, 'nickname', 'roberto'),
(59, 3, 'first_name', 'Roberto'),
(60, 3, 'last_name', 'Ghilardini'),
(61, 3, 'description', ''),
(62, 3, 'rich_editing', 'true'),
(63, 3, 'syntax_highlighting', 'true'),
(64, 3, 'comment_shortcuts', 'false'),
(65, 3, 'admin_color', 'fresh'),
(66, 3, 'use_ssl', '0'),
(67, 3, 'show_admin_bar_front', 'true'),
(68, 3, 'locale', ''),
(69, 3, 'wp_capabilities', 'a:1:{s:9:\"prestakey\";b:1;}'),
(70, 3, 'wp_user_level', '2'),
(71, 3, '_yoast_wpseo_profile_updated', '1664288875'),
(72, 3, 'dismissed_wp_pointers', ''),
(73, 3, 'wpseo_title', ''),
(74, 3, 'wpseo_metadesc', ''),
(75, 3, 'wpseo_noindex_author', ''),
(76, 3, 'wpseo_content_analysis_disable', ''),
(77, 3, 'wpseo_keyword_analysis_disable', ''),
(78, 3, 'wpseo_user_schema', 'a:0:{}'),
(79, 3, 'facebook', ''),
(80, 3, 'instagram', ''),
(81, 3, 'linkedin', ''),
(82, 3, 'myspace', ''),
(83, 3, 'pinterest', ''),
(84, 3, 'soundcloud', ''),
(85, 3, 'tumblr', ''),
(86, 3, 'twitter', ''),
(87, 3, 'youtube', ''),
(88, 3, 'wikipedia', ''),
(89, 1, '_yoast_wpseo_profile_updated', '1664288896'),
(90, 1, 'wpseo_title', ''),
(91, 1, 'wpseo_metadesc', ''),
(92, 1, 'wpseo_noindex_author', ''),
(93, 1, 'wpseo_content_analysis_disable', ''),
(94, 1, 'wpseo_keyword_analysis_disable', ''),
(95, 1, 'wpseo_user_schema', 'a:0:{}'),
(96, 1, 'facebook', ''),
(97, 1, 'instagram', ''),
(98, 1, 'linkedin', ''),
(99, 1, 'myspace', ''),
(100, 1, 'pinterest', ''),
(101, 1, 'soundcloud', ''),
(102, 1, 'tumblr', ''),
(103, 1, 'twitter', ''),
(104, 1, 'youtube', ''),
(105, 1, 'wikipedia', ''),
(106, 3, 'session_tokens', 'a:1:{s:64:\"b2d0819ff97271e29f05c721541d96578960e33c0fb1e8a00fd6f36280a1f570\";a:4:{s:10:\"expiration\";i:1664699150;s:2:\"ip\";s:11:\"95.74.9.106\";s:2:\"ua\";s:143:\"Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/105.0.5195.147 Mobile/15E148 Safari/604.1\";s:5:\"login\";i:1664526350;}}'),
(107, 3, 'wp_dashboard_quick_press_last_post_id', '69'),
(108, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"95.74.9.0\";}');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Matteo Pancani', '$P$BB/glDYRO2gA1oDJStvpmu0vpfskWu1', 'matteo-pancani', 'info@matteopancani.it', 'http://prestakey', '2022-09-14 07:58:18', '', 0, 'Matteo Pancani'),
(2, 'fabio', '$P$BhT2umH.ZhiUWWA2jcmD/pyJF8tont1', 'fabio', 'f.psoroulas@investimentodigitale.it', 'http://www.prestakey.it', '2022-09-27 08:40:52', '', 0, 'Fabio Psoroulas'),
(3, 'roberto', '$P$BRFAyFOKzhZliILXjYW5laXBGPI7/00', 'roberto', 'r.ghilardini@investimentodigitale.it', '', '2022-09-27 14:17:56', '', 0, 'roberto');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, NULL, NULL, 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Senza categoria', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:46', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(2, 'http://prestakey/author/matteo-pancani/', '39:722463f3952bde3657cab71845c2c8ed', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/9752db2c5fd939d3cac444ae2ae7fde8?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/9752db2c5fd939d3cac444ae2ae7fde8?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-09-25 20:26:47', '2022-10-12 08:14:14', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-26 15:03:39', '2022-09-14 07:59:10'),
(3, NULL, NULL, 37, 'post', 'attachment', 1, 0, NULL, NULL, 'favicon-prestakey', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://prestakey/wp-content/uploads/2022/09/favicon-prestakey.png', NULL, '37', 'attachment-image', NULL, NULL, 'http://prestakey/wp-content/uploads/2022/09/favicon-prestakey.png', '37', 'attachment-image', '{\n    \"width\": 512,\n    \"height\": 512,\n    \"filesize\": 41012,\n    \"url\": \"http://prestakey/wp-content/uploads/2022/09/favicon-prestakey.png\",\n    \"path\": \"D:\\\\www\\\\web\\\\www.prestakey.it/wp-content/uploads/2022/09/favicon-prestakey.png\",\n    \"size\": \"full\",\n    \"id\": 37,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-25 20:22:55', '2022-09-25 20:22:55'),
(4, NULL, NULL, 38, 'post', 'attachment', 1, 0, NULL, NULL, 'cropped-favicon-prestakey.png', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://prestakey/wp-content/uploads/2022/09/cropped-favicon-prestakey.png', NULL, '38', 'attachment-image', NULL, NULL, 'http://prestakey/wp-content/uploads/2022/09/cropped-favicon-prestakey.png', '38', 'attachment-image', '{\n    \"width\": 512,\n    \"height\": 512,\n    \"filesize\": 44163,\n    \"url\": \"http://prestakey/wp-content/uploads/2022/09/cropped-favicon-prestakey.png\",\n    \"path\": \"D:\\\\www\\\\web\\\\www.prestakey.it/wp-content/uploads/2022/09/cropped-favicon-prestakey.png\",\n    \"size\": \"full\",\n    \"id\": 38,\n    \"alt\": \"\",\n    \"pixels\": 262144,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-25 20:22:56', '2022-09-25 20:22:56'),
(5, NULL, NULL, 16, 'post', 'faq', 1, 0, NULL, NULL, '￼Mauris id nibh eu fermentum mattis purus?', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 14:59:41', '2022-09-19 09:34:52'),
(6, NULL, NULL, 19, 'post', 'faq', 1, 0, NULL, NULL, '￼Mauris id nibh eu fermentum mattis purus?', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 14:59:40', '2022-09-19 12:01:13'),
(7, NULL, NULL, 20, 'post', 'faq', 1, 0, NULL, NULL, '￼Mauris id nibh eu fermentum mattis purus?', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 14:59:40', '2022-09-19 12:01:13'),
(8, NULL, NULL, 17, 'post', 'faq', 1, 0, NULL, NULL, '￼Mauris id nibh eu fermentum mattis purus?', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 14:59:39', '2022-09-19 12:01:14'),
(9, NULL, NULL, 18, 'post', 'faq', 1, 0, NULL, NULL, '￼Mauris id nibh eu fermentum mattis purus?', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 14:59:39', '2022-09-19 12:01:14'),
(10, 'http://prestakey/', '17:e64d9b1efb720e6ec3c31f8e6e941847', 10, 'post', 'page', 1, 0, NULL, NULL, 'Home page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-10-12 08:14:15', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-17 09:27:11', '2022-09-17 09:20:11'),
(11, 'http://prestakey/sono-un-privato/', '33:68143d05592b7ea99541746ae4969f1d', 28, 'post', 'page', 1, 0, NULL, NULL, 'Sono un privato', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-10-12 08:16:46', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-19 17:28:15', '2022-09-19 17:28:15'),
(12, 'http://prestakey/sono-una-azienda/', '34:afa754764e8f5df6dee0f2e76c5644c4', 30, 'post', 'page', 1, 0, NULL, NULL, 'Sono un&#8217;azienda', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:26:47', '2022-10-12 08:14:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-20 11:42:15', '2022-09-19 17:28:29'),
(13, NULL, NULL, 2, 'post', 'page', 1, 0, NULL, NULL, 'Pagina di esempio', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-14 07:59:21', '2022-09-14 07:58:19'),
(14, NULL, NULL, 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:47', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-14 07:59:22', '2022-09-14 07:58:19'),
(23, 'http://prestakey/faq/', '21:1042ae74c878cb4979f9276b25591a32', NULL, 'post-type-archive', 'faq', NULL, NULL, 'Archivi %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'Faq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:48', '2022-10-12 08:39:54', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-26 15:03:39', '2022-09-26 15:00:07'),
(24, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Pagina non trovata %%sep%% %%sitename%%', NULL, 'Errore 404: Pagina non trovata', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:49', '2022-10-12 08:32:01', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(25, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Hai cercato %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:49', '2022-10-12 10:07:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(26, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:26:49', '2022-10-12 10:07:03', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(27, 'http://prestakey/', '17:e64d9b1efb720e6ec3c31f8e6e941847', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Il tuo finanziamento facile, veloce e smart.', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-25 20:27:26', '2022-10-12 08:14:15', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(28, 'http://prestakey/contatti/', '26:861d98cb304ae2ee83c3320d65740ca4', 40, 'post', 'page', 1, 0, NULL, NULL, 'Contatti', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:01', '2022-10-12 08:40:49', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-25 20:33:02', '2022-09-25 20:33:01'),
(29, NULL, NULL, 42, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:08', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:58', '2022-09-25 20:33:15'),
(30, NULL, NULL, 14, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:15', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:56', '2022-09-18 20:06:05'),
(31, NULL, NULL, 33, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:15', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:56', '2022-09-19 17:28:51'),
(32, NULL, NULL, 32, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Sono un’azienda', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:15', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:57', '2022-09-19 17:28:51'),
(33, NULL, NULL, 36, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'FAQ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-25 20:33:15', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:58', '2022-09-25 19:48:05'),
(34, 'http://prestakey/sei-una-banca/', '31:8acf744b674e92b5b552f29448e9c170', 43, 'post', 'page', 1, 0, NULL, NULL, 'Sei una banca?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 05:33:12', '2022-10-12 08:27:12', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-26 05:33:12', '2022-09-26 05:33:11'),
(35, NULL, NULL, 45, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 05:33:19', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:57', '2022-09-26 05:33:24'),
(36, 'http://prestakey/chi-siamo/', '27:4ebe174f30179f0da490a14249416eff', 46, 'post', 'page', 1, 0, NULL, NULL, 'Chi siamo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 05:55:19', '2022-10-12 08:32:01', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-26 05:55:19', '2022-09-26 05:55:19'),
(37, NULL, NULL, 48, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 05:55:26', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:58', '2022-09-26 05:55:35'),
(38, 'http://prestakey/come-funziona/', '31:0f90f01c5461ee16016013310aa40a9e', 49, 'post', 'page', 1, 0, NULL, NULL, 'Come funziona', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 06:10:39', '2022-10-12 08:14:29', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-26 06:10:40', '2022-09-26 06:10:39'),
(39, NULL, NULL, 51, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 06:10:45', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 06:10:57', '2022-09-26 06:10:57'),
(40, NULL, NULL, 52, 'post', 'attachment', 1, 0, NULL, NULL, 'stefano-vantaggiato', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://prestakey/wp-content/uploads/2022/09/stefano-vantaggiato.jpg', NULL, '52', 'attachment-image', NULL, NULL, NULL, '52', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-26 11:34:14', '2022-09-27 08:30:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-26 11:34:14', '2022-09-26 11:34:14'),
(41, NULL, NULL, 53, 'post', 'faq', 1, 0, NULL, NULL, 'Qual è l’importo massimo che posso richiedere tramite PrestaKey?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:00:07', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 1, 0, '2022-09-26 15:00:08', '2022-09-26 15:00:07'),
(42, NULL, NULL, 54, 'post', 'faq', 1, 0, NULL, NULL, 'Quanto tempo ci vuole per sapere se la mia richiesta di finanziamento è stata approvata oppure no?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:00:37', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:00:38', '2022-09-26 15:00:37'),
(43, NULL, NULL, 55, 'post', 'faq', 1, 0, NULL, NULL, 'Quanto tempo ci vuole per ottenere il finanziamento richiesto?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:00:57', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:00:58', '2022-09-26 15:00:57'),
(44, NULL, NULL, 56, 'post', 'faq', 1, 0, NULL, NULL, 'Sono una Partita IVA. Quali sono i requisiti da avere per avere un prestito?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:01:14', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:01:14', '2022-09-26 15:01:13'),
(45, NULL, NULL, 57, 'post', 'faq', 1, 0, NULL, NULL, 'Sono un’azienda. Quali sono i requisiti da avere per avere un finanziamento?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:01:22', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:01:23', '2022-09-26 15:01:22'),
(46, NULL, NULL, 58, 'post', 'faq', 1, 0, NULL, NULL, 'Quali documenti devo fornire per formulare la richiesta di credito?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:02:24', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 1, 0, '2022-09-26 15:02:24', '2022-09-26 15:02:24'),
(47, NULL, NULL, 59, 'post', 'faq', 1, 0, NULL, NULL, 'Ho bisogno di un garante per ricevere il mio prestito?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:02:38', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:02:39', '2022-09-26 15:02:38'),
(48, NULL, NULL, 60, 'post', 'faq', 1, 0, NULL, NULL, 'Posso richiedere un finanziamento se ho dei pagamenti in sospeso o se sono su una lista di morosità?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:02:50', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:02:51', '2022-09-26 15:02:50'),
(49, NULL, NULL, 61, 'post', 'faq', 1, 0, NULL, NULL, 'Come funziona il rimborso del credito?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:02:59', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:02:59', '2022-09-26 15:02:59'),
(50, NULL, NULL, 62, 'post', 'faq', 1, 0, NULL, NULL, 'Perché avete bisogno di così tante informazioni?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:03:12', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:03:13', '2022-09-26 15:03:12'),
(51, NULL, NULL, 63, 'post', 'faq', 1, 0, NULL, NULL, 'Posso chiedere a PrestaKey di eliminare i miei dati personali?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:03:23', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:03:24', '2022-09-26 15:03:23'),
(52, NULL, NULL, 64, 'post', 'faq', 1, 0, NULL, NULL, 'Dove sarà versata la liquidità richiesta?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-26 15:03:38', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-09-26 15:03:39', '2022-09-26 15:03:38'),
(53, NULL, NULL, 2, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/0cf6f0ed59cf950553b8f2e674557fc1?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/0cf6f0ed59cf950553b8f2e674557fc1?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-09-27 08:40:52', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-27 10:40:52', NULL),
(54, NULL, NULL, 3, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/76a05205aa307c57f6b8fb1e80e55c28?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/76a05205aa307c57f6b8fb1e80e55c28?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-09-27 14:17:56', '2022-09-27 20:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-27 16:27:55', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(2, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(23, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(38, 0, 0, 1),
(39, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(24, '20190715101200'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(25, '20210827093024'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_prominent_words`
--

CREATE TABLE `wp_yoast_prominent_words` (
  `id` int(11) UNSIGNED NOT NULL,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indici per le tabelle `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indici per le tabelle `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indici per le tabelle `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indici per le tabelle `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indici per le tabelle `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indici per le tabelle `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indici per le tabelle `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indici per le tabelle `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indici per le tabelle `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indici per le tabelle `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indici per le tabelle `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indici per le tabelle `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stem` (`stem`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `indexable_id_and_stem` (`indexable_id`,`stem`);

--
-- Indici per le tabelle `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4491;

--
-- AUTO_INCREMENT per la tabella `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT per la tabella `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT per la tabella `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT per la tabella `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_yoast_prominent_words`
--
ALTER TABLE `wp_yoast_prominent_words`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
