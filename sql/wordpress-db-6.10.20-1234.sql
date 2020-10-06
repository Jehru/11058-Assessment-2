# WordPress MySQL database migration
#
# Generated: Tuesday 6. October 2020 02:28 UTC
# Hostname: localhost
# Database: `wordpress`
# URL: //127.0.0.1/11058-Assessment-2
# Path: /Applications/MAMP/htdocs/11058-Assessment-2
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, nav_menu_item, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-20 01:37:29', '2020-09-20 01:37:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/11058-Assessment-2', 'yes'),
(2, 'home', 'http://127.0.0.1/11058-Assessment-2', 'yes'),
(3, 'blogname', 'Mid-Century Canberra', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jehru.e.harris@gmail.com', 'yes'),
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
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-bootstrap', 'yes'),
(41, 'stylesheet', 'wp-bootstrap', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(91, 'admin_email_lifespan', '1616117848', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'en_AU', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1601951850;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1601991450;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1602034649;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602034658;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602034660;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602466649;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601266114;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(190, 'recently_activated', 'a:0:{}', 'yes'),
(213, 'theme_mods_hello-elementor', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(214, 'neve_install', '1601200147', 'yes'),
(217, 'theme_mods_neve', 'a:2:{s:24:"neve_migrated_hfg_colors";b:1;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(234, 'current_theme', 'WP Bootstrap Starter', 'yes'),
(235, 'theme_mods_understrap', 'a:7:{i:0;b:0;s:28:"understrap_posts_index_style";s:7:"default";s:27:"understrap_sidebar_position";s:5:"right";s:25:"understrap_container_type";s:9:"container";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601593266;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:13:"right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"left-sidebar";a:0:{}s:4:"hero";a:0:{}s:10:"herocanvas";a:0:{}s:10:"statichero";a:0:{}s:10:"footerfull";a:0:{}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(236, 'theme_switched', '', 'yes'),
(240, 'theme_mods_underscores', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601278720;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(270, 'theme_mods_understrap-child', 'a:7:{i:0;b:0;s:28:"understrap_posts_index_style";s:7:"default";s:27:"understrap_sidebar_position";s:5:"right";s:25:"understrap_container_type";s:9:"container";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601594626;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:13:"right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"left-sidebar";a:0:{}s:4:"hero";a:0:{}s:10:"herocanvas";a:0:{}s:10:"statichero";a:0:{}s:10:"footerfull";a:0:{}}}}', 'yes'),
(299, 'theme_mods_spangle-lite', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601600176;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"headertopwidget";a:0:{}}}}', 'yes'),
(325, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(349, 'category_children', 'a:0:{}', 'yes'),
(363, 'theme_mods_wp-bootstrap', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1601600176;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}}}}', 'yes'),
(364, 'triggered_welcomet', '1', 'yes'),
(378, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1601951312;}', 'no'),
(485, 'new_admin_email', 'jehru.e.harris@gmail.com', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(32, 19, '_menu_item_type', 'custom'),
(33, 19, '_menu_item_menu_item_parent', '0'),
(34, 19, '_menu_item_object_id', '19'),
(35, 19, '_menu_item_object', 'custom'),
(36, 19, '_menu_item_target', ''),
(37, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 19, '_menu_item_xfn', ''),
(39, 19, '_menu_item_url', 'http://127.0.0.1/11058-Assessment-2/'),
(40, 19, '_menu_item_orphaned', '1601266496'),
(41, 20, '_menu_item_type', 'post_type'),
(42, 20, '_menu_item_menu_item_parent', '0'),
(43, 20, '_menu_item_object_id', '2'),
(44, 20, '_menu_item_object', 'page'),
(45, 20, '_menu_item_target', ''),
(46, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 20, '_menu_item_xfn', ''),
(48, 20, '_menu_item_url', ''),
(49, 20, '_menu_item_orphaned', '1601266496'),
(51, 2, '_edit_lock', '1601862455:1'),
(52, 23, '_menu_item_type', 'custom'),
(53, 23, '_menu_item_menu_item_parent', '0'),
(54, 23, '_menu_item_object_id', '23'),
(55, 23, '_menu_item_object', 'custom'),
(56, 23, '_menu_item_target', ''),
(57, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 23, '_menu_item_xfn', ''),
(59, 23, '_menu_item_url', 'http://127.0.0.1/11058-Assessment-2/'),
(60, 23, '_menu_item_orphaned', '1601285377'),
(61, 24, '_menu_item_type', 'post_type'),
(62, 24, '_menu_item_menu_item_parent', '0'),
(63, 24, '_menu_item_object_id', '2'),
(64, 24, '_menu_item_object', 'page'),
(65, 24, '_menu_item_target', ''),
(66, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 24, '_menu_item_xfn', ''),
(68, 24, '_menu_item_url', ''),
(69, 24, '_menu_item_orphaned', '1601285377'),
(70, 1, '_edit_lock', '1601418624:1'),
(71, 25, '_menu_item_type', 'custom'),
(72, 25, '_menu_item_menu_item_parent', '0'),
(73, 25, '_menu_item_object_id', '25'),
(74, 25, '_menu_item_object', 'custom'),
(75, 25, '_menu_item_target', ''),
(76, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 25, '_menu_item_xfn', ''),
(78, 25, '_menu_item_url', 'http://127.0.0.1/11058-Assessment-2/'),
(89, 27, '_edit_lock', '1601613669:1'),
(90, 29, '_edit_lock', '1601516769:1'),
(91, 31, '_edit_lock', '1601950977:1'),
(92, 33, '_edit_lock', '1601516791:1'),
(93, 36, '_menu_item_type', 'post_type'),
(94, 36, '_menu_item_menu_item_parent', '0'),
(95, 36, '_menu_item_object_id', '33'),
(96, 36, '_menu_item_object', 'page'),
(97, 36, '_menu_item_target', ''),
(98, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 36, '_menu_item_xfn', ''),
(100, 36, '_menu_item_url', ''),
(102, 37, '_menu_item_type', 'post_type'),
(103, 37, '_menu_item_menu_item_parent', '0'),
(104, 37, '_menu_item_object_id', '31'),
(105, 37, '_menu_item_object', 'page'),
(106, 37, '_menu_item_target', ''),
(107, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 37, '_menu_item_xfn', ''),
(109, 37, '_menu_item_url', ''),
(111, 38, '_menu_item_type', 'post_type'),
(112, 38, '_menu_item_menu_item_parent', '0'),
(113, 38, '_menu_item_object_id', '29'),
(114, 38, '_menu_item_object', 'page'),
(115, 38, '_menu_item_target', ''),
(116, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 38, '_menu_item_xfn', ''),
(118, 38, '_menu_item_url', ''),
(120, 39, '_menu_item_type', 'post_type'),
(121, 39, '_menu_item_menu_item_parent', '0'),
(122, 39, '_menu_item_object_id', '27'),
(123, 39, '_menu_item_object', 'page'),
(124, 39, '_menu_item_target', ''),
(125, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 39, '_menu_item_xfn', ''),
(127, 39, '_menu_item_url', ''),
(129, 40, '_edit_lock', '1601600322:1'),
(130, 42, '_menu_item_type', 'post_type'),
(131, 42, '_menu_item_menu_item_parent', '0'),
(132, 42, '_menu_item_object_id', '40'),
(133, 42, '_menu_item_object', 'page'),
(134, 42, '_menu_item_target', ''),
(135, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 42, '_menu_item_xfn', ''),
(137, 42, '_menu_item_url', ''),
(139, 27, '_edit_last', '1'),
(140, 27, '_wp_page_template', 'default'),
(141, 31, '_edit_last', '1'),
(142, 31, '_wp_page_template', 'default'),
(143, 50, '_edit_last', '1'),
(144, 50, '_edit_lock', '1601858372:1'),
(145, 50, '_wp_page_template', 'default') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(146, 54, '_edit_last', '1'),
(147, 54, '_wp_page_template', 'default'),
(148, 54, '_edit_lock', '1601951002:1'),
(149, 56, '_edit_last', '1'),
(150, 56, '_edit_lock', '1601887195:1'),
(151, 56, '_wp_page_template', 'default'),
(152, 58, '_edit_last', '1'),
(153, 58, '_edit_lock', '1601887239:1'),
(154, 58, '_wp_page_template', 'default'),
(155, 44, '_edit_last', '1'),
(156, 44, '_edit_lock', '1601862418:1'),
(157, 44, '_wp_trash_meta_status', 'draft'),
(158, 44, '_wp_trash_meta_time', '1601862421'),
(159, 44, '_wp_desired_post_slug', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-20 01:37:29', '2020-09-20 01:37:29', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://127.0.0.1/11058-Assessment-2/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'draft', 'closed', 'open', '', 'sample-page', '', '', '2020-10-01 01:49:20', '2020-10-01 01:49:20', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1/11058-Assessment-2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-20 01:37:29', '2020-09-20 01:37:29', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=3', 0, 'page', '', 0),
(19, 1, '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2020-09-28 04:14:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=20', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-09-28 09:29:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-10-01 01:47:26', '2020-10-01 01:47:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=25', 1, 'nav_menu_item', '', 0),
(27, 1, '2020-10-01 01:48:17', '2020-10-01 01:48:17', 'Mid-Century Modernist Bus Tour:\r\nGrounds &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Grounds and other architects.\r\n\r\nRoy Grounds (1905-1981) was a renowned Victorian architect and a leader in Australia’s modern architecture movement. During his early career he spent some time working in the United States and England and after the war he was involved in setting up the curriculum for the School of Architecture at the University of Melbourne. Between 1953 and 1962, Grounds was part of the Grounds, Romberg and Boyd partnership, in which time he designed the Australian Academy of Science in Canberra.\r\n\r\nThis tour will pick-up and drop-off from the Corner of Parkes Pl W and Queen Elizabeth Terrace. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n----\r\n\r\nMid-Century Modernist Bus Tour:\r\nBoyd &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Boyd and other architects.\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading proponent of the modern movement. Boyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist solutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading practitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts, both in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nThis tour will pick-up and drop-off from the corner of Watson Street and Gould Street in Turner. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n&nbsp;\r\n\r\n----\r\n\r\n&nbsp;\r\n\r\nMid Century Modern Tour #3\r\n\r\nUse and Re-Use\r\n\r\nBack by popular demand, this year’s architecture tours will take their cue from the Design Canberra theme: geometry. The Design Canberra festival will celebrate the strong geometry present throughout our city and the ways it creates human, creative and global connections.\r\n\r\nThe tours will introduce people to architects who have used geometric forms in a variety of ways to shape spaces for people. How have the designers of these houses and buildings used geometric principles to create dwellings that comfort and inspire their occupants? From simple rectilinear forms and modular designs to complex examples using the Pythagorean spiral and hemicycle, we’ll visit some of Canberra’s most significant houses and buildings.\r\n\r\nThis tour looks at the future of mid-century design. We’ll visit mid-century houses, an embassy and a church. How are they meeting the needs of occupants today, and how are people adapting them for current and future needs?\r\n\r\nThe tours will be presented by local architecture enthusiast and author of Canberra House, Martin Miles. The tours will also feature a variety of special guests, including internationally renowned architects and planners. Please meet at the Civic Square bus stop at 8:50am. (Buses will depart and return to this location each week.)\r\n\r\nPlease note that the bus, as well as some locations, will require stair access as well as moderate walking. Please contact us if you have any questions regarding accessibility.\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-65.png\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-43.png', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2020-10-02 04:34:02', '2020-10-02 04:34:02', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-10-01 01:48:17', '2020-10-01 01:48:17', '', 'News', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-10-01 01:48:17', '2020-10-01 01:48:17', '', 27, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 'Houses', '', 'publish', 'closed', 'closed', '', 'houses', '', '', '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 'Houses', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 29, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-10-01 01:48:42', '2020-10-01 01:48:42', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/robin-boyd/">Robin Boyd</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/harry-seidler/">Harry Seidler</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/enrico-taglietti/">Enrico Taglietti</a>', 'Architects', '', 'publish', 'closed', 'closed', '', 'architects', '', '', '2020-10-05 00:13:28', '2020-10-05 00:13:28', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 33, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-10-01 01:49:20', '2020-10-01 01:49:20', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://127.0.0.1/11058-Assessment-2/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-01 01:49:20', '2020-10-01 01:49:20', '', 2, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2020-10-01 01:51:39', '2020-10-01 01:51:39', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-01 01:51:40', '2020-10-01 01:51:40', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-10-01 01:51:40', '2020-10-01 01:51:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-01 01:51:40', '2020-10-01 01:51:40', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-10-01 01:52:01', '2020-10-01 01:52:01', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=42', 6, 'nav_menu_item', '', 0),
(43, 1, '2020-10-02 04:34:02', '2020-10-02 04:34:02', 'Mid-Century Modernist Bus Tour:\r\nGrounds &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Grounds and other architects.\r\n\r\nRoy Grounds (1905-1981) was a renowned Victorian architect and a leader in Australia’s modern architecture movement. During his early career he spent some time working in the United States and England and after the war he was involved in setting up the curriculum for the School of Architecture at the University of Melbourne. Between 1953 and 1962, Grounds was part of the Grounds, Romberg and Boyd partnership, in which time he designed the Australian Academy of Science in Canberra.\r\n\r\nThis tour will pick-up and drop-off from the Corner of Parkes Pl W and Queen Elizabeth Terrace. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n----\r\n\r\nMid-Century Modernist Bus Tour:\r\nBoyd &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Boyd and other architects.\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading proponent of the modern movement. Boyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist solutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading practitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts, both in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nThis tour will pick-up and drop-off from the corner of Watson Street and Gould Street in Turner. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n&nbsp;\r\n\r\n----\r\n\r\n&nbsp;\r\n\r\nMid Century Modern Tour #3\r\n\r\nUse and Re-Use\r\n\r\nBack by popular demand, this year’s architecture tours will take their cue from the Design Canberra theme: geometry. The Design Canberra festival will celebrate the strong geometry present throughout our city and the ways it creates human, creative and global connections.\r\n\r\nThe tours will introduce people to architects who have used geometric forms in a variety of ways to shape spaces for people. How have the designers of these houses and buildings used geometric principles to create dwellings that comfort and inspire their occupants? From simple rectilinear forms and modular designs to complex examples using the Pythagorean spiral and hemicycle, we’ll visit some of Canberra’s most significant houses and buildings.\r\n\r\nThis tour looks at the future of mid-century design. We’ll visit mid-century houses, an embassy and a church. How are they meeting the needs of occupants today, and how are people adapting them for current and future needs?\r\n\r\nThe tours will be presented by local architecture enthusiast and author of Canberra House, Martin Miles. The tours will also feature a variety of special guests, including internationally renowned architects and planners. Please meet at the Civic Square bus stop at 8:50am. (Buses will depart and return to this location each week.)\r\n\r\nPlease note that the bus, as well as some locations, will require stair access as well as moderate walking. Please contact us if you have any questions regarding accessibility.\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-65.png\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-43.png', 'News', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-10-02 04:34:02', '2020-10-02 04:34:02', '', 27, 'http://127.0.0.1/11058-Assessment-2/2020/10/02/27-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-05 01:47:01', '2020-10-05 01:47:01', '<!-- wp:paragraph --><!-- /wp:paragraph -->', 'xvdv', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2020-10-05 01:47:01', '2020-10-05 01:47:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=44', 0, 'post', '', 0),
(45, 1, '2020-10-04 22:50:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-04 22:50:42', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=45', 0, 'post', '', 0),
(46, 1, '2020-10-04 22:50:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-04 22:50:46', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=46', 0, 'post', '', 0),
(47, 1, '2020-10-05 00:09:09', '2020-10-05 00:09:09', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\n\n&nbsp;\n\nRoy Grounds\n\nRobin Boyd\n\nHarry Seider\n\nEnrico Taglietti', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2020-10-05 00:09:09', '2020-10-05 00:09:09', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/04/31-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2020-10-04 23:12:43', '2020-10-04 23:12:43', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-04 23:12:43', '2020-10-04 23:12:43', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/04/31-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-10-05 00:09:32', '2020-10-05 00:09:32', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n&nbsp;\r\n\r\nRoy Grounds\r\n\r\nRobin Boyd\r\n\r\nHarry Seider\r\n\r\nEnrico Taglietti', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:09:32', '2020-10-05 00:09:32', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-10-05 00:10:06', '2020-10-05 00:10:06', 'ROY GROUNDS\r\n\r\nAcademy of Science\r\nACADEMY OF SCIENCE (1959)\r\n\r\nRoy Grounds (1905-1981) is recognised as one of Australia’s leading architects of the modern movement and a key practitioner of the post-war Melbourne regional style of architecture. Grounds was educated at Melbourne University and articled to the large architectural firm of Blackett, Forster and Craig. After winning an award from the Royal Victorian Institute of Architects (RVIA) in 1932, he travelled and worked in England and the United States for two years, gaining exposure to contemporary architectural developments.\r\n\r\nEARLY CAREER\r\n\r\nOn his return to Australia, Grounds set up in partnership with his friend Geoffrey Mewton. Together, they were largely responsible for introducing the international style to Melbourne. Grounds’s own house, Ranelagh, at Mt Eliza (1933-34) and Mewton’s Stooke House at Brighton (1934) were fine examples of the inter-war functionalist style and highly regarded by the RVIA. Grounds ended this practice in 1936 and travelled in England until 1939, when he returned to Australia and worked on defence buildings during World War II.\r\n\r\nRESIDENTIAL ARCHITECTURE IN MELBOURNE\r\n\r\nGrounds practised by himself between 1939 and 1942 and designed a series of houses and flats (including Moonbria, 1940-41) which established his reputation as one of the foremost architects in Victoria. After the war, Grounds was involved in setting up the curriculum for the School of Architecture at Melbourne University and lectured in design. He resumed his architectural practice and became interested in formal, geometrically based designs. A series of houses followed with the circle (Frankston, 1952), the triangle and the square (Toorak, 1953-54) as their basis.\r\n\r\nGROUNDS, ROMBERG AND BOYD\r\n\r\nWhen Grounds, Frederick Romberg (1910-1992) and Robin Boyd (1919-1971) formed their partnership in 1953 all were well established in Victoria. Each brought substantial work to the practice and the firm became very successful. The partnership was largely based on the three architects agreeing to work together and share commissions and profits. However, in practice, they tended to design separately within the office.\r\n\r\nAUSTRALIAN ACADEMY OF SCIENCE\r\n\r\nSuccess in a limited competition for the proposed Australian Academy of Science provided an opportunity for Grounds to undertake a major building project—his first large commission. The dome shaped, structuralist building became an icon of modern Canberra and the construction of its reinforced concrete dome was a considerable technical achievement. It won the Meritorious Architecture Award of the Canberra Area Committee of the RAIA and the Sulman Award for Architectural Merit. Grounds became a national figure as a result. The RAIA has recently nominated the Academy of Science building to the International Union of Architects’ (UIA) World Register of Significant Twentieth Century Australian Architecture. The Academy building also led to other work in Canberra, initially for the firm and later Grounds himself. Grounds opened a Canberra office in the Forrest Townhouses (1959), which he partly financed.\r\n\r\nIn 1959 the firm was awarded the commission to design the National Gallery of Victoria and Cultural Centre, with Grounds named in the contract as the architect in charge. When Boyd and Romberg were mildly critical of the preliminary designs that Grounds showed them, relations between the partners became strained. In 1962 Grounds left the partnership, taking the commission with him. He devoted the next twenty years of his life to their completion.\r\n\r\nRAIA GOLD MEDAL\r\n\r\nGrounds was awarded the RAIA Gold Medal in 1968 and knighted in the same year. In 1969 he was elected a life fellow of the RAIA. Jennifer Taylor has noted that Grounds\r\n\r\ncombined rationalism and economical planning with a love of warm, natural materials\r\nJennifer Taylor\r\nHis buildings, mostly houses, blended sensitively with their sites. There are several excellent examples of his work in Canberra.\r\n\r\nWORKS IN CANBERRA\r\n\r\nForrest Townhouses, 3 Tasmania Circle, Forrest (1959)\r\nAustralian Academy of Science (1959)\r\n42, 44 and 46 Vasey Crescent, Campbell (1960)\r\n144 Dryandra Street, O’Connor (1961)\r\nCSIRO Phytotron Building, Clunies Ross Street, Acton (1963)\r\n24 Cobby Street, Campbell (1963-64)\r\nCivic Zone Substation, Frith Road, Acton (1965)\r\nANU Botany Building (1968)\r\n4 Cobby Street, Campbell (1969-70)\r\n\r\nOTHER NOTABLE WORKS IN VICTORIA\r\n\r\nRanelagh, 35 Rannoch Avenue, Mt Eliza (1934-35)\r\nEvan Price House, 2 Riverview Road, Essendon (1935-36)\r\nBellaire Flats, 3 Cowderoy Street, St Kilda, (1936; Mewton and Grounds)\r\nMoonbria Flats, Mathoura Road, Toorak (1941)\r\nRound House, Oliver’s Hill, Frankston (1952)\r\nGrounds House and Flats, 24 Hill Street, Toorak (1953-54)\r\nNational Gallery of Victoria, St Kilda Road, Melbourne (1959-68)\r\nVictorian Arts Centre, St Kilda Road, Melbourne (1969-84)\r\nSOURCE\r\n\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990\r\nAlan Roberts, A big, bold, simple concept, Australian Academy of Science, 2010\r\nMilton Cameron, Experiments in Modern Living: Scientists’ Houses in Canberra 1950–1970, ANU, 2012\r\nConrad Hamann, Grounds, Sir Roy Burman (1905–1981), Australian Dictionary of Biography\r\nPhilip Goad, A Guide to Melbourne Architecture, Sydney, 1999\r\nGeoffrey Serle, Robin Boyd: A Life, Melbourne, 1995', 'Roy Grounds', '', 'publish', 'closed', 'closed', '', 'roy-grounds', '', '', '2020-10-05 00:39:32', '2020-10-05 00:39:32', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=50', 0, 'page', '', 0),
(51, 1, '2020-10-05 00:10:06', '2020-10-05 00:10:06', '', 'Roy Grounds', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-10-05 00:10:06', '2020-10-05 00:10:06', '', 50, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-10-05 00:10:29', '2020-10-05 00:10:29', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n&nbsp;\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\nRobin Boyd\r\n\r\nHarry Seider\r\n\r\nEnrico Taglietti', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:10:29', '2020-10-05 00:10:29', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-10-05 00:10:59', '2020-10-05 00:10:59', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\nRobin Boyd\r\n\r\nHarry Seider\r\n\r\nEnrico Taglietti', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:10:59', '2020-10-05 00:10:59', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-10-05 00:11:10', '2020-10-05 00:11:10', 'ROBIN BOYD\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a member of the famous Australian family of artists and writers.\r\nHe was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading\r\nproponent of the modern movement.\r\n\r\nBoyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist\r\nsolutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading\r\npractitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts,\r\nboth in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nEARLY WORK\r\n\r\nAfter the war, Boyd was articled to A and K Henderson in Melbourne and became active in architectural writing,\r\nediting the student newspaper Smudges. A short lived partnership followed with Kevin Pethebridge and Frank Bell\r\n(1945-1947), where he designed his first houses, including his own in Camberwell. He published Victorian Modern (1947),\r\nthe first history of modern architecture in Victoria.\r\n\r\nBoyd was the first Director of the Royal Victorian Institute of Architects Small Homes Service from 1947-1953 and\r\nfrom 1948 was the editor of this service for The Age newspaper, where he also wrote weekly articles. The service\r\nprovided designs of inexpensive houses, which attempted to incorporate modern architectural aesthetics and functional\r\nplanning and were sold to the public for a small fee. Boyd became a household name throughout Victoria as a result of\r\nthis exposure. In 1952 he published Australia’s Homes, an influential study of modernist architecture in Australia.\r\nIn 1953 he designed ‘The Peninsula’, perhaps Australia’s first project home.\r\n\r\nGROUNDS, ROMBERG AND BOYD\r\n\r\nIn 1953 Boyd, Frederick Romberg (1910-1992) and Roy Grounds (1905-1981) formed a partnership. The practice became a\r\nleading Melbourne architectural firm, where the three partners produced their own designs and sometimes shared\r\nsupervision work when one of them was travelling. Although the original intention was to collaborate on commissions,\r\nthey generally worked on their own designs within the partnership.\r\n\r\nBoyd produced a series of remarkable ‘idea’ houses during this period, many quite adventurous in structure and form.\r\nHis second house, at South Yarra (1957) had a draped catenary curved roof. He also continued his writing, becoming\r\nan international commentator on contemporary architecture. In 1956 he accepted an offer of a teaching position at\r\nMIT in Boston from Walter Gropius, a friend of Boyd’s and a Director at MIT. In 1960 Boyd published Australian\r\nUgliness, a book on the built environment and Australian suburbs.\r\n\r\nWhen Roy Grounds was awarded the commission to design the National Gallery of Victoria and Cultural Centre in 1959,\r\nrelations between the partners became strained. Grounds left the partnership in 1962 and took the commission with him.\r\nRomberg and Boyd continued in partnership until Boyd’s unexpected death in 1971 at the age of 52.\r\n\r\nLECTURES, BOOKS AND AWARDS\r\n\r\nIn 1967 Boyd presented the ABC’s Boyer Lectures and in 1970 published Living in Australia, a book of his later work,\r\nincluding the house at 12 Marawa Place, Aranda. He was made a Life Fellow of the RAIA and was awarded the RAIA Gold\r\nMedal in 1969. The RAIA named its annual national domestic architecture award after him, the Robin Boyd Award.\r\n\r\nSOURCE\r\n\r\nGeoffrey Serle, Robin Boyd: A Life, Melbourne, 1995\r\nPhilip Goad, A Guide to Melbourne Architecture, Sydney, 1999\r\n\r\nHOUSES\r\nClark House\r\nFenner House', 'Robin Boyd', '', 'publish', 'closed', 'closed', '', 'robin-boyd', '', '', '2020-10-05 08:39:29', '2020-10-05 08:39:29', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-10-05 00:11:10', '2020-10-05 00:11:10', '', 'Robin Boyd', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-10-05 00:11:10', '2020-10-05 00:11:10', '', 54, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-10-05 00:11:23', '2020-10-05 00:11:23', 'HARRY SEIDLER\r\n\r\nHarry Seidler was born in Vienna in 1923, arriving in Australia in 1948 from the United States. He is recognised as one of Australia’s leading architects of the modern movement and the first architect in Australia to fully express the principles of the Bauhaus. He designed many important residential and commercial buildings in Australia and overseas, introducing new ideas and construction techniques and making a major contribution to the architecture of Sydney. He was awarded the RAIA Gold Medal in 1976 and the Royal Institute of British Architects (RIBA) Gold Medal in 1996. Seidler died on 9 March, 2006.\r\n\r\nBACKGROUND AND TRAINING\r\n\r\nHis background and training was unlike that of local architects: he had studied under Walter Gropius and Marcel Breuer at the Harvard School of Design and at Black Mountain College in North Carolina with Joseph Albers. He also worked with Breuer at his New York practice and briefly with Oscar Niemeyer in Rio de Janeiro. Seidler decided to establish himself in Sydney in 1948 after visiting his parents, who had moved there.\r\n\r\nEARLY RESIDENTIAL WORK\r\n\r\nSeidler’s first house was the Rose Seidler House at Turramurra (1948). The glass walled, elevated cubiform house was revolutionary and introduced the Bauhaus principles of Gropius and Breuer into Australia for the first time. Seidler continued to present these concepts to the Australian public over the following years with a series of extremely well detailed houses, executed either in the box-like form of Le Corbusier or the bi-nuclear plan of Marcel Breuer, with living and sleeping areas separated by an entry hall. Along the way many important battles were fought and won with councils over issues relating to design (the butterfly roof), planning and zoning regulations. Experimentation with different forms was made possible with the introduction of advanced structural techniques. Since the early 1960s the geometric curve has been a recurring theme in Seidler’s work, with the quadrant being a favoured form. This can be seen to good effect in the later houses detailed on Seidler’s website.\r\n\r\nWith his apartment building projects, Seidler introduced ideas new to Sydney and Australia. Based largely on European and American apartment types, the split access, interlocking units with a divided plan, double height living rooms and mezzanine floors, took advantage of Sydney’s spectacular views from all main rooms. The Arlington Apartments at Edgecliff are a good example. The carefully composed facades of these buildings display abstract, asymmetrical, balanced patterns and are influenced by the European art movements of the 1920s and 1930s.\r\n\r\nLARGER DEVELOPMENTS\r\n\r\nSeidler’s office building developments in Australia and overseas are significant. In Sydney they were, in a number of instances, the first major buildings to contribute usable, public spaces back to the city, with the integrated development of office and retail space, parking and a public plaza. One of the first and most important of these was Australia Square (1961), which also saw the start of a fruitful partnership with the Italian engineer Pier Luigi Nervi. It represented an advanced use of concrete, with the tower constructed of a poured in place concrete core with pre-cast units serving as both formwork and finish for the surrounding concrete frame.\r\n\r\nCANBERRA EXAMPLES\r\n\r\nThere are good examples of Seidler’s residential and commercial work in Canberra. His first commission outside Sydney (the Bowden House) exhibits his design philosophy of the early period. Medium density housing at Campbell is representative of his post-war international style apartment block developments, while the Lakeview townhouses are a good later example of his emphasis on the geometric curve and quadrant. The large, pre-cast concrete Barton Offices is an important office building located near the Parliamentary Triangle in Barton.\r\n\r\nWORKS IN CANBERRA\r\n\r\nBowden House, 11 Northcote Crescent, Deakin (1951-52)\r\n12 Yapunyah Street, O’Connor (1956)\r\nCanberra South Bowling Club, Austin Street, Griffith (1959)\r\nCampbell Group Housing, Blamey Crescent, Campbell (1964)\r\nGarran Housing, Gilmore Crescent, Garran (1968; demolished 1999)\r\nEthos House, Ainslie Avenue, City (1970)\r\nBarton Offices, Kings Avenue, Barton (1973)\r\nLakeview, 127 Hopetoun Circuit, Yarralumla (1982)\r\n\r\nOTHER NOTABLE WORKS\r\n\r\nRose Seidler House, Turramurra, NSW (1948)\r\nRose House, Turramurra, NSW (1949)\r\nWaks House I, Northbridge, NSW (1949-51)\r\nMeller House, Castlecrag, NSW (1950)\r\nLowe House, Mosman, NSW (1950)\r\nWilliamson House, Mosman, NSW (1951)\r\nHutter House, Turramurra, NSW (1952)\r\nIthaca Gardens apartments, Elizabeth Bay, NSW (1960)\r\nLend Lease House, Macquarie St, Sydney, NSW (1961)\r\nAustralia Square, Sydney, NSW (1961)\r\nBlues Point Tower apartments, North Sydney, NSW (1961)\r\nMuller House, Port Hacking, NSW (1963)\r\nArlington apartments, Edgecliff, NSW (1965-66)\r\nHarry and Penelope Seidler House, Killara, NSW (1966-67)\r\nGissing House, Wahroonga, NSW (1971-72)\r\nMLC Centre, Sydney, NSW (1972)\r\nSeidler Offices and Apartments, Milsons Point, NSW (1973)\r\nRingwood Cultural Centre, Ringwood, VIC (1978)\r\nGrosvenor Place, Sydney, NSW (1982)\r\nWaverley Civic Centre, Waverley, VIC (1982)\r\nHannes House, Cammeray, NSW (1983)\r\nCapita Centre, Sydney, NSW (1984)\r\nShell Headquarters, Melbourne, VIC (1985)\r\nQVI Office Tower, Perth, WA (1987)\r\nHamilton House, Vaucluse, NSW (1989)\r\nHorizon Apartments, Darlinghurst, NSW (1990)\r\nMeares House, Birchgrove, NSW (1994)\r\nGilhotra House, Hunters Hill, NSW (1995)\r\nBerman House, Joadja, NSW (1996)\r\n\r\nSOURCE\r\n\r\nPeter Blake, Architecture for the New World: The Work of Harry Seidler, Sydney, 1973\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990', 'Harry Seidler', '', 'publish', 'closed', 'closed', '', 'harry-seidler', '', '', '2020-10-05 08:39:55', '2020-10-05 08:39:55', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=56', 0, 'page', '', 0),
(57, 1, '2020-10-05 00:11:23', '2020-10-05 00:11:23', '', 'Harry Seidler', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-10-05 00:11:23', '2020-10-05 00:11:23', '', 56, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/56-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(58, 1, '2020-10-05 00:11:38', '2020-10-05 00:11:38', 'ENRICO TAGLIETTI\r\n\r\nEnrico Taglietti is recognised as an important architect and a leading practitioner of the late twentieth century organic style of architecture. His unique sculptural style draws upon Italian free form construction and post-war Japanese architecture. He has designed many houses, schools, churches and commercial buildings in Canberra, Sydney and Melbourne and his projects have won numerous RAIA awards. In March 2007 Enrico was awarded Australia’s most prestigious architecture prize—the Royal Australian Institute of Architects (RAIA) Gold Medal for Architecture. Taglietti passed away in May 2019, aged 93.\r\n\r\nARRIVAL IN AUSTRALIA\r\n\r\nEnrico Taglietti was born in 1926 in Milan, Italy and educated at the Milan Polytechnic, earning his doctorate there in 1953. Enrico came to Australia from Italy in 1955 to design an Italian promotional display for a Sydney department store. He was then invited by the Italian Government to design their embassy in Canberra, which was to be the first of his major concrete buildings. Unfortunately that commission took nearly 20 years to materialise and in the early years complete building projects were relatively scarce. During this period interior work, commissions for motels and several houses sustained the practice—three early examples being the Gibson House at 12 Scarborough Street, Red Hill (1963), the McKeown House, 109 Irvine Street, Watson (1965) and 19 Downes Place, Hughes (1965).\r\n\r\nEnrico’s early buildings used what he called a ‘calligraphy’ of elements, with long horizontal flat roofs and balconies that cast deep shadows, sloping, banded fascias and balustrades, battered walls and unpainted surfaces for texture and low maintenance. A notable example of this is the Dickson Library, his most important early building. Designed in 1964, the library is symmetrical, outlined by Enrico’s trademark deep, banded, upswept fascias. A central mezzanine and corner gardens add variation to the plan. Enrico designed a companion building for the library in 1981, the Dickson Health Centre.\r\n\r\nEXPERIMENTATION WITH CONCRETE\r\n\r\nAfter 10 years in Canberra, Enrico’s practice had established itself and began to obtain some larger commissions. This provided the opportunity to give expression to his Italian heritage through the use of concrete as a material to create striking visual and spatial effects. Some of his domestic work from this period made use of concrete to great dramatic effect: houses such as the Smith House, Sydney (1965) and the fortress-like Paterson House at 7 Juad Place, Aranda (1970).\r\n\r\nThe use of concrete in a domestic setting allowed Enrico’s houses to blend with their natural bushland setting—the house at 7 Juad Place being perhaps the best example. This union of building and site was also achieved through the use of retaining walls and fences, often in the same material, and is an ongoing feature of Enrico’s work. The effect is to extend the composition of the building into the landscape.\r\n\r\nABSTRACT AND SCULPTURAL FORMS\r\n\r\nThrough the 1970s Enrico continued to use the creation of forms and spaces to add adventure and visual interest to structures. His school projects at Latham (1971), Flynn (1972) and Giralang (1975) demonstrate this, where his central concern for the inhabitants of his buildings produced complex yet fun and engaging environments for primary-aged children. His imaginative use of abstract forms and colour in some larger buildings allowed them to achieve a monumental scale, a good example being the Australian War Memorial Annex (1979) at Mitchell.\r\n\r\nCENTRAL THEMES\r\n\r\nThere are a number of important and recurring ideas present in Enrico’s architecture.\r\n\r\nArrival. His buildings, particularly the houses, place great importance on the arrival, but where the qualities of a building are revealed subtly after moving through a space or series of spaces, much like a Japanese house. The house at Aranda is a good example, with the approach and entry not obvious from the fortress-like appearance from the street.\r\n\r\nThe central space. Most of Enrico’s houses have a large central space that serves as a social hub for the inhabitants, containing the entrance, living and cooking areas. Enrico’s philosophy is that this is a place where the public and private needs of individuals can come together.\r\n\r\nInterlocking volumes. The idea of interlocking internal volumes is central to many of Enrico’s houses. The interconnected and overlapping internal volumes create interest and spatial drama; the idea also constitutes the rejection of a single level plan.\r\n\r\nWalls and windows. Enrico’s use of battered and stepped or curved walls and window reveals to achieve a balance between privacy and human interaction—as well as to create attractive sculptural forms—is a distinctive characteristic of his architecture.\r\n\r\nDeep overhanging eaves. Enrico’s use of the deep, overhanging timber lined eaves with timber boarded fascias for shelter and protection from the harsh Australian light is one of his most recognisable elements.\r\n\r\nWalls and courtyards. Finally, Enrico has made extensive use of walled gardens and courtyards in his work. They can project from the house (Juad Place, Aranda), form the entry to it (Mijuscovic House, Waniassa) or be enclosed by it (Gibson House, Red Hill).\r\n\r\nWhat is certain is that Enrico is a true original and has made a lasting and important contribution to Canberra’s development and built environment over a period of nearly 50 years. Enrico continues to design and his Sea Residence at Lilli Pilli, NSW won an RAIA award in 1996. In March 2007 Enrico was awarded the Royal Australian Institute of Architects (RAIA) Gold Medal for Architecture.\r\n\r\nWORKS IN CANBERRA\r\n\r\nTown House Motel, 60 Marcus Clarke Street, Civic (1961; demolished)\r\nDickson Library, Antill Street, Dickson (1964)\r\n19 Downes Place, Hughes (1965)\r\nGibson House, 12 Scarborough Street, Red Hill (1965)\r\nMcKeown Houses, 109 Irvine Street, Watson (1965 and 1994)\r\nCenter Cinema, Bunda Street, Civic (1966)\r\nItalian Embassy, National Circuit, Deakin (1967)\r\nACMA Conference Centre, 26 Brisbane Avenue, Barton (1967)\r\n7 Juad Place, Aranda (1970)\r\nKillen House, 311 Majura Road (1970)\r\nLatham Primary School and Pre School, O’Loghlen Street, Latham (1971)\r\nEvans House, 62 Skinner Street, Cook (1971)\r\nFlynn Primary School and Pre School, Bingle Street, Flynn (1972)\r\nMedium Density Housing, Mockridge Crescent, Holt (1973)\r\nWood House, 43 Mayo Street, Weetangera (1973)\r\nGreen House, 78 Couvreur Street, Garran (1975)\r\nGiralang Primary School, Canopus Crescent, Giralang (1975)\r\nGentle House, 7 Niblo Place, Chapman (1977)\r\nApostolic Nunciature, 2 Vancouver Street, Red Hill (1977)\r\nAustralian War Memorial Annex, 4 Callan Street, Mitchell (1978-79)\r\nNitrate Film Vaults, 16 Vickers Street, Mitchell (1978)\r\n61 Sullivan Crescent, Wanniassa (1980)\r\nDickson Health Centre, Antill Street, Dickson (1981)\r\nGowrie Primary School and Pre School, Jeffries Street, Gowrie (1983)\r\nPhillips Fox Building, 54 Marcus Clarke Street, Civic (1985)\r\nWoden Youth Centre, Callam Street, Phillip (1988)\r\nReal Estate House, 16 Thesiger Court, Deakin (1989-93)\r\nSaudi Arabian Ambassadors Residence, 88 Brereton Street, Garran (1996)\r\nOTHER WORKS\r\n\r\nOsborne House, Grantham Park, Currandooley, NSW, (1961; first house in Australia)\r\nChurch of St Anthony’s, Marsfield, NSW (1968)\r\nSmith House, 25-27 Glenhope Road, West Pennant Hills, Sydney (1968-70)\r\nSt Kilda Library, 150 Carlisle Street, St Kilda, VIC (1969)\r\nDunmore Lang Apartments, 159 Herring Road, Marsfield, Sydney (1971)\r\nSea Residence, Lilli Pilli, NSW (1996)\r\n\r\nSOURCE\r\n\r\nK Charlton, B Jones &amp; P Favaro, The Contribution of Enrico Taglietti to Canberra’s Architecture, RAIA, 2007\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990', 'Enrico Taglietti', '', 'publish', 'closed', 'closed', '', 'enrico-taglietti', '', '', '2020-10-05 08:40:39', '2020-10-05 08:40:39', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=58', 0, 'page', '', 0),
(59, 1, '2020-10-05 00:11:38', '2020-10-05 00:11:38', '', 'Enrico Taglietti', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-10-05 00:11:38', '2020-10-05 00:11:38', '', 58, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-10-05 00:12:00', '2020-10-05 00:12:00', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\nRobin Boyd\r\n\r\nHarry Seider\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/enrico-taglietti/">Enrico Taglietti</a>', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:12:00', '2020-10-05 00:12:00', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-10-05 00:12:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-05 00:12:13', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=61', 0, 'page', '', 0),
(62, 1, '2020-10-05 00:12:32', '2020-10-05 00:12:32', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/robin-boyd/">Robin Boyd</a>\r\n\r\nHarry Seider\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/enrico-taglietti/">Enrico Taglietti</a>', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:12:32', '2020-10-05 00:12:32', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-10-05 00:12:56', '2020-10-05 00:12:56', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/robin-boyd/">Robin Boyd</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/harry-seidler/">Harry Seider</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/enrico-taglietti/">Enrico Taglietti</a>', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:12:56', '2020-10-05 00:12:56', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-10-05 00:13:28', '2020-10-05 00:13:28', 'Australian Architecture takes a large portion of inspiration from the Western World and the modern style that it inherits. Australian Architecture emerges from a certain set of circumstances: the landscape, the client, the budget, the climate, the materials and the brief with a genuine expression of contemporary cultural values. The below individuals are some of Australias finest architects and have contributed tremendously towards the history of architecture within the country.\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/?page_id=50&amp;preview=true">Roy Grounds</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/robin-boyd/">Robin Boyd</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/harry-seidler/">Harry Seidler</a>\r\n\r\n<a href="http://127.0.0.1/11058-Assessment-2/enrico-taglietti/">Enrico Taglietti</a>', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-05 00:13:28', '2020-10-05 00:13:28', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/31-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-10-05 00:39:32', '2020-10-05 00:39:32', 'ROY GROUNDS\r\n\r\nAcademy of Science\r\nACADEMY OF SCIENCE (1959)\r\n\r\nRoy Grounds (1905-1981) is recognised as one of Australia’s leading architects of the modern movement and a key practitioner of the post-war Melbourne regional style of architecture. Grounds was educated at Melbourne University and articled to the large architectural firm of Blackett, Forster and Craig. After winning an award from the Royal Victorian Institute of Architects (RVIA) in 1932, he travelled and worked in England and the United States for two years, gaining exposure to contemporary architectural developments.\r\n\r\nEARLY CAREER\r\n\r\nOn his return to Australia, Grounds set up in partnership with his friend Geoffrey Mewton. Together, they were largely responsible for introducing the international style to Melbourne. Grounds’s own house, Ranelagh, at Mt Eliza (1933-34) and Mewton’s Stooke House at Brighton (1934) were fine examples of the inter-war functionalist style and highly regarded by the RVIA. Grounds ended this practice in 1936 and travelled in England until 1939, when he returned to Australia and worked on defence buildings during World War II.\r\n\r\nRESIDENTIAL ARCHITECTURE IN MELBOURNE\r\n\r\nGrounds practised by himself between 1939 and 1942 and designed a series of houses and flats (including Moonbria, 1940-41) which established his reputation as one of the foremost architects in Victoria. After the war, Grounds was involved in setting up the curriculum for the School of Architecture at Melbourne University and lectured in design. He resumed his architectural practice and became interested in formal, geometrically based designs. A series of houses followed with the circle (Frankston, 1952), the triangle and the square (Toorak, 1953-54) as their basis.\r\n\r\nGROUNDS, ROMBERG AND BOYD\r\n\r\nWhen Grounds, Frederick Romberg (1910-1992) and Robin Boyd (1919-1971) formed their partnership in 1953 all were well established in Victoria. Each brought substantial work to the practice and the firm became very successful. The partnership was largely based on the three architects agreeing to work together and share commissions and profits. However, in practice, they tended to design separately within the office.\r\n\r\nAUSTRALIAN ACADEMY OF SCIENCE\r\n\r\nSuccess in a limited competition for the proposed Australian Academy of Science provided an opportunity for Grounds to undertake a major building project—his first large commission. The dome shaped, structuralist building became an icon of modern Canberra and the construction of its reinforced concrete dome was a considerable technical achievement. It won the Meritorious Architecture Award of the Canberra Area Committee of the RAIA and the Sulman Award for Architectural Merit. Grounds became a national figure as a result. The RAIA has recently nominated the Academy of Science building to the International Union of Architects’ (UIA) World Register of Significant Twentieth Century Australian Architecture. The Academy building also led to other work in Canberra, initially for the firm and later Grounds himself. Grounds opened a Canberra office in the Forrest Townhouses (1959), which he partly financed.\r\n\r\nIn 1959 the firm was awarded the commission to design the National Gallery of Victoria and Cultural Centre, with Grounds named in the contract as the architect in charge. When Boyd and Romberg were mildly critical of the preliminary designs that Grounds showed them, relations between the partners became strained. In 1962 Grounds left the partnership, taking the commission with him. He devoted the next twenty years of his life to their completion.\r\n\r\nRAIA GOLD MEDAL\r\n\r\nGrounds was awarded the RAIA Gold Medal in 1968 and knighted in the same year. In 1969 he was elected a life fellow of the RAIA. Jennifer Taylor has noted that Grounds\r\n\r\ncombined rationalism and economical planning with a love of warm, natural materials\r\nJennifer Taylor\r\nHis buildings, mostly houses, blended sensitively with their sites. There are several excellent examples of his work in Canberra.\r\n\r\nWORKS IN CANBERRA\r\n\r\nForrest Townhouses, 3 Tasmania Circle, Forrest (1959)\r\nAustralian Academy of Science (1959)\r\n42, 44 and 46 Vasey Crescent, Campbell (1960)\r\n144 Dryandra Street, O’Connor (1961)\r\nCSIRO Phytotron Building, Clunies Ross Street, Acton (1963)\r\n24 Cobby Street, Campbell (1963-64)\r\nCivic Zone Substation, Frith Road, Acton (1965)\r\nANU Botany Building (1968)\r\n4 Cobby Street, Campbell (1969-70)\r\n\r\nOTHER NOTABLE WORKS IN VICTORIA\r\n\r\nRanelagh, 35 Rannoch Avenue, Mt Eliza (1934-35)\r\nEvan Price House, 2 Riverview Road, Essendon (1935-36)\r\nBellaire Flats, 3 Cowderoy Street, St Kilda, (1936; Mewton and Grounds)\r\nMoonbria Flats, Mathoura Road, Toorak (1941)\r\nRound House, Oliver’s Hill, Frankston (1952)\r\nGrounds House and Flats, 24 Hill Street, Toorak (1953-54)\r\nNational Gallery of Victoria, St Kilda Road, Melbourne (1959-68)\r\nVictorian Arts Centre, St Kilda Road, Melbourne (1969-84)\r\nSOURCE\r\n\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990\r\nAlan Roberts, A big, bold, simple concept, Australian Academy of Science, 2010\r\nMilton Cameron, Experiments in Modern Living: Scientists’ Houses in Canberra 1950–1970, ANU, 2012\r\nConrad Hamann, Grounds, Sir Roy Burman (1905–1981), Australian Dictionary of Biography\r\nPhilip Goad, A Guide to Melbourne Architecture, Sydney, 1999\r\nGeoffrey Serle, Robin Boyd: A Life, Melbourne, 1995', 'Roy Grounds', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-10-05 00:39:32', '2020-10-05 00:39:32', '', 50, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/50-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-10-05 01:46:45', '2020-10-05 01:46:45', '<!-- wp:paragraph --><!-- /wp:paragraph -->', 'xvdv', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-10-05 01:46:45', '2020-10-05 01:46:45', '', 44, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/44-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-10-05 01:46:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-05 01:46:45', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=67', 0, 'post', '', 0),
(68, 1, '2020-10-05 08:39:29', '2020-10-05 08:39:29', 'ROBIN BOYD\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a member of the famous Australian family of artists and writers.\r\nHe was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading\r\nproponent of the modern movement.\r\n\r\nBoyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist\r\nsolutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading\r\npractitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts,\r\nboth in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nEARLY WORK\r\n\r\nAfter the war, Boyd was articled to A and K Henderson in Melbourne and became active in architectural writing,\r\nediting the student newspaper Smudges. A short lived partnership followed with Kevin Pethebridge and Frank Bell\r\n(1945-1947), where he designed his first houses, including his own in Camberwell. He published Victorian Modern (1947),\r\nthe first history of modern architecture in Victoria.\r\n\r\nBoyd was the first Director of the Royal Victorian Institute of Architects Small Homes Service from 1947-1953 and\r\nfrom 1948 was the editor of this service for The Age newspaper, where he also wrote weekly articles. The service\r\nprovided designs of inexpensive houses, which attempted to incorporate modern architectural aesthetics and functional\r\nplanning and were sold to the public for a small fee. Boyd became a household name throughout Victoria as a result of\r\nthis exposure. In 1952 he published Australia’s Homes, an influential study of modernist architecture in Australia.\r\nIn 1953 he designed ‘The Peninsula’, perhaps Australia’s first project home.\r\n\r\nGROUNDS, ROMBERG AND BOYD\r\n\r\nIn 1953 Boyd, Frederick Romberg (1910-1992) and Roy Grounds (1905-1981) formed a partnership. The practice became a\r\nleading Melbourne architectural firm, where the three partners produced their own designs and sometimes shared\r\nsupervision work when one of them was travelling. Although the original intention was to collaborate on commissions,\r\nthey generally worked on their own designs within the partnership.\r\n\r\nBoyd produced a series of remarkable ‘idea’ houses during this period, many quite adventurous in structure and form.\r\nHis second house, at South Yarra (1957) had a draped catenary curved roof. He also continued his writing, becoming\r\nan international commentator on contemporary architecture. In 1956 he accepted an offer of a teaching position at\r\nMIT in Boston from Walter Gropius, a friend of Boyd’s and a Director at MIT. In 1960 Boyd published Australian\r\nUgliness, a book on the built environment and Australian suburbs.\r\n\r\nWhen Roy Grounds was awarded the commission to design the National Gallery of Victoria and Cultural Centre in 1959,\r\nrelations between the partners became strained. Grounds left the partnership in 1962 and took the commission with him.\r\nRomberg and Boyd continued in partnership until Boyd’s unexpected death in 1971 at the age of 52.\r\n\r\nLECTURES, BOOKS AND AWARDS\r\n\r\nIn 1967 Boyd presented the ABC’s Boyer Lectures and in 1970 published Living in Australia, a book of his later work,\r\nincluding the house at 12 Marawa Place, Aranda. He was made a Life Fellow of the RAIA and was awarded the RAIA Gold\r\nMedal in 1969. The RAIA named its annual national domestic architecture award after him, the Robin Boyd Award.\r\n\r\nSOURCE\r\n\r\nGeoffrey Serle, Robin Boyd: A Life, Melbourne, 1995\r\nPhilip Goad, A Guide to Melbourne Architecture, Sydney, 1999\r\n\r\nHOUSES\r\nClark House\r\nFenner House', 'Robin Boyd', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-10-05 08:39:29', '2020-10-05 08:39:29', '', 54, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/54-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-10-05 08:39:55', '2020-10-05 08:39:55', 'HARRY SEIDLER\r\n\r\nHarry Seidler was born in Vienna in 1923, arriving in Australia in 1948 from the United States. He is recognised as one of Australia’s leading architects of the modern movement and the first architect in Australia to fully express the principles of the Bauhaus. He designed many important residential and commercial buildings in Australia and overseas, introducing new ideas and construction techniques and making a major contribution to the architecture of Sydney. He was awarded the RAIA Gold Medal in 1976 and the Royal Institute of British Architects (RIBA) Gold Medal in 1996. Seidler died on 9 March, 2006.\r\n\r\nBACKGROUND AND TRAINING\r\n\r\nHis background and training was unlike that of local architects: he had studied under Walter Gropius and Marcel Breuer at the Harvard School of Design and at Black Mountain College in North Carolina with Joseph Albers. He also worked with Breuer at his New York practice and briefly with Oscar Niemeyer in Rio de Janeiro. Seidler decided to establish himself in Sydney in 1948 after visiting his parents, who had moved there.\r\n\r\nEARLY RESIDENTIAL WORK\r\n\r\nSeidler’s first house was the Rose Seidler House at Turramurra (1948). The glass walled, elevated cubiform house was revolutionary and introduced the Bauhaus principles of Gropius and Breuer into Australia for the first time. Seidler continued to present these concepts to the Australian public over the following years with a series of extremely well detailed houses, executed either in the box-like form of Le Corbusier or the bi-nuclear plan of Marcel Breuer, with living and sleeping areas separated by an entry hall. Along the way many important battles were fought and won with councils over issues relating to design (the butterfly roof), planning and zoning regulations. Experimentation with different forms was made possible with the introduction of advanced structural techniques. Since the early 1960s the geometric curve has been a recurring theme in Seidler’s work, with the quadrant being a favoured form. This can be seen to good effect in the later houses detailed on Seidler’s website.\r\n\r\nWith his apartment building projects, Seidler introduced ideas new to Sydney and Australia. Based largely on European and American apartment types, the split access, interlocking units with a divided plan, double height living rooms and mezzanine floors, took advantage of Sydney’s spectacular views from all main rooms. The Arlington Apartments at Edgecliff are a good example. The carefully composed facades of these buildings display abstract, asymmetrical, balanced patterns and are influenced by the European art movements of the 1920s and 1930s.\r\n\r\nLARGER DEVELOPMENTS\r\n\r\nSeidler’s office building developments in Australia and overseas are significant. In Sydney they were, in a number of instances, the first major buildings to contribute usable, public spaces back to the city, with the integrated development of office and retail space, parking and a public plaza. One of the first and most important of these was Australia Square (1961), which also saw the start of a fruitful partnership with the Italian engineer Pier Luigi Nervi. It represented an advanced use of concrete, with the tower constructed of a poured in place concrete core with pre-cast units serving as both formwork and finish for the surrounding concrete frame.\r\n\r\nCANBERRA EXAMPLES\r\n\r\nThere are good examples of Seidler’s residential and commercial work in Canberra. His first commission outside Sydney (the Bowden House) exhibits his design philosophy of the early period. Medium density housing at Campbell is representative of his post-war international style apartment block developments, while the Lakeview townhouses are a good later example of his emphasis on the geometric curve and quadrant. The large, pre-cast concrete Barton Offices is an important office building located near the Parliamentary Triangle in Barton.\r\n\r\nWORKS IN CANBERRA\r\n\r\nBowden House, 11 Northcote Crescent, Deakin (1951-52)\r\n12 Yapunyah Street, O’Connor (1956)\r\nCanberra South Bowling Club, Austin Street, Griffith (1959)\r\nCampbell Group Housing, Blamey Crescent, Campbell (1964)\r\nGarran Housing, Gilmore Crescent, Garran (1968; demolished 1999)\r\nEthos House, Ainslie Avenue, City (1970)\r\nBarton Offices, Kings Avenue, Barton (1973)\r\nLakeview, 127 Hopetoun Circuit, Yarralumla (1982)\r\n\r\nOTHER NOTABLE WORKS\r\n\r\nRose Seidler House, Turramurra, NSW (1948)\r\nRose House, Turramurra, NSW (1949)\r\nWaks House I, Northbridge, NSW (1949-51)\r\nMeller House, Castlecrag, NSW (1950)\r\nLowe House, Mosman, NSW (1950)\r\nWilliamson House, Mosman, NSW (1951)\r\nHutter House, Turramurra, NSW (1952)\r\nIthaca Gardens apartments, Elizabeth Bay, NSW (1960)\r\nLend Lease House, Macquarie St, Sydney, NSW (1961)\r\nAustralia Square, Sydney, NSW (1961)\r\nBlues Point Tower apartments, North Sydney, NSW (1961)\r\nMuller House, Port Hacking, NSW (1963)\r\nArlington apartments, Edgecliff, NSW (1965-66)\r\nHarry and Penelope Seidler House, Killara, NSW (1966-67)\r\nGissing House, Wahroonga, NSW (1971-72)\r\nMLC Centre, Sydney, NSW (1972)\r\nSeidler Offices and Apartments, Milsons Point, NSW (1973)\r\nRingwood Cultural Centre, Ringwood, VIC (1978)\r\nGrosvenor Place, Sydney, NSW (1982)\r\nWaverley Civic Centre, Waverley, VIC (1982)\r\nHannes House, Cammeray, NSW (1983)\r\nCapita Centre, Sydney, NSW (1984)\r\nShell Headquarters, Melbourne, VIC (1985)\r\nQVI Office Tower, Perth, WA (1987)\r\nHamilton House, Vaucluse, NSW (1989)\r\nHorizon Apartments, Darlinghurst, NSW (1990)\r\nMeares House, Birchgrove, NSW (1994)\r\nGilhotra House, Hunters Hill, NSW (1995)\r\nBerman House, Joadja, NSW (1996)\r\n\r\nSOURCE\r\n\r\nPeter Blake, Architecture for the New World: The Work of Harry Seidler, Sydney, 1973\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990', 'Harry Seidler', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-10-05 08:39:55', '2020-10-05 08:39:55', '', 56, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/56-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-10-05 08:40:39', '2020-10-05 08:40:39', 'ENRICO TAGLIETTI\r\n\r\nEnrico Taglietti is recognised as an important architect and a leading practitioner of the late twentieth century organic style of architecture. His unique sculptural style draws upon Italian free form construction and post-war Japanese architecture. He has designed many houses, schools, churches and commercial buildings in Canberra, Sydney and Melbourne and his projects have won numerous RAIA awards. In March 2007 Enrico was awarded Australia’s most prestigious architecture prize—the Royal Australian Institute of Architects (RAIA) Gold Medal for Architecture. Taglietti passed away in May 2019, aged 93.\r\n\r\nARRIVAL IN AUSTRALIA\r\n\r\nEnrico Taglietti was born in 1926 in Milan, Italy and educated at the Milan Polytechnic, earning his doctorate there in 1953. Enrico came to Australia from Italy in 1955 to design an Italian promotional display for a Sydney department store. He was then invited by the Italian Government to design their embassy in Canberra, which was to be the first of his major concrete buildings. Unfortunately that commission took nearly 20 years to materialise and in the early years complete building projects were relatively scarce. During this period interior work, commissions for motels and several houses sustained the practice—three early examples being the Gibson House at 12 Scarborough Street, Red Hill (1963), the McKeown House, 109 Irvine Street, Watson (1965) and 19 Downes Place, Hughes (1965).\r\n\r\nEnrico’s early buildings used what he called a ‘calligraphy’ of elements, with long horizontal flat roofs and balconies that cast deep shadows, sloping, banded fascias and balustrades, battered walls and unpainted surfaces for texture and low maintenance. A notable example of this is the Dickson Library, his most important early building. Designed in 1964, the library is symmetrical, outlined by Enrico’s trademark deep, banded, upswept fascias. A central mezzanine and corner gardens add variation to the plan. Enrico designed a companion building for the library in 1981, the Dickson Health Centre.\r\n\r\nEXPERIMENTATION WITH CONCRETE\r\n\r\nAfter 10 years in Canberra, Enrico’s practice had established itself and began to obtain some larger commissions. This provided the opportunity to give expression to his Italian heritage through the use of concrete as a material to create striking visual and spatial effects. Some of his domestic work from this period made use of concrete to great dramatic effect: houses such as the Smith House, Sydney (1965) and the fortress-like Paterson House at 7 Juad Place, Aranda (1970).\r\n\r\nThe use of concrete in a domestic setting allowed Enrico’s houses to blend with their natural bushland setting—the house at 7 Juad Place being perhaps the best example. This union of building and site was also achieved through the use of retaining walls and fences, often in the same material, and is an ongoing feature of Enrico’s work. The effect is to extend the composition of the building into the landscape.\r\n\r\nABSTRACT AND SCULPTURAL FORMS\r\n\r\nThrough the 1970s Enrico continued to use the creation of forms and spaces to add adventure and visual interest to structures. His school projects at Latham (1971), Flynn (1972) and Giralang (1975) demonstrate this, where his central concern for the inhabitants of his buildings produced complex yet fun and engaging environments for primary-aged children. His imaginative use of abstract forms and colour in some larger buildings allowed them to achieve a monumental scale, a good example being the Australian War Memorial Annex (1979) at Mitchell.\r\n\r\nCENTRAL THEMES\r\n\r\nThere are a number of important and recurring ideas present in Enrico’s architecture.\r\n\r\nArrival. His buildings, particularly the houses, place great importance on the arrival, but where the qualities of a building are revealed subtly after moving through a space or series of spaces, much like a Japanese house. The house at Aranda is a good example, with the approach and entry not obvious from the fortress-like appearance from the street.\r\n\r\nThe central space. Most of Enrico’s houses have a large central space that serves as a social hub for the inhabitants, containing the entrance, living and cooking areas. Enrico’s philosophy is that this is a place where the public and private needs of individuals can come together.\r\n\r\nInterlocking volumes. The idea of interlocking internal volumes is central to many of Enrico’s houses. The interconnected and overlapping internal volumes create interest and spatial drama; the idea also constitutes the rejection of a single level plan.\r\n\r\nWalls and windows. Enrico’s use of battered and stepped or curved walls and window reveals to achieve a balance between privacy and human interaction—as well as to create attractive sculptural forms—is a distinctive characteristic of his architecture.\r\n\r\nDeep overhanging eaves. Enrico’s use of the deep, overhanging timber lined eaves with timber boarded fascias for shelter and protection from the harsh Australian light is one of his most recognisable elements.\r\n\r\nWalls and courtyards. Finally, Enrico has made extensive use of walled gardens and courtyards in his work. They can project from the house (Juad Place, Aranda), form the entry to it (Mijuscovic House, Waniassa) or be enclosed by it (Gibson House, Red Hill).\r\n\r\nWhat is certain is that Enrico is a true original and has made a lasting and important contribution to Canberra’s development and built environment over a period of nearly 50 years. Enrico continues to design and his Sea Residence at Lilli Pilli, NSW won an RAIA award in 1996. In March 2007 Enrico was awarded the Royal Australian Institute of Architects (RAIA) Gold Medal for Architecture.\r\n\r\nWORKS IN CANBERRA\r\n\r\nTown House Motel, 60 Marcus Clarke Street, Civic (1961; demolished)\r\nDickson Library, Antill Street, Dickson (1964)\r\n19 Downes Place, Hughes (1965)\r\nGibson House, 12 Scarborough Street, Red Hill (1965)\r\nMcKeown Houses, 109 Irvine Street, Watson (1965 and 1994)\r\nCenter Cinema, Bunda Street, Civic (1966)\r\nItalian Embassy, National Circuit, Deakin (1967)\r\nACMA Conference Centre, 26 Brisbane Avenue, Barton (1967)\r\n7 Juad Place, Aranda (1970)\r\nKillen House, 311 Majura Road (1970)\r\nLatham Primary School and Pre School, O’Loghlen Street, Latham (1971)\r\nEvans House, 62 Skinner Street, Cook (1971)\r\nFlynn Primary School and Pre School, Bingle Street, Flynn (1972)\r\nMedium Density Housing, Mockridge Crescent, Holt (1973)\r\nWood House, 43 Mayo Street, Weetangera (1973)\r\nGreen House, 78 Couvreur Street, Garran (1975)\r\nGiralang Primary School, Canopus Crescent, Giralang (1975)\r\nGentle House, 7 Niblo Place, Chapman (1977)\r\nApostolic Nunciature, 2 Vancouver Street, Red Hill (1977)\r\nAustralian War Memorial Annex, 4 Callan Street, Mitchell (1978-79)\r\nNitrate Film Vaults, 16 Vickers Street, Mitchell (1978)\r\n61 Sullivan Crescent, Wanniassa (1980)\r\nDickson Health Centre, Antill Street, Dickson (1981)\r\nGowrie Primary School and Pre School, Jeffries Street, Gowrie (1983)\r\nPhillips Fox Building, 54 Marcus Clarke Street, Civic (1985)\r\nWoden Youth Centre, Callam Street, Phillip (1988)\r\nReal Estate House, 16 Thesiger Court, Deakin (1989-93)\r\nSaudi Arabian Ambassadors Residence, 88 Brereton Street, Garran (1996)\r\nOTHER WORKS\r\n\r\nOsborne House, Grantham Park, Currandooley, NSW, (1961; first house in Australia)\r\nChurch of St Anthony’s, Marsfield, NSW (1968)\r\nSmith House, 25-27 Glenhope Road, West Pennant Hills, Sydney (1968-70)\r\nSt Kilda Library, 150 Carlisle Street, St Kilda, VIC (1969)\r\nDunmore Lang Apartments, 159 Herring Road, Marsfield, Sydney (1971)\r\nSea Residence, Lilli Pilli, NSW (1996)\r\n\r\nSOURCE\r\n\r\nK Charlton, B Jones &amp; P Favaro, The Contribution of Enrico Taglietti to Canberra’s Architecture, RAIA, 2007\r\nJennifer Taylor, Australian Architecture Since 1960, RAIA, 1990', 'Enrico Taglietti', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-10-05 08:40:39', '2020-10-05 08:40:39', '', 58, 'http://127.0.0.1/11058-Assessment-2/2020/10/05/58-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(42, 2, 0),
(44, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Menu 1', 'menu-1', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jehru'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"1117a2ceeb3496ccd46c00311d563f4fef56636672ea3f9defd0172b4b05eaea";a:4:{s:10:"expiration";i:1602108568;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1600898968;}s:64:"3cd65564312dbc19f262ddb666ed5a2c5997133aa740f8f9bdffca490823ab95";a:4:{s:10:"expiration";i:1602024559;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15";s:5:"login";i:1601851759;}s:64:"e136e54658f1112a2077c03351cf4954cb8b3088dddcec64b873f853dc87d0b7";a:4:{s:10:"expiration";i:1602123622;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15";s:5:"login";i:1601950822;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '67'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(22, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_page', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jehru', '$P$BUZsv88TxFCG/GZA93zaMPwezTLMzm1', 'jehru', 'jehru.e.harris@gmail.com', 'http://127.0.0.1/11058-Assessment-2', '2020-09-20 01:37:29', '', 0, 'jehru') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#
