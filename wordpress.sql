-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 27 日 03:58
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wordpress`
--

-- --------------------------------------------------------

--
-- 表的结构 `dm_commentmeta`
--

CREATE TABLE IF NOT EXISTS `dm_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dm_comments`
--

CREATE TABLE IF NOT EXISTS `dm_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dm_download_log`
--

CREATE TABLE IF NOT EXISTS `dm_download_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL DEFAULT 'download',
  `user_id` bigint(20) NOT NULL,
  `user_ip` varchar(200) NOT NULL,
  `user_agent` varchar(200) NOT NULL,
  `download_id` bigint(20) NOT NULL,
  `version_id` bigint(20) NOT NULL,
  `version` varchar(200) NOT NULL,
  `download_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `download_status` varchar(200) DEFAULT NULL,
  `download_status_message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `attribute_name` (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dm_links`
--

CREATE TABLE IF NOT EXISTS `dm_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dm_options`
--

CREATE TABLE IF NOT EXISTS `dm_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=710 ;

--
-- 转存表中的数据 `dm_options`
--

INSERT INTO `dm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/marx', 'yes'),
(2, 'home', 'http://localhost/marx', 'yes'),
(3, 'blogname', '马克思主义学院', 'yes'),
(4, 'blogdescription', '马克思主义学院', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'fanfanyayu@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%post_id%', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:45:"simple-local-avatars/simple-local-avatars.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:72:"H:\\USBWebserver v8.5\\8.5\\root\\wordpress/wp-content/themes/marx/style.css";i:1;s:0:"";}', 'no'),
(41, 'template', 'marx', 'yes'),
(42, 'stylesheet', 'marx', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:45:"simple-local-avatars/simple-local-avatars.php";s:30:"simple_local_avatars_uninstall";s:32:"baw-invitation-codes/baw-eic.php";s:18:"baweic_uninstaller";}', 'no'),
(83, 'timezone_string', 'Asia/Shanghai', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'dm_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:64:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"manage_downloads";b:1;s:15:"dlm_manage_logs";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'zh_CN', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:18:"orphaned_widgets_1";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1432708702;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1432708713;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1432722946;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1432725120;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', 'cfb08f767a2df2ff12938d0db7d37ba9', 'yes'),
(129, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:20:"fanfanyayu@gmail.com";s:7:"version";s:5:"4.2.2";s:9:"timestamp";i:1431505557;}', 'yes'),
(131, 'dismissed_update_core', 'a:1:{s:11:"4.1.1|zh_CN";b:1;}', 'yes'),
(132, 'recently_activated', 'a:2:{s:51:"hacklog-downloadmanager/hacklog-downloadmanager.php";i:1432645149;s:37:"download-monitor/download-monitor.php";i:1432644695;}', 'yes'),
(135, '_transient_twentyfifteen_categories', '1', 'yes'),
(138, 'zh_cn_l10n_icp_num', '09029830', 'yes'),
(147, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426748104;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(148, 'current_theme', 'marx', 'yes'),
(149, 'theme_mods_colorway', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430402630;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"secondary-widget-area";N;s:24:"first-footer-widget-area";N;s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;s:35:"home-page-right-feature-widget-area";N;}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'inkthemes_backup_data', '1', 'yes'),
(174, 'zn_template', 'a:33:{i:0;a:3:{s:4:"name";s:32:"&#x9996;&#x9875;&#x8BBE;&#x7F6E;";s:4:"type";s:5:"title";s:4:"desc";s:0:"";}i:1;a:1:{s:4:"type";s:4:"open";}i:2;a:5:{s:4:"name";s:20:"&#x7F51;&#x7AD9;LOGO";s:4:"desc";s:60:"&#x8F93;&#x5165;LOGO&#x56FE;&#x7247;&#x7684;&#x5730;&#x5740;";s:2:"id";s:9:"zens_logo";s:3:"std";s:68:"http://localhost/wordpress/wp-content/themes/Zenshop/images/logo.png";s:4:"type";s:4:"text";}i:3;a:6:{s:4:"name";s:48:"&#x9996;&#x9875;&#x6A21;&#x677F;&#x98CE;&#x683C;";s:4:"desc";s:64:"&#x9009;&#x62E9;&#x9996;&#x9875;&#x663E;&#x793A;&#x98CE;&#x683C;";s:2:"id";s:9:"zens_home";s:4:"type";s:6:"select";s:7:"options";a:2:{i:0;s:16:"&#x5546;&#x57CE;";i:1;s:16:"&#x535A;&#x5BA2;";}s:3:"std";s:0:"";}i:4;a:5:{s:4:"name";s:64:"&#x9996;&#x9875;&#x663E;&#x793A;&#x4EA7;&#x54C1;&#x6570;&#x91CF;";s:4:"desc";s:128:"&#x6309;&#x7167;&#x4F60;&#x7684;&#x7231;&#x597D;&#x8BBE;&#x7F6E;&#x9996;&#x9875;&#x663E;&#x793A;&#x4EA7;&#x54C1;&#x6570;&#x91CF;";s:2:"id";s:15:"zens_home_count";s:3:"std";s:2:"12";s:4:"type";s:4:"text";}i:5;a:1:{s:4:"type";s:5:"close";}i:6;a:3:{s:4:"name";s:40:"&#x5E7B;&#x706F;&#x7247;&#x8BBE;&#x7F6E;";s:4:"type";s:5:"title";s:4:"desc";s:56:"This section customizes featured slider on the homepage.";}i:7;a:1:{s:4:"type";s:4:"open";}i:8;a:6:{s:4:"name";s:40:"&#x5E7B;&#x706F;&#x7247;&#x5206;&#x7C7B;";s:4:"desc";s:88:"&#x9009;&#x62E9;&#x67D0;&#x4E2A;&#x7C7B;&#x522B;&#x4F5C;&#x4E3A;&#x5E7B;&#x706F;&#x7247;";s:2:"id";s:14:"zens_slide_cat";s:3:"std";s:50:"&#x9009;&#x62E9;&#x4E00;&#x4E2A;&#x7C7B;&#x522B;y:";s:4:"type";s:6:"select";s:7:"options";a:1:{i:0;s:49:"&#x9009;&#x62E9;&#x4E00;&#x4E2A;&#x7C7B;&#x522B;:";}}i:9;a:5:{s:4:"name";s:40:"&#x5E7B;&#x706F;&#x7247;&#x6570;&#x91CF;";s:4:"desc";s:65:"&#x8BBE;&#x7F6E;&#x5E7B;&#x706F;&#x7247;&#x7684;&#x4E2A;&#x6570;.";s:2:"id";s:16:"zens_slide_count";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:10;a:1:{s:4:"type";s:5:"close";}i:11;a:3:{s:4:"name";s:42:"125 x 125 &#x5E7F;&#x544A;&#x8BBE;&#x7F6E;";s:4:"type";s:5:"title";s:4:"desc";s:62:"You can setup four 125 x 125 banners on your sidebar from here";}i:12;a:1:{s:4:"type";s:4:"open";}i:13;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;1&#x56FE;&#x7247;";s:4:"desc";s:107:"&#x5728;&#x8FD9;&#x91CC;&#x8F93;&#x5165;&#x4F60;&#x7684;125*125&#x5E7F;&#x544A;&#x56FE;&#x7247;&#x7684;URL.";s:2:"id";s:12:"zens_banner1";s:3:"std";s:44:"http://web2feel.com/images/webhostinghub.png";s:4:"type";s:4:"text";}i:14;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;1&#x6807;&#x7B7E;";s:4:"desc";s:75:"&#x8F93;&#x5165;&#x4F60;&#x7684;&#x5E7F;&#x544A;&#x7684;ALT&#x6807;&#x7B7E;";s:2:"id";s:9:"zens_alt1";s:3:"std";s:50:"Cheap reliable web hosting from WebHostingHub.com.";s:4:"type";s:4:"text";}i:15;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;1&#x5730;&#x5740;";s:4:"desc";s:73:"&#x8F93;&#x5165;&#x5E7F;&#x544A;1&#x7684;&#x94FE;&#x63A5;&#x5730;&#x5740;";s:2:"id";s:9:"zens_url1";s:3:"std";s:29:"http://www.webhostinghub.com/";s:4:"type";s:4:"text";}i:16;a:5:{s:4:"name";s:49:"&#x5E7F;&#x544A;1&#x94FE;&#x63A5;&#x6807;&#x9898;";s:4:"desc";s:57:"&#x8F93;&#x5165;&#x7684;&#x5E7F;&#x544A;1&#x6807;&#x9898;";s:2:"id";s:9:"zens_lab1";s:3:"std";s:45:"Web Hosting Hub - Cheap reliable web hosting.";s:4:"type";s:4:"text";}i:17;a:1:{s:4:"type";s:5:"break";}i:18;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;2&#x56FE;&#x7247;";s:4:"desc";s:107:"&#x5728;&#x8FD9;&#x91CC;&#x8F93;&#x5165;&#x4F60;&#x7684;125*125&#x5E7F;&#x544A;&#x56FE;&#x7247;&#x7684;URL.";s:2:"id";s:12:"zens_banner2";s:3:"std";s:38:"http://web2feel.com/images/pcnames.png";s:4:"type";s:4:"text";}i:19;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;2&#x6807;&#x7B7E;";s:4:"desc";s:75:"&#x8F93;&#x5165;&#x4F60;&#x7684;&#x5E7F;&#x544A;&#x7684;ALT&#x6807;&#x7B7E;";s:2:"id";s:9:"zens_alt2";s:3:"std";s:57:"Domain name search and availability check by PCNames.com.";s:4:"type";s:4:"text";}i:20;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;2&#x5730;&#x5740;";s:4:"desc";s:73:"&#x8F93;&#x5165;&#x5E7F;&#x544A;2&#x7684;&#x94FE;&#x63A5;&#x5730;&#x5740;";s:2:"id";s:9:"zens_url2";s:3:"std";s:23:"http://www.pcnames.com/";s:4:"type";s:4:"text";}i:21;a:5:{s:4:"name";s:49:"&#x5E7F;&#x544A;2&#x94FE;&#x63A5;&#x6807;&#x9898;";s:4:"desc";s:57:"&#x8F93;&#x5165;&#x7684;&#x5E7F;&#x544A;2&#x6807;&#x9898;";s:2:"id";s:9:"zens_lab2";s:3:"std";s:52:"PC Names - Domain name search and availability check";s:4:"type";s:4:"text";}i:22;a:1:{s:4:"type";s:5:"break";}i:23;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;3&#x56FE;&#x7247;";s:4:"desc";s:107:"&#x5728;&#x8FD9;&#x91CC;&#x8F93;&#x5165;&#x4F60;&#x7684;125*125&#x5E7F;&#x544A;&#x56FE;&#x7247;&#x7684;URL.";s:2:"id";s:12:"zens_banner3";s:3:"std";s:44:"http://web2feel.com/images/designcontest.png";s:4:"type";s:4:"text";}i:24;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;3&#x6807;&#x7B7E;";s:4:"desc";s:75:"&#x8F93;&#x5165;&#x4F60;&#x7684;&#x5E7F;&#x544A;&#x7684;ALT&#x6807;&#x7B7E;";s:2:"id";s:9:"zens_alt3";s:3:"std";s:54:"Website and logo design contests at DesignContest.com.";s:4:"type";s:4:"text";}i:25;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;3&#x5730;&#x5740;";s:4:"desc";s:73:"&#x8F93;&#x5165;&#x5E7F;&#x544A;3&#x7684;&#x94FE;&#x63A5;&#x5730;&#x5740;";s:2:"id";s:9:"zens_url3";s:3:"std";s:29:"http://www.designcontest.com/";s:4:"type";s:4:"text";}i:26;a:5:{s:4:"name";s:49:"&#x5E7F;&#x544A;3&#x94FE;&#x63A5;&#x6807;&#x9898;";s:4:"desc";s:57:"&#x8F93;&#x5165;&#x7684;&#x5E7F;&#x544A;3&#x6807;&#x9898;";s:2:"id";s:9:"zens_lab3";s:3:"std";s:49:"Design Contest - Logo and website design contests";s:4:"type";s:4:"text";}i:27;a:1:{s:4:"type";s:5:"break";}i:28;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;4&#x56FE;&#x7247;";s:4:"desc";s:107:"&#x5728;&#x8FD9;&#x91CC;&#x8F93;&#x5165;&#x4F60;&#x7684;125*125&#x5E7F;&#x544A;&#x56FE;&#x7247;&#x7684;URL.";s:2:"id";s:12:"zens_banner4";s:3:"std";s:47:"http://web2feel.com/images/webhostingrating.png";s:4:"type";s:4:"text";}i:29;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;4&#x6807;&#x7B7E;";s:4:"desc";s:75:"&#x8F93;&#x5165;&#x4F60;&#x7684;&#x5E7F;&#x544A;&#x7684;ALT&#x6807;&#x7B7E;";s:2:"id";s:9:"zens_alt4";s:3:"std";s:72:"Reviews of the best cheap web hosting providers at WebHostingRating.com.";s:4:"type";s:4:"text";}i:30;a:5:{s:4:"name";s:33:"&#x5E7F;&#x544A;4&#x5730;&#x5740;";s:4:"desc";s:73:"&#x8F93;&#x5165;&#x5E7F;&#x544A;4&#x7684;&#x94FE;&#x63A5;&#x5730;&#x5740;";s:2:"id";s:9:"zens_url4";s:3:"std";s:27:"http://webhostingrating.com";s:4:"type";s:4:"text";}i:31;a:5:{s:4:"name";s:49:"&#x5E7F;&#x544A;4&#x94FE;&#x63A5;&#x6807;&#x9898;";s:4:"desc";s:57:"&#x8F93;&#x5165;&#x7684;&#x5E7F;&#x544A;4&#x6807;&#x9898;";s:2:"id";s:9:"zens_lab4";s:3:"std";s:59:"Web Hosting Rating - Customer reviews of the best web hosts";s:4:"type";s:4:"text";}i:32;a:1:{s:4:"type";s:5:"close";}}', 'yes'),
(175, 'zn_themename', 'Zenshop', 'yes'),
(176, 'zn_shortname', 'zens', 'yes'),
(177, 'theme_mods_Zenshop', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426753999;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_2";N;s:18:"orphaned_widgets_3";N;s:18:"orphaned_widgets_4";N;s:18:"orphaned_widgets_5";N;s:18:"orphaned_widgets_6";N;s:18:"orphaned_widgets_7";N;}}}', 'yes'),
(178, 'theme_switched_via_customizer', '', 'yes'),
(181, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426753988;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(186, 'product_children', 'a:0:{}', 'yes'),
(187, '_is_widget_active_', '1', 'yes'),
(188, 'theme_mods_Ebuy', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:7:"menubar";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430393850;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(284, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430403998;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(285, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430402537;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(299, 'widget_nav_menu', 'a:0:{}', 'yes'),
(303, 'theme_mods_HotNewspro', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:11:"header-menu";i:0;s:11:"footer-menu";i:3;s:7:"menubar";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430562558;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:9:"sidebar-4";N;s:9:"sidebar-5";N;s:9:"sidebar-6";N;s:9:"sidebar-7";N;}}}', 'yes'),
(304, 'swt_alt_stylesheet', '1-gray.css', 'yes'),
(305, 'swt_home', '杂志布局', 'yes'),
(306, 'swt_catl', '1,2,3,4', 'yes'),
(307, 'swt_catr', '1,2,3,4', 'yes'),
(308, 'swt_cat_n', '4', 'yes'),
(312, 'swt_rolling_n', '8', 'yes'),
(313, 'swt_new_p', '显示', 'yes'),
(314, 'swt_new_post', '选择数量', 'yes'),
(315, 'swt_new_exclude', '', 'yes'),
(316, 'swt_tag_t', '关闭', 'yes'),
(317, 'swt_top_tag', '15', 'yes'),
(318, 'swt_hot', '关闭', 'yes'),
(319, 'swt_hot_img', '最新文章', 'yes'),
(320, 'swt_tab', '关闭', 'yes'),
(321, 'swt_newr_exclude', '', 'yes'),
(322, 'swt_cat_h', '1,2,3,4', 'yes'),
(323, 'swt_s_cat', '1,2,3', 'yes'),
(324, 'swt_s_cat_n', '20', 'yes'),
(325, 'swt_mimg', '关闭', 'yes'),
(326, 'swt_mimg_n', '4', 'yes'),
(327, 'swt_mcat', '关闭', 'yes'),
(328, 'swt_mcat_n', '5', 'yes'),
(329, 'swt_cat_exclude', '', 'yes'),
(330, 'swt_wallreaders', '关闭', 'yes'),
(331, 'swt_recently', '关闭', 'yes'),
(332, 'swt_statistics', '关闭', 'yes'),
(333, 'swt_builddate', '2008-02-01', 'yes'),
(334, 'swt_logo', '显示', 'yes'),
(335, 'swt_cut_img', '关闭', 'yes'),
(336, 'swt_cumulus', '关闭', 'yes'),
(337, 'swt_ico', '关闭', 'yes'),
(338, 'swt_related', '关闭', 'yes'),
(341, 'swt_smiley', '关闭', 'yes'),
(342, 'swt_bulletin', '关闭', 'yes'),
(343, 'swt_bulletin_n', '4', 'yes'),
(344, 'swt_link', '20', 'yes'),
(345, 'swt_link_s', '输入你的友情链接页面地址', 'yes'),
(347, 'swt_weibo', '1882973105', 'yes'),
(348, 'swt_shops', 'http://wopus.taobao.com/', 'yes'),
(349, 'swt_description', '说明：输入你的网站描述，一般不超过200个字符', 'yes'),
(350, 'swt_keywords', '说明：输入你的网站关键字，一般不超过100个字符', 'yes'),
(351, 'swt_track_code', '', 'yes'),
(352, 'swt_baidu_s', 'zmingcx.com', 'yes'),
(353, 'swt_search', 'wp', 'yes'),
(354, 'swt_search_link', 'http://zmingcx.com/search', 'yes'),
(355, 'swt_search_ID', '005077649218303215363:ngrflw3nv8m', 'yes'),
(356, 'swt_adh', '关闭', 'yes'),
(357, 'swt_adh_c', '<a href=\\"http://faq.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad730.jpg\\" alt=\\"Wopus问答\\" /></a>', 'yes'),
(358, 'swt_adsc', '<a href=\\"http://idc.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad230.jpg\\" alt=\\"博客主机\\" /></a>', 'yes'),
(359, 'swt_adr', '显示', 'yes'),
(360, 'swt_adsr', '<a href=\\"http://idc.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad230.jpg\\" alt=\\"博客主机\\" /></a>', 'yes'),
(361, 'swt_adc', '显示', 'yes'),
(362, 'swt_ad_c', '<a href=\\"http://faq.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad730.jpg\\" alt=\\"Wopus问答\\" /></a>', 'yes'),
(363, 'swt_ad_r', '显示', 'yes'),
(364, 'swt_ad_rc', '<a href=\\"http://idc.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad300.jpg\\" alt=\\"博客主机\\" /></a>', 'yes'),
(365, 'swt_file_ad', '<a href=\\"http://idc.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad500.jpg\\" alt=\\"博客主机\\" /></a>', 'yes'),
(366, 'swt_adt', '显示', 'yes'),
(367, 'swt_adtc', '<a href=\\"http://faq.wopus.org/\\" target=\\"_blank\\"><img src=\\"http://localhost/wordpress/wp-content/themes/HotNewspro/images/ad/ad730.jpg\\" alt=\\"Wopus问答\\" /></a>', 'yes'),
(368, 'SHe_archives_1', '<ul class="archives-list"><li><span class="archives-yearmonth">三月 2015 &nbsp;(1&nbsp;篇文章)</span><ul class="archives-monthlisting">\n<li>19日:&nbsp;<a href=''http://localhost/wordpress/1'' title=''View this post, &quot;世界，你好！&quot;''>世界，你好！</a>&nbsp;(0)</li>\n</ul></li></ul>\n', 'yes'),
(369, 'theme_mods_Hcms', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430563821;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:18:"orphaned_widgets_1";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:18:"orphaned_widgets_2";N;s:18:"orphaned_widgets_3";N;s:18:"orphaned_widgets_4";N;s:18:"orphaned_widgets_5";N;s:18:"orphaned_widgets_6";N;s:18:"orphaned_widgets_7";N;}}}', 'yes'),
(371, 'ad1_close', 'open', 'yes'),
(372, 'ad2_close', 'open', 'yes'),
(373, 'ad3_close', 'open', 'yes'),
(374, 'ad4_close', 'open', 'yes'),
(375, 'ad5_close', 'open', 'yes'),
(376, 'ad6_close', 'open', 'yes'),
(377, 'ad7_close', 'open', 'yes'),
(378, 'ad8_close', 'open', 'yes'),
(379, 'adtext_close', 'open', 'yes'),
(380, 'top_close', 'open', 'yes'),
(381, 'sign_close', 'open', 'yes'),
(382, 'sign', ' 这里填写您所要发布的公告消息，可在后台主题设置中修改，请注意最大宽度。超出宽度自动隐藏', 'yes'),
(383, 'ad1', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/728x90.png"/>', 'yes'),
(384, 'ad2', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(385, 'ad3', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(386, 'ad4', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(387, 'ad5', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(388, 'ad6', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(389, 'ad7', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(390, 'close', 'open', 'yes'),
(391, 'ad8', '<img alt="ad" src="http://localhost/wordpress/wp-content/themes/Enews/images/ads/770x90.png"/>', 'yes'),
(392, 'adtext_title', '水冷眸自用主题《HO2-eye》即将发布！', 'yes'),
(393, 'adtext_link', '', 'yes'),
(394, 'logo', 'http://localhost/wordpress/wp-content/themes/Enews/images/logo.png', 'yes'),
(395, 'statement', '本主题基于MIT开源协议免费开放使用，作者（水冷眸）仅保留著作版权。使用本主题可进行任意形式修改，但请保留作者版权。', 'yes'),
(396, 'category', '1', 'yes'),
(397, 'new', 'a:16:{i:0;s:16:"幻灯片1标题";i:1;s:53:"幻灯片1描述,你可以输入相关描述内容。";i:2;s:20:"http://www.enews.net";i:3;s:71:"http://localhost/wordpress/wp-content/themes/Enews/images/content/1.jpg";i:4;s:16:"幻灯片2标题";i:5;s:53:"幻灯片2描述,你可以输入相关描述内容。";i:6;s:20:"http://www.enews.net";i:7;s:71:"http://localhost/wordpress/wp-content/themes/Enews/images/content/2.jpg";i:8;s:16:"幻灯片3标题";i:9;s:53:"幻灯片3描述,你可以输入相关描述内容。";i:10;s:20:"http://www.enews.net";i:11;s:71:"http://localhost/wordpress/wp-content/themes/Enews/images/content/3.jpg";i:12;s:16:"幻灯片4标题";i:13;s:53:"幻灯片4描述,你可以输入相关描述内容。";i:14;s:20:"http://www.enews.net";i:15;s:71:"http://localhost/wordpress/wp-content/themes/Enews/images/content/4.jpg";}', 'yes'),
(398, 'display_model', 'a:1:{i:0;s:4:"blog";}', 'yes'),
(399, 'enews_description', '', 'yes'),
(400, 'enews_keywords', '', 'yes'),
(401, 'copy', ' 基于 <a href="https://cn.wordpress.org/" target="_blank" rel="nofollow">WordPress</a> & <a href="http://www.slmwp.com"  title="水冷眸博客">水冷眸</a>&nbsp;<a href="http://www.slmwp.com/go/aliyun.html" target="_blank" rel="nofollow"  title="运行在阿里云"><img src="http://deli8.qiniudn.com/aliyun.png"  alt="运行在阿里云" /></a>', 'yes'),
(402, 'icp', '网站备案中', 'yes'),
(403, 'tongji', '站长统计', 'yes'),
(404, 'share_close', 'open', 'yes'),
(405, 'copyright_close', 'open', 'yes'),
(406, 'foot_link', '<li><a href="http://www.slmwp.com">水冷眸博客</a></li>\r\n       <li><a href="http://www.16898.in">五风博客</a></li>\r\n       <li><a href="http://www.coolwx.net">酷游网单</a></li>', 'yes'),
(407, 'author_close', 'open', 'yes'),
(408, 'footcode', '', 'yes'),
(409, 'csscode', '', 'yes'),
(410, 'headcode', '', 'yes'),
(411, 'foot_close', 'open', 'yes'),
(412, 'slide_close', 'open', 'yes'),
(413, 'nav_close', 'open', 'yes'),
(414, 'qq_close', 'open', 'yes'),
(415, 'sina_close', 'open', 'yes'),
(416, 'tqq_close', 'open', 'yes'),
(417, 'wechat_close', 'open', 'yes'),
(418, 'socialqq', '', 'yes'),
(419, 'socialsina', '', 'yes'),
(420, 'socialtqq', '', 'yes'),
(421, 'wechat', '', 'yes'),
(422, 'wechat_qr', '', 'yes'),
(423, 'snow', 'open', 'yes'),
(424, 'snow_min', '10', 'yes'),
(425, 'snow_max', '20', 'yes'),
(426, 'snow_color', 'c6eafb', 'yes'),
(427, 'snow_newOn', '300', 'yes'),
(428, 'single_fontsize', '14', 'yes'),
(429, 'smtp', '14', 'yes'),
(430, 'smtp_from', '', 'yes'),
(431, 'smtp_fromname', '', 'yes'),
(432, 'smtp_host', '', 'yes'),
(433, 'smtp_port', '', 'yes'),
(434, 'smtp_secure', '', 'yes'),
(435, 'smtp_username', '', 'yes'),
(436, 'smtp_password', '', 'yes'),
(437, 'sideroll_1', '1', 'yes'),
(438, 'sideroll_2', '2', 'yes'),
(439, 'sidebar_close', 'open', 'yes'),
(440, 'foot_links_s', '', 'yes'),
(441, 'tg', 'a:1:{i:0;i:1;}', 'yes'),
(442, 'theme_skin', 'themedefault', 'yes'),
(443, 't_appkey_tqq', '', 'yes'),
(444, 't_appkey_tsina', '', 'yes'),
(445, 't_appkey_t163', '', 'yes'),
(446, 't_appkey_tsohu', '', 'yes'),
(448, 'theme_mods_Enews', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430562603;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:18:"widget_sitesidebar";a:1:{i:0;s:6:"meta-2";}s:14:"widget_sidebar";N;s:19:"widget_othersidebar";N;s:18:"widget_postsidebar";N;s:18:"widget_pagesidebar";N;}}}', 'yes'),
(456, 'swt_rolling', 'true', 'yes'),
(479, 'theme_mods_marx', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(488, 'db_upgraded', '', 'yes'),
(492, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1432691814;s:7:"checked";a:1:{s:4:"marx";s:5:"0.0.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(540, 'category_children', 'a:0:{}', 'yes'),
(591, '_site_transient_timeout_browser_8573ab448203183ab7511e8ef5367263', '1431435949', 'yes'),
(592, '_site_transient_browser_8573ab448203183ab7511e8ef5367263', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"37.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(597, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.2.2.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1432691797;s:15:"version_checked";s:5:"4.1.5";s:12:"translations";a:0:{}}', 'yes'),
(604, 'can_compress_scripts', '1', 'yes'),
(612, '_site_transient_timeout_browser_be79f5792f4c0def721e2796dc3a5a5d', '1431778048', 'yes'),
(613, '_site_transient_browser_be79f5792f4c0def721e2796dc3a5a5d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:2:"11";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(614, '_site_transient_timeout_available_translations', '1431184062', 'yes');
INSERT INTO `dm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(615, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-21 15:46:45";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-22 06:13:16";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-15 12:48:44";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-24 16:07:13";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-21 06:21:33";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-29 17:21:23";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.5/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-22 13:36:50";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-20 11:48:55";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-16 06:38:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-20 08:33:09";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-23 20:21:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.1.4";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(620, '_site_transient_timeout_browser_898b8e3f872ce5608a012b0bd3f0b2c7', '1431778311', 'yes'),
(621, '_site_transient_browser_898b8e3f872ce5608a012b0bd3f0b2c7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"38.0.2125.122";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(624, 'simple_local_avatars', 'a:2:{s:4:"caps";i:0;s:4:"only";i:0;}', 'yes'),
(661, '_site_transient_timeout_browser_be3e4b76750cde800a2421451f28f16f', '1433077012', 'yes'),
(662, '_site_transient_browser_be3e4b76750cde800a2421451f28f16f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"39.0.2171.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(666, '_transient_timeout_plugin_slugs', '1432731549', 'no'),
(667, '_transient_plugin_slugs', 'a:2:{i:0;s:51:"hacklog-downloadmanager/hacklog-downloadmanager.php";i:1;s:45:"simple-local-avatars/simple-local-avatars.php";}', 'no'),
(668, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1432679204', 'no'),
(669, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS错误</strong>：WP HTTP Error: Could not resolve host: cn.wordpress.org; Host not found</p></div><div class="rss-widget"><p><strong>RSS错误</strong>：WP HTTP Error: Could not resolve host: planet.wordpress.org; Host not found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(674, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1432655122', 'yes'),
(675, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5194";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3255";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3192";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2717";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2496";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1992";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1897";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1831";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1779";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1763";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1729";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1721";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1613";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1413";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1354";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1289";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1208";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1160";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1146";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1015";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"971";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"926";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"921";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"888";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"862";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"852";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"800";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"786";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"758";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"735";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"734";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"730";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"693";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"684";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"679";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"668";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"642";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"641";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"639";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"637";}}', 'yes'),
(677, 'dlm_no_access_error', 'You do not have permission to access this download. <a href="http://localhost/marx">Go to homepage</a>', 'yes'),
(678, 'dlm_current_version', '1.7.2', 'yes'),
(680, 'dlm_default_template', '', 'yes'),
(681, 'dlm_custom_template', '', 'yes'),
(682, 'dlm_xsendfile_enabled', '', 'yes'),
(683, 'dlm_hotlink_protection_enabled', '', 'yes'),
(684, 'dlm_download_endpoint', 'download', 'yes'),
(685, 'dlm_download_endpoint_value', 'ID', 'yes'),
(686, 'dlm_generate_hash_md5', '0', 'yes'),
(687, 'dlm_generate_hash_sha1', '0', 'yes'),
(688, 'dlm_generate_hash_crc32b', '0', 'yes'),
(689, 'dlm_enable_logging', '1', 'yes'),
(690, 'dlm_ip_blacklist', '192.168.0.*', 'yes'),
(691, 'dlm_user_agent_blacklist', 'Googlebot', 'yes'),
(692, '_transient_timeout_dlm_file_version_ids_195', '1464180613', 'no'),
(693, '_transient_dlm_file_version_ids_195', 'a:1:{i:0;i:197;}', 'no'),
(695, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1432691815;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:51:"hacklog-downloadmanager/hacklog-downloadmanager.php";O:8:"stdClass":6:{s:2:"id";s:5:"25671";s:4:"slug";s:23:"hacklog-downloadmanager";s:6:"plugin";s:51:"hacklog-downloadmanager/hacklog-downloadmanager.php";s:11:"new_version";s:5:"2.1.4";s:3:"url";s:54:"https://wordpress.org/plugins/hacklog-downloadmanager/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/hacklog-downloadmanager.2.1.4.zip";}s:45:"simple-local-avatars/simple-local-avatars.php";O:8:"stdClass":7:{s:2:"id";s:5:"20007";s:4:"slug";s:20:"simple-local-avatars";s:6:"plugin";s:45:"simple-local-avatars/simple-local-avatars.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:51:"https://wordpress.org/plugins/simple-local-avatars/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-local-avatars.2.0.zip";s:14:"upgrade_notice";s:273:"Upgraded to take advantage of WordPress 3.5 and newer. Does not support older versions! This has also not been tested with front end profile plug-ins - feedback welcome. Note that several language strings have been added or modified - revised translations would be welcome!";}}}', 'yes'),
(704, 'rewrite_rules', 'a:69:{s:22:"getfile/([0-9]{1,})/?$";s:27:"index.php?dl_id=$matches[1]";s:13:"getfile/(.*)$";s:29:"index.php?dl_name=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:62:"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:49:"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"date/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:36:"date/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"date/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:28:"[0-9]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"[0-9]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:21:"([0-9]+)/trackback/?$";s:28:"index.php?p=$matches[1]&tb=1";s:41:"([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?p=$matches[1]&feed=$matches[2]";s:36:"([0-9]+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?p=$matches[1]&feed=$matches[2]";s:29:"([0-9]+)/page/?([0-9]{1,})/?$";s:41:"index.php?p=$matches[1]&paged=$matches[2]";s:36:"([0-9]+)/comment-page-([0-9]{1,})/?$";s:41:"index.php?p=$matches[1]&cpage=$matches[2]";s:21:"([0-9]+)(/[0-9]+)?/?$";s:40:"index.php?p=$matches[1]&page=$matches[2]";s:17:"[0-9]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:27:"[0-9]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:47:"[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:42:"[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:42:"[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(707, '_site_transient_timeout_theme_roots', '1432693601', 'yes'),
(708, '_site_transient_theme_roots', 'a:1:{s:4:"marx";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `dm_postmeta`
--

CREATE TABLE IF NOT EXISTS `dm_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=369 ;

--
-- 转存表中的数据 `dm_postmeta`
--

INSERT INTO `dm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(50, 15, '_edit_last', '1'),
(51, 15, '_edit_lock', '1428818417:1'),
(52, 15, 'wtf_cost', 'xxx元'),
(54, 15, 'wtf_feature', 'on'),
(79, 1, 'views', '2'),
(95, 1, '_edit_lock', '1430616510:1'),
(96, 1, '_edit_last', '1'),
(107, 47, '_edit_lock', '1431173636:1'),
(108, 47, '_edit_last', '1'),
(109, 49, '_edit_last', '1'),
(110, 49, '_edit_lock', '1430617113:1'),
(113, 52, '_edit_lock', '1430663552:1'),
(114, 52, '_edit_last', '1'),
(115, 54, '_edit_lock', '1430617172:1'),
(116, 54, '_edit_last', '1'),
(119, 57, '_edit_lock', '1430638176:1'),
(120, 57, '_edit_last', '1'),
(171, 72, '_edit_lock', '1430637798:1'),
(172, 72, '_edit_last', '1'),
(173, 76, '_edit_lock', '1430638784:1'),
(174, 76, '_edit_last', '1'),
(175, 78, '_edit_lock', '1430639050:1'),
(176, 78, '_edit_last', '1'),
(177, 80, '_edit_lock', '1430638084:1'),
(178, 80, '_edit_last', '1'),
(179, 84, '_edit_lock', '1430638764:1'),
(180, 84, '_edit_last', '1'),
(181, 84, '_wp_page_template', 'page-office.php'),
(182, 76, '_wp_page_template', 'page-office.php'),
(183, 86, '_edit_lock', '1430639008:1'),
(184, 86, '_edit_last', '1'),
(185, 86, '_wp_page_template', 'page-office.php'),
(186, 78, '_wp_page_template', 'page-jy.php'),
(187, 88, '_edit_lock', '1430639127:1'),
(188, 88, '_edit_last', '1'),
(189, 88, '_wp_page_template', 'page-jy.php'),
(190, 90, '_edit_lock', '1430639160:1'),
(191, 90, '_edit_last', '1'),
(192, 90, '_wp_page_template', 'page-jy.php'),
(193, 92, '_edit_lock', '1430639224:1'),
(194, 92, '_edit_last', '1'),
(195, 92, '_wp_page_template', 'page-jy.php'),
(196, 94, '_edit_lock', '1430639279:1'),
(197, 94, '_edit_last', '1'),
(198, 94, '_wp_page_template', 'page-jy.php'),
(199, 96, '_edit_lock', '1430639303:1'),
(200, 96, '_edit_last', '1'),
(201, 96, '_wp_page_template', 'page-jy.php'),
(204, 99, '_edit_lock', '1430640660:1'),
(205, 99, '_edit_last', '1'),
(206, 99, '_wp_page_template', 'page-zzjs.php'),
(207, 101, '_edit_lock', '1431868280:1'),
(208, 101, '_edit_last', '1'),
(209, 101, '_wp_page_template', 'page-zzjs.php'),
(210, 103, '_edit_lock', '1431868285:1'),
(211, 103, '_edit_last', '1'),
(212, 103, '_wp_page_template', 'page-zzjs.php'),
(213, 47, '_wp_page_template', 'default'),
(214, 105, '_edit_lock', '1432645626:2'),
(215, 105, '_edit_last', '1'),
(216, 105, '_wp_page_template', 'page-yjs.php'),
(217, 107, '_edit_lock', '1432645799:2'),
(218, 107, '_edit_last', '2'),
(219, 107, '_wp_page_template', 'page-yjs.php'),
(220, 109, '_edit_lock', '1432645815:2'),
(221, 109, '_edit_last', '2'),
(222, 109, '_wp_page_template', 'page-yjs.php'),
(223, 112, '_edit_lock', '1432645519:2'),
(224, 112, '_edit_last', '1'),
(225, 112, '_wp_page_template', 'page-bks.php'),
(228, 115, '_edit_lock', '1432645746:2'),
(229, 115, '_edit_last', '2'),
(230, 115, '_wp_page_template', 'page-bks.php'),
(231, 117, '_edit_lock', '1432645678:2'),
(232, 117, '_edit_last', '2'),
(233, 117, '_wp_page_template', 'page-bks.php'),
(234, 119, '_edit_lock', '1432645752:2'),
(235, 119, '_edit_last', '2'),
(236, 119, '_wp_page_template', 'page-bks.php'),
(237, 121, '_edit_lock', '1432645740:2'),
(238, 121, '_edit_last', '2'),
(239, 121, '_wp_page_template', 'page-bks.php'),
(240, 123, '_edit_lock', '1432645735:2'),
(241, 123, '_edit_last', '2'),
(242, 123, '_wp_page_template', 'page-bks.php'),
(243, 125, '_edit_last', '1'),
(244, 125, '_edit_lock', '1431506213:1'),
(247, 129, '_edit_last', '1'),
(248, 129, '_edit_lock', '1431506195:1'),
(251, 131, '_edit_last', '1'),
(252, 131, '_edit_lock', '1431866817:1'),
(257, 54, '_wp_trash_meta_status', 'publish'),
(258, 54, '_wp_trash_meta_time', '1430831176'),
(265, 137, '_edit_last', '1'),
(266, 137, '_edit_lock', '1432476384:1'),
(268, 150, '_edit_last', '1'),
(269, 150, '_edit_lock', '1431867218:1'),
(270, 150, '_wp_page_template', 'page-shizi.php'),
(271, 152, '_edit_last', '1'),
(272, 152, '_edit_lock', '1431867273:1'),
(273, 152, '_wp_page_template', 'page-shizi.php'),
(274, 154, '_edit_last', '1'),
(275, 154, '_edit_lock', '1431867461:1'),
(276, 154, '_wp_page_template', 'page-shizi.php'),
(277, 156, '_edit_last', '1'),
(278, 156, '_edit_lock', '1431867456:1'),
(279, 156, '_wp_page_template', 'page-shizi.php'),
(280, 158, '_edit_last', '1'),
(281, 158, '_edit_lock', '1431867321:1'),
(282, 158, '_wp_page_template', 'page-shizi.php'),
(283, 150, '_wp_trash_meta_status', 'publish'),
(284, 150, '_wp_trash_meta_time', '1431867369'),
(285, 161, '_edit_last', '1'),
(286, 161, '_edit_lock', '1431867679:1'),
(287, 161, '_wp_page_template', 'page-jd.php'),
(288, 163, '_edit_last', '1'),
(289, 163, '_edit_lock', '1431867862:1'),
(290, 163, '_wp_page_template', 'page-jd.php'),
(291, 165, '_edit_last', '1'),
(292, 165, '_edit_lock', '1431867946:1'),
(293, 165, '_wp_page_template', 'page-kxyj.php'),
(294, 168, '_edit_last', '1'),
(295, 168, '_wp_page_template', 'page-kxyj.php'),
(296, 168, '_edit_lock', '1431867976:1'),
(297, 170, '_edit_last', '1'),
(298, 170, '_edit_lock', '1431868004:1'),
(299, 170, '_wp_page_template', 'page-kxyj.php'),
(300, 172, '_edit_last', '1'),
(301, 172, '_edit_lock', '1431868036:1'),
(302, 172, '_wp_page_template', 'page-kxyj.php'),
(303, 174, '_edit_last', '1'),
(304, 174, '_edit_lock', '1431868109:1'),
(305, 174, '_wp_page_template', 'page-kxyj.php'),
(306, 99, '_wp_trash_meta_status', 'publish'),
(307, 99, '_wp_trash_meta_time', '1431868268'),
(308, 176, '_edit_last', '1'),
(309, 176, '_edit_lock', '1431868550:1'),
(310, 176, '_wp_page_template', 'page-djgz.php'),
(311, 178, '_edit_last', '1'),
(312, 178, '_edit_lock', '1431868568:1'),
(313, 178, '_wp_page_template', 'page-djgz.php'),
(314, 180, '_edit_last', '1'),
(315, 180, '_edit_lock', '1431868628:1'),
(316, 180, '_wp_page_template', 'page-djgz.php'),
(317, 183, '_edit_last', '1'),
(318, 183, '_edit_lock', '1431868934:1'),
(319, 183, '_wp_page_template', 'page-dxxzd.php'),
(320, 185, '_edit_last', '1'),
(321, 185, '_edit_lock', '1431868959:1'),
(322, 185, '_wp_page_template', 'page-dxxzd.php'),
(323, 187, '_edit_last', '1'),
(324, 187, '_edit_lock', '1431868981:1'),
(325, 187, '_wp_page_template', 'page-dxxzd.php'),
(329, 195, '_edit_last', '2'),
(330, 195, '_featured', 'no'),
(331, 195, '_members_only', 'no'),
(332, 195, '_redirect_only', 'no'),
(333, 197, '_version', ''),
(334, 197, '_files', '["http://localhost/marx/wp-content/uploads/2015/05/2_12201305291230021463058.doc"]'),
(335, 197, '_filesize', '71169'),
(336, 197, '_md5', ''),
(337, 197, '_sha1', ''),
(338, 197, '_crc32', ''),
(339, 195, '_download_count', '0'),
(340, 195, '_edit_lock', '1432644468:2'),
(341, 195, '_wp_trash_meta_status', 'publish'),
(342, 195, '_wp_trash_meta_time', '1432644685'),
(343, 198, '_edit_last', '2'),
(344, 198, '_edit_lock', '1432645005:2'),
(345, 201, '_edit_last', '2'),
(346, 201, '_edit_lock', '1432645087:2'),
(347, 204, '_edit_last', '2'),
(348, 204, '_edit_lock', '1432645399:2'),
(352, 201, '_wp_trash_meta_status', 'publish'),
(353, 201, '_wp_trash_meta_time', '1432645254'),
(354, 198, '_wp_trash_meta_status', 'draft'),
(355, 198, '_wp_trash_meta_time', '1432645259'),
(359, 112, '_wp_trash_meta_status', 'publish'),
(360, 112, '_wp_trash_meta_time', '1432645668'),
(361, 105, '_wp_trash_meta_status', 'publish'),
(362, 105, '_wp_trash_meta_time', '1432645773'),
(363, 47, '_wp_trash_meta_status', 'publish'),
(364, 47, '_wp_trash_meta_time', '1432646056'),
(365, 76, '_wp_trash_meta_status', 'publish'),
(366, 76, '_wp_trash_meta_time', '1432646215'),
(367, 78, '_wp_trash_meta_status', 'publish'),
(368, 78, '_wp_trash_meta_time', '1432646236');

-- --------------------------------------------------------

--
-- 表的结构 `dm_posts`
--

CREATE TABLE IF NOT EXISTS `dm_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=210 ;

--
-- 转存表中的数据 `dm_posts`
--

INSERT INTO `dm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 2, '2015-03-19 06:38:06', '2015-03-19 06:38:06', '<a href="http://baidu.con">欢迎使用WordPress</a>。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！', '世界，你好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-05-09 17:19:00', '2015-05-09 09:19:00', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 0),
(15, 2, '2015-04-09 18:41:57', '2015-04-09 10:41:57', '[caption id="attachment_22" align="aligncenter" width="300"]<a href="http://localhost/wordpress/wp-content/uploads/2015/04/16sucai_201412261519-1.jpg"><img class="size-medium wp-image-22" src="http://localhost/wordpress/wp-content/uploads/2015/04/16sucai_201412261519-1-300x195.jpg" alt="模板1" width="300" height="195" /></a> demo[/caption]\r\n\r\n&nbsp;', 'demo', '', 'publish', 'open', 'closed', '', '%e7%a1%95%e9%bc%a0%e7%a1%95%e9%bc%a0', '', '', '2015-04-12 14:02:40', '2015-04-12 06:02:40', '', 0, 'http://localhost/wordpress/?post_type=goods&#038;p=15', 0, 'goods', '', 0),
(16, 2, '2015-04-12 14:02:00', '2015-04-12 06:02:00', '[caption id="attachment_22" align="aligncenter" width="300"]<a href="http://localhost/wordpress/wp-content/uploads/2015/04/16sucai_201412261519-1.jpg"><img class="size-medium wp-image-22" src="http://localhost/wordpress/wp-content/uploads/2015/04/16sucai_201412261519-1-300x195.jpg" alt="模板1" width="300" height="195" /></a> demo[/caption]\r\n\r\n&nbsp;', 'demo', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-04-12 14:02:00', '2015-04-12 06:02:00', '', 15, 'http://localhost/wordpress/16', 0, 'revision', '', 0),
(45, 2, '2015-05-03 09:29:16', '2015-05-03 01:29:16', '<a href="http://baidu.con">欢迎使用WordPress</a>。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！', '世界，你好！', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2015-05-03 09:29:16', '2015-05-03 01:29:16', '', 1, 'http://localhost/wordpress/45', 0, 'revision', '', 0),
(46, 2, '2015-05-03 09:25:53', '2015-05-03 01:25:53', '<a href="http://baidu.con">欢迎使用WordPress</a>。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！\r\n\r\n欢迎使用WordPress。这是系统自动生成的演示文章。编辑或者删除它，然后开始您的博客！', '世界，你好！', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-05-03 09:25:53', '2015-05-03 01:25:53', '', 1, 'http://localhost/wordpress/46', 0, 'revision', '', 0),
(47, 2, '2015-05-03 09:45:11', '2015-05-03 01:45:11', '<a href="http://192.168.0.108/marx/137" title="新闻：123456789">新闻</a>', '机构设置', '', 'trash', 'closed', 'closed', '', 'jigou', '', '', '2015-05-26 21:14:16', '2015-05-26 13:14:16', '', 0, 'http://localhost/wordpress/?page_id=47', 0, 'page', '', 0),
(48, 2, '2015-05-03 09:35:57', '2015-05-03 01:35:57', 'sssssssssssadn时空点上来看上课了大量开始的扩大了打开速度啦啊看书卡勒阿克苏', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:35:57', '2015-05-03 01:35:57', '', 47, 'http://localhost/wordpress/48', 0, 'revision', '', 0),
(49, 2, '2015-05-03 09:36:31', '2015-05-03 01:36:31', 'ssssssssssss', 'sssssssssssssss', '', 'draft', 'open', 'open', '', 'sssssssssssssss', '', '', '2015-05-09 17:18:57', '2015-05-09 09:18:57', '', 0, 'http://localhost/wordpress/?p=49', 0, 'post', '', 0),
(50, 2, '2015-05-03 09:36:31', '2015-05-03 01:36:31', 'ssssssssssss', 'sssssssssssssss', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-05-03 09:36:31', '2015-05-03 01:36:31', '', 49, 'http://localhost/wordpress/50', 0, 'revision', '', 0),
(51, 2, '2015-05-03 09:40:32', '2015-05-03 01:40:32', '文章1 \r\n文章2\r\n文章3', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:40:32', '2015-05-03 01:40:32', '', 47, 'http://localhost/wordpress/51', 0, 'revision', '', 0),
(52, 2, '2015-05-03 09:44:49', '2015-05-03 01:44:49', 'sd上单上的撒旦 上单', '搜索树', '', 'publish', 'open', 'open', '', '%e6%90%9c%e7%b4%a2%e6%a0%91', '', '', '2015-05-09 17:19:07', '2015-05-09 09:19:07', '', 0, 'http://localhost/wordpress/?p=52', 0, 'post', '', 0),
(53, 2, '2015-05-03 09:41:17', '2015-05-03 01:41:17', 'sd上单上的撒旦 上单', '搜索树', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-05-03 09:41:17', '2015-05-03 01:41:17', '', 52, 'http://localhost/wordpress/53', 0, 'revision', '', 0),
(54, 2, '2015-05-03 09:41:53', '2015-05-03 01:41:53', '爽爽爽爽是', '爽爽爽爽爽爽', '', 'trash', 'open', 'open', '', '%e7%88%bd%e7%88%bd%e7%88%bd%e7%88%bd%e7%88%bd%e7%88%bd', '', '', '2015-05-05 21:06:17', '2015-05-05 13:06:17', '', 0, 'http://localhost/wordpress/?p=54', 0, 'post', '', 0),
(55, 2, '2015-05-03 09:41:47', '2015-05-03 01:41:47', '爽爽爽爽是', '爽爽爽爽爽爽', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-05-03 09:41:47', '2015-05-03 01:41:47', '', 54, 'http://localhost/wordpress/55', 0, 'revision', '', 0),
(57, 2, '2015-05-03 09:42:07', '2015-05-03 01:42:07', '往往鹅鹅鹅', '无污染', '', 'publish', 'open', 'open', '', '%e6%97%a0%e6%b1%a1%e6%9f%93', '', '', '2015-05-09 17:19:05', '2015-05-09 09:19:05', '', 0, 'http://localhost/wordpress/?p=57', 0, 'post', '', 0),
(58, 2, '2015-05-03 09:42:07', '2015-05-03 01:42:07', '往往鹅鹅鹅', '无污染', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-05-03 09:42:07', '2015-05-03 01:42:07', '', 57, 'http://localhost/wordpress/58', 0, 'revision', '', 0),
(59, 2, '2015-05-03 09:44:38', '2015-05-03 01:44:38', '<ul>\r\n	<li><a href="http://localhost/wordpress/57" title="无污染">文章1</a></li>\r\n	<li><a href="http://localhost/wordpress/54" title="爽爽爽爽爽爽">文章2<</a>/li>\r\n	<li>文章3</li>\r\n</ul>', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:44:38', '2015-05-03 01:44:38', '', 47, 'http://localhost/wordpress/59', 0, 'revision', '', 0),
(60, 2, '2015-05-03 09:45:11', '2015-05-03 01:45:11', '<ul>\r\n	<li><a href="http://localhost/wordpress/57" title="无污染">文章1</a></li>\r\n	<li><a href="http://localhost/wordpress/54" title="爽爽爽爽爽爽">文章2<</a>/li>\r\n	<li><a href="http://localhost/wordpress/52" title="搜索树">文章3</a></li>\r\n</ul>', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:45:11', '2015-05-03 01:45:11', '', 47, 'http://localhost/wordpress/60', 0, 'revision', '', 0),
(61, 2, '2015-05-09 20:13:59', '2015-05-09 12:13:59', '<a href="http://192.168.0.108/marx/137" title="新闻：123456789">新闻</a>', '机构设置', '', 'inherit', 'open', 'open', '', '47-autosave-v1', '', '', '2015-05-09 20:13:59', '2015-05-09 12:13:59', '', 47, 'http://localhost/wordpress/61', 0, 'revision', '', 0),
(62, 2, '2015-05-03 09:46:02', '2015-05-03 01:46:02', '<ul>\r\n	<li><a title="无污染" href="http://localhost/wordpress/57">文章1</a></li>\r\n	<li><a title="爽爽爽爽爽爽" href="http://localhost/wordpress/54">文章2</a></li>\r\n	<li><a title="搜索树" href="http://localhost/wordpress/52">文章3</a></li>\r\n</ul>', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:46:02', '2015-05-03 01:46:02', '', 47, 'http://localhost/wordpress/62', 0, 'revision', '', 0),
(63, 2, '2015-05-03 09:47:16', '2015-05-03 01:47:16', '<a title="无污染" href="http://localhost/wordpress/57">文章1</a> <a title="爽爽爽爽爽爽" href="http://localhost/wordpress/54">文章2</a> <a title="搜索树" href="http://localhost/wordpress/52">文章3</a>', 'enen', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 09:47:16', '2015-05-03 01:47:16', '', 47, 'http://localhost/wordpress/63', 0, 'revision', '', 0),
(64, 2, '2015-05-03 10:29:53', '2015-05-03 02:29:53', '<a title="无污染" href="http://localhost/wordpress/57">文章1</a> <a title="爽爽爽爽爽爽" href="http://localhost/wordpress/54">文章2</a> <a title="搜索树" href="http://localhost/wordpress/52">文章3</a>', '机构设置', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-03 10:29:53', '2015-05-03 02:29:53', '', 47, 'http://localhost/wordpress/64', 0, 'revision', '', 0),
(72, 2, '2015-05-03 15:24:22', '2015-05-03 07:24:22', '', '领导班子', '', 'publish', 'open', 'open', '', 'leader', '', '', '2015-05-03 15:24:22', '2015-05-03 07:24:22', '', 47, 'http://localhost/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 2, '2015-05-03 15:24:03', '2015-05-03 07:24:03', '', '领导班子', '', 'inherit', 'open', 'open', '', '72-revision-v1', '', '', '2015-05-03 15:24:03', '2015-05-03 07:24:03', '', 72, 'http://localhost/wordpress/73', 0, 'revision', '', 0),
(76, 2, '2015-05-03 15:27:43', '2015-05-03 07:27:43', '', '办公室', '', 'trash', 'open', 'open', '', 'office', '', '', '2015-05-26 21:16:55', '2015-05-26 13:16:55', '', 47, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 2, '2015-05-03 15:27:43', '2015-05-03 07:27:43', '', '办公室', '', 'inherit', 'open', 'open', '', '76-revision-v1', '', '', '2015-05-03 15:27:43', '2015-05-03 07:27:43', '', 76, 'http://localhost/wordpress/77', 0, 'revision', '', 0),
(78, 2, '2015-05-03 15:28:37', '2015-05-03 07:28:37', '', '教研室', '', 'trash', 'open', 'open', '', 'edu', '', '', '2015-05-26 21:17:16', '2015-05-26 13:17:16', '', 47, 'http://localhost/wordpress/?page_id=78', 0, 'page', '', 0),
(79, 2, '2015-05-03 15:28:37', '2015-05-03 07:28:37', '', '教研室', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-05-03 15:28:37', '2015-05-03 07:28:37', '', 78, 'http://localhost/wordpress/79', 0, 'revision', '', 0),
(80, 2, '2015-05-03 15:29:18', '2015-05-03 07:29:18', '', '中国特色社会主义理论研究中心', '', 'publish', 'closed', 'closed', '', 'cs', '', '', '2015-05-03 15:30:27', '2015-05-03 07:30:27', '', 47, 'http://localhost/wordpress/?page_id=80', 0, 'page', '', 0),
(81, 2, '2015-05-03 15:29:18', '2015-05-03 07:29:18', '', '中国特色社会主义理论研究中心', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-05-03 15:29:18', '2015-05-03 07:29:18', '', 80, 'http://localhost/wordpress/81', 0, 'revision', '', 0),
(84, 2, '2015-05-03 15:41:46', '2015-05-03 07:41:46', '', '行政办公室', '', 'publish', 'open', 'open', '', 'xinz', '', '', '2015-05-03 15:41:46', '2015-05-03 07:41:46', '', 76, 'http://localhost/wordpress/?page_id=84', 0, 'page', '', 0),
(85, 2, '2015-05-03 15:41:46', '2015-05-03 07:41:46', '', '行政办公室', '', 'inherit', 'open', 'open', '', '84-revision-v1', '', '', '2015-05-03 15:41:46', '2015-05-03 07:41:46', '', 84, 'http://localhost/wordpress/85', 0, 'revision', '', 0),
(86, 2, '2015-05-03 15:43:21', '2015-05-03 07:43:21', '', '教务办公室', '', 'publish', 'open', 'open', '', 'jiaowu', '', '', '2015-05-03 15:43:21', '2015-05-03 07:43:21', '', 76, 'http://localhost/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 2, '2015-05-03 15:43:21', '2015-05-03 07:43:21', '', '教务办公室', '', 'inherit', 'open', 'open', '', '86-revision-v1', '', '', '2015-05-03 15:43:21', '2015-05-03 07:43:21', '', 86, 'http://localhost/wordpress/87', 0, 'revision', '', 0),
(88, 2, '2015-05-03 15:47:50', '2015-05-03 07:47:50', '', '马克思主义中国化教研室', '', 'publish', 'open', 'open', '', 'yan1', '', '', '2015-05-03 15:47:50', '2015-05-03 07:47:50', '', 78, 'http://localhost/wordpress/?page_id=88', 0, 'page', '', 0),
(89, 2, '2015-05-03 15:47:50', '2015-05-03 07:47:50', '', '马克思主义中国化教研室', '', 'inherit', 'open', 'open', '', '88-revision-v1', '', '', '2015-05-03 15:47:50', '2015-05-03 07:47:50', '', 88, 'http://localhost/wordpress/89', 0, 'revision', '', 0),
(90, 2, '2015-05-03 15:48:08', '2015-05-03 07:48:08', '', '马克思主义基本原理教研室', '', 'publish', 'open', 'open', '', 'yan2', '', '', '2015-05-03 15:48:22', '2015-05-03 07:48:22', '', 78, 'http://localhost/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 2, '2015-05-03 15:48:08', '2015-05-03 07:48:08', '', '马克思主义基本原理教研室', '', 'inherit', 'open', 'open', '', '90-revision-v1', '', '', '2015-05-03 15:48:08', '2015-05-03 07:48:08', '', 90, 'http://localhost/wordpress/91', 0, 'revision', '', 0),
(92, 2, '2015-05-03 15:49:26', '2015-05-03 07:49:26', '', '思想道德修养与法律基础教研室', '', 'publish', 'closed', 'closed', '', 'yan3', '', '', '2015-05-03 15:49:26', '2015-05-03 07:49:26', '', 78, 'http://localhost/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 2, '2015-05-03 15:49:26', '2015-05-03 07:49:26', '', '思想道德修养与法律基础教研室', '', 'inherit', 'open', 'open', '', '92-revision-v1', '', '', '2015-05-03 15:49:26', '2015-05-03 07:49:26', '', 92, 'http://localhost/wordpress/93', 0, 'revision', '', 0),
(94, 2, '2015-05-03 15:50:20', '2015-05-03 07:50:20', '', '军事理论教研室', '', 'publish', 'open', 'open', '', 'yan4', '', '', '2015-05-03 15:50:20', '2015-05-03 07:50:20', '', 78, 'http://localhost/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 2, '2015-05-03 15:50:20', '2015-05-03 07:50:20', '', '军事理论教研室', '', 'inherit', 'open', 'open', '', '94-revision-v1', '', '', '2015-05-03 15:50:20', '2015-05-03 07:50:20', '', 94, 'http://localhost/wordpress/95', 0, 'revision', '', 0),
(96, 2, '2015-05-03 15:50:46', '2015-05-03 07:50:46', '', '美育教研室', '', 'publish', 'open', 'open', '', 'yan5', '', '', '2015-05-03 15:50:46', '2015-05-03 07:50:46', '', 78, 'http://localhost/wordpress/?page_id=96', 0, 'page', '', 0),
(97, 2, '2015-05-03 15:50:46', '2015-05-03 07:50:46', '', '美育教研室', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-05-03 15:50:46', '2015-05-03 07:50:46', '', 96, 'http://localhost/wordpress/97', 0, 'revision', '', 0),
(99, 2, '2015-05-03 15:55:47', '2015-05-03 07:55:47', '', '组织建设', '', 'trash', 'open', 'open', '', 'zzjs', '', '', '2015-05-17 21:11:08', '2015-05-17 13:11:08', '', 0, 'http://localhost/wordpress/?page_id=99', 3, 'page', '', 0),
(100, 2, '2015-05-03 15:55:47', '2015-05-03 07:55:47', '', '组织建设', '', 'inherit', 'open', 'open', '', '99-revision-v1', '', '', '2015-05-03 15:55:47', '2015-05-03 07:55:47', '', 99, 'http://localhost/wordpress/100', 0, 'revision', '', 0),
(101, 2, '2015-05-03 15:56:18', '2015-05-03 07:56:18', '', '党总支', '', 'publish', 'open', 'closed', '', 'dzz', '', '', '2015-05-17 21:11:20', '2015-05-17 13:11:20', '', 0, 'http://localhost/wordpress/?page_id=101', 0, 'page', '', 0),
(102, 2, '2015-05-03 15:56:18', '2015-05-03 07:56:18', '', '党总支', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2015-05-03 15:56:18', '2015-05-03 07:56:18', '', 101, 'http://localhost/wordpress/102', 0, 'revision', '', 0),
(103, 2, '2015-05-03 15:56:40', '2015-05-03 07:56:40', '', '党支部', '', 'publish', 'open', 'closed', '', 'dzb', '', '', '2015-05-17 21:11:25', '2015-05-17 13:11:25', '', 0, 'http://localhost/wordpress/?page_id=103', 0, 'page', '', 0),
(104, 2, '2015-05-03 15:56:40', '2015-05-03 07:56:40', '', '党支部', '', 'inherit', 'open', 'open', '', '103-revision-v1', '', '', '2015-05-03 15:56:40', '2015-05-03 07:56:40', '', 103, 'http://localhost/wordpress/104', 0, 'revision', '', 0),
(105, 2, '2015-05-03 16:04:10', '2015-05-03 08:04:10', '', '研究生思想政治理论课', '', 'trash', 'open', 'open', '', 'yjszz', '', '', '2015-05-26 21:09:33', '2015-05-26 13:09:33', '', 0, 'http://localhost/wordpress/?page_id=105', 2, 'page', '', 0),
(106, 2, '2015-05-03 16:04:10', '2015-05-03 08:04:10', '', '研究生政治理论课', '', 'inherit', 'open', 'open', '', '105-revision-v1', '', '', '2015-05-03 16:04:10', '2015-05-03 08:04:10', '', 105, 'http://localhost/wordpress/106', 0, 'revision', '', 0),
(107, 2, '2015-05-03 16:04:32', '2015-05-03 08:04:32', '', '中国特色社会理论与实践', '', 'publish', 'open', 'closed', '', 'zgts', '', '', '2015-05-26 21:09:59', '2015-05-26 13:09:59', '', 0, 'http://localhost/wordpress/?page_id=107', 0, 'page', '', 0),
(108, 2, '2015-05-03 16:04:32', '2015-05-03 08:04:32', '', '中国特色社会理论与实践', '', 'inherit', 'open', 'open', '', '107-revision-v1', '', '', '2015-05-03 16:04:32', '2015-05-03 08:04:32', '', 107, 'http://localhost/wordpress/108', 0, 'revision', '', 0),
(109, 2, '2015-05-03 16:05:19', '2015-05-03 08:05:19', '', '马克思主义与社会科学方法论', '', 'publish', 'open', 'closed', '', 'mks', '', '', '2015-05-26 21:10:15', '2015-05-26 13:10:15', '', 0, 'http://localhost/wordpress/?page_id=109', 0, 'page', '', 0),
(110, 2, '2015-05-03 16:05:19', '2015-05-03 08:05:19', '', '马克思主义与社会科学方法论', '', 'inherit', 'open', 'open', '', '109-revision-v1', '', '', '2015-05-03 16:05:19', '2015-05-03 08:05:19', '', 109, 'http://localhost/wordpress/110', 0, 'revision', '', 0),
(111, 2, '2015-05-03 16:09:05', '2015-05-03 08:09:05', '', '本科生政治理论课', '', 'inherit', 'open', 'open', '', '109-autosave-v1', '', '', '2015-05-03 16:09:05', '2015-05-03 08:09:05', '', 109, 'http://localhost/wordpress/111', 0, 'revision', '', 0),
(112, 2, '2015-05-03 16:09:22', '2015-05-03 08:09:22', '', '本科生思想政治理论课', '', 'trash', 'open', 'closed', '', 'bkszz', '', '', '2015-05-26 21:07:48', '2015-05-26 13:07:48', '', 0, 'http://localhost/wordpress/?page_id=112', 1, 'page', '', 0),
(113, 2, '2015-05-03 16:09:22', '2015-05-03 08:09:22', '', '本科生政治理论课', '', 'inherit', 'open', 'open', '', '112-revision-v1', '', '', '2015-05-03 16:09:22', '2015-05-03 08:09:22', '', 112, 'http://localhost/wordpress/113', 0, 'revision', '', 0),
(115, 2, '2015-05-03 16:16:21', '2015-05-03 08:16:21', '', '毛泽东思想和中国特色社会主义理论体系概论', '', 'publish', 'open', 'closed', '', 'mzdzg', '', '', '2015-05-26 21:09:06', '2015-05-26 13:09:06', '', 0, 'http://localhost/wordpress/?page_id=115', 0, 'page', '', 0),
(116, 2, '2015-05-03 16:16:21', '2015-05-03 08:16:21', '', '毛泽东思想和中国特色社会主义理论体系概论', '', 'inherit', 'open', 'open', '', '115-revision-v1', '', '', '2015-05-03 16:16:21', '2015-05-03 08:16:21', '', 115, 'http://localhost/wordpress/116', 0, 'revision', '', 0),
(117, 2, '2015-05-03 16:16:56', '2015-05-03 08:16:56', '', '中国近现代史纲要', '', 'publish', 'open', 'closed', '', 'zgjxd', '', '', '2015-05-26 21:07:58', '2015-05-26 13:07:58', '', 0, 'http://localhost/wordpress/?page_id=117', 0, 'page', '', 0),
(118, 2, '2015-05-03 16:16:56', '2015-05-03 08:16:56', '', '中国近现代史纲要', '', 'inherit', 'open', 'open', '', '117-revision-v1', '', '', '2015-05-03 16:16:56', '2015-05-03 08:16:56', '', 117, 'http://localhost/wordpress/118', 0, 'revision', '', 0),
(119, 2, '2015-05-03 16:17:19', '2015-05-03 08:17:19', '', '马克思主义基本原理', '', 'publish', 'closed', 'closed', '', 'mksjb', '', '', '2015-05-26 21:09:12', '2015-05-26 13:09:12', '', 0, 'http://localhost/wordpress/?page_id=119', 0, 'page', '', 0),
(120, 2, '2015-05-03 16:17:19', '2015-05-03 08:17:19', '', '马克思主义基本原理', '', 'inherit', 'open', 'open', '', '119-revision-v1', '', '', '2015-05-03 16:17:19', '2015-05-03 08:17:19', '', 119, 'http://localhost/wordpress/120', 0, 'revision', '', 0),
(121, 2, '2015-05-03 16:17:55', '2015-05-03 08:17:55', '', '思想道德修养与法律基础', '', 'publish', 'open', 'closed', '', 'sxdd', '', '', '2015-05-26 21:09:00', '2015-05-26 13:09:00', '', 0, 'http://localhost/wordpress/?page_id=121', 0, 'page', '', 0),
(122, 2, '2015-05-03 16:17:55', '2015-05-03 08:17:55', '', '思想道德修养与法律基础', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-05-03 16:17:55', '2015-05-03 08:17:55', '', 121, 'http://localhost/wordpress/122', 0, 'revision', '', 0),
(123, 2, '2015-05-03 16:18:17', '2015-05-03 08:18:17', '', '形势与政策', '', 'publish', 'open', 'closed', '', 'xszc', '', '', '2015-05-26 21:08:55', '2015-05-26 13:08:55', '', 0, 'http://localhost/wordpress/?page_id=123', 0, 'page', '', 0),
(124, 2, '2015-05-03 16:18:17', '2015-05-03 08:18:17', '', '形势与政策', '', 'inherit', 'open', 'open', '', '123-revision-v1', '', '', '2015-05-03 16:18:17', '2015-05-03 08:18:17', '', 123, 'http://localhost/wordpress/124', 0, 'revision', '', 0),
(125, 2, '2015-05-05 14:39:33', '2015-05-05 06:39:33', '啊啊啊恩恩额不错\r\n\r\n&nbsp;\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的e\r\n\r\n的', '新闻的', '', 'publish', 'open', 'open', '', 'test', '', '', '2015-05-13 16:36:52', '2015-05-13 08:36:52', '', 0, 'http://localhost/marx/?p=125', 0, 'post', '', 0),
(126, 2, '2015-05-05 14:38:35', '2015-05-05 06:38:35', '啊啊啊恩恩额不错\r\n\r\n&nbsp;\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的e\r\n\r\n的', 'test', '', 'inherit', 'open', 'open', '', '125-revision-v1', '', '', '2015-05-05 14:38:35', '2015-05-05 06:38:35', '', 125, 'http://localhost/marx/126', 0, 'revision', '', 0),
(127, 2, '2015-05-05 14:38:56', '2015-05-05 06:38:56', '啊啊啊恩恩额不错\r\n\r\n&nbsp;\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的e\r\n\r\n                                    的', 'test', '', 'inherit', 'open', 'open', '', '125-revision-v1', '', '', '2015-05-05 14:38:56', '2015-05-05 06:38:56', '', 125, 'http://localhost/marx/127', 0, 'revision', '', 0),
(128, 2, '2015-05-05 14:39:30', '2015-05-05 06:39:30', '啊啊啊恩恩额不错\r\n\r\n&nbsp;\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的e\r\n\r\n的', 'test', '', 'inherit', 'open', 'open', '', '125-revision-v1', '', '', '2015-05-05 14:39:30', '2015-05-05 06:39:30', '', 125, 'http://localhost/marx/128', 0, 'revision', '', 0),
(129, 2, '2015-05-05 14:40:06', '2015-05-05 06:40:06', '噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n噩噩\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩 噩噩', '新闻two', '', 'publish', 'open', 'open', '', 'test2', '', '', '2015-05-13 16:36:33', '2015-05-13 08:36:33', '', 0, 'http://localhost/marx/?p=129', 0, 'post', '', 0),
(130, 2, '2015-05-05 14:40:06', '2015-05-05 06:40:06', '噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n                                     噩噩噩噩噩噩噩噩噩', 'test2', '', 'inherit', 'open', 'open', '', '129-revision-v1', '', '', '2015-05-05 14:40:06', '2015-05-05 06:40:06', '', 129, 'http://localhost/marx/130', 0, 'revision', '', 0),
(131, 2, '2015-05-05 14:40:30', '2015-05-05 06:40:30', 'dddddddddddddd\r\n\r\ndssssssssssssssssssssssssss\r\n\r\nasssssssssssssssssssssssssd', 'threethreethree编辑文章编辑文章编辑文章编辑文章编辑文章', '', 'publish', 'open', 'open', '', 'test3', '', '', '2015-05-17 20:39:10', '2015-05-17 12:39:10', '', 0, 'http://localhost/marx/?p=131', 0, 'post', '', 0),
(132, 2, '2015-05-05 14:40:30', '2015-05-05 06:40:30', 'dddddddddddddd\r\n\r\n\r\ndssssssssssssssssssssssssss\r\n\r\n\r\n\r\nasssssssssssssssssssssssssd', 'test3', '', 'inherit', 'open', 'open', '', '131-revision-v1', '', '', '2015-05-05 14:40:30', '2015-05-05 06:40:30', '', 131, 'http://localhost/marx/132', 0, 'revision', '', 0),
(133, 2, '2015-05-05 15:08:19', '2015-05-05 07:08:19', '噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n                                     噩噩噩噩噩噩噩噩噩\r\n噩噩\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n噩噩\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n噩噩                                                                                           噩噩', 'test2', '', 'inherit', 'open', 'open', '', '129-revision-v1', '', '', '2015-05-05 15:08:19', '2015-05-05 07:08:19', '', 129, 'http://localhost/marx/133', 0, 'revision', '', 0),
(134, 2, '2015-05-05 21:06:33', '2015-05-05 13:06:33', '', '机构设置', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-05 21:06:33', '2015-05-05 13:06:33', '', 47, 'http://localhost/marx/134', 0, 'revision', '', 0),
(137, 2, '2015-05-09 20:13:10', '2015-05-09 12:13:10', '  上的交流空间；阿里卡大家来；撒极冻酷凌；就阿斯利康巨大历史；空间的绿卡事\r\n件队列卡事件队列卡脚打罗爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽\r\n爽爽爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽是水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽\r\n\r\n萨达', '新闻：123456789', '', 'publish', 'open', 'open', '', '%e6%96%b0%e9%97%bb%ef%bc%9a123456789', '', '', '2015-05-24 22:08:45', '2015-05-24 14:08:45', '', 0, 'http://192.168.0.108/marx/?p=137', 0, 'post', '', 0),
(138, 2, '2015-05-09 20:13:10', '2015-05-09 12:13:10', '上的交流空间；阿里卡大家来；撒极冻酷凌；就阿斯利康巨大历史；空间的绿卡事件队列卡事件队列卡脚打罗\r\n\r\n\r\n\r\n\r\n\r\n\r\n萨达', '新闻：123456789', '', 'inherit', 'open', 'open', '', '137-revision-v1', '', '', '2015-05-09 20:13:10', '2015-05-09 12:13:10', '', 137, 'http://192.168.0.108/marx/138', 0, 'revision', '', 0),
(139, 2, '2015-05-09 20:13:56', '2015-05-09 12:13:56', '<a href="http://192.168.0.108/marx/137" title="新闻：123456789">新闻</a>', '机构设置', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2015-05-09 20:13:56', '2015-05-09 12:13:56', '', 47, 'http://192.168.0.108/marx/139', 0, 'revision', '', 0),
(140, 2, '2015-05-09 22:14:40', '2015-05-09 14:14:40', '上的交流空间；阿里卡大家来；撒极冻酷凌；就阿斯利康巨大历史；空间的绿卡事件队列卡事件队列卡脚打罗爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽是水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽\r\n\r\n\r\n\r\n\r\n\r\n\r\n萨达', '新闻：123456789', '', 'inherit', 'open', 'open', '', '137-revision-v1', '', '', '2015-05-09 22:14:40', '2015-05-09 14:14:40', '', 137, 'http://192.168.0.108/marx/140', 0, 'revision', '', 0),
(142, 2, '2015-05-24 22:08:33', '2015-05-24 14:08:33', '  上的交流空间；阿里卡大家来；撒极冻酷凌；就阿斯利康巨大历史；空间的绿卡事\r\n件队列卡事件队列卡脚打罗爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽\r\n爽爽爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽是水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽\r\n\r\n萨达', '新闻：123456789', '', 'inherit', 'open', 'open', '', '137-autosave-v1', '', '', '2015-05-24 22:08:33', '2015-05-24 14:08:33', '', 137, 'http://192.168.0.108/marx/142', 0, 'revision', '', 0),
(144, 2, '2015-05-17 20:39:06', '2015-05-17 12:39:06', 'dddddddddddddd\r\n\r\ndssssssssssssssssssssssssss\r\n\r\nasssssssssssssssssssssssssd', 'threethreethree编辑文章编辑文章编辑文章编辑文章编辑文章', '', 'inherit', 'closed', 'closed', '', '131-autosave-v1', '', '', '2015-05-17 20:39:06', '2015-05-17 12:39:06', '', 131, 'http://192.168.0.108/marx/144', 0, 'revision', '', 0),
(145, 2, '2015-05-13 16:35:46', '2015-05-13 08:35:46', 'dddddddddddddd\r\n\r\ndssssssssssssssssssssssssss\r\n\r\nasssssssssssssssssssssssssd', 'threethreethree', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2015-05-13 16:35:46', '2015-05-13 08:35:46', '', 131, 'http://192.168.0.108/marx/145', 0, 'revision', '', 0),
(146, 2, '2015-05-13 16:36:33', '2015-05-13 08:36:33', '噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩噩\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n\r\n噩噩噩噩噩噩噩噩噩\r\n噩噩\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩\r\n\r\n噩噩 噩噩', '新闻two', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2015-05-13 16:36:33', '2015-05-13 08:36:33', '', 129, 'http://192.168.0.108/marx/146', 0, 'revision', '', 0),
(147, 2, '2015-05-13 16:36:52', '2015-05-13 08:36:52', '啊啊啊恩恩额不错\r\n\r\n&nbsp;\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的\r\n\r\n的e\r\n\r\n的', '新闻的', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2015-05-13 16:36:52', '2015-05-13 08:36:52', '', 125, 'http://192.168.0.108/marx/147', 0, 'revision', '', 0),
(149, 2, '2015-05-17 20:39:10', '2015-05-17 12:39:10', 'dddddddddddddd\r\n\r\ndssssssssssssssssssssssssss\r\n\r\nasssssssssssssssssssssssssd', 'threethreethree编辑文章编辑文章编辑文章编辑文章编辑文章', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2015-05-17 20:39:10', '2015-05-17 12:39:10', '', 131, 'http://192.168.0.108/marx/149', 0, 'revision', '', 0),
(150, 2, '2015-05-17 20:50:57', '2015-05-17 12:50:57', '', '师资管理', '', 'trash', 'closed', 'closed', '', '%e5%b8%88%e8%b5%84%e7%ae%a1%e7%90%86', '', '', '2015-05-17 20:56:09', '2015-05-17 12:56:09', '', 0, 'http://192.168.0.108/marx/?page_id=150', 0, 'page', '', 0),
(151, 2, '2015-05-17 20:49:44', '2015-05-17 12:49:44', '', '师资管理', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2015-05-17 20:49:44', '2015-05-17 12:49:44', '', 150, 'http://192.168.0.108/marx/151', 0, 'revision', '', 0),
(152, 2, '2015-05-17 20:51:51', '2015-05-17 12:51:51', '', '专任教师概况', '', 'publish', 'closed', 'closed', '', 'zrjs', '', '', '2015-05-17 20:56:53', '2015-05-17 12:56:53', '', 0, 'http://192.168.0.108/marx/?page_id=152', 0, 'page', '', 0),
(153, 2, '2015-05-17 20:51:39', '2015-05-17 12:51:39', '', '专任教师概况', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2015-05-17 20:51:39', '2015-05-17 12:51:39', '', 152, 'http://192.168.0.108/marx/153', 0, 'revision', '', 0),
(154, 2, '2015-05-17 20:52:18', '2015-05-17 12:52:18', '', '教授', '', 'publish', 'closed', 'closed', '', 'js', '', '', '2015-05-17 20:57:41', '2015-05-17 12:57:41', '', 0, 'http://192.168.0.108/marx/?page_id=154', 0, 'page', '', 0),
(155, 2, '2015-05-17 20:52:18', '2015-05-17 12:52:18', '', '教授', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2015-05-17 20:52:18', '2015-05-17 12:52:18', '', 154, 'http://192.168.0.108/marx/155', 0, 'revision', '', 0),
(156, 2, '2015-05-17 20:52:45', '2015-05-17 12:52:45', '', '副教授/博士', '', 'publish', 'closed', 'closed', '', 'fjs', '', '', '2015-05-17 20:57:36', '2015-05-17 12:57:36', '', 0, 'http://192.168.0.108/marx/?page_id=156', 0, 'page', '', 0),
(157, 2, '2015-05-17 20:52:45', '2015-05-17 12:52:45', '', '副教授/博士', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2015-05-17 20:52:45', '2015-05-17 12:52:45', '', 156, 'http://192.168.0.108/marx/157', 0, 'revision', '', 0),
(158, 2, '2015-05-17 20:54:20', '2015-05-17 12:54:20', '', '名师风采', '', 'publish', 'closed', 'closed', '', 'msh', '', '', '2015-05-17 20:57:29', '2015-05-17 12:57:29', '', 0, 'http://192.168.0.108/marx/?page_id=158', 0, 'page', '', 0),
(159, 2, '2015-05-17 20:54:20', '2015-05-17 12:54:20', '', '名师风采', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2015-05-17 20:54:20', '2015-05-17 12:54:20', '', 158, 'http://192.168.0.108/marx/159', 0, 'revision', '', 0),
(160, 2, '2015-05-17 20:55:04', '2015-05-17 12:55:04', '', '名师风采', '', 'inherit', 'closed', 'closed', '', '158-autosave-v1', '', '', '2015-05-17 20:55:04', '2015-05-17 12:55:04', '', 158, 'http://192.168.0.108/marx/160', 0, 'revision', '', 0),
(161, 2, '2015-05-17 21:03:36', '2015-05-17 13:03:36', '', '湖南省中国特色社会主义理论体系研究中心湖南商学院基地', '', 'publish', 'closed', 'closed', '', 'zths', '', '', '2015-05-17 21:03:36', '2015-05-17 13:03:36', '', 0, 'http://192.168.0.108/marx/?page_id=161', 0, 'page', '', 0),
(162, 2, '2015-05-17 21:00:36', '2015-05-17 13:00:36', '', '湖南省中国特色社会主义理论体系研究中心湖南商学院基地', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2015-05-17 21:00:36', '2015-05-17 13:00:36', '', 161, 'http://192.168.0.108/marx/162', 0, 'revision', '', 0),
(163, 2, '2015-05-17 21:04:02', '2015-05-17 13:04:02', '', '湖南省和平文化研究基地', '', 'publish', 'closed', 'closed', '', 'hnhp', '', '', '2015-05-17 21:04:18', '2015-05-17 13:04:18', '', 0, 'http://192.168.0.108/marx/?page_id=163', 0, 'page', '', 0),
(164, 2, '2015-05-17 21:04:02', '2015-05-17 13:04:02', '', '湖南省和平文化研究基地', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2015-05-17 21:04:02', '2015-05-17 13:04:02', '', 163, 'http://192.168.0.108/marx/164', 0, 'revision', '', 0),
(165, 2, '2015-05-17 21:07:23', '2015-05-17 13:07:23', '', '学科团队', '', 'publish', 'closed', 'closed', '', 'xktd', '', '', '2015-05-17 21:07:53', '2015-05-17 13:07:53', '', 0, 'http://192.168.0.108/marx/?page_id=165', 0, 'page', '', 0),
(166, 2, '2015-05-17 21:07:23', '2015-05-17 13:07:23', '', '学科团队', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2015-05-17 21:07:23', '2015-05-17 13:07:23', '', 165, 'http://192.168.0.108/marx/166', 0, 'revision', '', 0),
(167, 2, '2015-05-17 21:07:33', '2015-05-17 13:07:33', '', '学科团队', '', 'inherit', 'closed', 'closed', '', '165-autosave-v1', '', '', '2015-05-17 21:07:33', '2015-05-17 13:07:33', '', 165, 'http://192.168.0.108/marx/167', 0, 'revision', '', 0),
(168, 2, '2015-05-17 21:08:25', '2015-05-17 13:08:25', '', '课题研究', '', 'publish', 'closed', 'closed', '', 'kt', '', '', '2015-05-17 21:08:34', '2015-05-17 13:08:34', '', 0, 'http://192.168.0.108/marx/?page_id=168', 0, 'page', '', 0),
(169, 2, '2015-05-17 21:08:25', '2015-05-17 13:08:25', '', '课题研究', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2015-05-17 21:08:25', '2015-05-17 13:08:25', '', 168, 'http://192.168.0.108/marx/169', 0, 'revision', '', 0),
(170, 2, '2015-05-17 21:09:06', '2015-05-17 13:09:06', '', '论文著作', '', 'publish', 'closed', 'closed', '', 'lw', '', '', '2015-05-17 21:09:06', '2015-05-17 13:09:06', '', 0, 'http://192.168.0.108/marx/?page_id=170', 0, 'page', '', 0),
(171, 2, '2015-05-17 21:09:06', '2015-05-17 13:09:06', '', '论文著作', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2015-05-17 21:09:06', '2015-05-17 13:09:06', '', 170, 'http://192.168.0.108/marx/171', 0, 'revision', '', 0),
(172, 2, '2015-05-17 21:09:38', '2015-05-17 13:09:38', '', '成果获奖', '', 'publish', 'closed', 'closed', '', 'cg', '', '', '2015-05-17 21:09:38', '2015-05-17 13:09:38', '', 0, 'http://192.168.0.108/marx/?page_id=172', 0, 'page', '', 0),
(173, 2, '2015-05-17 21:09:38', '2015-05-17 13:09:38', '', '成果获奖', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2015-05-17 21:09:38', '2015-05-17 13:09:38', '', 172, 'http://192.168.0.108/marx/173', 0, 'revision', '', 0),
(174, 2, '2015-05-17 21:09:52', '2015-05-17 13:09:52', '', '交流合作', '', 'publish', 'closed', 'closed', '', 'jl', '', '', '2015-05-17 21:10:04', '2015-05-17 13:10:04', '', 0, 'http://192.168.0.108/marx/?page_id=174', 0, 'page', '', 0),
(175, 2, '2015-05-17 21:09:52', '2015-05-17 13:09:52', '', '交流合作', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2015-05-17 21:09:52', '2015-05-17 13:09:52', '', 174, 'http://192.168.0.108/marx/175', 0, 'revision', '', 0),
(176, 2, '2015-05-17 21:17:40', '2015-05-17 13:17:40', '', '活动开展', '', 'publish', 'closed', 'closed', '', 'hdkz', '', '', '2015-05-17 21:18:10', '2015-05-17 13:18:10', '', 0, 'http://192.168.0.108/marx/?page_id=176', 0, 'page', '', 0),
(177, 2, '2015-05-17 21:17:40', '2015-05-17 13:17:40', '', '活动开展', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2015-05-17 21:17:40', '2015-05-17 13:17:40', '', 176, 'http://192.168.0.108/marx/177', 0, 'revision', '', 0),
(178, 2, '2015-05-17 21:18:30', '2015-05-17 13:18:30', '', '党的知识', '', 'publish', 'closed', 'closed', '', 'ddzs', '', '', '2015-05-17 21:18:30', '2015-05-17 13:18:30', '', 0, 'http://192.168.0.108/marx/?page_id=178', 0, 'page', '', 0),
(179, 2, '2015-05-17 21:18:30', '2015-05-17 13:18:30', '', '党的知识', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2015-05-17 21:18:30', '2015-05-17 13:18:30', '', 178, 'http://192.168.0.108/marx/179', 0, 'revision', '', 0),
(180, 2, '2015-05-17 21:18:46', '2015-05-17 13:18:46', '', '学习专栏', '', 'publish', 'closed', 'closed', '', 'xxzl', '', '', '2015-05-17 21:19:09', '2015-05-17 13:19:09', '', 0, 'http://192.168.0.108/marx/?page_id=180', 0, 'page', '', 0),
(181, 2, '2015-05-17 21:18:46', '2015-05-17 13:18:46', '', '学习专栏', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2015-05-17 21:18:46', '2015-05-17 13:18:46', '', 180, 'http://192.168.0.108/marx/181', 0, 'revision', '', 0),
(182, 2, '2015-05-17 21:19:27', '2015-05-17 13:19:27', '', '学习专栏', '', 'inherit', 'closed', 'closed', '', '180-autosave-v1', '', '', '2015-05-17 21:19:27', '2015-05-17 13:19:27', '', 180, 'http://192.168.0.108/marx/182', 0, 'revision', '', 0),
(183, 2, '2015-05-17 21:24:36', '2015-05-17 13:24:36', '', '湖南商学院大学生中国特色社会主义理论体系研究协会', '', 'publish', 'closed', 'closed', '', 'hszt', '', '', '2015-05-17 21:24:36', '2015-05-17 13:24:36', '', 0, 'http://192.168.0.108/marx/?page_id=183', 0, 'page', '', 0),
(184, 2, '2015-05-17 21:24:36', '2015-05-17 13:24:36', '', '湖南商学院大学生中国特色社会主义理论体系研究协会', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2015-05-17 21:24:36', '2015-05-17 13:24:36', '', 183, 'http://192.168.0.108/marx/184', 0, 'revision', '', 0),
(185, 2, '2015-05-17 21:25:01', '2015-05-17 13:25:01', '', '品牌活动', '', 'publish', 'closed', 'closed', '', 'pphd', '', '', '2015-05-17 21:25:01', '2015-05-17 13:25:01', '', 0, 'http://192.168.0.108/marx/?page_id=185', 0, 'page', '', 0),
(186, 2, '2015-05-17 21:25:01', '2015-05-17 13:25:01', '', '品牌活动', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2015-05-17 21:25:01', '2015-05-17 13:25:01', '', 185, 'http://192.168.0.108/marx/186', 0, 'revision', '', 0),
(187, 2, '2015-05-17 21:25:23', '2015-05-17 13:25:23', '', '成果影响', '', 'publish', 'closed', 'closed', '', 'cgyx', '', '', '2015-05-17 21:25:23', '2015-05-17 13:25:23', '', 0, 'http://192.168.0.108/marx/?page_id=187', 0, 'page', '', 0),
(188, 2, '2015-05-17 21:25:23', '2015-05-17 13:25:23', '', '成果影响', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2015-05-17 21:25:23', '2015-05-17 13:25:23', '', 187, 'http://192.168.0.108/marx/188', 0, 'revision', '', 0),
(189, 2, '2015-05-24 20:56:53', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-05-24 20:56:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/marx/?p=189', 0, 'post', '', 0),
(190, 2, '2015-05-24 20:57:15', '2015-05-24 12:57:15', '', '本科生思想政治理论课', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2015-05-24 20:57:15', '2015-05-24 12:57:15', '', 112, 'http://localhost/marx/190', 0, 'revision', '', 0),
(191, 2, '2015-05-24 20:57:34', '2015-05-24 12:57:34', '', '研究生思想政治理论课', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2015-05-24 20:57:34', '2015-05-24 12:57:34', '', 105, 'http://localhost/marx/191', 0, 'revision', '', 0),
(192, 2, '2015-05-24 22:08:45', '2015-05-24 14:08:45', '  上的交流空间；阿里卡大家来；撒极冻酷凌；就阿斯利康巨大历史；空间的绿卡事\r\n件队列卡事件队列卡脚打罗爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽\r\n爽爽爽爽爽爽爽爽爽爽爽水水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽是水水水水水水水爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽\r\n\r\n萨达', '新闻：123456789', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2015-05-24 22:08:45', '2015-05-24 14:08:45', '', 137, 'http://localhost/marx/192', 0, 'revision', '', 0),
(193, 2, '2015-05-26 18:26:43', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-05-26 18:26:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/marx/?p=193', 0, 'post', '', 0),
(195, 2, '2015-05-26 20:49:26', '2015-05-26 12:49:26', '<a href="http://localhost/marx/wp-content/uploads/2015/05/2_12201305291230021463058.doc">2_12201305291230021463058</a>', '', '', 'trash', 'closed', 'closed', '', '195', '', '', '2015-05-26 20:51:25', '2015-05-26 12:51:25', '', 0, 'http://localhost/marx/?post_type=dlm_download&#038;p=195', 0, 'dlm_download', '', 0),
(197, 2, '2015-05-26 20:49:00', '2015-05-26 20:49:00', '', 'Download #195 File Version', '', 'publish', 'closed', 'closed', '', 'download-195-file-version', '', '', '2015-05-26 20:49:07', '2015-05-26 12:49:07', '', 195, 'http://localhost/marx/?post_type=dlm_download_version&p=197', 0, 'dlm_download_version', '', 0),
(198, 2, '2015-05-26 20:56:45', '2015-05-26 12:56:45', '[download id="2"] [download id="1"][download id="2"]', '资料室', '', 'trash', 'closed', 'closed', '', '%e8%b5%84%e6%96%99%e5%ae%a4-2', '', '', '2015-05-26 21:00:59', '2015-05-26 13:00:59', '', 0, 'http://localhost/marx/?p=198', 0, 'post', '', 0),
(199, 2, '2015-05-26 20:55:07', '2015-05-26 12:55:07', '[download id="1"]\r\n\r\n', '资料室', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2015-05-26 20:55:07', '2015-05-26 12:55:07', '', 198, 'http://localhost/marx/199', 0, 'revision', '', 0),
(200, 2, '2015-05-26 20:55:55', '2015-05-26 12:55:55', '[download id="2"] [download id="1"][download id="2"]', '资料室', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2015-05-26 20:55:55', '2015-05-26 12:55:55', '', 198, 'http://localhost/marx/200', 0, 'revision', '', 0),
(201, 2, '2015-05-26 20:59:38', '2015-05-26 12:59:38', '[download id="2"]\r\n\r\n', '订单', '', 'trash', 'closed', 'closed', '', '%e8%ae%a2%e5%8d%95', '', '', '2015-05-26 21:00:54', '2015-05-26 13:00:54', '', 0, 'http://localhost/marx/?p=201', 0, 'post', '', 0),
(202, 2, '2015-05-26 20:57:12', '2015-05-26 12:57:12', '[download id="2"]\r\n\r\n', '订单', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2015-05-26 20:57:12', '2015-05-26 12:57:12', '', 201, 'http://localhost/marx/202', 0, 'revision', '', 0),
(203, 2, '2015-05-26 20:57:58', '2015-05-26 12:57:58', '[download id="2"]\r\n\r\n<a href="http://localhost/marx/wp-content/uploads/2015/05/2_12201305291230021463058.doc">2_12201305291230021463058</a>', '订单', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2015-05-26 20:57:58', '2015-05-26 12:57:58', '', 201, 'http://localhost/marx/203', 0, 'revision', '', 0),
(204, 2, '2015-05-26 21:00:43', '2015-05-26 13:00:43', '', '资料室', '', 'publish', 'closed', 'closed', '', '%e8%b5%84%e6%96%99%e5%ae%a4', '', '', '2015-05-26 21:03:18', '2015-05-26 13:03:18', '', 0, 'http://localhost/marx/?p=204', 0, 'post', '', 0),
(205, 2, '2015-05-26 20:59:30', '2015-05-26 12:59:30', '', '资料室', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2015-05-26 20:59:30', '2015-05-26 12:59:30', '', 204, 'http://localhost/marx/205', 0, 'revision', '', 0),
(206, 2, '2015-05-26 20:59:38', '2015-05-26 12:59:38', '[download id="2"]\r\n\r\n', '订单', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2015-05-26 20:59:38', '2015-05-26 12:59:38', '', 201, 'http://localhost/marx/206', 0, 'revision', '', 0),
(207, 2, '2015-05-26 21:02:12', '2015-05-26 13:02:12', '<a href="http://localhost/marx/wp-content/uploads/2015/05/2_12201305291230021463058.doc">2_12201305291230021463058</a>', '资料室', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2015-05-26 21:02:12', '2015-05-26 13:02:12', '', 204, 'http://localhost/marx/207', 0, 'revision', '', 0),
(209, 2, '2015-05-26 21:02:55', '2015-05-26 13:02:55', '', '资料室', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2015-05-26 21:02:55', '2015-05-26 13:02:55', '', 204, 'http://localhost/marx/209', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dm_terms`
--

CREATE TABLE IF NOT EXISTS `dm_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dm_terms`
--

INSERT INTO `dm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, 'Featured', 'featured', 0),
(4, 'ssssss', 'wowow', 0),
(5, 'sss', 'sss', 0),
(6, 'ss', 'ss', 0),
(9, '机构设置', '%e6%9c%ba%e6%9e%84%e8%ae%be%e7%bd%ae', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dm_term_relationships`
--

CREATE TABLE IF NOT EXISTS `dm_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dm_term_relationships`
--

INSERT INTO `dm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 5, 0),
(1, 6, 0),
(12, 2, 0),
(15, 2, 0),
(49, 1, 0),
(52, 1, 0),
(54, 1, 0),
(57, 1, 0),
(125, 1, 0),
(129, 1, 0),
(131, 1, 0),
(137, 1, 0),
(198, 1, 0),
(201, 1, 0),
(204, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dm_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `dm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dm_term_taxonomy`
--

INSERT INTO `dm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'product', '', 0, 1),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dm_usermeta`
--

CREATE TABLE IF NOT EXISTS `dm_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- 转存表中的数据 `dm_usermeta`
--

INSERT INTO `dm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(81, 2, 'nickname', 'marx'),
(82, 2, 'first_name', '马克思主义学院'),
(83, 2, 'last_name', ''),
(84, 2, 'description', ''),
(85, 2, 'rich_editing', 'true'),
(86, 2, 'comment_shortcuts', 'false'),
(87, 2, 'admin_color', 'fresh'),
(88, 2, 'use_ssl', '0'),
(89, 2, 'show_admin_bar_front', 'true'),
(90, 2, 'dm_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(91, 2, 'dm_user_level', '10'),
(92, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(93, 2, 'session_tokens', 'a:2:{s:64:"0ee8feed4313d8f5b49c594898cc21445fc98bbfca3a24979f7e238987280f40";a:4:{s:10:"expiration";i:1432808803;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";s:5:"login";i:1432636003;}s:64:"88b23cb6753a3274173d21aeb865e1b5cc78b306b71c5d19b4379bd512e07906";a:4:{s:10:"expiration";i:1432816851;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36";s:5:"login";i:1432644051;}}'),
(94, 2, 'dm_dashboard_quick_press_last_post_id', '193'),
(95, 2, 'dm_user-settings', 'libraryContent=browse&editor=html&editor_expand=on'),
(96, 2, 'dm_user-settings-time', '1432645394');

-- --------------------------------------------------------

--
-- 表的结构 `dm_users`
--

CREATE TABLE IF NOT EXISTS `dm_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dm_users`
--

INSERT INTO `dm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'marx', '$P$BJ35ZDyPb.DdiluO1Hi.C3j3kvaGEL0', 'marx', '111586@qq.com', '', '2015-05-26 10:26:24', '', 0, '马克思学院');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
