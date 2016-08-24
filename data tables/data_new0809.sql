-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2016 at 01:17 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_new`
--

CREATE TABLE IF NOT EXISTS `data_new` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `reupload` bit(1) DEFAULT NULL,
  `data_comment` varchar(200) DEFAULT NULL,
  `to_action` varchar(30) DEFAULT NULL,
  `is_confirmed` bit(1) DEFAULT NULL,
  `is_blacklisted` bit(1) DEFAULT NULL,
  `no_of_bounces` int(11) DEFAULT NULL,
  `send_html_emails` bit(1) DEFAULT NULL,
  `rss_frequency` int(11) DEFAULT NULL,
  `is_account_disabled` bit(1) DEFAULT NULL,
  `first_name` varchar(73) DEFAULT NULL,
  `last_name` varchar(75) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_registered` varchar(30) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `country` varchar(36) DEFAULT NULL,
  `home_phone` varchar(48) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `contact_no` varchar(25) DEFAULT NULL,
  `fax` varchar(23) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `comments2` varchar(255) DEFAULT NULL,
  `description` varchar(27) DEFAULT NULL,
  `type` varchar(164) DEFAULT NULL,
  `organization` varchar(62) DEFAULT NULL,
  `how_heard_book` varchar(23) DEFAULT NULL,
  `interested_other_version_fbtj` varchar(10) DEFAULT NULL,
  `country_of_origin` varchar(18) DEFAULT NULL,
  `denomination` varchar(20) DEFAULT NULL,
  `volunteer_area` varchar(30) DEFAULT NULL,
  `is_ordained_minister` bit(1) DEFAULT NULL,
  `role_at_organization` varchar(66) DEFAULT NULL,
  `proposed_date` date DEFAULT NULL,
  `ministry_areas` varchar(94) DEFAULT NULL,
  `proposed_venue` varchar(160) DEFAULT NULL,
  `type_of_service` varchar(28) DEFAULT NULL,
  `estimated_no_attendees` varchar(40) DEFAULT NULL,
  `requested_topic` varchar(255) DEFAULT NULL,
  `response` varchar(52) DEFAULT NULL,
  `new_believer_story` varchar(255) DEFAULT NULL,
  `praise_report_type` varchar(7) DEFAULT NULL,
  `praise_message` varchar(255) DEFAULT NULL,
  `enquiry` varchar(255) DEFAULT NULL,
  `minister_types` varchar(16) DEFAULT NULL,
  `study_course` varchar(8) DEFAULT NULL,
  `po_box` varchar(30) DEFAULT NULL,
  `home_church` varchar(80) DEFAULT NULL,
  `how_did_you_find_us` varchar(80) DEFAULT NULL,
  `partnership_mailout` varchar(2) DEFAULT NULL,
  `newsletter_signup` varchar(3) DEFAULT NULL,
  `business_contact` varchar(16) DEFAULT NULL,
  `most_important_in_church` varchar(70) DEFAULT NULL,
  `website` varchar(51) DEFAULT NULL,
  `looking_for_home_church` varchar(5) DEFAULT NULL,
  `interested_in_joining_life_group` varchar(3) DEFAULT NULL,
  `interested_to_visit_church_again` bit(1) DEFAULT NULL,
  `end_times_seminar_admission_code` varchar(7) DEFAULT NULL,
  `list_membership` varchar(198) DEFAULT NULL,
  `date_first_visit` date DEFAULT NULL,
  `attending_another_home_church` varchar(3) DEFAULT NULL,
  `made_jesus_lord` varchar(8) DEFAULT NULL,
  `how_heard_about_discover_more` varchar(28) DEFAULT NULL,
  `news_update` varchar(3) DEFAULT NULL,
  `speak_to_someone` varchar(3) DEFAULT NULL,
  `speak_to_someone_about` varchar(54) DEFAULT NULL,
  `volunteer` varchar(2) DEFAULT NULL,
  `entered` varchar(19) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `unique_id` varchar(32) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14411 ;

--
-- Dumping data for table `data_new`
--

INSERT INTO `data_new` (`data_id`, `id`, `reupload`, `data_comment`, `to_action`, `is_confirmed`, `is_blacklisted`, `no_of_bounces`, `send_html_emails`, `rss_frequency`, `is_account_disabled`, `first_name`, `last_name`, `email`, `date_of_birth`, `date_registered`, `street`, `city`, `state`, `postcode`, `country`, `home_phone`, `mobile_phone`, `contact_no`, `fax`, `comments`, `comments2`, `description`, `type`, `organization`, `how_heard_book`, `interested_other_version_fbtj`, `country_of_origin`, `denomination`, `volunteer_area`, `is_ordained_minister`, `role_at_organization`, `proposed_date`, `ministry_areas`, `proposed_venue`, `type_of_service`, `estimated_no_attendees`, `requested_topic`, `response`, `new_believer_story`, `praise_report_type`, `praise_message`, `enquiry`, `minister_types`, `study_course`, `po_box`, `home_church`, `how_did_you_find_us`, `partnership_mailout`, `newsletter_signup`, `business_contact`, `most_important_in_church`, `website`, `looking_for_home_church`, `interested_in_joining_life_group`, `interested_to_visit_church_again`, `end_times_seminar_admission_code`, `list_membership`, `date_first_visit`, `attending_another_home_church`, `made_jesus_lord`, `how_heard_about_discover_more`, `news_update`, `speak_to_someone`, `speak_to_someone_about`, `volunteer`, `entered`, `last_modified`, `unique_id`, `ip_address`, `mark`) VALUES
(1367, 86, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Bob', NULL, 'bob@hereslife.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Seminar', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '3a15021926ccc12caa7cf625d5235d5c', NULL, 0),
(100, 87, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Abhilash', NULL, 'Abhilash.Thal@gmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Seminar', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '7dc1b02df63ccfb954094da4933f1dac', NULL, 0),
(9280, 88, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Madeleine', NULL, 'mperan@optusnet.com.au', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Other', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '8d1c2714a71403a770232484115da311', NULL, 0),
(4374, 89, NULL, 'manual entry ones maybe uploaded I think', NULL, b'0', b'0', 11, b'1', NULL, b'0', 'Glen', NULL, 'glen.new@bigpond.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Seminar', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2012-12-04 15:03:20', 'f084ff66cc9fc28cf1e16206ff67dd62', NULL, 0),
(1260, 90, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Bill', NULL, 'bill@billmuehlenberg.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Book Industry', NULL, 'Email', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ae038e563d487b88b1400f77f7ec062f', NULL, 0),
(7850, 91, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', 0, b'0', 'Lendyl', 'Edwards', 'lendyl.e@bigpond.com', NULL, '5/4/2010 6:00', '37 Nott Street', 'Moura', 'QLD', '4718', 'Australia', NULL, NULL, NULL, NULL, 'Customer of bookmarks & book', NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Email', NULL, 'Australia', 'Anglican', NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry; DC Newsletter Signup; Cioccolanti subscription list;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2013-05-02 11:10:05', '530d05c14b76d59cd91b2326bacac46e', NULL, 0),
(7163, 92, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Karen', NULL, 'karen.edwards@lightfm.com.au', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Web Surfer', NULL, 'Google Search', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'e8104e638599831674380ed61bfd57e4', NULL, 0),
(2778, 93, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', 0, b'0', 'Dinah', 'Chong', 'dchongs@gmail.com', NULL, '5/4/2010 6:00', '36 florence roadNedlands', 'Perth', 'WA', 'Wa 6009', 'Australia', '04 0508 1628', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Minister', NULL, 'Word of Mouth', NULL, 'Australia', 'Methodist', NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry; DC Bookshop New Account; DC Newsletter Signup;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2014-05-11 23:26:48', '4563b336ea669ae3feb8b3ce63be1e7a', NULL, 0),
(10875, 94, NULL, NULL, NULL, b'1', b'1', 0, b'1', NULL, b'0', 'Rob', 'Buckingham', 'RBuckingham@baysidechurch.com.au', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Minister', NULL, 'Other', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Lists', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2011-11-24 12:06:18', 'f01203e405e3c3fa4f02408d143ede87', NULL, 0),
(8769, 95, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Kumar', NULL, 'mcee.ethnos@gmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Minister / Pastor Friend', NULL, 'Other', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'af4585de51556cdebe555787c99b24a9', NULL, 0),
(4747, 98, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', 0, b'0', 'Helen', 'Hendradjaja', 'helensfeel@yahoo.com', NULL, '5/4/2010 6:00', '21 Koornang Road', 'Carnegie', 'VIC', '3163', 'Australia', '97130837', NULL, NULL, NULL, NULL, NULL, '2', 'Ministry / Christian Friend', 'BIC', 'Seminar', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DC Visitors; Manual Entry; DC Bookshop New Account;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2012-03-24 23:17:00', '2873a5e54c3cd287f2baaa1c99952384', NULL, 0),
(755, 99, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Anthony', 'Zagorc', 'anthony.zagorc@bigpond.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', NULL, 'Radio', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ece2f6b3aef38c0808d26374f78c0a8f', NULL, 0),
(3128, 106, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Jason', 'Ong', 'doctorjasonong@gmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, '0401 660 753', NULL, NULL, NULL, NULL, 'Christian', 'Ministry / Christian Friend', 'ECC Boxhill', 'Seminar', NULL, 'Malaysia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '27948ae4993c0dee1920295bd888a9b6', NULL, 0),
(9768, 108, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Annette', 'Plodtong', 'nplodtong@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Hope of BKK', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '5bdaf57ea82598a08944f4e11f50ddd9', NULL, 0),
(8080, 109, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Listati', 'Charles', 'listatiliu@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Calvary Baptist', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'fd1a78f8fa927bf08a3b25cc84f7de3b', NULL, 0),
(10011, 110, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Panuwat', 'McFee', 'panuwat_chal@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Mitrichit Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '4cb3ccba3163b5b47c527a1989bae835', NULL, 0),
(9468, 111, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Christian', 'Painter', 'narain_t@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Wattana Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'dbbfb1c72165e3efc6b0179a1dd9339c', NULL, 0),
(12610, 112, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Sunii', 'Markert', 'suwit@thaiccc.org', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Mahaporn Rangsit Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'fb5a5dd0ce3847b909aa9118b44deb5c', NULL, 0),
(11491, 113, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', 0, b'0', 'Silvia', 'Rojawat', 's_rojawat@hotmail.com', NULL, '5/4/2010 6:00', '241 Soi Rung Rueng, Ratchada Road, Huay Kwang District', 'Bangkok', NULL, '10310', 'Thailand', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry; DC Newsletter Signup;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2012-01-03 18:02:06', 'ede0257ca700a4c1bbf69536b0c2766b', NULL, 0),
(13774, 114, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Wilai', 'cnougprachawat', 'wilaicho@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ede70fbe7ed14f0be797964cbdc929c2', NULL, 0),
(5103, 115, NULL, 'manual entry ones maybe uploaded I think', NULL, b'0', b'0', 2, b'1', NULL, b'0', 'Jenny', 'Thitirojtakoi', 'iloveyouapple@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2012-12-04 15:03:20', '128924b0a4f9685fafd05f60ccc0f2ab', NULL, 0),
(6125, 116, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Jane', 'Ho', 'janeleeym@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'd7397fb854c9e1eb6a170857ceccec3d', NULL, 0),
(10844, 117, NULL, 'manual entry ones maybe uploaded I think', NULL, b'0', b'0', 4, b'1', NULL, b'0', 'Ray', 'Fernando', 'raylovelyray@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2012-12-04 15:03:20', 'aed7b34fd21b6c3232b985d1f47907eb', NULL, 0),
(11683, 118, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Danielle', 'Khu', 'sawkhu69@gmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', 'Christ Church', 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '1b798fda01fd839f324ca01b57f3ccf0', NULL, 0),
(3943, 119, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Fidela', 'Santosa', 'fidela.m@hotmail.com', NULL, '5/4/2010 6:00', '82 Taman Warna, Holland Village, Singpore', NULL, NULL, NULL, 'Australia', '6.28E+12', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '982bd3536ba8c0c1e372849f638350af', NULL, 0),
(14155, 120, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'yulian', 'Indra', 'yulian_indra@hotmail.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', '62816997599', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '50c2db6983bbdf2a3346248a2a75c65a', NULL, 0),
(11922, 121, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Judith', 'Berhitu', 'sheirlyb@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', '62811902896', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '23924212fcea12d3ae73b823cba5235c', NULL, 0),
(7675, 122, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Lady', 'Wagner', 'ladysulu@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', '6.28E+11', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '022ecb769e9f0251e5d0d8ae8e291808', NULL, 0),
(7863, 123, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Elva', 'Andhika', 'leon_the_braveheart@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', '6.29E+12', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', '2c7b90733f8191e4047259aa44578627', NULL, 0),
(4068, 124, NULL, 'manual entry ones maybe uploaded I think', NULL, b'1', b'0', 0, b'1', NULL, b'0', 'Kirsten', 'Winata', 'franzandywinata@yahoo.com', NULL, '5/4/2010 6:00', NULL, NULL, NULL, NULL, 'Australia', '62816982576', NULL, NULL, NULL, NULL, NULL, 'Christian', 'Unknown', NULL, 'Unknown', NULL, 'Australia', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manual Entry;', '2010-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ef7946e23b13148072944164278f43e4', NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
