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
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_comment` text,
  `toaction` text,
  `email` text,
  `is_this_subscriber_confirmed` text,
  `is_this_subscriber_blacklisted` text,
  `did_this_subscriber_manually_confirm` text,
  `number_of_bounces` text,
  `entered` text,
  `last_modified` text,
  `unique_id` text,
  `send_this_subscriber_html_emails` text,
  `rss_frequency` text,
  `is_this_account_disabled` text,
  `additional_data` text,
  `foreign_key` text,
  `first_name` text,
  `comments` text,
  `date_registered` text,
  `last_name` text,
  `which_describes_you_best` text,
  `whichdescr_id` int(11) DEFAULT NULL,
  `type` text,
  `type_id` int(11) DEFAULT NULL,
  `church_or_organization` text,
  `how_did_you_hear_about_the_book` text,
  `howdidyouh_id` int(11) DEFAULT NULL,
  `street` text,
  `city` text,
  `state` text,
  `home_phone` text,
  `mobile_phone` text,
  `fax` text,
  `interested_in_other_version_fbtj` text,
  `interested_id` int(11) DEFAULT NULL,
  `country` text,
  `country_id` int(11) DEFAULT NULL,
  `country_of_origin` text,
  `post_code` text,
  `if_christian_please_describe_denomination` text,
  `ifchristia_id` int(11) DEFAULT NULL,
  `volunteering_area` text,
  `volunteeri_id` int(11) DEFAULT NULL,
  `are_you_an_ordained_minister` text,
  `areyouanor_id` int(11) DEFAULT NULL,
  `role_at_church_or_organization` text,
  `proposed_date` text,
  `ministry_areas` text,
  `ministryar_id` int(11) DEFAULT NULL,
  `proposed_venue` text,
  `type_of_service` text,
  `typeofserv_id` int(11) DEFAULT NULL,
  `estimated_no_of_attendees` text,
  `requested_topic` text,
  `response` text,
  `new_believer_story` text,
  `praise_report_type` text,
  `praiserepo_id` int(11) DEFAULT NULL,
  `praise_message` text,
  `comments2` text,
  `date_of_birth` text,
  `enquiry` text,
  `contact` text,
  `minister_types` text,
  `areyouanor1_id` int(11) DEFAULT NULL,
  `study_course` text,
  `po_box` text,
  `home_church` text,
  `ip_address` text,
  `how_did_you_find_us` text,
  `interested_in_turkey_tour` text,
  `partnership_mailout` text,
  `newsletter_signup` text,
  `business_contact` text,
  `what_is_the_most_important_thing_you_look_for_in_a_church` text,
  `website` text,
  `looking_for_home_church` text,
  `lookingfor_id` int(11) DEFAULT NULL,
  `interested_in_joining_life_group` text,
  `interested1_id` int(11) DEFAULT NULL,
  `interested_to_visit_church_again` text,
  `interested2_id` int(11) DEFAULT NULL,
  `end_times_seminar_admission_code` text,
  `seminar_type` text,
  `interested_in_products` text,
  `list_membership` text,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16653 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `data_comment`, `toaction`, `email`, `is_this_subscriber_confirmed`, `is_this_subscriber_blacklisted`, `did_this_subscriber_manually_confirm`, `number_of_bounces`, `entered`, `last_modified`, `unique_id`, `send_this_subscriber_html_emails`, `rss_frequency`, `is_this_account_disabled`, `additional_data`, `foreign_key`, `first_name`, `comments`, `date_registered`, `last_name`, `which_describes_you_best`, `whichdescr_id`, `type`, `type_id`, `church_or_organization`, `how_did_you_hear_about_the_book`, `howdidyouh_id`, `street`, `city`, `state`, `home_phone`, `mobile_phone`, `fax`, `interested_in_other_version_fbtj`, `interested_id`, `country`, `country_id`, `country_of_origin`, `post_code`, `if_christian_please_describe_denomination`, `ifchristia_id`, `volunteering_area`, `volunteeri_id`, `are_you_an_ordained_minister`, `areyouanor_id`, `role_at_church_or_organization`, `proposed_date`, `ministry_areas`, `ministryar_id`, `proposed_venue`, `type_of_service`, `typeofserv_id`, `estimated_no_of_attendees`, `requested_topic`, `response`, `new_believer_story`, `praise_report_type`, `praiserepo_id`, `praise_message`, `comments2`, `date_of_birth`, `enquiry`, `contact`, `minister_types`, `areyouanor1_id`, `study_course`, `po_box`, `home_church`, `ip_address`, `how_did_you_find_us`, `interested_in_turkey_tour`, `partnership_mailout`, `newsletter_signup`, `business_contact`, `what_is_the_most_important_thing_you_look_for_in_a_church`, `website`, `looking_for_home_church`, `lookingfor_id`, `interested_in_joining_life_group`, `interested1_id`, `interested_to_visit_church_again`, `interested2_id`, `end_times_seminar_admission_code`, `seminar_type`, `interested_in_products`, `list_membership`, `mark`) VALUES
(86, '', '', 'bob@hereslife.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '3a15021926ccc12caa7cf625d5235d5c', '1', '', '0', '', '', 'Bob', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Seminar', 4, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(87, '', '', 'Abhilash.Thal@gmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '7dc1b02df63ccfb954094da4933f1dac', '1', '', '0', '', '', 'Abhilash', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Seminar', 4, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(88, '', '', 'mperan@optusnet.com.au', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '8d1c2714a71403a770232484115da311', '1', '', '0', '', '', 'Madeleine', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Other', 7, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(89, '', '', 'glen.new@bigpond.com', '0', '0', '', '11', '2010-05-04 06:00:59', '2012-12-04 15:03:20', 'f084ff66cc9fc28cf1e16206ff67dd62', '1', '', '0', '', '', 'Glen', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Seminar', 4, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(90, '', '', 'bill@billmuehlenberg.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ae038e563d487b88b1400f77f7ec062f', '1', '', '0', '', '', 'Bill', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Book Industry', 1, '', 'Email', 1, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(91, '', '', 'lendyl.e@bigpond.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2013-05-02 11:10:05', '530d05c14b76d59cd91b2326bacac46e', '1', '0', '0', '', '', 'Lendyl ', 'Customer of bookmarks & book', '2010-05-04 06:00:59', 'Edwards', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Email', 1, '37 Nott Street', 'Moura', 'Qld', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '4718', 'Anglican', 1, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; DC Newsletter Signup; Cioccolanti subscription list; ', 0),
(92, '', '', 'karen.edwards@lightfm.com.au', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'e8104e638599831674380ed61bfd57e4', '1', '', '0', '', '', 'Karen', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Web Surfer', 8, '', 'Google Search', 2, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(93, '', '', 'dchongs@gmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2014-05-11 23:26:48', '4563b336ea669ae3feb8b3ce63be1e7a', '1', '0', '0', '', '', 'Dinah', '', '2010-05-04 06:00:59', 'Chong', 'Christian', 1, 'Minister', 4, '', 'Word of Mouth', 6, '36 florence roadNedlands', 'Perth', 'Western Australia', '405081628', '', '', '', NULL, 'Australia', NULL, 'Australia', 'Wa 6009', 'Methodist', 7, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; DC Bookshop New Account; DC Newsletter Signup; ', 0),
(94, '', '', 'RBuckingham@baysidechurch.com.au', '1', '1', '', '0', '2010-05-04 06:00:59', '2011-11-24 12:06:18', 'f01203e405e3c3fa4f02408d143ede87', '1', '', '0', '', '', 'Rob', '', '2010-05-04 06:00:59', 'Buckingham', 'Christian', 1, 'Minister', 4, '', 'Other', 7, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'No Lists', 0),
(95, '', '', 'mcee.ethnos@gmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'af4585de51556cdebe555787c99b24a9', '1', '', '0', '', '', 'Kumar', '', '2010-05-04 06:00:59', '', 'Christian', 1, 'Minister / Pastor Friend', 5, '', 'Other', 7, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(98, '', '', 'helensfeel@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2012-03-24 23:17:00', '2873a5e54c3cd287f2baaa1c99952384', '1', '0', '0', '', '', 'Helen', '', '2010-05-04 06:00:59', 'Hendradjaja', '2', 75, 'Ministry / Christian Friend', 6, 'BIC', 'Seminar', 4, '21 Koornang Road', 'Carnegie', 'VIC', '97130837', '', '', '', NULL, 'Australia', NULL, 'Australia', '3163', '', NULL, '', NULL, 'FALSE', 6, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', 'BIC', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'DC Visitors; Manual Entry; DC Bookshop New Account; ', 0),
(99, '', '', 'anthony.zagorc@bigpond.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ece2f6b3aef38c0808d26374f78c0a8f', '1', '', '0', '', '', 'Anthony', '', '2010-05-04 06:00:59', 'Zagorc', 'Christian', 1, 'Ministry / Christian Friend', 6, '', 'Radio', 3, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(106, '', '', 'doctorjasonong@gmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '27948ae4993c0dee1920295bd888a9b6', '1', '', '0', '', '', 'Jason', '', '2010-05-04 06:00:59', 'Ong', 'Christian', 1, 'Ministry / Christian Friend', 6, 'ECC Boxhill', 'Seminar', 4, '', '', '', '', '401660753', '', '', NULL, 'Australia', NULL, 'Malaysia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(108, '', '', 'nplodtong@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '5bdaf57ea82598a08944f4e11f50ddd9', '1', '', '0', '', '', 'Annette', '', '2010-05-04 06:00:59', 'Plodtong', 'Christian', 1, 'Unknown', 7, 'Hope of BKK', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(109, '', '', 'listatiliu@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'fd1a78f8fa927bf08a3b25cc84f7de3b', '1', '', '0', '', '', 'Listati', '', '2010-05-04 06:00:59', 'Charles', 'Christian', 1, 'Unknown', 7, 'Calvary Baptist', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(110, '', '', 'panuwat_chal@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '4cb3ccba3163b5b47c527a1989bae835', '1', '', '0', '', '', 'Panuwat', '', '2010-05-04 06:00:59', 'McFee', 'Christian', 1, 'Unknown', 7, 'Mitrichit Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(111, '', '', 'narain_t@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'dbbfb1c72165e3efc6b0179a1dd9339c', '1', '', '0', '', '', 'Christian', '', '2010-05-04 06:00:59', 'Painter', 'Christian', 1, 'Unknown', 7, 'Wattana Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(112, '', '', 'suwit@thaiccc.org', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'fb5a5dd0ce3847b909aa9118b44deb5c', '1', '', '0', '', '', 'Sunii', '', '2010-05-04 06:00:59', 'Markert', 'Christian', 1, 'Unknown', 7, 'Mahaporn Rangsit Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(113, '', '', 's_rojawat@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2012-01-03 18:02:06', 'ede0257ca700a4c1bbf69536b0c2766b', '1', '0', '0', '', '', 'Silvia', '', '2010-05-04 06:00:59', 'Rojawat', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '241 Soi Rung Rueng, Ratchada Road, Huay Kwang District', 'Bangkok', '', '', '', '', '', NULL, 'Thailand', NULL, 'Australia', '10310', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; DC Newsletter Signup; ', 0),
(114, '', '', 'wilaicho@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ede70fbe7ed14f0be797964cbdc929c2', '1', '', '0', '', '', 'Wilai', '', '2010-05-04 06:00:59', 'cnougprachawat', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(115, '', '', 'iloveyouapple@hotmail.com', '0', '0', '', '2', '2010-05-04 06:00:59', '2012-12-04 15:03:20', '128924b0a4f9685fafd05f60ccc0f2ab', '1', '', '0', '', '', 'Jenny', '', '2010-05-04 06:00:59', 'Thitirojtakoi', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(116, '', '', 'janeleeym@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'd7397fb854c9e1eb6a170857ceccec3d', '1', '', '0', '', '', 'Jane', '', '2010-05-04 06:00:59', 'Ho', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(117, '', '', 'raylovelyray@hotmail.com', '0', '0', '', '4', '2010-05-04 06:00:59', '2012-12-04 15:03:20', 'aed7b34fd21b6c3232b985d1f47907eb', '1', '', '0', '', '', 'Ray', '', '2010-05-04 06:00:59', 'Fernando', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(118, '', '', 'sawkhu69@gmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '1b798fda01fd839f324ca01b57f3ccf0', '1', '', '0', '', '', 'Danielle', '', '2010-05-04 06:00:59', 'Khu', 'Christian', 1, 'Unknown', 7, 'Christ Church', 'Unknown', 11, '', '', '', '', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(119, '', '', 'fidela.m@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '982bd3536ba8c0c1e372849f638350af', '1', '', '0', '', '', 'Fidela', '', '2010-05-04 06:00:59', 'Santosa', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '82 Taman Warna, Holland Village, Singpore', '', '', '6.28E+12', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(120, '', '', 'yulian_indra@hotmail.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '50c2db6983bbdf2a3346248a2a75c65a', '1', '', '0', '', '', 'yulian', '', '2010-05-04 06:00:59', 'Indra', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '', '', '', '62816997599', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(121, '', '', 'sheirlyb@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '23924212fcea12d3ae73b823cba5235c', '1', '', '0', '', '', 'Judith', '', '2010-05-04 06:00:59', 'Berhitu', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '', '', '', '62811902896', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(122, '', '', 'ladysulu@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '022ecb769e9f0251e5d0d8ae8e291808', '1', '', '0', '', '', 'Lady', '', '2010-05-04 06:00:59', 'Wagner', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '', '', '', '6.28E+11', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(123, '', '', 'leon_the_braveheart@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', '2c7b90733f8191e4047259aa44578627', '1', '', '0', '', '', 'Elva', '', '2010-05-04 06:00:59', 'Andhika', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '', '', '', '6.29E+12', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0),
(124, '', '', 'franzandywinata@yahoo.com', '1', '0', '', '0', '2010-05-04 06:00:59', '2010-05-14 15:44:18', 'ef7946e23b13148072944164278f43e4', '1', '', '0', '', '', 'Kirsten', '', '2010-05-04 06:00:59', 'Winata', 'Christian', 1, 'Unknown', 7, '', 'Unknown', 11, '', '', '', '62816982576', '', '', '', NULL, 'Australia', NULL, 'Australia', '', '', NULL, '', NULL, 'No', 2, '', '', '', NULL, '', '', NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, '', '', '', 'Manual Entry; ', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
