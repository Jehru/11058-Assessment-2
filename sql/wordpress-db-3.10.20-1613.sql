# WordPress MySQL database migration
#
# Generated: Saturday 3. October 2020 06:12 UTC
# Hostname: localhost
# Database: `wordpress`
# URL: //127.0.0.1/11058-Assessment-2
# Path: C:\\xampp\\htdocs\\11058-Assessment-2
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, nav_menu_item, page, post
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
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/11058-Assessment-2', 'yes'),
(2, 'home', 'http://127.0.0.1/11058-Assessment-2', 'yes'),
(3, 'blogname', '11058-Assessment-2', 'yes'),
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
(76, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
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
(100, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1601707050;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1601732250;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1601775449;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1601775458;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1601775460;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1601861849;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
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
(378, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1601705557;}', 'no') ;

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
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(31, 18, '_edit_lock', '1601266320:1'),
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
(50, 21, '_edit_lock', '1601279047:1'),
(51, 2, '_edit_lock', '1601516816:1'),
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
(89, 27, '_edit_lock', '1601613242:1'),
(90, 29, '_edit_lock', '1601516769:1'),
(91, 31, '_edit_lock', '1601601820:1'),
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
(129, 40, '_edit_lock', '1601705304:1'),
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
(141, 40, '_edit_last', '1'),
(142, 40, '_wp_page_template', 'default'),
(143, 50, '_wp_attached_file', '2020/10/canberra-photo-from-NAA.jpg') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(144, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:633;s:4:"file";s:35:"2020/10/canberra-photo-from-NAA.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:35:"canberra-photo-from-NAA-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"canberra-photo-from-NAA-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"canberra-photo-from-NAA-768x608.jpg";s:5:"width";i:768;s:6:"height";i:608;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:14:"Darren Bradley";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1489916897";s:9:"copyright";s:21:"©2013 Darren Bradley";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

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
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-20 01:37:29', '2020-09-20 01:37:29', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://127.0.0.1/11058-Assessment-2/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'draft', 'closed', 'open', '', 'sample-page', '', '', '2020-10-01 01:49:20', '2020-10-01 01:49:20', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-20 01:37:29', '2020-09-20 01:37:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1/11058-Assessment-2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-20 01:37:29', '2020-09-20 01:37:29', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=3', 0, 'page', '', 0),
(17, 1, '2020-09-27 09:48:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-27 09:48:01', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=17', 0, 'post', '', 0),
(18, 1, '2020-09-28 04:13:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-28 04:13:49', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=18', 0, 'post', '', 0),
(19, 1, '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2020-09-28 04:14:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 04:14:56', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2020-09-28 07:45:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-28 07:45:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-09-28 07:48:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-28 07:48:41', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-09-28 09:29:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 09:29:37', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-10-01 01:47:26', '2020-10-01 01:47:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=25', 1, 'nav_menu_item', '', 0),
(27, 1, '2020-10-01 01:48:17', '2020-10-01 01:48:17', 'Mid-Century Modernist Bus Tour:\r\nGrounds &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Grounds and other architects.\r\n\r\nRoy Grounds (1905-1981) was a renowned Victorian architect and a leader in Australia’s modern architecture movement. During his early career he spent some time working in the United States and England and after the war he was involved in setting up the curriculum for the School of Architecture at the University of Melbourne. Between 1953 and 1962, Grounds was part of the Grounds, Romberg and Boyd partnership, in which time he designed the Australian Academy of Science in Canberra.\r\n\r\nThis tour will pick-up and drop-off from the Corner of Parkes Pl W and Queen Elizabeth Terrace. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n----\r\n\r\nMid-Century Modernist Bus Tour:\r\nBoyd &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Boyd and other architects.\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading proponent of the modern movement. Boyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist solutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading practitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts, both in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nThis tour will pick-up and drop-off from the corner of Watson Street and Gould Street in Turner. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n&nbsp;\r\n\r\n----\r\n\r\n&nbsp;\r\n\r\nMid Century Modern Tour #3\r\n\r\nUse and Re-Use\r\n\r\nBack by popular demand, this year’s architecture tours will take their cue from the Design Canberra theme: geometry. The Design Canberra festival will celebrate the strong geometry present throughout our city and the ways it creates human, creative and global connections.\r\n\r\nThe tours will introduce people to architects who have used geometric forms in a variety of ways to shape spaces for people. How have the designers of these houses and buildings used geometric principles to create dwellings that comfort and inspire their occupants? From simple rectilinear forms and modular designs to complex examples using the Pythagorean spiral and hemicycle, we’ll visit some of Canberra’s most significant houses and buildings.\r\n\r\nThis tour looks at the future of mid-century design. We’ll visit mid-century houses, an embassy and a church. How are they meeting the needs of occupants today, and how are people adapting them for current and future needs?\r\n\r\nThe tours will be presented by local architecture enthusiast and author of Canberra House, Martin Miles. The tours will also feature a variety of special guests, including internationally renowned architects and planners. Please meet at the Civic Square bus stop at 8:50am. (Buses will depart and return to this location each week.)\r\n\r\nPlease note that the bus, as well as some locations, will require stair access as well as moderate walking. Please contact us if you have any questions regarding accessibility.\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-65.png\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-43.png', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2020-10-02 04:34:02', '2020-10-02 04:34:02', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-10-01 01:48:17', '2020-10-01 01:48:17', '', 'News', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-10-01 01:48:17', '2020-10-01 01:48:17', '', 27, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 'Houses', '', 'publish', 'closed', 'closed', '', 'houses', '', '', '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 'Houses', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-10-01 01:48:32', '2020-10-01 01:48:32', '', 29, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 'Architects', '', 'publish', 'closed', 'closed', '', 'architects', '', '', '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 'Architects', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-10-01 01:48:42', '2020-10-01 01:48:42', '', 31, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-01 01:48:52', '2020-10-01 01:48:52', '', 33, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-10-01 01:49:20', '2020-10-01 01:49:20', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://127.0.0.1/11058-Assessment-2/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-01 01:49:20', '2020-10-01 01:49:20', '', 2, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2020-10-01 01:49:51', '2020-10-01 01:49:51', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2020-10-01 01:51:39', '2020-10-01 01:51:39', '<h2>CANBERRA’S GROWTH—AN OVERVIEW</h2>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n\r\n[caption id="attachment_50" align="alignnone" width="300"]<img class="size-medium wp-image-50" src="http://127.0.0.1/11058-Assessment-2/wp-content/uploads/2020/10/canberra-photo-from-NAA-300x237.jpg" alt="" width="300" height="237" /> Canberra - Photo from NAA[/caption]\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building undertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned houses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture (Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n<ul>\r\n 	<li>The post-war Melbourne regional architecture of Roy Grounds and Robin Boyd</li>\r\n 	<li>Examples of post-war international style houses from Harry Seidler</li>\r\n 	<li>Sydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley</li>\r\n 	<li>The organic architecture of Enrico Taglietti</li>\r\n</ul>\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-03 06:10:47', '2020-10-03 06:10:47', '', 0, 'http://127.0.0.1/11058-Assessment-2/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-10-01 01:51:40', '2020-10-01 01:51:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-01 01:51:40', '2020-10-01 01:51:40', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/01/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-10-01 01:52:01', '2020-10-01 01:52:01', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2020-10-01 01:52:01', '2020-10-01 01:52:01', '', 0, 'http://127.0.0.1/11058-Assessment-2/?p=42', 6, 'nav_menu_item', '', 0),
(43, 1, '2020-10-02 04:34:02', '2020-10-02 04:34:02', 'Mid-Century Modernist Bus Tour:\r\nGrounds &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Grounds and other architects.\r\n\r\nRoy Grounds (1905-1981) was a renowned Victorian architect and a leader in Australia’s modern architecture movement. During his early career he spent some time working in the United States and England and after the war he was involved in setting up the curriculum for the School of Architecture at the University of Melbourne. Between 1953 and 1962, Grounds was part of the Grounds, Romberg and Boyd partnership, in which time he designed the Australian Academy of Science in Canberra.\r\n\r\nThis tour will pick-up and drop-off from the Corner of Parkes Pl W and Queen Elizabeth Terrace. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n----\r\n\r\nMid-Century Modernist Bus Tour:\r\nBoyd &amp; Friends\r\n\r\nJoin renowned architecture enthusiast, Martin Miles on a bus tour around Canberra’s best architecture including mid-century modernist icons by Boyd and other architects.\r\n\r\nRobin Boyd (1919-1971), born and educated in Melbourne, was a distinguished architect, writer and social commentator and throughout the 1940s and 1950s was Australia’s leading proponent of the modern movement. Boyd held a lifelong interest in modern architecture tempered by regional concerns. His early work employed structuralist solutions to overcome what he considered to be the deficiencies of most housing of the period and he was a leading practitioner of the post-war Melbourne regional style. The suburban house was often the focus of Boyd’s efforts, both in design and writing, and he enjoyed relatively few opportunities to design major buildings.\r\n\r\nThis tour will pick-up and drop-off from the corner of Watson Street and Gould Street in Turner. After the tour, participants are invited to Sunday Sessions – music by local acts, a series of large-scale graphic interventions, and an award-winning architectural pop-up wine bar, the Pop Inn.\r\n\r\n&nbsp;\r\n\r\n----\r\n\r\n&nbsp;\r\n\r\nMid Century Modern Tour #3\r\n\r\nUse and Re-Use\r\n\r\nBack by popular demand, this year’s architecture tours will take their cue from the Design Canberra theme: geometry. The Design Canberra festival will celebrate the strong geometry present throughout our city and the ways it creates human, creative and global connections.\r\n\r\nThe tours will introduce people to architects who have used geometric forms in a variety of ways to shape spaces for people. How have the designers of these houses and buildings used geometric principles to create dwellings that comfort and inspire their occupants? From simple rectilinear forms and modular designs to complex examples using the Pythagorean spiral and hemicycle, we’ll visit some of Canberra’s most significant houses and buildings.\r\n\r\nThis tour looks at the future of mid-century design. We’ll visit mid-century houses, an embassy and a church. How are they meeting the needs of occupants today, and how are people adapting them for current and future needs?\r\n\r\nThe tours will be presented by local architecture enthusiast and author of Canberra House, Martin Miles. The tours will also feature a variety of special guests, including internationally renowned architects and planners. Please meet at the Civic Square bus stop at 8:50am. (Buses will depart and return to this location each week.)\r\n\r\nPlease note that the bus, as well as some locations, will require stair access as well as moderate walking. Please contact us if you have any questions regarding accessibility.\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-65.png\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPhoto: https://designcanberrafestival.com.au/wp-content/uploads/2018/09/DC-Website-banner-43.png', 'News', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-10-02 04:34:02', '2020-10-02 04:34:02', '', 27, 'http://127.0.0.1/11058-Assessment-2/2020/10/02/27-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-03 04:37:12', '2020-10-03 04:37:12', 'CANBERRA’S GROWTH—AN OVERVIEW\r\n\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911\r\nfor the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland.\r\nThe tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n\r\nTHE 1930S AND 1940S\r\n\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities.\r\nEarly development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building\r\nundertaken before 1950.\r\nCanberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned\r\nhouses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private\r\nbuilding activity in Canberra during this period. There were probably only two privately practising architects in Canberra up until the\r\nlate 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little apetite\r\nfor the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being\r\ninfluenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site.\r\nThe best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n\r\nTHE 1950S\r\n\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of\r\nFederal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and\r\nMelbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra.\r\nThe presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra.\r\nAs a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture\r\n(Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects.\r\nJennifer Taylor, Australian Architecture Since 1960\r\nIn Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists,\r\nbrought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous\r\narchitectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds,\r\nfor example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n\r\nTHE 1960S\r\n\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the\r\npopulation had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation\r\nof Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and\r\ncommunity institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging\r\nSydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill\r\ncreated a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n\r\nThe post-war Melbourne regional architecture of Roy Grounds and Robin Boyd\r\nExamples of post-war international style houses from Harry Seidler\r\nSydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley\r\nThe organic architecture of Enrico Taglietti\r\nTHE 1970S AND 1980S\r\n\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the\r\ntown centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread\r\nin the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density\r\ndevelopment as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and\r\nrecreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and\r\nheritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting\r\nand award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition\r\nand redevelopment.\r\n\r\nABOUT THE SITE\r\n\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses,\r\narchitect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might\r\nstimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century\r\nArchitecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide\r\naccess to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other\r\nbodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 04:37:12', '2020-10-03 04:37:12', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-10-03 04:40:35', '2020-10-03 04:40:35', '<h1>CANBERRA’S GROWTH—AN OVERVIEW</h1>\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\n<h3>THE 1930S AND 1940S</h3>\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building\nundertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned\nhouses, with the vast majority of housing construction government driven.\n\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\n\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\n<h3>THE 1950S</h3>\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\n\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture\n(Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\n\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\n\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\nand later designed Frankel’s house in Campbell.\n<h3>THE 1960S</h3>\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\n\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\n\nThe post-war Melbourne regional architecture of Roy Grounds and Robin Boyd\nExamples of post-war international style houses from Harry Seidler\nSydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley\nThe organic architecture of Enrico Taglietti\n<h3>THE 1970S AND 1980S</h3>\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\n\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\n<h3>ABOUT THE SITE</h3>\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\n\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\n\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2020-10-03 04:40:35', '2020-10-03 04:40:35', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-autosave-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(46, 1, '2020-10-03 04:40:37', '2020-10-03 04:40:37', '<h1>CANBERRA’S GROWTH—AN OVERVIEW</h1>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building\r\nundertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned\r\nhouses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture\r\n(Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n\r\nThe post-war Melbourne regional architecture of Roy Grounds and Robin Boyd\r\nExamples of post-war international style houses from Harry Seidler\r\nSydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley\r\nThe organic architecture of Enrico Taglietti\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 04:40:37', '2020-10-03 04:40:37', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-10-03 04:41:37', '2020-10-03 04:41:37', '<h1>CANBERRA’S GROWTH—AN OVERVIEW</h1>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building undertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned houses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture\r\n(Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n\r\nThe post-war Melbourne regional architecture of Roy Grounds and Robin Boyd\r\nExamples of post-war international style houses from Harry Seidler\r\nSydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley\r\nThe organic architecture of Enrico Taglietti\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 04:41:37', '2020-10-03 04:41:37', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-10-03 04:42:20', '2020-10-03 04:42:20', '<h1>CANBERRA’S GROWTH—AN OVERVIEW</h1>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building undertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned houses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture (Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n<ul>\r\n 	<li>The post-war Melbourne regional architecture of Roy Grounds and Robin Boyd</li>\r\n 	<li>Examples of post-war international style houses from Harry Seidler</li>\r\n 	<li>Sydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley</li>\r\n 	<li>The organic architecture of Enrico Taglietti</li>\r\n</ul>\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 04:42:20', '2020-10-03 04:42:20', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-10-03 04:42:34', '2020-10-03 04:42:34', '<h2>CANBERRA’S GROWTH—AN OVERVIEW</h2>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building undertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned houses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture (Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n<ul>\r\n 	<li>The post-war Melbourne regional architecture of Roy Grounds and Robin Boyd</li>\r\n 	<li>Examples of post-war international style houses from Harry Seidler</li>\r\n 	<li>Sydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley</li>\r\n 	<li>The organic architecture of Enrico Taglietti</li>\r\n</ul>\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 04:42:34', '2020-10-03 04:42:34', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-10-03 06:10:23', '2020-10-03 06:10:23', '', 'canberra - photo from NAA', 'Canberra - Photo from NAA', 'inherit', 'open', 'closed', '', 'canberra-photo-from-naa', '', '', '2020-10-03 06:10:43', '2020-10-03 06:10:43', '', 40, 'http://127.0.0.1/11058-Assessment-2/wp-content/uploads/2020/10/canberra-photo-from-NAA.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-10-03 06:10:47', '2020-10-03 06:10:47', '<h2>CANBERRA’S GROWTH—AN OVERVIEW</h2>\r\nThe city of Canberra is located in the Australian Capital Territory, a 2,356 square kilometre area of land handed over by the NSW government in 1911 for the site of Australia’s new capital. The Territory is a hilly environment containing much natural bushland. The tree-clad, landscaped city itself has been described by architecture historian Jennifer Taylor as “a vast garden containing buildings as individual objects.”\r\n\r\n[caption id="attachment_50" align="alignnone" width="300"]<img class="size-medium wp-image-50" src="http://127.0.0.1/11058-Assessment-2/wp-content/uploads/2020/10/canberra-photo-from-NAA-300x237.jpg" alt="" width="300" height="237" /> Canberra - Photo from NAA[/caption]\r\n<h3>THE 1930S AND 1940S</h3>\r\nCanberra’s beginnings as a planned city established conditions that were different from Australia’s other major cities. Early development came in fits and starts, with government indecision, World Wars and the Great Depression severely limiting the amount of public building undertaken before 1950. Canberra was little more than a country town during the 1930s, with a population of around 10,000. In 1941 there were as few as 400 privately owned houses, with the vast majority of housing construction government driven.\r\n\r\nWhat of modernism in Canberra during this period? The ideas of mainstream modernism came slowly to Australia and there was little private building activity in Canberra during this period. There were probably only two privately practicing architects in Canberra up until the late 1940s—Kenneth Oliphant and Malcolm Moir—and aside from government architects Cuthbert Whitley and E H Henderson there was little appetite for the ideas of European modernism. Consequently, only a very small number of inter-war functionalist houses survive from this period, some being influenced by the architecture of Mies van der Rohe in Germany and W M Dudock in Holland.\r\n\r\nIncidentally, Federal Capital Commission architecture from the 1920s and 1930s is unique to Canberra—but is not examined on this site. The best coverage of FCC architecture can be found in The Early Canberra House 1911-1933, edited by Peter Freeman.\r\n<h3>THE 1950S</h3>\r\nThe population of Canberra grew to 50,000 during the 1950s. The decade saw the establishment of the Australian National University, gradual movement of Federal government departments to Canberra and the creation of the NCDC in 1957. The arrival of academics and senior government officials from Sydney and Melbourne accompanied these developments and it was not unusual for them to commission architects from their home cities to design their new houses in Canberra. The presence of post-war Sydney and Melbourne streams of modernist residential architecture together is unusual and seldom found elsewhere in Australia.\r\n\r\nAt the same time, the NCDC increased the amount of commissioned government work for public building, also attracting leading architects to Canberra. As a result of these influences, there are some excellent examples of post-war Melbourne (Grounds and Boyd) and post-war international architecture (Sydney architects Seidler and Ancher) from this period in Canberra, some of national importance.\r\n\r\n[Canberra is] … a vast garden containing buildings as individual objects. Jennifer Taylor, Australian Architecture Since 1960 In Experiments in Modern Living: Scientists and the National Capital Private House 1925-1970, Milton Cameron has examined how a group of scientists, brought to Canberra to take up leading roles in the establishment of national scientific institutions, commissioned private houses that rejected previous architectural styles and wholeheartedly embraced modernist ideologies and aesthetics.\r\n\r\nThe firm Grounds, Romberg and Boyd established an office in Canberra, located in one of the Forrest Townhouses designed by Grounds. Roy Grounds, for example, who designed the Australian Academy of Science building formed relationships here with prominent scientists such as Sir Otto Frankel,\r\nand later designed Frankel’s house in Campbell.\r\n<h3>THE 1960S</h3>\r\nWith the NCDC in full swing, and Canberra resembling a construction site, the 1960s witnessed growth rates of 10% per year and by 1970 the population had climbed above 140,000. The city was transformed, with the development of new satellite towns in Woden and Belconnen, the creation of Lake Burley Griffin and the commencement of national institutions in the central national area. Notable buildings completed for national and community institutions include the Academy of Science (Roy Grounds, 1958) and the National Library of Australia (Bunning and Madden, 1967).\r\nThe decade saw further important examples of Melbourne regional and post-war international architecture designed and built, together with the emerging Sydney regional style and beginnings of medium density housing. The first medium density housing development sponsored by the NCDC in Swinger Hill created a sensation when it was opened for exhibition on two weekends in April 1972, attracting over 20,000 visitors.\r\n\r\nThe major developments in Australian post-war architecture are well represented in Canberra’s houses of the 1960s:\r\n<ul>\r\n 	<li>The post-war Melbourne regional architecture of Roy Grounds and Robin Boyd</li>\r\n 	<li>Examples of post-war international style houses from Harry Seidler</li>\r\n 	<li>Sydney regional architecture by Ian McKay, Allen, Jack and Cottier and Ken Woolley</li>\r\n 	<li>The organic architecture of Enrico Taglietti</li>\r\n</ul>\r\n<h3>THE 1970S AND 1980S</h3>\r\nCanberra’s high growth rate continued in the early part of the decade and large scale office development accompanied a rapid expansion of the town centres in Belconnen, Woden and Tuggeranong. By 1976 the population had reached 203,000. The Sydney regional style became more widespread in the early part of the decade, particularly in developing bushland suburbs such as Aranda. The 1970s also saw a further increase in medium density development as the NCDC began actively promoting the idea of townhouse living.\r\n\r\nThe city of Canberra matured in the 1980s, with the population approaching 300,000 and greater diversity apparent in lifestyles, employment and recreation. The suburbs and town centre of Tuggeranong were constructed to the south, and the new town centre of Gungahlin planned in the north.\r\nMeanwhile, real estate values in inner suburbs increased significantly, reflecting a growing awareness and appreciation of the city’s history and heritage. The marked increase in the regeneration of central suburbs has provided opportunities for architects, and produced a number of interesting and award winning houses in this period. But it’s a two-edged sword: this regeneration also threatens some significant older houses with demolition and redevelopment.\r\n<h3>ABOUT THE SITE</h3>\r\nThis site tells the story of modernist residential architecture and the development of Canberra, through profiles of significant Canberra houses, architect biographies and articles about architectural styles and heritage issues. I hope that by bringing this story together online it might stimulate an interest in Canberra’s mid-twentieth century modernist heritage.\r\n\r\nThe content for the site has been drawn from citations in the Australian Institute of Architects’ (AIA) Register of Significant Twentieth Century Architecture (RSTCA), my own research and conversations with house owners. This is a personal, totally self-funded website. While the AIA provide access to citations in the (public) RSTCA, this site is not affiliated with them in any way, nor is it supported by or connected with any other bodies or businesses.\r\n\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-10-03 06:10:47', '2020-10-03 06:10:47', '', 40, 'http://127.0.0.1/11058-Assessment-2/2020/10/03/40-revision-v1/', 0, 'revision', '', 0) ;

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
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
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
(42, 2, 0) ;

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
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
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
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `term_group` bigint(10) NOT NULL DEFAULT 0,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(16, 1, 'session_tokens', 'a:9:{s:64:"1117a2ceeb3496ccd46c00311d563f4fef56636672ea3f9defd0172b4b05eaea";a:4:{s:10:"expiration";i:1602108568;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1600898968;}s:64:"199d2be93b0556dec6c16049c7fd058e0da08582504449111e33a72cc11c5828";a:4:{s:10:"expiration";i:1601785461;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15";s:5:"login";i:1601612661;}s:64:"6582e0049af02525a5101a83ec1e65a308171407c81576e1e6ecf533e9a9bcaa";a:4:{s:10:"expiration";i:1601785471;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15";s:5:"login";i:1601612671;}s:64:"f8cb49d49c3ac74b28ec92c8fccace192ca829f5e9e29026a096e9cf6a22e910";a:4:{s:10:"expiration";i:1601785505;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Safari/605.1.15";s:5:"login";i:1601612705;}s:64:"86e8e898ed596b964c80a121de1fc19958457d80a8b078e146a5c3431c0143c2";a:4:{s:10:"expiration";i:1601849859;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1601677059;}s:64:"6328a9596c22c30271f0ec5f4ae3d1a912c82aa5b08a44a85e51fe3df2145015";a:4:{s:10:"expiration";i:1602886765;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1601677165;}s:64:"7ea8c639b1a2c08d2bcda11d0404c8fb7e7792a2125bea5a50e1192604fad053";a:4:{s:10:"expiration";i:1601871960;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:135:"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Mobile Safari/537.36";s:5:"login";i:1601699160;}s:64:"53056fca5d224485f5014038cd056d64f9a330d999f131d920a6b682dcb59e27";a:4:{s:10:"expiration";i:1601877861;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1601705061;}s:64:"f971b06bf4e4a3bf64c76d5bc84b9677e732f4b79f42041a443b39f46f8ed49c";a:4:{s:10:"expiration";i:1601877896;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1601705096;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '17'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1601705443') ;

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
  `user_status` int(11) NOT NULL DEFAULT 0,
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
