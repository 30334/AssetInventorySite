-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 07:02 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetcategories`
--

CREATE TABLE IF NOT EXISTS `assetcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `assetcategories`
--

INSERT INTO `assetcategories` (`id`, `name`, `color`) VALUES
(1, 'Electronic Equipments', '#1e3dda'),
(2, 'Electronic Devices', '#058e29'),
(3, 'Furnitures', '#ff0000'),
(4, 'Stationaries', '#99ac13'),
(5, 'Lab Equipments', '#0b7c35'),
(6, 'Raw Materials', '#1e3dda');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `manufacturerid` int(11) NOT NULL,
  `modelid` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `warranty_months` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `locationid` int(11) NOT NULL,
  `purchase_order` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `removal_date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `categoryid`, `adminid`, `clientid`, `userid`, `manufacturerid`, `modelid`, `supplierid`, `statusid`, `purchase_date`, `warranty_months`, `tag`, `name`, `serial`, `notes`, `locationid`, `purchase_order`, `value`, `condition`, `removal_date`) VALUES
(1, 1, 0, 1, 0, 3, 4, 1, 3, '2016-02-01', 24, 'IT-1', 'Flourscent Bulbs', 'QWERT12345', '', 0, '', '', '', ''),
(2, 3, 0, 2, 0, 2, 3, 1, 3, '2016-02-01', 24, 'IT-2', 'Desks', 'ASDFG12345', '', 0, '', '', '', ''),
(3, 2, 0, 2, 0, 1, 6, 0, 3, '2016-02-01', 24, 'IT-3', 'Desktop', 'BNMHJK98765', '', 0, '', '', '', ''),
(4, 4, 0, 0, 0, 0, 5, 0, 3, '0000-00-00', 0, 'IT-4', 'Ball Pen', 'BNMHJK98769', '', 0, '', '', '', ''),
(5, 5, 0, 0, 0, 0, 1, 0, 4, '0000-00-00', 0, 'IT-5', 'Funnels', 'NCW66HWURR', '', 0, '', '', '', ''),
(6, 6, 0, 0, 0, 0, 2, 0, 1, '0000-00-00', 0, 'IT-6', 'Plastic PVC Pipes', 'FRHQ3CK2U3', '', 0, '', '', '', ''),
(7, 6, 0, 0, 0, 0, 2, 0, 1, '0000-00-00', 0, 'IT-7', 'Irons', 'WPA7KTTVNN', '', 0, '', '', '', ''),
(8, 5, 0, 0, 0, 0, 1, 0, 5, '0000-00-00', 0, 'IT-8', 'Flasks', 'R5MAWPGYKY', '', 0, '', '', '', ''),
(9, 1, 0, 0, 0, 0, 4, 0, 6, '0000-00-00', 0, 'IT-9', 'Incandescant Bulbs', '8YV87H5797', '', 0, '', '', '', ''),
(10, 4, 0, 0, 0, 0, 5, 0, 3, '0000-00-00', 0, 'IT-10', 'Marker', 'WQBS697ERQ', '', 0, '', '', '', ''),
(11, 3, 0, 0, 0, 0, 3, 0, 4, '0000-00-00', 0, 'IT-11', 'Benches', 'T95JKNK5S8', '', 0, '', '', '', ''),
(12, 6, 0, 0, 0, 0, 2, 0, 6, '0000-00-00', 0, 'IT-12', 'Plywoods', '76ZKUHBRJC', '', 0, '', '', '', ''),
(13, 2, 0, 0, 0, 0, 6, 0, 3, '0000-00-00', 0, 'IT-13', 'CPU', 'XAV8XJWH5Y', '', 0, '', '', '', ''),
(14, 4, 0, 0, 0, 0, 5, 0, 1, '0000-00-00', 0, 'IT-14', 'Writting Pad', 'M2CQE3LVND', '', 0, '', '', '', ''),
(15, 5, 0, 0, 0, 0, 1, 0, 5, '0000-00-00', 0, 'IT-15', 'Droppers', 'NCW66HWURR', '', 0, '', '', '', ''),
(16, 2, 0, 0, 0, 0, 6, 0, 6, '0000-00-00', 0, 'IT-16', 'UPS', 'FRHQ3CK2U3', '', 0, '', '', '', ''),
(17, 4, 0, 0, 0, 0, 5, 0, 4, '0000-00-00', 0, 'IT-17', 'Dairy', 'WPA7KTTVNN', '', 0, '', '', '', ''),
(18, 1, 0, 0, 0, 0, 4, 0, 3, '0000-00-00', 0, 'IT-18', 'Tubelights', 'R5MAWPGYKY', '', 0, '', '', '', ''),
(19, 3, 0, 0, 0, 0, 3, 0, 1, '0000-00-00', 0, 'IT-19', 'Table', '8YV87H5797', '', 0, '', '', '', ''),
(20, 2, 0, 0, 0, 0, 6, 0, 5, '0000-00-00', 0, 'IT-20', 'Laptop', 'WQBS697ERQ', '', 0, '', '', '', ''),
(21, 5, 0, 0, 0, 0, 1, 0, 6, '0000-00-00', 0, 'IT-21', 'Pippet', 'T95JKNK5S8', '', 0, '', '', '', ''),
(22, 4, 0, 0, 0, 0, 5, 0, 4, '0000-00-00', 0, 'IT-22', 'Hand Bag', '76ZKUHBRJC', '', 0, '', '', '', ''),
(23, 3, 0, 0, 0, 0, 3, 0, 3, '0000-00-00', 0, 'IT-23', 'Chairs', 'XAV8XJWH5Y', '', 0, '', '', '', ''),
(24, 4, 0, 0, 0, 0, 5, 0, 1, '0000-00-00', 0, 'IT-24', 'Ruler', 'M2CQE3LVND', '', 0, '', '', '', ''),
(25, 2, 0, 0, 0, 0, 6, 0, 5, '0000-00-00', 0, 'IT-25', 'Printer', '22CCGHLYPL', '', 0, '', '', '', ''),
(26, 1, 0, 0, 0, 0, 4, 0, 6, '0000-00-00', 0, 'IT-26', 'Fan', 'Y2YC5LS836', '', 0, '', '', '', ''),
(27, 3, 0, 0, 0, 0, 3, 0, 4, '0000-00-00', 0, 'IT-27', 'Raks', 'GHXW5PG87S', '', 0, '', '', '', ''),
(28, 4, 0, 0, 0, 0, 5, 0, 1, '0000-00-00', 0, 'IT-28', 'Register', 'L2RWBATAFH', '', 0, '', '', '', ''),
(29, 3, 0, 0, 0, 0, 3, 0, 5, '0000-00-00', 0, 'IT-29', 'Auditorium Chair', 'ES5HNTNPNT', '', 0, '', '', '', ''),
(30, 5, 0, 0, 0, 0, 1, 0, 6, '0000-00-00', 0, 'IT-30', 'Burets', 'CSAT3KX8RA', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `asset_tag_prefix` varchar(255) NOT NULL,
  `license_tag_prefix` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `asset_tag_prefix`, `license_tag_prefix`) VALUES
(1, 'Client Inc.', 'IT-', 'ITL-'),
(2, 'Client 2 Inc.', 'IT-', 'ITL-');

-- --------------------------------------------------------

--
-- Table structure for table `clients_admins`
--

CREATE TABLE IF NOT EXISTS `clients_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clients_admins`
--

INSERT INTO `clients_admins` (`id`, `adminid`, `clientid`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`name`, `value`) VALUES
('email_from_address', 'admin@example.com'),
('email_from_name', 'admin'),
('email_smtp_enable', 'false'),
('email_smtp_host', ''),
('email_smtp_port', ''),
('email_smtp_username', ''),
('email_smtp_password', ''),
('email_smtp_security', ''),
('email_smtp_domain', ''),
('email_smtp_auth', 'false'),
('week_start', '1'),
('log_retention', '365'),
('tickets_encrypton', ''),
('tickets_password', ''),
('tickets_username', ''),
('tickets_server', ''),
('license_tag_prefix', 'ITL-'),
('asset_tag_prefix', 'IT-'),
('company_details', 'Asset, Inventory And Project Management PHP Mysql Source Code'),
('company_name', 'Asset, Inventory And Project Management PHP Mysql Source Code'),
('tickets_notification', 'false'),
('sms_provider', 'clickatell'),
('sms_user', ''),
('sms_password', ''),
('sms_api_id', ''),
('sms_from', ''),
('app_name', 'Asset, Inventory And Project Management PHP Mysql Source Code'),
('app_url', '#'),
('table_records', '50'),
('db_version', '1.7'),
('project_tag_prefix', 'P-'),
('password_generator_length', '8'),
('default_lang', 'en'),
('auto_close_tickets', '0'),
('timezone', 'UTC'),
('auto_close_tickets_notify', 'false'),
('tickets_defaultdepartment', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE IF NOT EXISTS `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emaillog`
--

CREATE TABLE IF NOT EXISTS `emaillog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `to` varchar(128) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `ticketreplyid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hosts`
--

CREATE TABLE IF NOT EXISTS `hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hosts`
--

INSERT INTO `hosts` (`id`, `clientid`, `name`, `address`, `status`) VALUES
(1, 1, 'Google', 'www.google.com', ''),
(2, 2, 'DC Server', '10.0.0.25', ''),
(3, 2, 'Router', '10.0.0.1', '');

-- --------------------------------------------------------

--
-- Table structure for table `hosts_checks`
--

CREATE TABLE IF NOT EXISTS `hosts_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(60) NOT NULL,
  `port` varchar(60) NOT NULL,
  `monitoring` int(1) NOT NULL,
  `email` int(1) NOT NULL,
  `sms` int(1) NOT NULL,
  `status` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hosts_checks`
--

INSERT INTO `hosts_checks` (`id`, `hostid`, `name`, `type`, `port`, `monitoring`, `email`, `sms`, `status`) VALUES
(1, 1, 'HTTP', 'Service', '80', 1, 1, 1, ''),
(2, 3, 'HTTP admin', 'Service', '80', 1, 1, 0, ''),
(3, 2, 'MySQL Database', 'Service', '3306', 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `hosts_history`
--

CREATE TABLE IF NOT EXISTS `hosts_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `latency` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hosts_people`
--

CREATE TABLE IF NOT EXISTS `hosts_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostid` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `issuetype` varchar(15) NOT NULL,
  `priority` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `timespent` int(10) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `clientid`, `assetid`, `projectid`, `adminid`, `issuetype`, `priority`, `status`, `name`, `description`, `duedate`, `timespent`, `dateadded`) VALUES
(1, 2, 2, 0, 0, 'Task', 'High', 'To Do', 'Configure Active Directory', '', '', 180, '2016-02-03 00:00:00'),
(2, 2, 2, 0, 0, 'Task', 'Low', 'In Progress', 'Reconfigure DNS server', '', '2016-03-27', 25, '2016-02-01 00:00:00'),
(3, 1, 1, 0, 0, 'Task', 'Normal', 'Done', 'Install Office Suite', '', '2016-08-03', 45, '2016-02-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kb_articles`
--

CREATE TABLE IF NOT EXISTS `kb_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `clients` text NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kb_articles`
--

INSERT INTO `kb_articles` (`id`, `categoryid`, `clients`, `name`, `content`) VALUES
(1, 1, 'a:1:{i:0;s:1:"0";}', 'Test Article', '<p>Article body.<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `kb_categories`
--

CREATE TABLE IF NOT EXISTS `kb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clients` text NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kb_categories`
--

INSERT INTO `kb_categories` (`id`, `clients`, `name`) VALUES
(1, 'a:1:{i:0;s:1:"0";}', 'Test Category');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE IF NOT EXISTS `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`) VALUES
(1, 'New', '#1ecbbc'),
(3, 'Deployed', '#3479da'),
(4, 'Archived', '#959d1c'),
(5, 'In Repair', '#da2727'),
(6, 'Broken', '#776e6e');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`) VALUES
(1, 'en', 'English (System)');

-- --------------------------------------------------------

--
-- Table structure for table `licensecategories`
--

CREATE TABLE IF NOT EXISTS `licensecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `licensecategories`
--

INSERT INTO `licensecategories` (`id`, `name`, `color`) VALUES
(1, 'Operating Systems', '#355ea7'),
(2, 'Office Suite', '#e4d811'),
(3, 'Graphics Editor', '#c62121'),
(4, 'Other', '#370b0b');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE IF NOT EXISTS `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial` text NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`id`, `clientid`, `statusid`, `categoryid`, `supplierid`, `tag`, `name`, `serial`, `notes`) VALUES
(1, 1, 3, 1, 1, 'ITL-1', 'Windows 10 Pro', '', ''),
(2, 1, 3, 1, 2, 'ITL-2', 'Office Home & Business 2016', '', ''),
(3, 2, 3, 1, 3, 'ITL-3', 'Windows Server 2012 R2 Essentials', '', ''),
(4, 2, 3, 3, 1, 'ITL-4', 'Corel Draw x5', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `licenses_assets`
--

CREATE TABLE IF NOT EXISTS `licenses_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licenseid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `licenses_assets`
--

INSERT INTO `licenses_assets` (`id`, `licenseid`, `assetid`) VALUES
(1, 3, 1),
(2, 2, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `clientid`, `name`) VALUES
(1, 1, 'Test Location');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'Dell'),
(3, 'Microsoft'),
(4, 'HP'),
(5, 'Samsung'),
(6, 'ASUS'),
(7, 'Canon'),
(8, 'Cisco'),
(9, 'Lenovo'),
(10, 'Acer'),
(11, 'Epson');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE IF NOT EXISTS `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `name`) VALUES
(1, 'AIDAR'),
(2, 'Supreme'),
(3, 'Nilkjamal Zenith'),
(4, 'Compact'),
(5, 'Brustro Technical '),
(6, 'MacBook Pro');

-- --------------------------------------------------------

--
-- Table structure for table `notificationtemplates`
--

CREATE TABLE IF NOT EXISTS `notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `info` text NOT NULL,
  `sms` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `notificationtemplates`
--

INSERT INTO `notificationtemplates` (`id`, `name`, `subject`, `message`, `info`, `sms`) VALUES
(1, 'New Ticket', 'Ticket #{ticketid} created', '<p>Hello {contact},<br><br>A new ticket has been created for your request.<br>Ticket ID:<b> #{ticketid}</b><br><br>{message}<br><br>You can reply to this email to add additional information.<br>Please do not remove the ticket number from the subject line.<br><br>Best regards,<br>{company}</p>', '', ''),
(2, 'New Ticket Reply', '#{ticketid} New Reply', '<p>Hello {contact},<br><br>A new reply has been added to your ticket.<br><br>Ticket ID: #{ticketid}<br><br>{message}<br><br>You can reply to this email to add additional information.<br>Please do not remove the ticket number from the subject line.<br><br>Best regards,<br>{company}<br></p>', '', ''),
(3, 'New User', 'New User', '<p>Hello {contact},<br><br>Your account has been successfully created.</p><p><br>Email Address: {email}<br>Password: {password}<br>{appurl}<br><br>Best regards,<br>{company}<br></p>', '', ''),
(5, 'Password Reset', 'Password Reset', '<p>Hello {contact},<br><br>Please follow the link below to reset your password.<br>{resetlink}<br><br>Best regards,<br>{company}<br></p>', '', ''),
(6, 'Monitoring Notification', '{hostinfo} is now {status}', '<p>{hostinfo} status has changed to {status}.<br><br>Best regards,<br>{company}<br></p>', '', '{hostinfo} is now {status}'),
(7, 'New Ticket (Admin)', 'New Support Ticket #{ticketid}', '<p>A new support ticket has been opened.</p>\r\n<p>Ticket ID:<b> #{ticketid}</b><br>Subject: {subject}</p>\r\n<p><br>{message}</p><br>\r\n<p>Best regards,<br>{company}</p>', '', ''),
(8, 'New Ticket Reply (Admin)', 'New Reply to Ticket #{ticketid}', '<p>A new reply has been added to ticket #{ticketid}.<br>Subject: {subject}<br></p><p><br>{message}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', ''),
(9, 'Ticket Escalation (Admin)', 'Escalation Rule Processed #{ticketid}', '<p>Escalation rule processed for ticket #{ticketid}.<br>Subject: {subject}<br></p><p><br>{message}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', ''),
(10, 'Ticket Auto Close (User)', 'Support Ticket #{ticketid} Auto Closed', '<p>This is a notification to let you know that we are changing the status of your ticket #{ticketid}  to Closed as we have not received a response from you lately.<br></p><p><br>Ticket Subject: {subject}<br></p><p><br>Best regards,<br>{company}<br></p><p><br></p><p></p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `roleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `sidebar` varchar(64) NOT NULL,
  `layout` varchar(64) NOT NULL,
  `notes` text NOT NULL,
  `signature` text NOT NULL,
  `sessionid` varchar(255) NOT NULL,
  `resetkey` varchar(255) NOT NULL,
  `autorefresh` int(11) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `ticketsnotification` int(1) NOT NULL,
  `avatar` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `type`, `roleid`, `clientid`, `name`, `email`, `title`, `mobile`, `password`, `theme`, `sidebar`, `layout`, `notes`, `signature`, `sessionid`, `resetkey`, `autorefresh`, `lang`, `ticketsnotification`, `avatar`) VALUES
(2, 'admin', 1, 0, 'admin', 'admin@example.com', '', '', 'ecb97aafa3d2b5f076926ac5976fc03f376be7f3', 'skin-blue', 'opened', '', '', '', '0cgr5e1q70srqmrpaopq26rh96', '', 0, 'en', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `description` text NOT NULL,
  `startdate` varchar(20) NOT NULL,
  `deadline` varchar(20) NOT NULL,
  `progress` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `clientid`, `tag`, `name`, `notes`, `description`, `startdate`, `deadline`, `progress`) VALUES
(1, 1, 'P-1', 'Test Project', '<p></p>', '', '', '', 70);

-- --------------------------------------------------------

--
-- Table structure for table `projects_admins`
--

CREATE TABLE IF NOT EXISTS `projects_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `projects_admins`
--

INSERT INTO `projects_admins` (`id`, `projectid`, `adminid`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `perms` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `type`, `name`, `perms`) VALUES
(1, 'admin', 'Super Administrator', 'a:90:{i:0;s:9:"addClient";i:1;s:10:"editClient";i:2;s:12:"deleteClient";i:3;s:12:"manageClient";i:4;s:12:"adminsClient";i:5;s:11:"viewClients";i:6;s:8:"addAsset";i:7;s:9:"editAsset";i:8;s:11:"deleteAsset";i:9;s:11:"manageAsset";i:10;s:12:"licenseAsset";i:11;s:10:"viewAssets";i:12;s:10:"addLicense";i:13;s:11:"editLicense";i:14;s:13:"deleteLicense";i:15;s:13:"manageLicense";i:16;s:12:"assetLicense";i:17;s:12:"viewLicenses";i:18;s:10:"addProject";i:19;s:11:"editProject";i:20;s:13:"deleteProject";i:21;s:13:"manageProject";i:22;s:18:"manageProjectNotes";i:23;s:13:"adminsProject";i:24;s:12:"viewProjects";i:25;s:9:"addTicket";i:26;s:10:"editTicket";i:27;s:12:"deleteTicket";i:28;s:12:"manageTicket";i:29;s:17:"manageTicketRules";i:30;s:17:"manageTicketNotes";i:31;s:22:"manageTicketAssignment";i:32;s:11:"viewTickets";i:33;s:8:"addIssue";i:34;s:9:"editIssue";i:35;s:11:"deleteIssue";i:36;s:11:"manageIssue";i:37;s:10:"viewIssues";i:38;s:10:"addComment";i:39;s:11:"editComment";i:40;s:13:"deleteComment";i:41;s:13:"assignComment";i:42;s:12:"viewComments";i:43;s:13:"addCredential";i:44;s:14:"editCredential";i:45;s:16:"deleteCredential";i:46;s:14:"viewCredential";i:47;s:15:"viewCredentials";i:48;s:5:"addKB";i:49;s:6:"editKB";i:50;s:8:"deleteKB";i:51;s:6:"viewKB";i:52;s:9:"addPReply";i:53;s:10:"editPReply";i:54;s:12:"deletePReply";i:55;s:12:"viewPReplies";i:56;s:10:"uploadFile";i:57;s:12:"downloadFile";i:58;s:10:"deleteFile";i:59;s:9:"viewFiles";i:60;s:7:"addHost";i:61;s:8:"editHost";i:62;s:10:"deleteHost";i:63;s:10:"manageHost";i:64;s:14:"viewMonitoring";i:65;s:7:"addUser";i:66;s:8:"editUser";i:67;s:10:"deleteUser";i:68;s:9:"viewUsers";i:69;s:8:"addStaff";i:70;s:9:"editStaff";i:71;s:11:"deleteStaff";i:72;s:9:"viewStaff";i:73;s:7:"addRole";i:74;s:8:"editRole";i:75;s:10:"deleteRole";i:76;s:9:"viewRoles";i:77;s:10:"addContact";i:78;s:11:"editContact";i:79;s:13:"deleteContact";i:80;s:12:"viewContacts";i:81;s:10:"manageData";i:82;s:14:"manageSettings";i:83;s:8:"viewLogs";i:84;s:10:"viewSystem";i:85;s:10:"viewPeople";i:86;s:11:"viewReports";i:87;s:11:"autorefresh";i:88;s:6:"search";i:89;s:4:"Null";}'),
(2, 'user', 'Standard User', 'a:19:{i:0;s:11:"manageAsset";i:1;s:10:"viewAssets";i:2;s:13:"manageLicense";i:3;s:12:"viewLicenses";i:4;s:12:"viewProjects";i:5;s:9:"addTicket";i:6;s:10:"editTicket";i:7;s:12:"manageTicket";i:8;s:11:"viewTickets";i:9;s:8:"addIssue";i:10;s:10:"viewIssues";i:11;s:10:"addComment";i:12;s:12:"viewComments";i:13;s:6:"viewKB";i:14;s:14:"viewMonitoring";i:15;s:9:"viewUsers";i:16;s:10:"viewPeople";i:17;s:11:"viewReports";i:18;s:4:"Null";}'),
(3, 'admin', 'Administrator', 'a:70:{i:0;s:9:"addClient";i:1;s:10:"editClient";i:2;s:12:"manageClient";i:3;s:12:"adminsClient";i:4;s:11:"viewClients";i:5;s:8:"addAsset";i:6;s:9:"editAsset";i:7;s:11:"manageAsset";i:8;s:12:"licenseAsset";i:9;s:10:"viewAssets";i:10;s:10:"addLicense";i:11;s:11:"editLicense";i:12;s:13:"manageLicense";i:13;s:12:"assetLicense";i:14;s:12:"viewLicenses";i:15;s:10:"addProject";i:16;s:11:"editProject";i:17;s:13:"manageProject";i:18;s:18:"manageProjectNotes";i:19;s:13:"adminsProject";i:20;s:12:"viewProjects";i:21;s:9:"addTicket";i:22;s:10:"editTicket";i:23;s:12:"manageTicket";i:24;s:17:"manageTicketRules";i:25;s:17:"manageTicketNotes";i:26;s:11:"viewTickets";i:27;s:8:"addIssue";i:28;s:9:"editIssue";i:29;s:11:"manageIssue";i:30;s:10:"viewIssues";i:31;s:10:"addComment";i:32;s:11:"editComment";i:33;s:13:"assignComment";i:34;s:12:"viewComments";i:35;s:13:"addCredential";i:36;s:14:"editCredential";i:37;s:14:"viewCredential";i:38;s:15:"viewCredentials";i:39;s:5:"addKB";i:40;s:6:"viewKB";i:41;s:9:"addPReply";i:42;s:12:"viewPReplies";i:43;s:10:"uploadFile";i:44;s:12:"downloadFile";i:45;s:9:"viewFiles";i:46;s:7:"addHost";i:47;s:8:"editHost";i:48;s:10:"manageHost";i:49;s:14:"viewMonitoring";i:50;s:7:"addUser";i:51;s:8:"editUser";i:52;s:9:"viewUsers";i:53;s:8:"addStaff";i:54;s:9:"editStaff";i:55;s:9:"viewStaff";i:56;s:7:"addRole";i:57;s:8:"editRole";i:58;s:9:"viewRoles";i:59;s:10:"addContact";i:60;s:11:"editContact";i:61;s:12:"viewContacts";i:62;s:10:"manageData";i:63;s:8:"viewLogs";i:64;s:10:"viewSystem";i:65;s:10:"viewPeople";i:66;s:11:"viewReports";i:67;s:11:"autorefresh";i:68;s:6:"search";i:69;s:4:"Null";}'),
(4, 'admin', 'Technician', 'a:48:{i:0;s:9:"addClient";i:1;s:12:"manageClient";i:2;s:11:"viewClients";i:3;s:8:"addAsset";i:4;s:11:"manageAsset";i:5;s:10:"viewAssets";i:6;s:10:"addLicense";i:7;s:13:"manageLicense";i:8;s:12:"viewLicenses";i:9;s:10:"addProject";i:10;s:13:"manageProject";i:11;s:18:"manageProjectNotes";i:12;s:12:"viewProjects";i:13;s:9:"addTicket";i:14;s:12:"manageTicket";i:15;s:17:"manageTicketRules";i:16;s:17:"manageTicketNotes";i:17;s:11:"viewTickets";i:18;s:8:"addIssue";i:19;s:11:"manageIssue";i:20;s:10:"viewIssues";i:21;s:10:"addComment";i:22;s:12:"viewComments";i:23;s:13:"addCredential";i:24;s:14:"viewCredential";i:25;s:15:"viewCredentials";i:26;s:5:"addKB";i:27;s:6:"viewKB";i:28;s:9:"addPReply";i:29;s:12:"viewPReplies";i:30;s:10:"uploadFile";i:31;s:12:"downloadFile";i:32;s:9:"viewFiles";i:33;s:7:"addHost";i:34;s:10:"manageHost";i:35;s:14:"viewMonitoring";i:36;s:7:"addUser";i:37;s:9:"viewUsers";i:38;s:10:"addContact";i:39;s:11:"editContact";i:40;s:12:"viewContacts";i:41;s:10:"manageData";i:42;s:10:"viewSystem";i:43;s:10:"viewPeople";i:44;s:11:"viewReports";i:45;s:11:"autorefresh";i:46;s:6:"search";i:47;s:4:"Null";}');

-- --------------------------------------------------------

--
-- Table structure for table `smslog`
--

CREATE TABLE IF NOT EXISTS `smslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peopleid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `mobile` varchar(128) NOT NULL,
  `sms` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `statuscodes`
--

CREATE TABLE IF NOT EXISTS `statuscodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `statuscodes`
--

INSERT INTO `statuscodes` (`id`, `code`, `type`, `message`) VALUES
(48, 11, 'danger', 'Error! Cannot add item.'),
(49, 21, 'danger', 'Error! Cannot save item.'),
(50, 31, 'danger', 'Error! Cannot delete item.'),
(47, 30, 'success', 'Item has been deleted successfully!'),
(46, 20, 'success', 'Item has been saved successfully!'),
(45, 10, 'success', 'Item has been added successfully!'),
(51, 40, 'success', 'Settings updated successfully!'),
(52, 1200, 'danger', 'Authentication Failed!'),
(53, 1300, 'success', 'Please check your email for a password reset link.'),
(54, 1400, 'danger', 'Email address was not found.'),
(55, 1500, 'danger', 'Invalid reset key!'),
(56, 1600, 'success', 'Success. Please log in with your new password! '),
(57, 1, 'danger', 'Unauthorized Access');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `contactname`, `phone`, `email`, `web`, `notes`) VALUES
(1, 'Amazon', '', '', '', '', '', ''),
(2, 'Best Buy', '', '', '', '', '', ''),
(3, 'Newegg', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `systemlog`
--

CREATE TABLE IF NOT EXISTS `systemlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peopleid` int(11) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `systemlog`
--

INSERT INTO `systemlog` (`id`, `peopleid`, `ipaddress`, `description`, `timestamp`) VALUES
(1, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 00:06:31'),
(2, -1, '::1', 'User/Admin Login Failure - EMAIL: admin@example.com', '2017-07-02 02:21:54'),
(3, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:22:05'),
(4, 2, '::1', 'Profile Edited - ID: 2', '2017-07-02 02:23:43'),
(5, 2, '::1', 'User/Staff Logged Out - ID: 2', '2017-07-02 02:23:49'),
(6, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:23:57'),
(7, 2, '::1', 'User/Staff Logged Out - ID: 2', '2017-07-02 02:24:01'),
(8, -1, '::1', 'User/Admin Logged In - ID: 2', '2017-07-02 02:24:27'),
(9, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-03-23 06:27:31'),
(10, -1, '::1', 'User/Admin Logged In - ID: 2', '2019-03-23 08:38:49'),
(11, 2, '::1', 'AssetCategory Edited - ID: 1', '2019-03-23 11:16:45'),
(12, 2, '::1', 'AssetCategory Edited - ID: 2', '2019-03-23 11:17:09'),
(13, 2, '::1', 'AssetCategory Edited - ID: 3', '2019-03-23 11:17:30'),
(14, 2, '::1', 'AssetCategory Edited - ID: 4', '2019-03-23 11:20:41'),
(15, 2, '::1', 'AssetCategory Edited - ID: 5', '2019-03-23 11:21:08'),
(16, 2, '::1', 'AssetCategory Added - ID: 6', '2019-03-23 11:21:46'),
(17, 2, '::1', 'AssetCategory Edited - ID: 1', '2019-03-23 11:21:59'),
(18, 2, '::1', 'AssetCategory Edited - ID: 6', '2019-03-23 11:22:10'),
(19, 2, '::1', 'Asset Edited - ID: 1', '2019-03-23 12:01:22'),
(20, 2, '::1', 'Asset Edited - ID: 2', '2019-03-23 12:02:58'),
(21, 2, '::1', 'Asset Edited - ID: 3', '2019-03-23 12:03:43'),
(22, 2, '::1', 'Asset Added - ID: 4', '2019-03-23 12:06:32'),
(23, 2, '::1', 'Model Added - ID: 5', '2019-03-23 12:30:06'),
(24, 2, '::1', 'Asset Edited - ID: 4', '2019-03-23 12:30:40'),
(25, 2, '::1', 'Label Edited - ID: 1', '2019-03-23 12:42:08'),
(26, 2, '::1', 'Label Deleted - ID: 2', '2019-03-23 12:42:13'),
(27, 2, '::1', 'Model Edited - ID: 1', '2019-03-23 14:18:32'),
(28, 2, '::1', 'Asset Added - ID: 5', '2019-03-23 14:18:56'),
(29, 2, '::1', 'Asset Edited - ID: 5', '2019-03-23 14:19:24'),
(30, 2, '::1', 'Asset Edited - ID: 5', '2019-03-23 14:21:02'),
(31, 2, '::1', 'Model Edited - ID: 2', '2019-03-23 14:24:49'),
(32, 2, '::1', 'Asset Added - ID: 6', '2019-03-23 14:28:25'),
(33, 2, '::1', 'Asset Edited - ID: 5', '2019-03-23 14:31:26'),
(34, 2, '::1', 'Asset Edited - ID: 6', '2019-03-23 14:32:27'),
(35, 2, '::1', 'Model Edited - ID: 4', '2019-03-23 14:37:37'),
(36, 2, '::1', 'Model Edited - ID: 3', '2019-03-23 14:38:39'),
(37, 2, '::1', 'Asset Edited - ID: 3', '2019-03-23 14:39:43'),
(38, 2, '::1', 'Asset Added - ID: 7', '2019-03-23 14:43:33'),
(39, 2, '::1', 'Asset Added - ID: 8', '2019-03-23 14:46:10'),
(40, 2, '::1', 'Asset Added - ID: 9', '2019-03-23 14:47:44'),
(41, 2, '::1', 'Asset Added - ID: 10', '2019-03-23 14:50:29'),
(42, 2, '::1', 'Asset Added - ID: 11', '2019-03-23 14:55:44'),
(43, 2, '::1', 'Asset Added - ID: 12', '2019-03-23 14:57:13'),
(44, 2, '::1', 'Asset Added - ID: 13', '2019-03-23 15:00:30'),
(45, 2, '::1', 'Asset Added - ID: 14', '2019-03-23 15:04:08'),
(46, 2, '::1', 'Asset Added - ID: 15', '2019-03-23 15:06:18'),
(47, 2, '::1', 'Asset Added - ID: 16', '2019-03-23 15:13:33'),
(48, 2, '::1', 'Asset Added - ID: 17', '2019-03-23 15:15:27'),
(49, 2, '::1', 'Asset Added - ID: 18', '2019-03-23 15:17:38'),
(50, 2, '::1', 'Asset Added - ID: 19', '2019-03-23 15:19:41'),
(51, 2, '::1', 'Asset Added - ID: 20', '2019-03-23 15:26:15'),
(52, 2, '::1', 'Asset Added - ID: 21', '2019-03-23 15:29:05'),
(53, 2, '::1', 'Asset Added - ID: 22', '2019-03-23 15:31:48'),
(54, 2, '::1', 'Asset Added - ID: 23', '2019-03-23 15:38:50'),
(55, 2, '::1', 'Asset Added - ID: 24', '2019-03-23 15:43:19'),
(56, 2, '::1', 'Asset Added - ID: 25', '2019-03-23 15:48:04'),
(57, 2, '::1', 'Asset Edited - ID: 25', '2019-03-23 15:50:05'),
(58, 2, '::1', 'Asset Added - ID: 26', '2019-03-23 15:58:51'),
(59, 2, '::1', 'Asset Added - ID: 27', '2019-03-23 16:02:19'),
(60, 2, '::1', 'Asset Edited - ID: 27', '2019-03-23 16:02:47'),
(61, 2, '::1', 'Asset Added - ID: 28', '2019-03-23 16:15:11'),
(62, 2, '::1', 'Asset Added - ID: 29', '2019-03-23 16:20:49'),
(63, 2, '::1', 'Asset Added - ID: 30', '2019-03-23 16:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `notes` text NOT NULL,
  `ccs` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_departments`
--

CREATE TABLE IF NOT EXISTS `tickets_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tickets_departments`
--

INSERT INTO `tickets_departments` (`id`, `name`) VALUES
(1, 'Default Department');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_pr`
--

CREATE TABLE IF NOT EXISTS `tickets_pr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tickets_pr`
--

INSERT INTO `tickets_pr` (`id`, `name`, `content`) VALUES
(1, 'Demo Predefined Reply', '<div><p>Predefined reply body.<br></p></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_replies`
--

CREATE TABLE IF NOT EXISTS `tickets_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `peopleid` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_rules`
--

CREATE TABLE IF NOT EXISTS `tickets_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `executed` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cond_status` varchar(255) NOT NULL,
  `cond_priority` varchar(255) NOT NULL,
  `cond_timeelapsed` varchar(20) NOT NULL,
  `cond_datetime` datetime NOT NULL,
  `act_status` varchar(255) NOT NULL,
  `act_priority` varchar(255) NOT NULL,
  `act_assignto` int(11) NOT NULL,
  `act_notifyadmins` int(1) NOT NULL,
  `act_addreply` int(1) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
