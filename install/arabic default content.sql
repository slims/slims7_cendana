-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2015 at 07:48 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `7`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'معلومات المكتبة', '', 'libinfo', '2009-09-13 19:48:16', '2015-05-07 22:54:42', '1'),
(2, 'المساعدة في البحث', '', 'help', '2009-09-13 19:48:16', '2015-05-07 22:55:16', '1'),
(3, 'مرحبا بمدير النظام', '<table style="width: 100%;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon biblioIcon" href="?mod=bibliography"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الفهرسة</div>\r\n<span id="result_box" lang="ar"><span class="hps">وحدة</span> <span class="hps alt-edited">الفهرس,</span> <span class="hps alt-edited">تتيح لك</span> <span class="hps">إدارة البيانات</span> <span class="hps">الببليوغرافية</span> <span class="hps alt-edited">لمكتبتك</span></span>.وتشمل إدارة المواد والنسخ ليمكن إستخدامها وتداولها<br /></td>\r\n<td width="5%" valign="top"><a class="icon circulationIcon" href="?mod=circulation"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">التداول</div>\r\nلإدارة عملية الإعارة وإسترجاع المواد<br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon memberIcon" href="?mod=membership"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">المستفيدين</div>\r\nلإضافة المستفيدين الجدد وإدارة عضويتهم<br /><br /></td>\r\n<td width="5%" valign="top"><a class="icon stockTakeIcon" href="?mod=stock_take"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الجرد</div>\r\nلإدارة عمليات الجرد<br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon masterFileIcon" href="?mod=master_file"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">الملف الرئيسي<br /></div>\r\nملف مهم جدا لكل من عملية الفهرسة وتعيين اشكال وثائق المكتبة وغيرها<br /></td>\r\n<td width="5%" valign="top"><a class="icon systemIcon" href="?mod=system"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">النظام</div>\r\nلتكوين وإعدادت كل تطبيقات النظام العامة<br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon reportIcon" href="?mod=reporting"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">التقارير</div>\r\n<p>لعمل تقارير المكتبة المفيدة</p>\r\n<br /></td>\r\n<td width="5%" valign="top"><a class="icon serialIcon" href="?mod=serial_control"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">إدارة الدوريات<br /></div>\r\nلإدارة الدوريات وإشتراكاتها<br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'adminhome', '2009-09-13 19:48:16', '2015-05-07 22:51:52', '1'),
(4, 'معلومات الصفحة الرئيسية', '<p>أهلا بكم في المكتبة الرئيسية للمطالعة العمومية&nbsp; لولاية الجلفة جمال الدين بن سعد</p>\r\n<div id="libraryName"><br /></div>\r\n<div id="libraryName"><br /></div>', 'headerinfo', '2009-09-13 19:48:16', '2015-05-07 22:57:30', '1'),
(5, 'عن النظام', '', 'about_slims', '2010-08-28 23:29:55', '2015-05-07 22:53:32', '1'),
(7, 'رخصة الإستخدام', '', 'lisensi_slims', '2010-08-29 04:04:33', '2015-05-07 22:53:06', '1'),
(8, 'البرمجيات الحرة', '', 'opensource', '2010-08-29 04:05:16', '2015-05-07 22:53:54', '1');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Valade, Janet', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(2, 'Siever, Ellen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(3, 'Love, Robert', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(4, 'Robbins, Arnold', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(5, 'Figgins, Stephen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(6, 'Weber, Aaron', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(7, 'Kofler, Michael', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(8, 'Kramer, David', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(9, 'Raymond, Eric', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(10, 'Fogel, Karl', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(11, 'Douglas, Korry', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(12, 'Douglas, Susan', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(13, 'Shklar, Leon', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(14, 'Rosen, Richard', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(15, 'Woychowsky, Edmond', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(16, 'Taylor, Arlene G.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(17, 'Stueart, Robert D.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(18, 'Moran, Barbara B.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(19, 'Morville, Peter', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(20, 'Rosenfeld, Louis', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(21, 'Robinson, Mark', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(22, 'Bracking, Sarah', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(23, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(24, 'Hancock, Graham', NULL, 'p', NULL, '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'مرجع', '2007-11-29', '2015-05-06'),
(2, 'كتاب', '2007-11-29', '2015-05-06'),
(3, 'رواية', '2007-11-29', '2015-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'كتاب', NULL, '2015-05-04', '2015-05-07'),
(8, 'GA', 'لعبة', NULL, '2015-05-04', '2015-05-07'),
(11, 'MA', 'خريطة', NULL, '2015-05-04', '2015-05-07'),
(15, 'MP', 'صورة', NULL, '2015-05-04', '2015-05-07'),
(16, 'MS', 'شريحة ميكروسكوب', NULL, '2015-05-04', '2015-05-07'),
(26, 'CF', 'ملف كمبيوتر', NULL, '2015-05-04', '2015-05-07'),
(28, 'CD', 'قرص ضوئي', NULL, '2015-05-04', '2015-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'تحت الصيانة', 'a:1:{i:0;s:1:"1";}', 1, 0, '2015-12-12', '2015-12-12'),
('NL', 'ليس للإعارة', 'a:1:{i:0;s:1:"1";}', 1, 0, '2015-12-12', '2015-12-12'),
('MIS', 'مفقود', NULL, 1, 1, '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2015-12-12', '2015-12-12'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2015-12-12', '2015-12-12'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('ar', 'arabic', '2015-12-12', '2015-12-12'),
('en', 'English', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'مكتبتي', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'طالب جامعي', 2, 7, 1, 2, 365, 1, 0, 0, '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'الفهرسة', 'bibliography', 'إدارة الفهرسة والتسجيلات البيبليوغرافية'),
(2, 'التداول', 'circulation', 'لإدارة تداول وإسترجاع المواد'),
(3, 'المستفيدين', 'membership', 'لإضافة المستفيدين وإدارتهم'),
(4, 'الملف الرئيسي', 'master_file', 'الملف الأستاذ ملف مهم للمساعدة في عمليات الفهرسة وغيرها'),
(5, 'الجرد', 'stock_take', 'لإدارة عمليات الجرد'),
(6, 'النظام', 'system', 'للقيام بكل الإعدادت العامة والنسخ الإحتياطي'),
(7, 'التقارير', 'reporting', 'للقيام بكل التقارير المفيدة للمكتبة'),
(8, 'إدارة الدوريات', 'serial_control', 'لإدارة المطبوعات الدورية');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Hoboken, NJ', '2007-11-29', '2007-11-29'),
(2, 'Sebastopol, CA', '2007-11-29', '2007-11-29'),
(3, 'Indianapolis', '2007-11-29', '2007-11-29'),
(4, 'Upper Saddle River, NJ', '2007-11-29', '2007-11-29'),
(5, 'Westport, Conn.', '2007-11-29', '2007-11-29'),
(6, 'Cambridge, Mass', '2007-11-29', '2007-11-29'),
(7, 'London', '2007-11-29', '2007-11-29'),
(8, 'New York', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:12:"سينيان";'),
(2, 'library_subname', 's:60:"نظام إدارة المكتبات مفتوح المصدر";'),
(3, 'template', 'a:2:{s:5:"theme";s:10:"default-dz";s:3:"css";s:29:"template/default-dz/style.css";}'),
(4, 'admin_template', 'a:2:{s:5:"theme";s:10:"meranti-dz";s:3:"css";s:35:"admin_template/meranti-dz/style.css";}'),
(5, 'default_lang', 's:5:"ar_DZ";'),
(6, 'opac_result_num', 's:2:"10";'),
(7, 'enable_promote_titles', 'a:1:{i:0;s:1:"1";}'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:"7200";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:4:"128B";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:"barcode_page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:21:"barcode_items_per_row";i:3;s:20:"barcode_items_margin";d:0.1000000000000000055511151231257827021181583404541015625;s:17:"barcode_box_width";i:7;s:18:"barcode_box_height";i:5;s:27:"barcode_include_header_text";i:1;s:17:"barcode_cut_title";i:50;s:19:"barcode_header_text";s:0:"";s:13:"barcode_fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:17:"barcode_font_size";i:11;s:13:"barcode_scale";i:70;s:19:"barcode_border_size";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:"page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:13:"items_per_row";i:3;s:12:"items_margin";d:0.05000000000000000277555756156289135105907917022705078125;s:9:"box_width";i:8;s:10:"box_height";d:3.29999999999999982236431605997495353221893310546875;s:19:"include_header_text";i:1;s:11:"header_text";s:0:"";s:5:"fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:9:"font_size";i:11;s:11:"border_size";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:"print";a:1:{s:10:"membercard";a:61:{s:11:"card_factor";s:12:"37.795275591";s:21:"card_include_id_label";i:1;s:23:"card_include_name_label";i:1;s:22:"card_include_pin_label";i:1;s:23:"card_include_inst_label";i:0;s:24:"card_include_email_label";i:0;s:26:"card_include_address_label";i:1;s:26:"card_include_barcode_label";i:1;s:26:"card_include_expired_label";i:1;s:14:"card_box_width";d:8.5999999999999996447286321199499070644378662109375;s:15:"card_box_height";d:5.4000000000000003552713678800500929355621337890625;s:9:"card_logo";s:8:"logo.png";s:21:"card_front_logo_width";s:0:"";s:22:"card_front_logo_height";s:0:"";s:20:"card_front_logo_left";s:0:"";s:19:"card_front_logo_top";s:0:"";s:20:"card_back_logo_width";s:0:"";s:21:"card_back_logo_height";s:0:"";s:19:"card_back_logo_left";s:0:"";s:18:"card_back_logo_top";s:0:"";s:15:"card_photo_left";s:0:"";s:14:"card_photo_top";s:0:"";s:16:"card_photo_width";d:1.5;s:17:"card_photo_height";d:1.8000000000000000444089209850062616169452667236328125;s:23:"card_front_header1_text";s:19:"Library Member Card";s:28:"card_front_header1_font_size";s:2:"12";s:23:"card_front_header2_text";s:10:"My Library";s:28:"card_front_header2_font_size";s:2:"12";s:22:"card_back_header1_text";s:10:"My Library";s:27:"card_back_header1_font_size";s:2:"12";s:22:"card_back_header2_text";s:35:"My Library Full Address and Website";s:27:"card_back_header2_font_size";s:1:"5";s:17:"card_header_color";s:7:"#0066FF";s:18:"card_bio_font_size";s:2:"11";s:20:"card_bio_font_weight";s:4:"bold";s:20:"card_bio_label_width";s:3:"100";s:9:"card_city";s:9:"City Name";s:10:"card_title";s:15:"Library Manager";s:14:"card_officials";s:14:"Librarian Name";s:17:"card_officials_id";s:12:"Librarian ID";s:15:"card_stamp_file";s:9:"stamp.png";s:19:"card_signature_file";s:13:"signature.png";s:15:"card_stamp_left";s:0:"";s:14:"card_stamp_top";s:0:"";s:16:"card_stamp_width";s:0:"";s:17:"card_stamp_height";s:0:"";s:13:"card_exp_left";s:0:"";s:12:"card_exp_top";s:0:"";s:14:"card_exp_width";s:0:"";s:15:"card_exp_height";s:0:"";s:18:"card_barcode_scale";i:100;s:17:"card_barcode_left";s:0:"";s:16:"card_barcode_top";s:0:"";s:18:"card_barcode_width";s:0:"";s:19:"card_barcode_height";s:0:"";s:10:"card_rules";s:120:"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>";s:20:"card_rules_font_size";s:1:"8";s:12:"card_address";s:76:"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id";s:22:"card_address_font_size";s:1:"7";s:17:"card_address_left";s:0:"";s:16:"card_address_top";s:0:"";}}}'),
(24, 'spellchecker_enabled', 'b:0;');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', '1', 'system', 'Admin DELETE content (Modul yang Tersedia)', '2015-12-13 01:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT '0000-00-00',
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'a:1:{i:0;s:1:"1";}', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2015-12-12', '2015-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
